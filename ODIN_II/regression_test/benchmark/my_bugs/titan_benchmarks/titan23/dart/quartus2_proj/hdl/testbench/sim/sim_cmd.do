
transcript on

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -sv_lib dpi sim_tb
do "list.do"
run 500us
write list tmp.lst

quit -f
