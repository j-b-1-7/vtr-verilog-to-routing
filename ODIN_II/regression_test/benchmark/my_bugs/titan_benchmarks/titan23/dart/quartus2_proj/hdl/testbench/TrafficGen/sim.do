
vsim -novopt -L xilinxcorelib_ver -L unisims_ver -sv_lib dpi TrafficGen_tb

do "wave.do"
log -r /*
#run 200ns
