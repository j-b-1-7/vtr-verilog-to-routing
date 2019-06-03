onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/enable
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/error
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/is_quiescent
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/packet_in
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/packet_in_valid
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/packet_request
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/flit_out_valid
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/r_flit_out_valid
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/measure
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/inj_time
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/vc
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/psize
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/dest_id
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/src_id
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/i
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/uut/w_tg_flit_out
add wave -noupdate -format Logic -radix hexadecimal /PacketPlayer_tb/uut/w_tg_flit_out_valid
add wave -noupdate -format Literal /PacketPlayer_tb/uut/w_oq_flit_full
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/uut/tg/time_diff
add wave -noupdate -format Literal -radix hexadecimal /PacketPlayer_tb/uut/tg/r_packet
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {825000 ps} 0}
configure wave -namecolwidth 279
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
WaveRestoreZoom {608916 ps} {1020584 ps}
