onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /rotate_prio_tb/in_valid
add wave -noupdate -format Literal -radix unsigned /rotate_prio_tb/prio
add wave -noupdate -format Literal /rotate_prio_tb/out_sel
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {605000 ps} 0} {{Cursor 2} {10891008 ps} 0}
configure wave -namecolwidth 223
configure wave -valuecolwidth 91
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
WaveRestoreZoom {0 ps} {105 ns}
