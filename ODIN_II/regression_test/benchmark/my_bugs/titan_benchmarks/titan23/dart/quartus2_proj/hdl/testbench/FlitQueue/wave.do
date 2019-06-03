onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/enable
add wave -noupdate -format Literal -radix decimal /FlitQueue_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/sim_time_tick
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/error
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/config_in
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/config_out
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/config_out_valid
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/flit_full
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/flit_in
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/flit_in_valid
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/nexthop_in
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/flit_ack
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/flit_out
add wave -noupdate -format Literal -radix hexadecimal -expand /FlitQueue_tb/flit_out_valid
add wave -noupdate -format Literal -radix hexadecimal -expand /FlitQueue_tb/dequeue
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/credit_full
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/credit_in
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/credit_in_valid
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/credit_nexthop_in
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/credit_ack
add wave -noupdate -format Literal -radix hexadecimal /FlitQueue_tb/credit_out
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/credit_out_valid
add wave -noupdate -format Logic -radix hexadecimal /FlitQueue_tb/credit_dequeue
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {355000 ps} 0}
configure wave -namecolwidth 355
configure wave -valuecolwidth 76
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
WaveRestoreZoom {101140 ps} {384151 ps}
