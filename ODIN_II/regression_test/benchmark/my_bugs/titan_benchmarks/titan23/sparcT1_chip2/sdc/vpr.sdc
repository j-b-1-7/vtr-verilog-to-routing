#VPR compatible SDC file for benchmark 'sparcT1_chip2'

#*******************************
# set_time_format 
#*******************************
# Unsuported by VPR

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 { TCK }
create_clock -period 1.0 { __ALT_INV__TCK~input }

#*******************************
# set_clock_uncertainty 
#*******************************
# Unsupported by VPR.  VPR does not model clock uncertainty.

#*******************************
# set_input_delay 
#*******************************
set_input_delay -clock virtual_io_clock -max 0.0 [get_ports *]

#*******************************
# set_output_delay 
#*******************************
set_output_delay -clock virtual_io_clock -max 0.0 [get_ports *]

#*******************************
# set_clock_groups 
#*******************************
set_clock_groups -exclusive -group { TCK } -group { __ALT_INV__TCK~input }
