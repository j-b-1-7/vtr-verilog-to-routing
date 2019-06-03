package require ::quartus::project
package require ::quartus::report
package require ::quartus::misc

project_open DE4
load_report

set panel [get_report_panel_id {Fitter||Resource Section||Fitter Resource Usage Summary}]

set rowname {    -- Combinational ALUT/register pairs used in final Placement}
set row [get_report_panel_row -row_name $rowname -id $panel]
set logic_total [lindex $row 1]

set keys {{M9K blocks} {M144K blocks} {DSP block 18-bit elements}}
foreach rowname $keys {
	set row [get_report_panel_row -row_name $rowname -id $panel]
	set val [lindex $row 1]
	set val [lindex $val 0]
	regsub -all {,} $val {} val
	puts "$rowname: $val"
}

set panel [get_report_panel_id {Fitter||Resource Section||Fitter Resource Utilization by Entity}]
set c1 [get_report_panel_column_index -id $panel "Combinational with no register\nALUT/register pair"]
set c2 [get_report_panel_column_index -id $panel "Register-Only\nALUT/register pair"]
set c3 [get_report_panel_column_index -id $panel "Combinational with a register\nALUT/register pair"]
set re "(.*many_to_one.*)|(.*one_to_many.*)|(.*\\|router.*)"
set logic_net 0

for {set i 0} {$i < [get_number_of_rows -id $panel]} { incr i } {
	set row [get_report_panel_row -row $i -id $panel]
	set key [lindex $row 0]
	if {[regexp $re $key]} {
		set u1 [lindex $row $c1]
		set u2 [lindex $row $c2]
		set u3 [lindex $row $c3]
		set u1 [lindex $u1 0]
		set u2 [lindex $u2 0]
		set u3 [lindex $u3 0]
		set logic_net [expr $logic_net + $u1 + $u2 + $u3]
	}
}

puts "Total logic: $logic_total"
puts "Network logic: $logic_net"
puts [concat "Non-network logic: " [expr $logic_total - $logic_net]]

set panel [get_report_panel_id {Fitter||Resource Section||Logic and Routing Section||Interconnect Usage Summary}]
set keys {{Block interconnects} {C12 interconnects} {C4 interconnects} {Direct links} {Local interconnects} {R20 interconnects} {R20/C12 interconnect drivers} {R4 interconnects}}

foreach key $keys {
	set row [get_report_panel_row -row_name $key -id $panel]
	set val [lindex $row 1]
	set val [lindex $val 0]
	regsub -all {,} $val {} val
	puts [concat "$key: " $val]
}

set routing_total 0

for {set i 1} {$i < [get_number_of_rows -id $panel]} { incr i } {
	set row [get_report_panel_row -row $i -id $panel]
	set val [lindex $row 1]
	set val [lindex $val 0]
	regsub -all {,} $val {} val
	set routing_total [expr $routing_total + $val]
}

puts "Total routing: $routing_total"

project_close

