onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/enable
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/measure
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/psize
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/sendto
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/threshold
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/obuf_full
add wave -noupdate -format Literal -radix hexadecimal -expand /TGBernoulli_tb/total_packets_injected
add wave -noupdate -divider TGBernoulli
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/ut0_rand_wire
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/ut0_rand_below_threshold
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/ut0_flit_out
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/ut0_ready
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/ut0_tick_rng
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/ut0/lag_ts
add wave -noupdate -divider TGBernoulliFSM
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/ut1_rand_wire
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/ut1_rand_below_threshold
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/ut1_flit_out
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/ut1_ready
add wave -noupdate -format Logic -radix hexadecimal /TGBernoulli_tb/ut1_tick_rng
add wave -noupdate -format Literal -radix hexadecimal /TGBernoulli_tb/ut1/lag_ts
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1297786 ps} 0}
configure wave -namecolwidth 233
configure wave -valuecolwidth 92
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
WaveRestoreZoom {0 ps} {2625 ns}
