
vsim -novopt -L xilinxcorelib_ver -L unisims_ver -sv_lib dpi sim_tb

do "wave.do"
log -r /*
run 104us
