onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/sim_time_tick
add wave -noupdate -format Literal -radix hexadecimal /CreditCounter_tb/config_in
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /CreditCounter_tb/config_out
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/config_out_valid
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/credit_in_valid
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/credit_ack
add wave -noupdate -format Logic -radix hexadecimal /CreditCounter_tb/decrement
add wave -noupdate -format Literal -radix unsigned /CreditCounter_tb/count_out
add wave -noupdate -format Literal -radix unsigned /CreditCounter_tb/uut/r_count
add wave -noupdate -divider mux_3to1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44094 ps} 0} {{Cursor 2} {496829 ps} 0}
configure wave -namecolwidth 290
configure wave -valuecolwidth 126
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
WaveRestoreZoom {0 ps} {239451 ps}
