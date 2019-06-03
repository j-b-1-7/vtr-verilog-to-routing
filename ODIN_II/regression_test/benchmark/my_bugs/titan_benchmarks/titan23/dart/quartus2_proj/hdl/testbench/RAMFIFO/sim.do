    
vlib work

vlog ../../LFSR3_9.v +incdir+../../
vlog ../../RAMFIFO_ctrl_lfsr.v +incdir+../../
vlog ../../RAMFIFO_ctrl_lfsr_dc.v +incdir+../../
vlog ../../mux_Nto1.v +incdir+../../
vlog ../../DualBRAM.v +incdir+../../
vlog ../../decoder_N.v +incdir+../../
vlog ../../RAMFIFO.v +incdir+../../
vlog ../../RAMFIFO_slow.v +incdir+../../
vlog ../../PackedFIFO.v +incdir+../../
vlog -sv RAMFIFO_tb.v +incdir+../../

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work RAMFIFO_tb

do "wave.do"
log -r /*
#run 200ns
