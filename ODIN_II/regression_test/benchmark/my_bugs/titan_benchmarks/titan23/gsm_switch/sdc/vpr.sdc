#VPR compatible SDC file for benchmark 'gsm_switch'

#*******************************
# set_time_format 
#*******************************
# Unsuported by VPR

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 { clk_33M }
create_clock -period 1.0 { ClockGenerator:clk_gen\|pll_clocks:CLK_80MHz_Generator\|altpll:altpll_component\|pll_clocks_altpll:auto_generated\|wire_pll1_clk\[0\] }
create_clock -period 1.0 { ClockGenerator:clk_gen\|pll_clocks:CLK_80MHz_Generator\|altpll:altpll_component\|pll_clocks_altpll:auto_generated\|wire_pll1_clk\[1\] }
create_clock -period 1.0 { shift_clk }

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
set_clock_groups -exclusive -group { clk_33M } -group { ClockGenerator:clk_gen\|pll_clocks:CLK_80MHz_Generator\|altpll:altpll_component\|pll_clocks_altpll:auto_generated\|wire_pll1_clk\[0\] } -group { ClockGenerator:clk_gen\|pll_clocks:CLK_80MHz_Generator\|altpll:altpll_component\|pll_clocks_altpll:auto_generated\|wire_pll1_clk\[1\] } -group { shift_clk }
