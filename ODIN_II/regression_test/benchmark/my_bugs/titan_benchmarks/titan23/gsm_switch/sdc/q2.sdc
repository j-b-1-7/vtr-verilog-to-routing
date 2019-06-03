#Quartus II compatible SDC file for benchmark 'gsm_switch'

#*******************************
# set_time_format 
#*******************************
set_time_format -unit ns -decimal_places 3

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 -name clk_33M [get_ports {clk_33M}]

create_clock -period 1.0 -name shift_clk [get_ports {shift_clk}]

create_clock -period 1.0 -name extern_rst_n [get_ports {extern_rst_n}]


#*******************************
# create_generated_clock 
#*******************************
create_clock -period 1.0 -name {clk_gen|CLK_80MHz_Generator|altpll_component|auto_generated|pll1|clk[0]} [get_pins {clk_gen|CLK_80MHz_Generator|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {clk_gen|CLK_80MHz_Generator|altpll_component|auto_generated|pll1|clk[1]} [get_pins {clk_gen|CLK_80MHz_Generator|altpll_component|auto_generated|pll1|clk[1]}]


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
set_clock_groups -exclusive -group { clk_33M } -group { shift_clk } -group { extern_rst_n } -group { clk_gen|CLK_80MHz_Generator|altpll_component|auto_generated|pll1|clk[0] } -group { clk_gen|CLK_80MHz_Generator|altpll_component|auto_generated|pll1|clk[1] } 
