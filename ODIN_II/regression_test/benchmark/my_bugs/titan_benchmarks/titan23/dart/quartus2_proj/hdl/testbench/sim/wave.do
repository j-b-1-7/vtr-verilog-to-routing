onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/clock_2x
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/enable
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/sim_time_tick
add wave -noupdate -format Literal -radix hexadecimal /sim_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/error
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/quiescent
add wave -noupdate -format Literal -radix hexadecimal /sim_tb/config_in
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /sim_tb/config_out
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/config_out_valid
add wave -noupdate -format Logic -radix hexadecimal /sim_tb/stats_shift
add wave -noupdate -format Literal -radix hexadecimal /sim_tb/stats_out
add wave -noupdate -format Literal /sim_tb/sim/csp_can_increment
add wave -noupdate -format Literal /sim_tb/sim/fsp_can_increment
add wave -noupdate -format Literal /sim_tb/sim/part_can_increment
add wave -noupdate -format Literal /sim_tb/sim/part_error
add wave -noupdate -format Literal /sim_tb/sim/fdp_error
add wave -noupdate -format Literal /sim_tb/sim/cdp_error
add wave -noupdate -divider Stats
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_0/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_0/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_0/node[1]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_0/node[1]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_2/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_2/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_3/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_3/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_4/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_4/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_5/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_5/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_6/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_6/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_7/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_7/node[0]/n/tg/stats_sum_latency}
add wave -noupdate -divider {Partition 1}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/flit_in}
add wave -noupdate -format Logic -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/flit_in_valid}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/stats_nreceived}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/w_received_flit}
add wave -noupdate -format Logic -radix hexadecimal {/sim_tb/sim/part_1/node[0]/n/tg/w_recv_flit}
add wave -noupdate -divider {Partition 4}
add wave -noupdate -format Logic /sim_tb/sim/part_4/error
add wave -noupdate -format Logic /sim_tb/sim/part_4/rt_error
add wave -noupdate -format Logic {/sim_tb/sim/part_4/node[0]/n/w_rt_error}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/node[0]/n/w_port_error}
add wave -noupdate -format Logic {/sim_tb/sim/part_4/node[0]/n/rt/w_obuf_full}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/node[0]/n/rt/rtable_oport}
add wave -noupdate -format Logic {/sim_tb/sim/part_4/node[0]/n/rt/w_s1_flit_valid}
add wave -noupdate -format Literal -radix binary {/sim_tb/sim/part_4/node[0]/n/rt/rtable_dest}
add wave -noupdate -format Literal -radix hexadecimal {/sim_tb/sim/part_4/node[0]/n/rt/w_s1_flit}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/rtable[0]/genblk1/rt/dest_ina}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/rtable[0]/genblk1/rt/dest_inb}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/rtable[0]/genblk1/rt/nexthop_outa}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/rtable[0]/genblk1/rt/nexthop_outb}
add wave -noupdate -format Literal {/sim_tb/sim/part_4/node[0]/n/HADDR}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {100001723 ps} 0} {{Cursor 3} {64586 ps} 0} {{Cursor 3} {86390000 ps} 0} {{Cursor 4} {102301469 ps} 0}
configure wave -namecolwidth 266
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {102220933 ps} {103284161 ps}
