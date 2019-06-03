onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -radix hexadecimal /mux_tb/in
add wave -noupdate -format Literal -radix hexadecimal /mux_tb/esel
add wave -noupdate -format Literal -radix hexadecimal /mux_tb/dsel
add wave -noupdate -format Literal -radix hexadecimal -expand /mux_tb/mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {160000 ps} 0}
configure wave -namecolwidth 183
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
WaveRestoreZoom {0 ps} {210 ns}
