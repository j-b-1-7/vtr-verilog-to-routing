transcript off
onerror {resume}
set WildcardFilter {Variable Constant Generic Parameter SpecParam Assertion Cover Endpoint ScVariable CellInternal ImmediateAssert}
quietly WaveActivateNextPane {} 0
delete wave *

if { $argc < 1 } {
	puts "Need # of compute units"
	return
}

set arb 0
if { $argc > 1 } {
	puts "Arbiter ahoy!"
	set arb 1
}

set n_cpu $1

add wave -noupdate -group tb -radix hexadecimal /tb/*

add wave -noupdate -group tb -divider ports2av
add wave -noupdate -group tb -radix hexadecimal /tb/u0/ports2avalon/*

add wave -noupdate -group tb -divider export_master
add wave -noupdate -group tb -radix hexadecimal /tb/u0/export_inst/*

add wave -noupdate -group tb -divider qsys_wrapper
add wave -noupdate -group tb -radix hexadecimal /tb/u0/lu/*

add wave -noupdate -group top -radix hexadecimal /tb/u0/lu/lu_top_inst/*

if { $arb == 0 } {
	add wave -noupdate -group ctrl -divider router
	add wave -noupdate -group ctrl -radix hexadecimal /tb/u0/lu/lu_top_inst/ctrl_node/ctrl_router/*
} else {
	set bpath /tb/u0/lu/lu_top_inst/ctrl_o2m
	set nlevs [llength [find blocks $bpath/mklevs*]]
	for { set j 0 } { $j < $nlevs } { incr j } {
		set lpath $bpath/mklevs\[$j\]/
		add wave -noupdate -group ctrl -divider "o2m level $j"
		add wave -noupdate -group ctrl -radix hexadecimal $lpath/in_nodes*
		add wave -noupdate -group ctrl -radix hexadecimal $lpath/out_nodes*
		set nnodes [llength [find blocks $lpath/mknodes*]]
		for { set k 0 } { $k < $nnodes } { incr k } {
			set apath $lpath/mknodes\[$k\]/bcast
			if { [llength [find instances $apath]] > 0 } {
				add wave -noupdate -group ctrl -divider "bcast $j $k"
				add wave -noupdate -group ctrl -radix hexadecimal $apath/*
			}
		}
	}
	
	set bpath /tb/u0/lu/lu_top_inst/ctrl_m2o
	set nlevs [llength [find blocks $bpath/mklevs*]]
	for { set j 0 } { $j < $nlevs } { incr j } {
		set lpath $bpath/mklevs\[$j\]/
		add wave -noupdate -group ctrl -divider "m2o level $j"
		add wave -noupdate -group ctrl -radix hexadecimal $lpath/in_nodes*
		add wave -noupdate -group ctrl -radix hexadecimal $lpath/out_nodes*
		set nnodes [llength [find blocks $lpath/mknodes*]]
		for { set k 0 } { $k < $nnodes } { incr k } {
			set apath $lpath/mknodes\[$k\]/arb_gen/arb
			if { [llength [find instances $apath]] > 0 } {
				add wave -noupdate -group ctrl -divider "arb $j $k"
				add wave -noupdate -group ctrl -radix hexadecimal $apath/*
			}
		}
	}
}
add wave -noupdate -group ctrl -divider dp
add wave -noupdate -group ctrl -radix hexadecimal /tb/u0/lu/lu_top_inst/ctrl_node/dp/*
add wave -noupdate -group ctrl -divider sm
add wave -noupdate -group ctrl -radix hexadecimal /tb/u0/lu/lu_top_inst/ctrl_node/ctrl/*

if { $arb == 0 } {
	add wave -noupdate -group mem -divider router
	add wave -noupdate -group mem -radix hexadecimal /tb/u0/lu/lu_top_inst/mem_node/mem_router/*
} else {
	set bpath /tb/u0/lu/lu_top_inst/mem_o2m
	set nlevs [llength [find blocks $bpath/mklevs*]]
	for { set j 0 } { $j < $nlevs } { incr j } {
		set lpath $bpath/mklevs\[$j\]/
		add wave -noupdate -group mem -divider "o2m level $j"
		add wave -noupdate -group mem -radix hexadecimal $lpath/in_nodes*
		add wave -noupdate -group mem -radix hexadecimal $lpath/out_nodes*
		set nnodes [llength [find blocks $lpath/mknodes*]]
		for { set k 0 } { $k < $nnodes } { incr k } {
			set apath $lpath/mknodes\[$k\]/bcast
			if { [llength [find instances $apath]] > 0 } {
				add wave -noupdate -group mem -divider "bcast $j $k"
				add wave -noupdate -group mem -radix hexadecimal $apath/*
			}
		}
	}
	
	set bpath /tb/u0/lu/lu_top_inst/mem_m2o
	set nlevs [llength [find blocks $bpath/mklevs*]]
	for { set j 0 } { $j < $nlevs } { incr j } {
		set lpath $bpath/mklevs\[$j\]/
		add wave -noupdate -group mem -divider "m2o level $j"
		add wave -noupdate -group mem -radix hexadecimal $lpath/in_nodes*
		add wave -noupdate -group mem -radix hexadecimal $lpath/out_nodes*
		set nnodes [llength [find blocks $lpath/mknodes*]]
		for { set k 0 } { $k < $nnodes } { incr k } {
			set apath $lpath/mknodes\[$k\]/arb_gen/arb
			if { [llength [find instances $apath]] > 0 } {
				add wave -noupdate -group mem -divider "arb $j $k"
				add wave -noupdate -group mem -radix hexadecimal $apath/*
			}
		}
	}
}
add wave -noupdate -group mem -divider iface
add wave -noupdate -group mem -radix hexadecimal /tb/u0/lu/lu_top_inst/mem_node/iface/*





set blocks {net_iface main_ctrl clock_cross ram_net_read ram_net_write_curleft ram_net_write_top pipe_ctrl pipe top_block cur_block0 cur_block1 left_block0 left_block1 }
if { $arb != 1 } {
	set blocks [concat {cpu_router} $blocks]
}

for { set i 0 } { $i < $n_cpu } { incr i } {
	if { $arb != 0 } {
		set bpath /tb/u0/lu/lu_top_inst/cpu_adapters\[$i\]/
		set nlevs [llength [find blocks $bpath/cpu_o2m/mklevs*]]
		for { set j 0 } { $j < $nlevs } { incr j } {
			set lpath $bpath/cpu_o2m/mklevs\[$j\]/
			add wave -noupdate -group cpu$i -divider "o2m level $j"
			add wave -noupdate -group cpu$i -radix hexadecimal $lpath/in_nodes*
			add wave -noupdate -group cpu$i -radix hexadecimal $lpath/out_nodes*
			set nnodes [llength [find blocks $lpath/mknodes*]]
			for { set k 0 } { $k < $nnodes } { incr k } {
				set apath $lpath/mknodes\[$k\]/bcast
				if { [llength [find instances $apath]] > 0 } {
					add wave -noupdate -group cpu$i -divider "bcast $j $k"
					add wave -noupdate -group cpu$i -radix hexadecimal $apath/*
				}
			}
		}
		
		set nlevs [llength [find blocks $bpath/cpu_m2o/mklevs*]]
		for { set j 0 } { $j < $nlevs } { incr j } {
			set lpath $bpath/cpu_m2o/mklevs\[$j\]/
			add wave -noupdate -group cpu$i -divider "m2o level $j"
			add wave -noupdate -group cpu$i -radix hexadecimal $lpath/in_nodes*
			add wave -noupdate -group cpu$i -radix hexadecimal $lpath/out_nodes*
			set nnodes [llength [find blocks $lpath/mknodes*]]
			for { set k 0 } { $k < $nnodes } { incr k } {
				set apath $lpath/mknodes\[$k\]/arb_gen/arb
				if { [llength [find instances $apath]] > 0 } {
					add wave -noupdate -group cpu$i -divider "arb $j $k"
					add wave -noupdate -group cpu$i -radix hexadecimal $apath/*
				}
			}
		}
	}

	set cpu /tb/u0/lu/lu_top_inst/cpus\[$i\]/cpu/
	foreach block $blocks {
		add wave -noupdate -group cpu$i -divider "$block $i"
		add wave -noupdate -group cpu$i -radix hexadecimal $cpu/$block/*

        if { $i == 0 && $block eq "pipe" } {
		    add wave -noupdate -group cpu$i -radix hexadecimal $cpu/pipe/bpu_only/*
        }
	}
}


TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 10000
configure wave -gridperiod 20000
configure wave -griddelta 40
configure wave -timeline 1
configure wave -timelineunits ns
update

