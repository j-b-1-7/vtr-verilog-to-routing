onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Router
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/enable
add wave -noupdate -format Literal -radix unsigned /Router_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/sim_time_tick
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/error
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/can_increment
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/ram_config_out
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/ram_config_out_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/config_in
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/config_out
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/config_out_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/flit_in
add wave -noupdate -format Literal -radix hexadecimal -expand /Router_tb/flit_in_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/flit_ack
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/flit_out
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/flit_out_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/nexthop_out
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/dequeue
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/credit_in
add wave -noupdate -format Literal -radix hexadecimal -expand /Router_tb/credit_in_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/credit_ack
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/credit_out
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/credit_out_valid
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/credit_dequeue
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/rtable_dest
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/rtable_oport
add wave -noupdate -divider Router
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[0]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[1]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[2]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[3]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[4]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[5]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[6]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[7]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[8]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal {/Router_tb/uut/ovc[9]/credit/r_count}
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/uut/w_s1_flit
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/uut/w_s1_flit_valid
add wave -noupdate -format Logic /Router_tb/uut/w_vc_alloc_out
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/uut/w_s2_updated_flit
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/uut/r_s2_flit_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/uut/rtable_dest
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/uut/rtable_oport
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/rtable/ram_config_in
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/rtable/ram_config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/rtable/ram_config_out
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/rtable/ram_config_out_valid
add wave -noupdate -format Literal /Router_tb/uut/w_vc_alloc_mask
add wave -noupdate -format Literal -radix hexadecimal /Router_tb/uut/obuf/data_in
add wave -noupdate -format Logic -radix hexadecimal /Router_tb/uut/obuf/write
add wave -noupdate -format Logic /Router_tb/uut/w_s2_routed
add wave -noupdate -format Logic /Router_tb/uut/w_s2_route_enable
add wave -noupdate -format Logic /Router_tb/uut/w_s2_vc_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6975000 ps} 0}
configure wave -namecolwidth 293
configure wave -valuecolwidth 108
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
WaveRestoreZoom {5524044 ps} {6317748 ps}
