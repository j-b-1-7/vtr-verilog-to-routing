    
vlib work

vlog ../../CreditCounter.v
vlog ../../mux_Nto1.v +incdir+../../
vlog CreditCounter_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work CreditCounter_tb

do "wave.do"
log -r /*
#run 200ns
