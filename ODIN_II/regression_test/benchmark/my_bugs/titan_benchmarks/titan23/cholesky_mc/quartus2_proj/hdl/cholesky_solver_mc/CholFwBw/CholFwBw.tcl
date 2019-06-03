# This is the top level tcl file for 'CholFwBw'

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

if {!$overwrite_opt && [project_exists CholFwBw]} {
    puts "The CholFwBw quartus project already exists."
    puts "Use 'overwrite option' to force project to be over-written"
} elseif {![file exists "./rtl/cholesky_solver_mc/CholFwBw/CholFwBw.tcl"]}    {
    puts "You must run CholFwBw.tcl "
    puts "from the ../quartus directory or else "
    puts "some of the dependant scripts won't be found."
    puts "The current directory is:" 
    puts [pwd]
    error "Exiting..."
} 

set quartus_dir $::env(QUARTUS_ROOTDIR)
puts "Creating CholFwBw Quartus project..."

if $overwrite_opt {
    project_new -overwrite CholFwBw
} else {
    project_new CholFwBw
}

set_global_assignment -name FAMILY "Stratix IV"
set_global_assignment -name TOP_LEVEL_ENTITY cholesky_solver_mc_CholFwBw
set_global_assignment -name DEVICE AUTO
set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 2
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name SDC_FILE ./rtl/cholesky_solver_mc/CholFwBw/CholFwBw.sdc

source ./rtl/cholesky_solver_mc/CholFwBw/CholFwBw.add.tcl

set_instance_assignment -name VIRTUAL_PIN ON -to BkSubDone_s
set_instance_assignment -name VIRTUAL_PIN ON -to BsFifoErr_s
set_instance_assignment -name VIRTUAL_PIN ON -to BsProcLower_s
set_instance_assignment -name VIRTUAL_PIN ON -to BsWrLowerTri_s
set_instance_assignment -name VIRTUAL_PIN ON -to FifolErr_s
set_instance_assignment -name VIRTUAL_PIN ON -to FwDone_s
set_instance_assignment -name VIRTUAL_PIN ON -to InCh_s
set_instance_assignment -name VIRTUAL_PIN ON -to InColumnIdx_s
set_instance_assignment -name VIRTUAL_PIN ON -to InData_re
set_instance_assignment -name VIRTUAL_PIN ON -to InData_im
set_instance_assignment -name VIRTUAL_PIN ON -to InDataV_s
set_instance_assignment -name VIRTUAL_PIN ON -to InMatSize_s
set_instance_assignment -name VIRTUAL_PIN ON -to InNumMat_s
set_instance_assignment -name VIRTUAL_PIN ON -to InRowIdx_s
set_instance_assignment -name VIRTUAL_PIN ON -to InUpper_s
set_instance_assignment -name VIRTUAL_PIN ON -to Lij_v_s
set_instance_assignment -name VIRTUAL_PIN ON -to Lij_y_c_s
set_instance_assignment -name VIRTUAL_PIN ON -to Lij_y_modified_re
set_instance_assignment -name VIRTUAL_PIN ON -to Lij_y_modified_im
set_instance_assignment -name VIRTUAL_PIN ON -to ProcUpper_s
set_instance_assignment -name VIRTUAL_PIN ON -to go_s
set_instance_assignment -name VIRTUAL_PIN ON -to x_c_s
set_instance_assignment -name VIRTUAL_PIN ON -to x_d_re
set_instance_assignment -name VIRTUAL_PIN ON -to x_d_im
set_instance_assignment -name VIRTUAL_PIN ON -to x_v_s
set_instance_assignment -name VIRTUAL_PIN ON -to y_v_s

source "./rtl/cholesky_solver_mc/CholFwBw/cholesky_solver_mc_CholFwBw_fpc.add.tcl"


if $compile_opt {
    project_archive -include_outputs -include_libraries "CholFwBw.qar"
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
    puts "Logic,ALM_Logic_Regs,ALM_Logic,ALM_Regs,ALM_Mem,Comb_Aluts,Comb_Aluts_Route,Mem_Aluts,Regs,Regs_1,Regs_2,ALM,DSP_18bit,Mem_Bits,MLAB_Bits,M9K,M144K,IO,FMax,Slack,Required"
    print_csv [get_fitter_resource_usage -resource "*Logic utilization*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*LUT logic*register*"]
    print_csv [get_fitter_resource_usage -resource "*b*ALMs*LUT logic*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*for register*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*memory*"]
    print_csv [get_fitter_resource_usage -resource "* Combinational ALUTs"]
    print_csv [get_fitter_resource_usage -resource "*Combinational ALUTs*route*"]
    print_csv [get_fitter_resource_usage -resource "* Memory ALUTs"]
    print_csv [get_fitter_resource_usage -resource "*Dedicated logic registers*"]
    print_csv [get_fitter_resource_usage -resource "*Primary logic registers*"]
    print_csv [get_fitter_resource_usage -resource "*Secondary logic registers*"]
    print_csv [get_fitter_resource_usage -alm]
    print_csv [get_fitter_resource_usage -resource "DSP block 18-bit elements"]
    print_csv [get_fitter_resource_usage -resource "*Total block memory bits*"]
    print_csv [get_fitter_resource_usage -resource "*Total MLAB memory bits*"]
    print_csv [get_fitter_resource_usage -resource "*M9K*"]
    print_csv [get_fitter_resource_usage -resource "*M144K*"]
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
    foreach_in_collection path [get_timing_paths -npaths 1 -setup -pairs_only] {
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

