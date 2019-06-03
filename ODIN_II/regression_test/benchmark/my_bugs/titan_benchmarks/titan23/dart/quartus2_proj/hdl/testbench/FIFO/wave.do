onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/clock_2x
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/write
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/data_in
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/has_data
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/slow_has_data
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/empty
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/srl_empty
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/slow_empty
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/full
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/srl_full
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/slow_full
add wave -noupdate -format Logic -radix hexadecimal /FIFO_tb/read
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/data_out
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/srl_data_out
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/slow_data_out
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/rdout
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/rsrl_dout
add wave -noupdate -format Literal -radix hexadecimal /FIFO_tb/rslow_dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {55795011 ps} 0} {{Cursor 3} {330000 ps} 0} {{Cursor 3} {59710000 ps} 0}
configure wave -namecolwidth 186
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
WaveRestoreZoom {0 ps} {630 ns}
