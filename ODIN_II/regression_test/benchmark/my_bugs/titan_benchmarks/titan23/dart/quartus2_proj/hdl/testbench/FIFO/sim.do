    
vlib work

vlog ../../LFSR3_9.v
vlog ../../RAMFIFO_ctrl_lfsr.v
vlog ../../DualBRAM.v
vlog ../../RAMFIFO_single.v
vlog ../../srl_fifo.v
#vlog ../../RAMFIFO_fwft.v
vlog ../../RAMFIFO_single_slow.v
vlog -sv FIFO_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work FIFO_tb

do "wave.do"
log -r /*
#run 200ns
