package require ::quartus::project
package require ::quartus::report

global quartus

#
# Get the project name, open the project, and add usb_portmux
# to the user library search path
#

set project_was_open [is_project_open]

if { !$project_was_open } {
	set q_args $quartus(args)
	
	if { [llength $q_args] < 1 } {
		post_message -type error "Please specify project file"
		qexit -error
	}

	set project_name [lindex $q_args 0]

	if [ catch {project_open $project_name} temp ] {
		post_message -type error "Error opening project: $temp"
		qexit -error
	}
} else {
	set project_name $::quartus(project)
}

set_global_assignment -name QIP_FILE usb_portmux/usb_portmux.qip
export_assignments


#
# Read and parse the .ports file
#

set ports_file "$project_name.ports"

if {[catch {set fh [open $ports_file r]} err]} {
	post_message -type error "Error opening $ports_file: $err"
	qexit -error
}

set signals {}
while { [gets $fh line] != -1 } {
	if { [regexp {^\s*#} $line] } {
		continue
	}
	
	if { [regexp {^\s*(\w+)\s+(\w+)\s+(\w+)(?:\s+(\w+)\s+(\w+))?} $line dummy name dir bits hs_f2s hs_s2f] } {
		lappend signals [list $name $dir $bits $hs_f2s $hs_s2f]
		
		if { $dir eq "i" } {
			set dir_long "To FPGA"
		} else {
			set dir_long "From FPGA"
		}
	}
}

close $fh

post_message -type info "Found [llength $signals] signals"

if { !$project_was_open } {
	project_close
}





#
# Generate the portmux
#

set NUM_PORTS [llength $signals]
set MODULE_PORTS {}
set INSTANCES {}
set HANDSHAKES {}
set CYCLES_LIST {}

for { set i 0 } { $i < $NUM_PORTS } { incr i } {
	set signal [lindex $signals $i]
	set name [lindex $signal 0]
	set dir [lindex $signal 1]
	set bits [lindex $signal 2]
	set hs_f2s [lindex $signal 3]
	set hs_s2f [lindex $signal 4]
	
	set pbits [expr $bits-1]
	if { [llength $hs_f2s] } {
		set has_hs 1
	} else {
		set has_hs 0
	}	
	
	if { $dir eq "i" } {
		append MODULE_PORTS "\toutput\t\[$pbits:0\]\t$name,\n"
		if { $has_hs } {
			append MODULE_PORTS "\tinput\t$hs_f2s,\n"
			append MODULE_PORTS "\toutput\t$hs_s2f,\n"
		}

		if { $has_hs } {
			append INSTANCES "sys_to_fpga # (.WIDTH($bits)) ${name}_inst (.clk(clk), .shift_en(shift_en), .sel(sel\[$i\]), .mux_data(s2f_data), .user_data($name));\n"
		
			append HANDSHAKES "assign $hs_s2f = s2f_ready \\\& sel\[$i\];\n"
			append HANDSHAKES "assign s2f_wants\[$i\] = $hs_f2s;\n"
		} else {
			append INSTANCES "wire \[$pbits:0\] ${name}_oreg_d;\n"
			append INSTANCES "sys_to_fpga # (.WIDTH($bits)) ${name}_inst (.clk(clk), .shift_en(shift_en), .sel(sel\[$i\]), .mux_data(s2f_data), .user_data(${name}_oreg_d));\n"
			append INSTANCES "lpm_ff # (.LPM_WIDTH($bits)) ${name}_oreg (.clock(clk), .data(${name}_oreg_d), .enable(s2f_ready \\\& sel\[$i\]), .q($name));\n"
			
			append HANDSHAKES "assign s2f_wants\[$i\] = 1'b1;\n"
		}
	} else {
		append MODULE_PORTS "\tinput\t\[$pbits:0\]\t$name,\n"
		if { $has_hs } {
			append MODULE_PORTS "\toutput\t$hs_s2f,\n"
			append MODULE_PORTS "\tinput\t$hs_f2s,\n"
		}
		
		set r1 [expr $i * 32]
		set r2 [expr $r1 + 31]
		
		append INSTANCES "fpga_to_sys # (.WIDTH($bits)) ${name}_inst (.clk(clk), .shift_en(shift_en), .sel(sel\[$i\]),.passthru(passthru), .pload(pload), .mux_data(f2s_datas\[$r2:$r1\]), .user_data($name));\n"
		
		if { $has_hs } {
			append HANDSHAKES "assign $hs_s2f = f2s_want \\\& sel\[$i\];\n"
			append HANDSHAKES "assign f2s_readies\[$i\] = $hs_f2s;\n"
		} else {
			append HANDSHAKES "assign f2s_readies\[$i\] = 1'b1;\n"
		}
	}
}


for { set i [expr $NUM_PORTS-1] } { $i >= 0 } { incr i -1 } {
	set signal [lindex $signals $i]
	set bits [lindex $signal 2]
	
	set cycles [expr ($bits-1) / 32 ]
	
	append CYCLES_LIST "4'd$cycles,"
}

# Remove dangling commas
set MODULE_PORTS [string range $MODULE_PORTS 0 end-2]
set CYCLES_LIST [string range $CYCLES_LIST 0 end-1]


# Read the template file
set template_file "usb_portmux/usb_portmux.v.template"
if {[catch {set fh [open $template_file r]} err]} {
	post_message -type error "Error opening $template_file: $err"
	qexit -error
}
set template [read $fh]
close $fh

# Fill in template
regsub -all "AUTOGEN_MODULE_PORTS" $template $MODULE_PORTS template
regsub -all "AUTOGEN_NUM_PORTS" $template $NUM_PORTS template
regsub -all "AUTOGEN_CYCLES_LIST" $template $CYCLES_LIST template
regsub -all "AUTOGEN_INSTANCES" $template $INSTANCES template
regsub -all "AUTOGEN_HANDSHAKES" $template $HANDSHAKES template

# Write portmux file
set output_file "usb_portmux/usb_portmux.v"
if {[catch {set fh [open $output_file w]} err]} {
	post_message -type error "Error opeaning $output_file: $err"
	qexit -error
}
puts $fh $template
close $fh

post_message -type info "Wrote usb_portmux.v"
