onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/clock
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/reset
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/enable
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/sim_time
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/sim_time_tick
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/error
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/config_in
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/config_in_valid
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/config_out
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/config_out_valid
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/stats_shift
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/stats_in
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/stats_out
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/flit_in
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/flit_in_valid
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/nexthop_in
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/flit_ack
add wave -noupdate -format Literal -radix binary /TrafficGen_tb/dequeue
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/flit_out
add wave -noupdate -format Literal -radix binary /TrafficGen_tb/flit_out_valid
add wave -noupdate -format Literal /TrafficGen_tb/uut/oq/fq/empty
add wave -noupdate -format Literal /TrafficGen_tb/uut/oq/w_flit_valid
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/measure
add wave -noupdate -divider RNG
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/rng/s1
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/rng/s2
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/rng/s3
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/w_rand_wire
add wave -noupdate -format Logic /TrafficGen_tb/uut/rng/enable
add wave -noupdate -divider TG
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/threshold
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/psize
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/sendto
add wave -noupdate -format Logic /TrafficGen_tb/uut/w_recv_flit
add wave -noupdate -format Logic /TrafficGen_tb/uut/w_iq_flit_is_tail
add wave -noupdate -format Logic /TrafficGen_tb/uut/w_iq_flit_is_measurement
add wave -noupdate -format Literal -radix unsigned /TrafficGen_tb/uut/stats_nreceived
add wave -noupdate -format Literal -radix unsigned /TrafficGen_tb/uut/stats_sum_latency
add wave -noupdate -divider IQ
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/iq/ctrl/bandwidth
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/iq/ctrl/latency
add wave -noupdate -divider OQ
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/oq/ctrl/bandwidth
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/oq/ctrl/latency
add wave -noupdate -divider TGBernoulliFSM
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/clock
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/reset
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/enable
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/sim_time
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/measure
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/psize
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/sendto
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/obuf_full
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/rand_below_threshold
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/flit_out
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/ready
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/tick_rng
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/lag_ts
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/flits_injected
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/state
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/next_state
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/w_inc_lag_ts
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/w_tick_rng
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/w_inject_head
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/w_inject_normal
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/w_inject_tail
add wave -noupdate -format Logic -radix hexadecimal /TrafficGen_tb/uut/tg/w_clear_flits_injected
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/w_flits_injected
add wave -noupdate -format Literal -radix hexadecimal /TrafficGen_tb/uut/tg/w_src_or_injection
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {605000 ps} 0} {{Cursor 2} {10436038 ps} 0}
configure wave -namecolwidth 418
configure wave -valuecolwidth 80
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
WaveRestoreZoom {7881563 ps} {10637813 ps}
