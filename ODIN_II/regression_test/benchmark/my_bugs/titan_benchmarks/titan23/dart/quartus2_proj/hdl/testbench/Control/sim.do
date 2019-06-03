vlib work

vlog ../../Control.v
vlog ../../Control_tb.v

vsim -novopt -lib work Control_tb

do wave.do
log -r /*
