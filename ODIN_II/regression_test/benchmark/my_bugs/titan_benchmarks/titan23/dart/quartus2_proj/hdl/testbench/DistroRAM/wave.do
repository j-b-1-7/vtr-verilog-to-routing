onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /DistroRAM_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /DistroRAM_tb/en
add wave -noupdate -format Logic -radix hexadecimal /DistroRAM_tb/wen
add wave -noupdate -format Literal -radix hexadecimal /DistroRAM_tb/addr
add wave -noupdate -format Literal -radix hexadecimal /DistroRAM_tb/din
add wave -noupdate -format Literal -radix hexadecimal /DistroRAM_tb/dout
add wave -noupdate -format Logic /DistroRAM_tb/uut/wen
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {70000 ps} 0}
configure wave -namecolwidth 194
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {210 ns}
