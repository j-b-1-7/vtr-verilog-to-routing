#**************************************************************
# This .sdc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
create_clock -period 20 [get_ports OSC_50_BANK2]
create_clock -period 20 [get_ports OSC_50_BANK3]
create_clock -period 20 [get_ports OSC_50_BANK4]
create_clock -period 20 [get_ports OSC_50_BANK5]
create_clock -period 20 [get_ports OSC_50_BANK6]
create_clock -period 20 [get_ports OSC_50_BANK7]

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from reset_n -to *
set_false_path -from [get_registers {usb_portmux:usb_portmux_inst|sopc_sys:sopc_sys_inst|sopc_sys_reset_clk_domain_synch_module:sopc_sys_reset_clk_domain_synch|data_out}] -to *

set_false_path -from *clique_buffer*|waddr_cnt[*] -to the_pll_inst|*|clk[0]
set_false_path -from *clique_buffer*|n_cliques[*] -to the_pll_inst|*|clk[0]
set_false_path -from *clique_buffer*|global_maxsize[*] -to the_pll_inst|*|clk[0]

set_false_path -from *debug_stats*|o_dbg_outdata[*]
set_false_path -to *debug_stats*|wu_busy[*]
set_false_path -to *debug_stats*|set_running

#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************



