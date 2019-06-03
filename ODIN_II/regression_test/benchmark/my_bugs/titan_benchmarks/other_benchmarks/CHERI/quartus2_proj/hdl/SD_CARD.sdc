#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 11.1 Build 173 11/01/2011 SJ Full Version
#
#************************************************************

# Copyright (C) 1991-2011 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "SD_CLK" -period 20.000ns [get_ports {SD_CLK}]


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# tsu/th constraints

set_input_delay -clock "SD_CLK" -max 10ns [get_ports {SD_CLK SD_CMD SD_DAT[0] SD_DAT[1] SD_DAT[2] SD_DAT[3]}] 


# tco constraints

set_output_delay -clock "SD_CLK" -max 10ns [get_ports {SD_CLK SD_CMD SD_DAT[0] SD_DAT[1] SD_DAT[2] SD_DAT[3]}] 


# tpd constraints

