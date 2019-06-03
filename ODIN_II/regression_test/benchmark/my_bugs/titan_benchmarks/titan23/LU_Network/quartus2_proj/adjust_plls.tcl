post_message "Info: Preparing to adjust PLL settings."

# Globals
set k_pll_name "pll:the_pll_inst|*"
set k_clk_name "the_pll_inst*0]"
set ref_fmax 50.0

# Dynamically determine the project name by finding the qsf in the directory.
set qsf_files [glob -nocomplain *.qsf]

if {[llength $qsf_files] == 0} {
    error "No QSF detected"
} elseif {[llength $qsf_files] > 1} {
    post_message "Warning: More than one QSF detected. Picking the first one."
}

set qsf_file [lindex $qsf_files 0]
set project_name [string range $qsf_file 0 [expr [string first . $qsf_file] - 1]]

post_message "Project name: $project_name"

# Required packages
package require ::quartus::chip_planner
package require ::quartus::project
package require ::quartus::report
package require ::quartus::flow
package require ::quartus::atoms

# Utility functions

# get_fmax_from_report: Determines the fmax for the given clock. The fmax value returned
# will meet all timing requirements (setup, hold, recovery, removal, minimum pulse width)
# across all corners.
proc get_fmax_from_report { clkname required } {
    # Find the clock period.
    set clock_panel_name "TimeQuest Timing Analyzer||Clocks"
    set clock_panel_id [get_report_panel_id $clock_panel_name]
    if {$clock_panel_id == -1} {error "Error: Could not find clocks report."}
    set num_rows [get_number_of_rows -id $clock_panel_id]
    if {$num_rows == -1} {error "Error: Clocks report is invalid."}

    set found 0
    for {set r 1} {$r < $num_rows} {incr r} {
        set clk [get_report_panel_data -id $clock_panel_id -row $r -col 0]
        if {[string match $clkname $clk]} {
            incr found
            set full_clkname $clk
            set clk_period [get_report_panel_data -id $clock_panel_id -row $r -col 2]
        }
    }

    if {$found == 0} { 
        if {$required == 1} {
           error "Error: Could not find clock: $clkname" 
        } else {
           post_message "Warning: Could not find clock: $clkname.  Clock is not required assuming 10 GHz and proceeding."
           return 10000
        }
    } elseif {$found > 1} { 
        error "Error: Found multiple matches for clock: $clkname"
    }

    # Update clock name to full clock name ($clkname as passed in may contain wildcards).
    set clkname $full_clkname

    post_message "Clock $clkname"
    post_message "  Period: $clk_period"

    # Determine the most negative slack across all timing metrics (setup, hold, recovery, removal, minimum pulse width)
    # and across all timing corners.
    set timing_corners [list "Slow 900mV 85C" "Slow 900mV 0C" "Fast 900mV 0C"]
    set timing_metrics [list "Setup" "Recovery" "Minimum Pulse Width"]
    set timing_metric_required [list 1 0 0]
    set wc_slack $clk_period
    set has_slack 0

    foreach corner $timing_corners {
        post_message "  Corner: $corner"
        foreach metric $timing_metrics metric_required $timing_metric_required {
            set panel_name "TimeQuest Timing Analyzer||$corner Model||$corner Model $metric Summary"
            set panel_id [get_report_panel_id $panel_name]
            if {$panel_id == -1} {error "Error: Could not find $metric summary report."}
            set num_rows [get_number_of_rows -id $panel_id]
            if {$num_rows == -1} {error "Error: $metric summary report is invalid."}

            set found 0
            for {set r 1} {$r < $num_rows} {incr r} {
                set clk [get_report_panel_data -id $panel_id -row $r -col 0]
                if {[string equal $clkname $clk]} {
                    incr found
                    set slack [get_report_panel_data -id $panel_id -row $r -col 1]
                }
            }

            if {$found == 0} { 
                if {$required == 1 && $metric_required == 1} {
                   error "Error: Could not find clock: $clkname" 
                }
            } elseif {$found > 1} { 
                error "Error: Found multiple matches for clock: $clkname"
            }

            if {$found == 1} {
                post_message "    $metric slack: $slack"
                set has_slack 1

                # Keep track of the most negative slack.
                if {$slack < $wc_slack} {
                    set wc_slack $slack
                }
            }
        }
    }

    if {$has_slack == 1} {
        # Adjust the clock period to meet the worst-case slack requirement.
        if {$wc_slack != 0} {
            set clk_period [expr $clk_period - $wc_slack]
            post_message "  Adjusted period: $clk_period ([format %+0.3f [expr -$wc_slack]])"
        }

        # Compute fmax from clock period. Clock period is in nanoseconds and the
        # fmax number should be in MHz.
        set fmax [expr 1000 / $clk_period]

        # Truncate to two decimal places. Truncate (not round to nearest) to avoid the
        # very small chance of going over the clock period when doing the computation.
        set fmax [expr floor($fmax * 100) / 100]
        post_message "  Fmax: $fmax"
    } else {
        post_message "Warning: No slack found for clock $clkname - assuming 10 GHz."
        set fmax 10000
    }

    return $fmax
}

# find_pll: Look for a single PLL node that matches the specified PLL name
proc find_pll { pll_name } {
    set found 0
    foreach_in_collection n [get_nodes -type pll] {
        set name [get_node_info -info name -node $n]
        if {[ string match $pll_name $name ]} {
            incr found
            set found_node $n
            set found_name $name
        } 
    }
    if {$found > 1} {
        error "Error: Multiple matching PLLs found."
    } elseif {$found == 0} {
        error "Error: No matching PLL found."
    }
    return $found_node
}

# get_clk_id: Get the clk_n signal from a PLL
proc get_clk_id { pll n } {
    set clk_id [ get_port_by_type -node $pll -type oport -port_type CLK -literal_index $n -as_gen_id ]
    if { $clk_id == -1 } { error "Error: Unable to find clock $n on PLL $pll" }
    return $clk_id
}

# compute_pll_settings: Compute the required m, c, and n counters to implement
# a PLL generating fmax from ref_fmax
proc compute_pll_settings { ref_fmax fmax } {
    # The PLL loop-filter table
    # TODO: Get this from the device files
    set pll_lf_mult [ list 2   4   7   11  22  33  73  97  121 193 ]
    set pll_lf_icp  [ list 1   1   1   1   1   1   1   1   1   1   ]
    set pll_lf_r    [ list 30  28  28  27  27  24  20  19  16  8   ]
    set pll_lf_c    [ list 0   0   0   0   0   0   0   0   0   0   ]
    set pll_lf_mk_min 2.0
    set pll_lf_mk_max 256.0

    set best_c -1
    set best_n -1
    set best_m -1
    set min_delta $fmax

    # PFD bandwidth is limited to 5 MHz to 325 MHz
    set n_min [ expr int ( ceil ($ref_fmax / 325.0) ) ]
    set n_max [ expr int ( floor ($ref_fmax / 5.0) ) ]

    # K is limited to 1 or 2 for Stratix IV
    set k_min 1
    set k_max 2

    # Brute force it
    for {set k $k_min} {$k <= $k_max} {incr k} {
        for {set n $n_min} {$n <= $n_max} {incr n} {
            # VCO bandwidth is limited to 600 MHz to 1600 MHz
            set m_min [ expr ceil ( 600 * $n / ( $k * $ref_fmax ) ) ]
            set m_max [ expr floor ( 1600 * $n / ( $k * $ref_fmax ) ) ]
            # Loop filter bandwidth parameters put a limit on m*k
            set m_min [ expr max ( $m_min, [ expr ceil ( $pll_lf_mk_min / $k ) ] ) ]
            set m_max [ expr min ( $m_max, [ expr floor ( $pll_lf_mk_max / $k ) ] ) ]
            # m is an int
            set m_min [ expr int ( $m_min ) ]
            set m_max [ expr int ( $m_max ) ]

            for {set m $m_min} {$m <= $m_max} {incr m} {
                set fvco [ expr $ref_fmax * $k * $m / $n ]
                set c1 [ expr int ( ceil ($fvco / (2 * $k * $fmax) ) ) ]
                set c0 [ expr $c1 * 2 ]
                set fmax_out [ expr $fvco / ($k * $c0) ]
                set delta [ expr $fmax - $fmax_out ]
                if { $delta < $min_delta } {
                    set min_delta  $delta
                    set best_c0 $c0
                    set best_c1 $c1
                    set best_m $m
                    set best_n $n
                    set best_k $k
                    set best_fmax $fmax_out
                }
            }
        }
    }

    # Compute the loop filter values
    set best_mk [ expr $best_m * $best_k ]
    for {set i 0} {$i < [llength $pll_lf_mult]} {incr i} {
        set mk [ lindex $pll_lf_mult $i ]
        if { $best_mk >= $mk } {
            set lf_icp [ lindex $pll_lf_icp $i ]
            set lf_r [ lindex $pll_lf_r $i ]
            set lf_c [ lindex $pll_lf_c $i ]
        }
    }

    # The c counter is actually two counters for programmable duty cycle - we want 50%
    set best_clo0 [ expr int ( floor ( $best_c0 / 2.0 ) ) ]
    set best_chi0 [ expr int ( ceil ( $best_c0 / 2.0 ) ) ]
    if {$best_clo0 != $best_chi0} {
        # Odd mode internally subtracts 0.5 from chi and adds 0.5 to clo so
        # that we can get a 50% duty cycle with an odd divisor
        set best_cmode0 "ODD"
    } else {
        set best_cmode0 "EVEN"
    }
    set best_clo1 [ expr int ( floor ( $best_c1 / 2.0 ) ) ]
    set best_chi1 [ expr int ( ceil ( $best_c1 / 2.0 ) ) ]
    if {$best_clo1 != $best_chi1} {
        # Odd mode internally subtracts 0.5 from chi and adds 0.5 to clo so
        # that we can get a 50% duty cycle with an odd divisor
        set best_cmode1 "ODD"
    } else {
        set best_cmode1 "EVEN"
    }

    return [ list $best_fmax $best_n $best_k $best_m $best_clo0 $best_chi0 $best_cmode0 $best_clo1 $best_chi1 $best_cmode1 $lf_icp $lf_r $lf_c ]
}

# Dump all external and internal PLL parameters.
proc dump_pll_parameters { pll } {
    set key OBJECT_USER_EXTERNAL_PARAMETERS
    post_message $key
    foreach feature [get_legal_object_features -key $key -node $pll -type all] {
        post_message "  $feature = [get_atom_node_info -key $key -node $pll -feature $feature]"
    }

    set key OBJECT_USER_INTERNAL_PARAMETERS
    post_message $key
    foreach feature [get_legal_object_features -key $key -node $pll -type all] {
        post_message "  $feature = [get_atom_node_info -key $key -node $pll -feature $feature]"
    }

    set key OBJECT_REAL_EXTERNAL_PARAMETERS
    post_message $key
    foreach feature [get_legal_object_features -key $key -node $pll -type all] {
        post_message "  $feature = [get_atom_node_info -key $key -node $pll -feature $feature]"
    }

    set key OBJECT_REAL_INTERNAL_PARAMETERS
    post_message $key
    foreach feature [get_legal_object_features -key $key -node $pll -type all] {
        post_message "  $feature = [get_atom_node_info -key $key -node $pll -feature $feature]"
    }
}

# Set value of internal PLL parameter (real and user are both updated).
proc set_internal_pll_param { pll feature index value } {
    set cur_value [get_atom_node_info -key OBJECT_REAL_INTERNAL_PARAMETERS -node $pll -feature $feature]
    set cur_value [lindex $cur_value $index]

    post_message "Setting $feature\[$index\] to $value (current value is $cur_value)"
    set_atom_node_info -key OBJECT_REAL_INTERNAL_PARAMETERS -node $pll -feature $feature -index $index $value
    set_atom_node_info -key OBJECT_USER_INTERNAL_PARAMETERS -node $pll -feature $feature -index $index $value
}

# Set value of external PLL parameter (real and user are both updated).
proc set_external_pll_param { pll feature index value } {
    set cur_value [get_atom_node_info -key OBJECT_REAL_EXTERNAL_PARAMETERS -node $pll -feature $feature]
    set cur_value [lindex $cur_value $index]

    post_message "Setting $feature\[$index\] to $value (current value is $cur_value)"
    set_atom_node_info -key OBJECT_REAL_EXTERNAL_PARAMETERS -node $pll -feature $feature -index $index $value
    set_atom_node_info -key OBJECT_USER_EXTERNAL_PARAMETERS -node $pll -feature $feature -index $index $value
}

proc configure_pll { pll config } {
    # ECO (ADB) description of each entry in $config:
    # [list "FMAX" "N value" "VCO post scale" "M value" "Counter Low C0" "Counter High C0" "Counter Mode C0" "Counter Low C1" "Counter High C1" "Counter Mode C1" "Charge pump current bit setting" "Loop filter resistance bit setting" "Loop filter capacitance bit setting"]
    # Note that the first field is not actually a real configuration parameter

    # All values in $config correspond to an internal PLL parameter. This list defines
    # the internal parameter names for each entry (except the first entry in $config).
    #
    # If the entry is another list, then that parameter is a vector. The first entry of 
    # the list is the parameter name and the second is the index into the vector.
    #
    # A note about the counter low/high/mode parameters:
    #  Index 10 corresponds to C0, 11 corresponds to C1
    #  (see tools/atmgen/auto-generated/cdb_pll_counter_type_enum_auto_sys.h).
    set parameters [list \
            OBJECT_INT_N \
            OBJECT_INT_VCO_POST_SCALE \
            OBJECT_INT_M \
            [list OBJECT_INT_VEC_COUNTER_LOW 10] \
            [list OBJECT_INT_VEC_COUNTER_HIGH 10] \
            [list OBJECT_ENUM_VEC_COUNTER_MODE 10] \
            [list OBJECT_INT_VEC_COUNTER_LOW 11] \
            [list OBJECT_INT_VEC_COUNTER_HIGH 11] \
            [list OBJECT_ENUM_VEC_COUNTER_MODE 11] \
            OBJECT_INT_CHARGE_PUMP_CURRENT \
            OBJECT_INT_LOOP_FILTER_R \
            OBJECT_INT_LOOP_FILTER_C \
        ]

    # Mapping from bit settings to various parameters (from tgx_arriaiigz_common.hdr;
    # THIS MEANS THESE VALUES ARE SPECIFIC TO STRATIX IV).
    # 
    # The bit setting values in $config are used to index into the lists below.
    # List entries that have a value of zero are invalid bit settings.

    # Charge pump current mapping from bit setting.
    set charge_pump_current [list 10 20 0 40 0 0 0 0]

    # Loop filter resistor mapping from bit setting.
    set loop_filter_resistor [list 20000 0 0 18000 16000 0 0 0 14000 0 0 0 0 0 0 0 12000 0 0 10000 8000 0 0 0 6000 0 0 4000 2000 0 1000 0]

    # Loop filter capacitor mapping from bit setting.
    set loop_filter_capacitor [list 10 12 0 14]

    set pll_c [list 0 0]

    for {set i 0} {$i < [llength $parameters]} {incr i} {
        set param_info [lindex $parameters $i]
        set param_name [lindex $param_info 0]

        if {[llength $param_info] == 1} {
            set param_index 0
        } elseif {[llength $param_info] == 2} {
            set param_index [lindex $param_info 1]
        }

        set config_value [lindex $config [expr "$i + 1"]]

        # Parameter-specific processing.
        if {[string compare $param_name OBJECT_INT_CHARGE_PUMP_CURRENT] == 0} {
            set config_value [lindex $charge_pump_current $config_value]
        } elseif {[string compare $param_name OBJECT_INT_LOOP_FILTER_R] == 0} {
            set config_value [lindex $loop_filter_resistor $config_value]
        } elseif {[string compare $param_name OBJECT_INT_LOOP_FILTER_C] == 0} {
            set config_value [lindex $loop_filter_capacitor $config_value]
        } elseif {[string compare $param_name OBJECT_INT_N] == 0} {
            set pll_n $config_value
        } elseif {[string compare $param_name OBJECT_INT_M] == 0} {
            set pll_m $config_value
        } elseif {[regexp "^OBJECT_INT_VEC_COUNTER_(?:LOW|HIGH)$" $param_name]} {
            # C0 is 10, C1 is 11
            set pll_c_index [expr $param_index - 10]
            lset pll_c $pll_c_index [expr [lindex $pll_c $pll_c_index] + $config_value]
        }

        set_internal_pll_param $pll $param_name $param_index $config_value
    }

    # For STA to derive the right clock period.
    set_external_pll_param $pll OBJECT_INT_VEC_CLK_MULTIPLY_BY 0 $pll_m
    set_external_pll_param $pll OBJECT_INT_VEC_CLK_DIVIDE_BY 0 [expr $pll_n * [lindex $pll_c 0]]
    set_external_pll_param $pll OBJECT_INT_VEC_CLK_MULTIPLY_BY 1 $pll_m
    set_external_pll_param $pll OBJECT_INT_VEC_CLK_DIVIDE_BY 1 [expr $pll_n * [lindex $pll_c 1]]
}

#####################
# Main program flow #
#####################
# Open the project, extract the target fmax from the report files, and apply
# ECO modifications to the PLLs to generate the highest frequency clocks we
# can support.

# Open the project databases
post_message "Info: Reading project database..."
project_open $project_name
load_report $project_name
read_netlist

# check_netlist_and_save causes reinvocation of POST_FLOW_SCRIPT_FILE
set_global_assignment -remove -name POST_FLOW_SCRIPT_FILE quartus_cdb:adjust_plls.tcl

# Read in the achieved FMAX
post_message "Info: Calculating maximum fmax..."
set fmax1 [ get_fmax_from_report $k_clk_name 1 ]

# The maximum is determined by both the kernel-clock and the double-pumped clock
set k_fmax $fmax1

# Check if there's an override for the fmax.
for {set i 0} {$i < $argc} {incr i} {
   set v [lindex $argv $i]

   if {[string compare $v "-fmax"] == 0 && $i < [expr $argc - 1]} {
      post_message "Overriding computed frequency ($k_fmax) with script parameter"

      set k_fmax [lindex $argv [expr $i + 1]]
      post_message "Frequency: $k_fmax"
    }
}

# Find the plls
post_message "Info: Searching for PLLs..."
set k_pll [find_pll $k_pll_name ]

# Compute the PLL settings
post_message "Info: Computing optimal PLL settings..."
set k_config [ compute_pll_settings $ref_fmax $k_fmax ]
set k_achieved [ lindex $k_config 0 ]

post_message "Kernel: Maximum frequency: $k_fmax"
post_message "        Achieved frequency: $k_achieved"

# Modify the PLL to the requested frequency
post_message "Info: Configuring PLLs..."

read_atom_netlist
post_message "PLL: [get_atom_node_info -key NAME -node $k_pll] ($k_pll)"

#dump_pll_parameters $k_pll
configure_pll $k_pll $k_config

post_message "********************************************"
post_message "* PLL configuration complete.              *"
post_message "* Do not ignore warnings after this point. *"
post_message "********************************************"

# Write atom netlist and unload.
write_atom_netlist -pdb -file db/
unload_atom_netlist

# Unload and exit
post_message "Info: PLL adjustment complete!"
unload_report

# Delete any existing TDB database to force STA to rebuild the timing netlist 
# from the modified atom netlist.
file delete [glob -nocomplain db/${project_name}.sta_cmp.*.tdb]

post_message "Info: Kernel runs at $k_fmax MHz"

# check_netlist_and_save causes reinvocation of POST_FLOW_SCRIPT_FILE
# Restore setting in actual .qsf file
set_global_assignment -name POST_FLOW_SCRIPT_FILE quartus_cdb:adjust_plls.tcl

project_close

