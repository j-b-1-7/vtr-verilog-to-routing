    
vlib work

vlog ../../is_less_than.v
vlog ../../TGBernoulli.v +incdir+../../
vlog ../../TGBernoulliFSM.v +incdir+../../
vlog ../../RNG.v
vlog -sv TGBernoulli_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work TGBernoulli_tb

do "wave.do"
log -r /*
#run 200ns
