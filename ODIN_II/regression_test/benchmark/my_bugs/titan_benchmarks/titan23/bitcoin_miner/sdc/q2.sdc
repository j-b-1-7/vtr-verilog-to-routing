#Quartus II compatible SDC file for benchmark 'bitcoin_miner'

#*******************************
# set_time_format 
#*******************************
set_time_format -unit ns -decimal_places 3

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 -name OSC_CLK [get_ports {OSC_CLK}]


#*******************************
# create_generated_clock 
#*******************************
create_clock -period 1.0 -name {pll_inst|altpll_component|auto_generated|pll1|clk[0]} [get_pins {pll_inst|altpll_component|auto_generated|pll1|clk[0]}]


#*******************************
# set_clock_uncertainty 
#*******************************
set_clock_uncertainty -rise_from [all_clocks] -rise_to [all_clocks]  0.0
set_clock_uncertainty -rise_from [all_clocks] -fall_to [all_clocks]  0.0
set_clock_uncertainty -fall_from [all_clocks] -rise_to [all_clocks]  0.0
set_clock_uncertainty -fall_from [all_clocks] -fall_to [all_clocks]  0.0

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
set_clock_groups -exclusive -group { OSC_CLK } -group { pll_inst|altpll_component|auto_generated|pll1|clk[0] } 
