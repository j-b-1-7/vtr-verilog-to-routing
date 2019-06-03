    
vlib work

vlog ../../is_less_than.v
vlog ../../TGBernoulli.v +incdir+../../
vlog ../../TGBernoulliFSM.v +incdir+../../
vlog ../../RNG.v
vlog ../../FQCtrl.v +incdir+../../
vlog -sv FQCtrl_tb.v

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work FQCtrl_tb

do "wave.do"
log -r /*
#run 200ns
