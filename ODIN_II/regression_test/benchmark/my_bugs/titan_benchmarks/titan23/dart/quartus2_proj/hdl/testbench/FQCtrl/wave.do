onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/enable
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/measure
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/obuf_full
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/threshold
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/total_packets_injected
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/config_in
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/tg_flit_out
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/tg_ready
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/tg_tick_rng
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/tg_rand_wire
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/tg_rand_below_threshold
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ts_out
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/config_out
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/config_out_valid
add wave -noupdate -divider {FQ Control}
add wave -noupdate -format Logic -radix hexadecimal /FQCtrl_tb/fq_ctrl/in_ready
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ctrl/in_timestamp
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ctrl/out_timestamp
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ctrl/bandwidth
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ctrl/latency
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ctrl/count
add wave -noupdate -format Literal -radix hexadecimal /FQCtrl_tb/fq_ctrl/last_ts
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 284
configure wave -valuecolwidth 70
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
WaveRestoreZoom {4984249 ps} {5000829 ps}
