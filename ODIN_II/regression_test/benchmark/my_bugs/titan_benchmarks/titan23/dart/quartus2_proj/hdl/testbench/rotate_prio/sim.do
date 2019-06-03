    
vlib work

vlog ../../rotate_prio.v +incdir+../../
vlog ../../rotate_shift_left.v +incdir+../../
vlog ../../rotate_shift_right.v +incdir+../../
vlog ../../prio_encoder.v +incdir+../../

vlog -sv rotate_prio_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work rotate_prio_tb

do "wave.do"
log -r /*
#run 200ns
