#Quartus II compatible SDC file for benchmark 'mes_noc'

#*******************************
# set_time_format 
#*******************************
set_time_format -unit ns -decimal_places 3

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 -name clk [get_ports {clk}]


#*******************************
# create_generated_clock 
#*******************************
create_clock -period 1.0 -name {\using_pll:use_noc_pll_3:noc_pll_3|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_3:noc_pll_3|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:use_noc_pll_2:noc_pll_2|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_2:noc_pll_2|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:use_noc_pll_4:noc_pll_4|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_4:noc_pll_4|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:use_noc_pll_5:noc_pll_5|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_5:noc_pll_5|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:separate_clk:noc_pll_0|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:separate_clk:noc_pll_0|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:use_noc_pll_1:noc_pll_1|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_1:noc_pll_1|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:use_noc_pll_6:noc_pll_6|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_6:noc_pll_6|altpll_component|auto_generated|pll1|clk[0]}]

create_clock -period 1.0 -name {\using_pll:use_noc_pll_7:noc_pll_7|altpll_component|auto_generated|pll1|clk[0]} [get_pins {\using_pll:use_noc_pll_7:noc_pll_7|altpll_component|auto_generated|pll1|clk[0]}]


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
set_clock_groups -exclusive -group { clk } -group { \using_pll:use_noc_pll_3:noc_pll_3|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:use_noc_pll_2:noc_pll_2|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:use_noc_pll_4:noc_pll_4|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:use_noc_pll_5:noc_pll_5|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:separate_clk:noc_pll_0|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:use_noc_pll_1:noc_pll_1|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:use_noc_pll_6:noc_pll_6|altpll_component|auto_generated|pll1|clk[0] } -group { \using_pll:use_noc_pll_7:noc_pll_7|altpll_component|auto_generated|pll1|clk[0] } 
