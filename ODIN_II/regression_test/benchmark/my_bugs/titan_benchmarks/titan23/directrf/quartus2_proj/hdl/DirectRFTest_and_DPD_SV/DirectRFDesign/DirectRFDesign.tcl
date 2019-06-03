# This is the top level tcl file for 'DirectRFDesign'

package require ::quartus::project

set overwrite_opt 0
set compile_opt 1

foreach arg $argv {
    switch $arg {
        overwrite { set overwrite_opt 1 }
        no_compile { set compile_opt 0 }
        default { puts "got unknown command: $arg" }
    }
}

if {!$overwrite_opt && [project_exists DirectRFDesign]} {
    puts "The DirectRFDesign quartus project already exists."
    puts "Use 'overwrite option' to force project to be over-written"
} elseif {![file exists "./rtl/DirectRFTest_and_DPD_SV/DirectRFDesign/DirectRFDesign.tcl"]}    {
    puts "You must run DirectRFDesign.tcl "
    puts "from the ../quartus directory or else "
    puts "some of the dependant scripts won't be found."
    puts "The current directory is:" 
    puts [pwd]
    error "Exiting..."
} 

set quartus_dir $::env(QUARTUS_ROOTDIR)
puts "Creating DirectRFDesign Quartus project..."

if $overwrite_opt {
    project_new -overwrite DirectRFDesign
} else {
    project_new DirectRFDesign
}

set_global_assignment -name FAMILY "Stratix V"
set_global_assignment -name TOP_LEVEL_ENTITY DirectRFTest_and_DPD_SV_DirectRFDesign
set_global_assignment -name DEVICE 5SGSMD4H2F35C2
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name SDC_FILE ./rtl/DirectRFTest_and_DPD_SV/DirectRFDesign/DirectRFDesign.sdc
set_global_assignment -name SEED 0
set_global_assignment -name MAX_FANOUT 200
set_global_assignment -name REMOVE_DUPLICATE_REGISTERS OFF
set_global_assignment -name PHYSICAL_SYNTHESIS_COMBO_LOGIC ON
set_global_assignment -name PHYSICAL_SYNTHESIS_COMBO_LOGIC ON
set_global_assignment -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON
set_global_assignment -name PLACEMENT_EFFORT_MULTIPLIER 5
set_global_assignment -name ROUTER_EFFORT_MULTIPLIER 5
set_global_assignment -name ROUTER_TIMING_OPTIMIZATION_LEVEL Maximum

source ./rtl/DirectRFTest_and_DPD_SV/DirectRFDesign/DirectRFDesign.add.tcl

set_instance_assignment -name VIRTUAL_PIN ON -to Ch0
set_instance_assignment -name VIRTUAL_PIN ON -to Ch1
set_instance_assignment -name VIRTUAL_PIN ON -to Ch10
set_instance_assignment -name VIRTUAL_PIN ON -to Ch11
set_instance_assignment -name VIRTUAL_PIN ON -to Ch12
set_instance_assignment -name VIRTUAL_PIN ON -to Ch13
set_instance_assignment -name VIRTUAL_PIN ON -to Ch14
set_instance_assignment -name VIRTUAL_PIN ON -to Ch15
set_instance_assignment -name VIRTUAL_PIN ON -to Ch2
set_instance_assignment -name VIRTUAL_PIN ON -to Ch3
set_instance_assignment -name VIRTUAL_PIN ON -to Ch4
set_instance_assignment -name VIRTUAL_PIN ON -to Ch5
set_instance_assignment -name VIRTUAL_PIN ON -to Ch6
set_instance_assignment -name VIRTUAL_PIN ON -to Ch7
set_instance_assignment -name VIRTUAL_PIN ON -to Ch8
set_instance_assignment -name VIRTUAL_PIN ON -to Ch9
set_instance_assignment -name VIRTUAL_PIN ON -to channel
set_instance_assignment -name VIRTUAL_PIN ON -to data
set_instance_assignment -name VIRTUAL_PIN ON -to valid
set_instance_assignment -name VIRTUAL_PIN ON -to busIn_d
set_instance_assignment -name VIRTUAL_PIN ON -to busIn_a
set_instance_assignment -name VIRTUAL_PIN ON -to busIn_w
set_instance_assignment -name VIRTUAL_PIN ON -to busOut_r

source "./rtl/DirectRFTest_and_DPD_SV/DirectRFDesign/DirectRFTest_and_DPD_SV_DirectRFDesign_fpc.add.tcl"


if $compile_opt {
    project_archive -include_outputs -include_libraries "DirectRFDesign.qar"
    package require ::quartus::flow
    puts "Running Compile flow..."
    execute_flow -compile

    package require ::quartus::report 

    # The output you get out of this script
    # is two lines of CSV formatted data (header line 1, real data line 2)
    # followed by the critical path

    load_report

    proc print_csv {expr} {
        regsub -all , $expr {} out
        regsub -all { .*} $out {} final
        if [string match $final ""] {
            # If quartus failed to find any value here, report -1
            set final -1
        }
        puts -nonewline $final
        puts -nonewline ","
    }

    create_timing_netlist -model slow
    read_sdc
    update_timing_netlist
    set clk_fmaxinfo [get_clock_fmax_info]

    puts "Extracting key data from report..."
    puts "Logic,ALM_Logic_Regs,ALM_Logic,ALM_Regs,ALM_Mem,Comb_Aluts_Logic,Comb_Aluts_Route,Mem_Aluts,Regs,Regs_1,Regs_2,ALM,DSP,Mem_Bits,MLAB_Bits,M20K,IO,FMax,Slack,Required"
    print_csv [get_fitter_resource_usage -resource "*Logic utilization*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*LUT logic*register*"]
    print_csv [get_fitter_resource_usage -resource "*b*ALMs*LUT logic*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*for register*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*memory*"]
    print_csv [get_fitter_resource_usage -resource "*Combinational ALUTs*logic*"]
    print_csv [get_fitter_resource_usage -resource "*Combinational ALUTs*route*"]
    print_csv [get_fitter_resource_usage -resource "* Memory ALUTs"]
    print_csv [get_fitter_resource_usage -resource "*Dedicated logic registers*"]
    print_csv [get_fitter_resource_usage -resource "*Primary logic registers*"]
    print_csv [get_fitter_resource_usage -resource "*Secondary logic registers*"]
    print_csv [get_fitter_resource_usage -alm]
    print_csv [get_fitter_resource_usage -resource "*DSP Block*"]
    print_csv [get_fitter_resource_usage -resource "*Total block memory bits*"]
    print_csv [get_fitter_resource_usage -resource "*Total MLAB memory bits*"]
    print_csv [get_fitter_resource_usage -resource "*M20K*"]
    print_csv [get_fitter_resource_usage -used -io_pin]

    set family [get_report_panel_data -name {Flow Summary} -col 1 -row_name Family]
    set device [get_report_panel_data -name {Flow Summary} -col 1 -row_name Device]
    set fmax -1
    set restricted_fmax -1
    set clk {clk}

    foreach clkinfo $clk_fmaxinfo {
        if ([string equal $clk [lindex $clkinfo 0] ]) {
            set fmax [lindex $clkinfo 1]
            set restricted_fmax [lindex $clkinfo 2]
        }
    }

    set required_period [get_clock_info -period $clk]
    set slack [expr {$required_period - 1000.0 / $fmax}]

    print_csv $restricted_fmax
    print_csv $slack
    print_csv [expr {1000.0 / $required_period}]

    puts ""

    puts "FAMILY $family"
    puts "DEVICE $device"
    puts "TIMING PATH"
    set cpi 0
    foreach_in_collection path [get_timing_paths -npaths 20 -setup -pairs_only] {
        set from [get_node_info -name [get_path_info $path -from]]
        set to [get_node_info -name [get_path_info $path -to]]
        file delete cpath$cpi.fit
        report_timing -from_clock $clk -to_clock $clk -from $from -to $to -setup -npaths 1 -show_routing -detail full_path -file cpath$cpi.fit
        set ignore [catch {
          set f [open cpath$cpi.fit]
          puts [read $f]}]
        incr cpi
    }
}

project_close

