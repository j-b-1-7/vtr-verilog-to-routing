#Quartus II compatible SDC file for benchmark 'LU_Network'

#*******************************
# set_time_format 
#*******************************
set_time_format -unit ns -decimal_places 3

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 -name OSC_50_BANK4 [get_ports {OSC_50_BANK4}]
create_clock -period 1.0 -name OSC_50_BANK6 [get_ports {OSC_50_BANK6}]
create_clock -period 1.0 -name OSC_50_BANK2 [get_ports {OSC_50_BANK2}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[0] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[0]}]
create_clock -period 1.0 -name M1_DDR2_dqs[0] [get_ports {M1_DDR2_dqs[0]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[3] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[3]}]
create_clock -period 1.0 -name M1_DDR2_dqs[3] [get_ports {M1_DDR2_dqs[3]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[2] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[2]}]
create_clock -period 1.0 -name M1_DDR2_dqs[2] [get_ports {M1_DDR2_dqs[2]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[1] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[1]}]
create_clock -period 1.0 -name M1_DDR2_dqs[1] [get_ports {M1_DDR2_dqs[1]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[7] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[7]}]
create_clock -period 1.0 -name M1_DDR2_dqs[7] [get_ports {M1_DDR2_dqs[7]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[6] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[6]}]
create_clock -period 1.0 -name M1_DDR2_dqs[6] [get_ports {M1_DDR2_dqs[6]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[5] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[5]}]
create_clock -period 1.0 -name M1_DDR2_dqs[5] [get_ports {M1_DDR2_dqs[5]}]
create_clock -period 1.0 -name ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[4] [get_registers {ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[4]}]
create_clock -period 1.0 -name M1_DDR2_dqs[4] [get_ports {M1_DDR2_dqs[4]}]

#*******************************
# create_generated_clock 
#*******************************
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[0]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[0]}]
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[1]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[1]}]
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[2]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[2]}]
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[3]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[3]}]
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[4]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[4]}]
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[5]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[5]}]
create_clock -period 1.0 -name {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[6]} [get_pins {ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[6]}]
create_clock -period 1.0 -name {the_pll_inst|altpll_component|auto_generated|pll1|clk[0]} [get_pins {the_pll_inst|altpll_component|auto_generated|pll1|clk[0]}]

#*******************************
# set_clock_uncertainty 
#*******************************
set_clock_uncertainty -rise_from [all_clocks] -rise_to [all_clocks]  0.000000
set_clock_uncertainty -rise_from [all_clocks] -fall_to [all_clocks]  0.000000
set_clock_uncertainty -fall_from [all_clocks] -rise_to [all_clocks]  0.000000
set_clock_uncertainty -fall_from [all_clocks] -fall_to [all_clocks]  0.000000

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
set_clock_groups -exclusive -group { OSC_50_BANK4 } -group { OSC_50_BANK6 } -group { OSC_50_BANK2 } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[0] } -group { M1_DDR2_dqs[0] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[3] } -group { M1_DDR2_dqs[3] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[2] } -group { M1_DDR2_dqs[2] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[1] } -group { M1_DDR2_dqs[1] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[7] } -group { M1_DDR2_dqs[7] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[6] } -group { M1_DDR2_dqs[6] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[5] } -group { M1_DDR2_dqs[5] } -group { ddr:ddr_inst|ddr_0002:ddr_inst|ddr_p0:p0|ddr_p0_memphy:umemphy|ddr_p0_read_datapath:uread_datapath|read_capture_clk_div2[4] } -group { M1_DDR2_dqs[4] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[0] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[1] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[2] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[3] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[4] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[5] } -group { ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1|clk[6] } -group { the_pll_inst|altpll_component|auto_generated|pll1|clk[0] } 

#*******************************
# set_false_path 
#*******************************

