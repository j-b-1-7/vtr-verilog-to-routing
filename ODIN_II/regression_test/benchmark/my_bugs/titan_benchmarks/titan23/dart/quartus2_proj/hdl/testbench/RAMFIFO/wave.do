onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/data_in
add wave -noupdate -format Literal /RAMFIFO_tb/wcc
add wave -noupdate -format Logic /RAMFIFO_tb/write
add wave -noupdate -format Literal /RAMFIFO_tb/rcc
add wave -noupdate -format Logic /RAMFIFO_tb/read
add wave -noupdate -divider BRAM
add wave -noupdate -format Logic -radix hexadecimal /RAMFIFO_tb/uut/ram/clock
add wave -noupdate -format Logic -radix hexadecimal /RAMFIFO_tb/uut/ram/wen
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/uut/full
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/uut/empty
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/uut/has_data
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/uut/data_out
add wave -noupdate -divider RAMFIFO_slow
add wave -noupdate -format Logic /RAMFIFO_tb/wbusy
add wave -noupdate -format Logic -radix hexadecimal /RAMFIFO_tb/slow/clock
add wave -noupdate -format Logic -radix hexadecimal /RAMFIFO_tb/slow/error
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/slow/data_out
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/slow/full
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/slow/empty
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/slow/has_data
add wave -noupdate -format Literal /RAMFIFO_tb/slow/w_read_en
add wave -noupdate -format Literal /RAMFIFO_tb/slow/w_write_en
add wave -noupdate -format Literal /RAMFIFO_tb/slow/w_write
add wave -noupdate -format Literal /RAMFIFO_tb/slow/w_read
add wave -noupdate -divider PackedFIFO
add wave -noupdate -format Logic -radix hexadecimal /RAMFIFO_tb/pack/clock
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/pack/data_out
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/pack/full
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/pack/empty
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/pack/has_data
add wave -noupdate -format Literal /RAMFIFO_tb/pack/w_read_request
add wave -noupdate -format Literal /RAMFIFO_tb/pack/w_write_request
add wave -noupdate -format Literal /RAMFIFO_tb/pack/w_fifo_read
add wave -noupdate -format Literal /RAMFIFO_tb/pack/w_fifo_write
add wave -noupdate -format Literal /RAMFIFO_tb/pack/w_load_din
add wave -noupdate -format Literal /RAMFIFO_tb/pack/w_load_dout
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/pack/w_ram_dout
add wave -noupdate -format Literal /RAMFIFO_tb/pack/r_load_dout
add wave -noupdate -format Literal -radix hexadecimal /RAMFIFO_tb/pack/r_dout
add wave -noupdate -format Literal /RAMFIFO_tb/comp_error_slow
add wave -noupdate -format Literal /RAMFIFO_tb/comp_error_pack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5155000 ps} 0} {{Cursor 2} {287064 ps} 0} {{Cursor 3} {59710000 ps} 0}
configure wave -namecolwidth 272
configure wave -valuecolwidth 262
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
WaveRestoreZoom {169615 ps} {406538 ps}
