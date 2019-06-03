onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/config_valid
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/config_word
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/control_error
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/measure
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/reset
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/rx_word
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/rx_word_valid
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/sim_enable
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/sim_error
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/sim_error_in
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/sim_quiescent
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/sim_reset
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/sim_time_tick
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/stats_shift
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/stats_word
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/stop_injection
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/tx_word
add wave -noupdate -format Logic -radix hexadecimal /Control_tb/tx_word_valid
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/uut/r_timer_counter
add wave -noupdate -format Literal -radix hexadecimal /Control_tb/uut/r_state
add wave -noupdate -format Literal -radix unsigned /Control_tb/uut/r_data_counter
add wave -noupdate -format Literal -radix unsigned /Control_tb/uut/r_tx_state
add wave -noupdate -format Literal /Control_tb/uut/r_control
add wave -noupdate -format Logic /Control_tb/tx_ack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {475000 ps} 0}
configure wave -namecolwidth 197
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
WaveRestoreZoom {401 ns} {821 ns}
