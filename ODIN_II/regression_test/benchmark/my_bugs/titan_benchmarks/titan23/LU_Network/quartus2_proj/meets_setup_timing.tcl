package require cmdline
package require ::quartus::project
package require ::quartus::report
package require ::quartus::misc
global quartus

# Parse command-line arguments
set q_args $quartus(args)

set netonly 0
while { [cmdline::getopt q_args "netonly" optvar valvar] == 1 } {
	if { [string equal $optvar "netonly"] } { 
		set netonly 1
	}
}

project_open DE4
load_report

set panel {TimeQuest Timing Analyzer||Slow 900mV 85C Model||Slow 900mV 85C Model Setup Summary}
set nrows [get_number_of_rows -name $panel]
set failed_timing 0

for { set i 0 } { $i < $nrows } { incr i } {
	set row [get_report_panel_row -name $panel -row $i]
	set is_header [expr $i == 0]
	
	set clock [lindex $row 0]
	set slack [lindex $row 1]
	set tns [lindex $row 2]

	post_message -type info "$clock | $slack | $tns"
	if { !$netonly || ![string match "the_pll_inst*" $clock] } {
		if { !$is_header && ![string equal $tns "0.000"] } {
			set failed_timing 1
		}
	}
}

project_close

if {$failed_timing} {
	post_message -type info "Setup Timing Not Met"
	qexit -error
} else {
	post_message -type info "Setup Timing Met"
	qexit -success
}
