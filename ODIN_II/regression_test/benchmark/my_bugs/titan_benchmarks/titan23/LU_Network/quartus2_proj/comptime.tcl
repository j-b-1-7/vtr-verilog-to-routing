package require ::quartus::project
package require ::quartus::report
package require ::quartus::misc

proc forceInteger { x } { 
    set count [scan $x %d%s n rest] 
    if { $count <= 0 || ( $count == 2 && ![string is space $rest] ) } { 
        return -code error "not an integer: \"$x\"" 
    } 
    return $n 
} 

project_open DE4
load_report

set rownames {{Analysis & Synthesis} {Partition Merge} {Fitter}}
set panel [get_report_panel_id {Flow Elapsed Time}]
set rawtimes {}

foreach rowname $rownames {
	set row [get_report_panel_row -row_name $rowname -id $panel]
	lappend rawtimes [lindex $row 1]
}

set totaltime 0
foreach rawtime $rawtimes {
	set h 0 
	set m 0 
	set s 0 
	regexp {(\d+):(\d+):(\d+)} $rawtime -> h m s 
	set h [forceInteger $h]
	set m [forceInteger $m]
	set s [forceInteger $s]
	set totaltime [expr "$totaltime + $h * 3600 + $m * 60 + $s"]
}

set f [open ctime.txt w]
puts $f $totaltime
close $f

project_close

