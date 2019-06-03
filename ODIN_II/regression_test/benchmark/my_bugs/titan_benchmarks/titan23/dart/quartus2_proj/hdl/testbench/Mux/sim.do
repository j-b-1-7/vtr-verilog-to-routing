    
vlib work

vlog ../../decoder_N.v
vlog ../../mux_Nto1.v
vlog ../../mux_Nto1_decoded.v

vlog -sv mux_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work mux_tb

do "wave.do"
log -r /*
#run 200ns
