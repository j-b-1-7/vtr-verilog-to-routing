package require cmdline
package require ::quartus::project
package require ::quartus::flow
package require ::quartus::incremental_compilation
global quartus

# Create project and import common settings
project_new -overwrite DE4
source common.tcl

# Parse command-line arguments
set q_args $quartus(args)
set n_cpu -1
set use_arb 0
set floorplan 0
set import 0
set arb_depth -1
set seed -1
set fmax 0
set sweep 0

set seeds {4 8 15 16 23 42}

while { [cmdline::getopt q_args "fmax.arg sweep seed.arg n.arg arb fp depth.arg import" optvar valvar] == 1 } {
	if { [string equal $optvar "n"] } { 
		set n_cpu $valvar
	} elseif { [string equal $optvar "arb"] } { 
		set use_arb 1
	} elseif { [string equal $optvar "fp"] } { 
		set floorplan 1
	} elseif { [string equal $optvar "depth"] } { 
		set arb_depth $valvar 
	} elseif { [string equal $optvar "import"] } { 
		set import 1 
	} elseif { [string equal $optvar "seed"] } {
		set seed $valvar
	} elseif { [string equal $optvar "fmax"] } {
		set fmax $valvar
	} elseif { [string equal $optvar "sweep"] } {
		set sweep 1
	}
}

if { $n_cpu < 0 } {
	post_message -type error "Please specify number of CEs"
	qexit -error
} else {
	post_message -type info "Compiling $n_cpu CEs"
	set_global_assignment -name VERILOG_MACRO "D_N_CPU=$n_cpu"
}

if { $use_arb } {
	post_message -type info "Interconnect style is Arbiter"
	set_global_assignment -name VERILOG_MACRO "D_ARB"
} else {
	post_message -type info "Interconnect style is Ring Network"
}

if { $use_arb && $arb_depth > 0 } {
	post_message -type info "Setting arbiter tree depth to $arb_depth"
	set_global_assignment -name VERILOG_MACRO "D_ARB_DEPTH=$arb_depth"
} elseif { $use_arb } {
	post_message -type info "Setting arbiter tree depth to Auto"
}

if { $floorplan } {
	post_message -type info "Using floorplanned layout"
} else {
	post_message -type info "Using flat layout"
	set import 0
}

if { $import && $n_cpu > 1} {
	post_message -type info "Using imported CE partitions"
} else {
	set import 0
}

if { $seed >= 0 } {
	post_message -type info "Using fitter seed $seed"
}

if { $fmax } {
	post_message -type info "Compute clock constraint: $fmax MHz"
	set f [open clk_constraint w]
	puts $f $fmax
	close $f
} else {
	post_message -type info "Compute clock constraint: 1 GHz"
	file delete clk_constraint
}

if { $sweep } {
	post_message -type info "Performing fitter seed sweep"
}
	

# Create partitions for fixed elements
create_partition -partition usb_portmux -contents "usb_portmux_inst"
set_partition -partition usb_portmux -netlist_type POST_SYNTH 
create_partition -partition ddr -contents "ddr_inst"
set_partition -partition ddr -netlist_type POST_SYNTH 
create_partition -partition ctrl_node -contents "u0|lu|lu_top_inst|ctrl_node" 
set_partition -partition ctrl_node -netlist_type POST_SYNTH 
create_partition -partition mem_node -contents "u0|lu|lu_top_inst|mem_node" 
set_partition -partition mem_node -netlist_type POST_SYNTH 

# Create logiclock regions for them too
if { $floorplan } {
	set_logiclock -region usb_portmux -auto_size false -floating true -reserved true -width 19 -height 8 
	set_logiclock_contents -region usb_portmux -to "usb_portmux_inst"
	set_logiclock -region ddr -auto_size false -floating false -reserved true -width 184 -height 4 -origin X1_Y1
	set_logiclock_contents -region ddr -to "ddr_inst"
	set_logiclock -region ctrl_node -auto_size false -floating true -reserved true -width 11 -height 8 
	set_logiclock_contents -region ctrl_node -to "u0|lu|lu_top_inst|ctrl_node" 
	set_logiclock -region mem_node -auto_size true -floating true -reserved true  
	set_logiclock_contents -region mem_node -to "u0|lu|lu_top_inst|mem_node" 
}

set cur_variant -1 

# Create partitions for compute elements
for { set i 0 } { $i < $n_cpu } { incr i } {
	set entity "u0|lu|lu_top_inst|cpus[$i].cpu" 
	create_partition -partition cpu$i -contents $entity

	# Compute element 0 is always built from source, but 1-N can be imported/stamped
	if { $i > 0 && $import } {
		# Importing? Set to empty partition type so quartus_map basically skips over compiling it
		set_partition -partition cpu$i -netlist_type EMPTY -preservation_level PLACEMENT_AND_ROUTING -qxp cpu$cur_variant.qxp
		set_global_assignment -name PARTITION_IMPORT_ASSIGNMENTS -section_id cpu$i ON
		set_global_assignment -name PARTITION_IMPORT_EXISTING_ASSIGNMENTS -section_id cpu$i SKIP_CONFLICTING
		set_global_assignment -name PARTITION_IMPORT_EXISTING_LOGICLOCK_REGIONS -section_id cpu$i UPDATE_CONFLICTING
		set_global_assignment -name PARTITION_IMPORT_PROMOTE_ASSIGNMENTS -section_id cpu$i ON
	} else {
		set_partition -partition cpu$i -netlist_type POST_SYNTH
	}

	if { $i == 0 || $i == 2 || $i == 5  || $i == 8 } {
		set cur_variant [expr $cur_variant + 1]
	}
}

export_assignments
execute_module -tool map

# Import stamped CEs
if { $import } {
	execute_module -tool cdb -args --incremental_compilation_import=on
}

# Now do floorplanning
if { $floorplan } {
	set c_width0 45
	set c_height0 40

	set c_widths {45 47 47 45}
	set c_heights {36 36 36 36}
	set c_start_y {57 93 21 93}
	set c_y_dirs {1 -1 1 -1}

	set cur_variant -1 
	set cur_x 1
	set cur_y 17
	set cur_y_dir 1
	set cur_width $c_width0
	set cur_height $c_height0

	for { set i 0 } { $i < $n_cpu } { incr i } {
		set entity "u0|lu|lu_top_inst|cpus[$i].cpu" 

		set locstr X$cur_x
		append locstr _Y$cur_y

		if { $i > 0 && $import } {
			# Change properties of existing imported LL region
			# Can't use incremental compilation API - it's bugged for this
			set_global_assignment -name LL_STATE LOCKED -section_id cpu$i|cpu
			set_global_assignment -name LL_ORIGIN $locstr -section_id cpu$i|cpu
			set_global_assignment -name LL_SOURCE_REGION cpu -section_id cpu$i|cpu
			set_global_assignment -name LL_SOURCE_PARTITION_HIERARCHY $entity -section_id cpu$i|cpu
		} else {
			# Create new
			set_logiclock -region cpu$i -auto_size false -floating false -reserved true -width $cur_width -height $cur_height -origin $locstr
			set_logiclock_contents -region cpu$i -to $entity
		}

		# Update stamping position
		if { $i == 0 || $i == 2 || $i == 5 || $i == 8 } {
			set cur_variant [expr $cur_variant + 1]
			set cur_y [lindex $c_start_y $cur_variant]
			set cur_y_dir [lindex $c_y_dirs $cur_variant]
			set cur_height [lindex $c_heights $cur_variant]
			if { $i != 0 } {
				set cur_x [expr $cur_x + $cur_width]
			}
			set cur_width [lindex $c_widths $cur_variant]
		} else {
			set cur_y [expr $cur_y + $cur_y_dir*$cur_height]
		}
	}

	export_assignments
}

# Remainder of flow
execute_module -tool cdb -args --merge

if {$sweep} {
	for { set i 0 } { $i < [llength $seeds] } { incr i } {
		set seed [lindex $seeds $i]
		set_global_assignment -name PROJECT_OUTPUT_DIRECTORY out_$seed
		execute_module -tool fit -args "--seed=$seed"
		execute_module -tool sta
	}
} else {
	if { $seed < 0 } {
		execute_module -tool fit
	} else {
		execute_module -tool fit -args "--seed=$seed"
	}
	execute_module -tool sta

	project_close
	if { $fmax } {
		qexec "quartus_cdb -t adjust_plls.tcl -fmax $fmax"
	} else {
		qexec "quartus_cdb -t adjust_plls.tcl"
	}
	project_open DE4

	execute_module -tool asm
}

project_close

