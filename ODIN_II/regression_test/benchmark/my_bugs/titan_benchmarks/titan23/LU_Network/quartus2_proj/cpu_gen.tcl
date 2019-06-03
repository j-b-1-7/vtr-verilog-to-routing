# Load Quartus II Tcl Project package
package require ::quartus::project
package require ::quartus::flow
package require ::quartus::incremental_compilation
global quartus

project_new -overwrite cpu_gen

set_global_assignment -name FAMILY "Stratix IV"
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name DEVICE EP4SGX530KH40C2
set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"

set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL

set_global_assignment -name TOP_LEVEL_ENTITY cpu_top
set_global_assignment -name QIP_FILE ip/lu_new/lu_new.qip
set_global_assignment -name SDC_FILE cpu_gen.sdc

set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
set_global_assignment -name AUTO_SHIFT_REGISTER_RECOGNITION OFF
set_global_assignment -name ALLOW_SHIFT_REGISTER_MERGING_ACROSS_HIERARCHIES OFF
set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
set_global_assignment -name FITTER_EFFORT "AUTO FIT"
set_global_assignment -name FITTER_AUTO_EFFORT_DESIRED_SLACK_MARGIN "0 ns"
set_global_assignment -name BLOCK_RAM_AND_MLAB_EQUIVALENT_POWER_UP_CONDITIONS "DONT CARE"

set_global_assignment -name AUTO_GLOBAL_CLOCK OFF
set_global_assignment -name AUTO_GLOBAL_REGISTER_CONTROLS OFF
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to clk_a
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to clk_b
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to reset

set_instance_assignment -name VIRTUAL_PIN ON -to c_id*
set_instance_assignment -name VIRTUAL_PIN ON -to i*
set_instance_assignment -name VIRTUAL_PIN ON -to o*

set_partition -partition Top -netlist_type POST_FIT -preservation_level PLACEMENT

set_global_assignment -name PROJECT_OUTPUT_DIRECTORY out_map

export_assignments
execute_module -tool map
execute_module -tool cdb -args --merge

set c_seeds {15 15 8 42}
set c_widths {45 47 47 45}
set c_heights {36 36 36 36}
set cur_x 1

for { set i 0 } { $i < 4 } { incr i } {
	set cur_width [lindex $c_widths $i]
	set cur_height [lindex $c_heights $i]
	set cur_y [expr 129 - $cur_height]
	set cur_seed [lindex $c_seeds $i]

	set locstr X${cur_x}_Y${cur_y}

	set_logiclock -region cpu -auto_size false -floating false -origin $locstr -reserved true -width $cur_width -height $cur_height
	set_logiclock_contents -region cpu -to | -exceptions VIRTUAL_PIN

	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY out$i

	export_assignments
	execute_module -tool fit -args "--seed=$cur_seed"
	execute_module -tool sta
	export_partition -partition Top -qxp cpu$i.qxp -netlist_type POST_FIT -routing off

	set cur_x [expr $cur_x + $cur_width]
}

