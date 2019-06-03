    
vlib work

vlog ../../DistroRAM.v
vlog -sv DistroRAM_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work DistroRAM_tb

do "wave.do"
log -r /*
#run 200ns
