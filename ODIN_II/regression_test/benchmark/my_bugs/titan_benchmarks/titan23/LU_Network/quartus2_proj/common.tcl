# DE4 device-specific assignments
set_global_assignment -name FAMILY "Stratix IV"
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name DEVICE EP4SGX530KH40C2
set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
set_location_assignment PIN_AC35 -to OSC_50_BANK2
set_location_assignment PIN_AV22 -to OSC_50_BANK3
set_location_assignment PIN_AV19 -to OSC_50_BANK4
set_location_assignment PIN_AC6 -to OSC_50_BANK5
set_location_assignment PIN_AB6 -to OSC_50_BANK6
set_location_assignment PIN_A19 -to OSC_50_BANK7
set_location_assignment PIN_AH19 -to GCLKOUT_FPGA
set_location_assignment PIN_A21 -to GCLKIN
set_location_assignment PIN_B22 -to PLL_CLKIN_p
set_location_assignment PIN_AF16 -to OTG_D[0]
set_location_assignment PIN_AJ14 -to OTG_D[1]
set_location_assignment PIN_AD15 -to OTG_D[2]
set_location_assignment PIN_AE15 -to OTG_D[3]
set_location_assignment PIN_AE16 -to OTG_D[4]
set_location_assignment PIN_AH14 -to OTG_D[5]
set_location_assignment PIN_AM13 -to OTG_D[6]
set_location_assignment PIN_AN15 -to OTG_D[7]
set_location_assignment PIN_AP15 -to OTG_D[8]
set_location_assignment PIN_AG18 -to OTG_D[9]
set_location_assignment PIN_AG19 -to OTG_D[10]
set_location_assignment PIN_AM19 -to OTG_D[11]
set_location_assignment PIN_AN19 -to OTG_D[12]
set_location_assignment PIN_AV16 -to OTG_D[13]
set_location_assignment PIN_AT17 -to OTG_D[14]
set_location_assignment PIN_AV17 -to OTG_D[15]
set_location_assignment PIN_AU17 -to OTG_D[16]
set_location_assignment PIN_AW18 -to OTG_D[17]
set_location_assignment PIN_AT18 -to OTG_D[18]
set_location_assignment PIN_AU18 -to OTG_D[19]
set_location_assignment PIN_AR19 -to OTG_D[20]
set_location_assignment PIN_AW20 -to OTG_D[21]
set_location_assignment PIN_AW21 -to OTG_D[22]
set_location_assignment PIN_AF19 -to OTG_D[23]
set_location_assignment PIN_AE19 -to OTG_D[24]
set_location_assignment PIN_AE18 -to OTG_D[25]
set_location_assignment PIN_AD19 -to OTG_D[26]
set_location_assignment PIN_G13 -to OTG_D[27]
set_location_assignment PIN_M16 -to OTG_D[28]
set_location_assignment PIN_M27 -to OTG_D[29]
set_location_assignment PIN_K27 -to OTG_D[30]
set_location_assignment PIN_L26 -to OTG_D[31]
set_location_assignment PIN_K26 -to OTG_A[1]
set_location_assignment PIN_P25 -to OTG_A[2]
set_location_assignment PIN_N25 -to OTG_A[3]
set_location_assignment PIN_R24 -to OTG_A[4]
set_location_assignment PIN_P24 -to OTG_A[5]
set_location_assignment PIN_M25 -to OTG_A[6]
set_location_assignment PIN_L25 -to OTG_A[7]
set_location_assignment PIN_N23 -to OTG_A[8]
set_location_assignment PIN_K28 -to OTG_A[9]
set_location_assignment PIN_A29 -to OTG_A[10]
set_location_assignment PIN_J27 -to OTG_A[11]
set_location_assignment PIN_G26 -to OTG_A[12]
set_location_assignment PIN_F26 -to OTG_A[13]
set_location_assignment PIN_G28 -to OTG_A[14]
set_location_assignment PIN_B26 -to OTG_A[15]
set_location_assignment PIN_D17 -to OTG_A[16]
set_location_assignment PIN_F16 -to OTG_A[17]
set_location_assignment PIN_P19 -to OTG_CS_n
set_location_assignment PIN_AH20 -to OTG_DC_DACK
set_location_assignment PIN_AP21 -to OTG_DC_DREQ
set_location_assignment PIN_AT22 -to OTG_DC_IRQ
set_location_assignment PIN_AT21 -to OTG_HC_DACK
set_location_assignment PIN_AN21 -to OTG_HC_DREQ
set_location_assignment PIN_AJ20 -to OTG_HC_IRQ
set_location_assignment PIN_N19 -to OTG_OE_n
set_location_assignment PIN_AU22 -to OTG_RESET_n
set_location_assignment PIN_AR22 -to OTG_WE_n
set_location_assignment PIN_AW34 -to M1_DDR2_dq[4]
set_location_assignment PIN_AV32 -to M1_DDR2_dq[0]
set_location_assignment PIN_AW33 -to M1_DDR2_dq[5]
set_location_assignment PIN_AV31 -to M1_DDR2_dq[1]
set_location_assignment PIN_AW31 -to M1_DDR2_dm[0]
set_location_assignment PIN_AW30 -to M1_DDR2_dqsn[0]
set_location_assignment PIN_AV29 -to M1_DDR2_dqs[0]
set_location_assignment PIN_AW28 -to M1_DDR2_dq[6]
set_location_assignment PIN_AW27 -to M1_DDR2_dq[7]
set_location_assignment PIN_AW29 -to M1_DDR2_dq[2]
set_location_assignment PIN_AV28 -to M1_DDR2_dq[3]
set_location_assignment PIN_AM25 -to M1_DDR2_dq[12]
set_location_assignment PIN_AN25 -to M1_DDR2_dq[13]
set_location_assignment PIN_AP25 -to M1_DDR2_dq[8]
set_location_assignment PIN_AV26 -to M1_DDR2_dq[9]
set_location_assignment PIN_AW26 -to M1_DDR2_dm[1]
set_location_assignment PIN_AU26 -to M1_DDR2_dqsn[1]
set_location_assignment PIN_AP28 -to M1_DDR2_clk[0]
set_location_assignment PIN_AT26 -to M1_DDR2_dqs[1]
set_location_assignment PIN_AR28 -to M1_DDR2_clk_n[0]
set_location_assignment PIN_AU25 -to M1_DDR2_dq[10]
set_location_assignment PIN_AR25 -to M1_DDR2_dq[14]
set_location_assignment PIN_AT25 -to M1_DDR2_dq[11]
set_location_assignment PIN_AN24 -to M1_DDR2_dq[15]
set_location_assignment PIN_AN23 -to M1_DDR2_dq[16]
set_location_assignment PIN_AM23 -to M1_DDR2_dq[20]
set_location_assignment PIN_AP23 -to M1_DDR2_dq[17]
set_location_assignment PIN_AR23 -to M1_DDR2_dq[21]
set_location_assignment PIN_AU24 -to M1_DDR2_dqsn[2]
set_location_assignment PIN_AT24 -to M1_DDR2_dqs[2]
set_location_assignment PIN_AU23 -to M1_DDR2_dm[2]
set_location_assignment PIN_AL22 -to M1_DDR2_dq[18]
set_location_assignment PIN_AT23 -to M1_DDR2_dq[22]
set_location_assignment PIN_AM22 -to M1_DDR2_dq[19]
set_location_assignment PIN_AL21 -to M1_DDR2_dq[23]
set_location_assignment PIN_AJ22 -to M1_DDR2_dq[24]
set_location_assignment PIN_AK24 -to M1_DDR2_dq[28]
set_location_assignment PIN_AH23 -to M1_DDR2_dq[25]
set_location_assignment PIN_AJ23 -to M1_DDR2_dq[29]
set_location_assignment PIN_AH22 -to M1_DDR2_dm[3]
set_location_assignment PIN_AL23 -to M1_DDR2_dqsn[3]
set_location_assignment PIN_AK23 -to M1_DDR2_dqs[3]
set_location_assignment PIN_AF22 -to M1_DDR2_dq[26]
set_location_assignment PIN_AF23 -to M1_DDR2_dq[30]
set_location_assignment PIN_AE23 -to M1_DDR2_dq[27]
set_location_assignment PIN_AE22 -to M1_DDR2_dq[31]
set_location_assignment PIN_AT28 -to M1_DDR2_cke[0]
set_location_assignment PIN_AK27 -to M1_DDR2_cke[1]
set_location_assignment PIN_AT29 -to M1_DDR2_addr[15]
set_location_assignment PIN_AP27 -to M1_DDR2_ba[2]
set_location_assignment PIN_AU29 -to M1_DDR2_addr[14]
set_location_assignment PIN_AP26 -to M1_DDR2_addr[12]
set_location_assignment PIN_AU28 -to M1_DDR2_addr[11]
set_location_assignment PIN_AN27 -to M1_DDR2_addr[9]
set_location_assignment PIN_AT27 -to M1_DDR2_addr[7]
set_location_assignment PIN_AL27 -to M1_DDR2_addr[8]
set_location_assignment PIN_AU27 -to M1_DDR2_addr[6]
set_location_assignment PIN_AK26 -to M1_DDR2_addr[5]
set_location_assignment PIN_AN26 -to M1_DDR2_addr[4]
set_location_assignment PIN_AM26 -to M1_DDR2_addr[3]
set_location_assignment PIN_AW23 -to M1_DDR2_addr[2]
set_location_assignment PIN_AL25 -to M1_DDR2_addr[1]
set_location_assignment PIN_AV23 -to M1_DDR2_addr[0]
set_location_assignment PIN_AJ26 -to M1_DDR2_addr[10]
set_location_assignment PIN_AD25 -to M1_DDR2_ba[1]
set_location_assignment PIN_AH26 -to M1_DDR2_ba[0]
set_location_assignment PIN_AE21 -to M1_DDR2_ras_n
set_location_assignment PIN_AK25 -to M1_DDR2_we_n
set_location_assignment PIN_AG21 -to M1_DDR2_cs_n[0]
set_location_assignment PIN_AJ25 -to M1_DDR2_cas_n
set_location_assignment PIN_AG20 -to M1_DDR2_odt[0]
set_location_assignment PIN_AE25 -to M1_DDR2_cs_n[1]
set_location_assignment PIN_AD21 -to M1_DDR2_addr[13]
set_location_assignment PIN_AE24 -to M1_DDR2_odt[1]
set_location_assignment PIN_AK17 -to M1_DDR2_dq[32]
set_location_assignment PIN_AG16 -to M1_DDR2_dq[36]
set_location_assignment PIN_AM17 -to M1_DDR2_dq[33]
set_location_assignment PIN_AH17 -to M1_DDR2_dq[37]
set_location_assignment PIN_AL16 -to M1_DDR2_dqsn[4]
set_location_assignment PIN_AL17 -to M1_DDR2_dm[4]
set_location_assignment PIN_AK16 -to M1_DDR2_dqs[4]
set_location_assignment PIN_AF17 -to M1_DDR2_dq[38]
set_location_assignment PIN_AH16 -to M1_DDR2_dq[34]
set_location_assignment PIN_AE17 -to M1_DDR2_dq[39]
set_location_assignment PIN_AJ16 -to M1_DDR2_dq[35]
set_location_assignment PIN_AN17 -to M1_DDR2_dq[44]
set_location_assignment PIN_AR17 -to M1_DDR2_dq[40]
set_location_assignment PIN_AP17 -to M1_DDR2_dq[45]
set_location_assignment PIN_AN16 -to M1_DDR2_dq[41]
set_location_assignment PIN_AR16 -to M1_DDR2_dqsn[5]
set_location_assignment PIN_AT16 -to M1_DDR2_dm[5]
set_location_assignment PIN_AP16 -to M1_DDR2_dqs[5]
set_location_assignment PIN_AU16 -to M1_DDR2_dq[42]
set_location_assignment PIN_AU15 -to M1_DDR2_dq[46]
set_location_assignment PIN_AW16 -to M1_DDR2_dq[43]
set_location_assignment PIN_AT15 -to M1_DDR2_dq[47]
set_location_assignment PIN_AW11 -to M1_DDR2_dq[48]
set_location_assignment PIN_AW14 -to M1_DDR2_dq[52]
set_location_assignment PIN_AW12 -to M1_DDR2_dq[49]
set_location_assignment PIN_AV14 -to M1_DDR2_dq[53]
set_location_assignment PIN_AE20 -to M1_DDR2_clk[1]
set_location_assignment PIN_AF20 -to M1_DDR2_clk_n[1]
set_location_assignment PIN_AW13 -to M1_DDR2_dqsn[6]
set_location_assignment PIN_AV13 -to M1_DDR2_dqs[6]
set_location_assignment PIN_AU14 -to M1_DDR2_dm[6]
set_location_assignment PIN_AT14 -to M1_DDR2_dq[50]
set_location_assignment PIN_AU11 -to M1_DDR2_dq[54]
set_location_assignment PIN_AU12 -to M1_DDR2_dq[51]
set_location_assignment PIN_AT12 -to M1_DDR2_dq[55]
set_location_assignment PIN_AP13 -to M1_DDR2_dq[56]
set_location_assignment PIN_AR14 -to M1_DDR2_dq[60]
set_location_assignment PIN_AN14 -to M1_DDR2_dq[57]
set_location_assignment PIN_AP14 -to M1_DDR2_dq[61]
set_location_assignment PIN_AN13 -to M1_DDR2_dm[7]
set_location_assignment PIN_AT13 -to M1_DDR2_dqsn[7]
set_location_assignment PIN_AR13 -to M1_DDR2_dqs[7]
set_location_assignment PIN_AL15 -to M1_DDR2_dq[58]
set_location_assignment PIN_AM14 -to M1_DDR2_dq[59]
set_location_assignment PIN_AL14 -to M1_DDR2_dq[62]
set_location_assignment PIN_AL13 -to M1_DDR2_dq[63]
set_location_assignment PIN_AG24 -to M1_DDR2_SDA
set_location_assignment PIN_AH24 -to M1_DDR2_SCL
set_location_assignment PIN_AV25 -to M1_DDR2_SA[0]
set_location_assignment PIN_AW25 -to M1_DDR2_SA[1]
set_location_assignment PIN_AF25 -to RUP
set_location_assignment PIN_AG25 -to RDN
set_instance_assignment -name IO_STANDARD "1.8 V" -to RUP
set_instance_assignment -name IO_STANDARD "1.8 V" -to RDN
set_instance_assignment -name IO_STANDARD "2.5 V" -to OSC_50_BANK2
set_instance_assignment -name IO_STANDARD "1.8 V" -to OSC_50_BANK3
set_instance_assignment -name IO_STANDARD "1.8 V" -to OSC_50_BANK4
set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to OSC_50_BANK5
set_instance_assignment -name IO_STANDARD "2.5 V" -to OSC_50_BANK6
set_instance_assignment -name IO_STANDARD "1.8 V" -to OSC_50_BANK7
set_instance_assignment -name IO_STANDARD "1.8 V" -to GCLKOUT_FPGA
set_instance_assignment -name IO_STANDARD "1.8 V" -to GCLKIN
set_instance_assignment -name IO_STANDARD LVDS -to PLL_CLKIN_p
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[16]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[17]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[18]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[19]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[20]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[21]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[22]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[23]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[24]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[25]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[26]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[27]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[28]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[29]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[30]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_D[31]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[16]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_A[17]
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_CS_n
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_DC_DACK
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_DC_DREQ
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_DC_IRQ
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_HC_DACK
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_HC_DREQ
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_HC_IRQ
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_OE_n
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_RESET_n
set_instance_assignment -name IO_STANDARD "1.8 V" -to OTG_WE_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cke[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[15]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[14]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cs_n[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_odt[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SDA
set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SCL
set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SA[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SA[1]
set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M1_DDR2_clk[1]
set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M1_DDR2_clk_n[1]
set_location_assignment PIN_AH13 -to CSENSE_SCK
set_instance_assignment -name IO_STANDARD "1.8 V" -to CSENSE_SCK
set_location_assignment PIN_AJ13 -to CSENSE_SDI
set_instance_assignment -name IO_STANDARD "1.8 V" -to CSENSE_SDI
set_location_assignment PIN_AK14 -to CSENSE_SDO
set_instance_assignment -name IO_STANDARD "1.8 V" -to CSENSE_SDO
set_location_assignment PIN_AK13 -to CSENSE_ADC_FO
set_instance_assignment -name IO_STANDARD "1.8 V" -to CSENSE_ADC_FO
set_location_assignment PIN_AG14 -to CSENSE_CS_n[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to CSENSE_CS_n[0]
set_location_assignment PIN_AG15 -to CSENSE_CS_n[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to CSENSE_CS_n[1]



# General compilation
set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY out

# Power settings
set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"

# Source files
set_global_assignment -name SDC_FILE DE4.sdc
set_global_assignment -name VERILOG_FILE DE4.v
set_global_assignment -name QIP_FILE ddr/ddr.qip
set_global_assignment -name VERILOG_FILE pll.v
set_global_assignment -name QIP_FILE system/synthesis/system.qip
set_global_assignment -name QIP_FILE usb_portmux/usb_portmux.qip
set_global_assignment -name TOP_LEVEL_ENTITY DE4

# Synthesis and fitting settings
set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
set_global_assignment -name ALLOW_SHIFT_REGISTER_MERGING_ACROSS_HIERARCHIES OFF
set_global_assignment -name AUTO_SHIFT_REGISTER_RECOGNITION OFF
set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
set_global_assignment -name FITTER_EFFORT "AUTO FIT"
set_global_assignment -name FITTER_AUTO_EFFORT_DESIRED_SLACK_MARGIN "0 ns"
set_global_assignment -name BLOCK_RAM_AND_MLAB_EQUIVALENT_POWER_UP_CONDITIONS "DONT CARE"

# Global signals
set_global_assignment -name AUTO_GLOBAL_CLOCK OFF
set_global_assignment -name AUTO_GLOBAL_REGISTER_CONTROLS OFF
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to "clk_a"
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[0]
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to OSC_50_BANK2
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to reset_n
set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to reset_n~_wirecell

# Top-level partition
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top

# DDR stuff including IO assignments
set_global_assignment -name UNIPHY_TEMP_VER_CODE 1827940651
set_global_assignment -name UNIPHY_SEQUENCER_DQS_CONFIG_ENABLE ON
set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to ddr_inst|ddr_inst -tag __ddr_p0
set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to ddr_inst|ddr_inst|p0 -tag __ddr_p0
set_instance_assignment -name PLL_ENFORCE_USER_PHASE_SHIFT ON -to ddr_inst|ddr_inst|p0|controller_phy_inst|memphy_top_inst|upll_memphy|altpll_component|auto_generated|pll1 -tag __ddr_p0
set_instance_assignment -name PLL_ENFORCE_USER_PHASE_SHIFT ON -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|pll1 -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[0] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[0] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[1] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[1] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[2] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[2] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[2] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[3] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[3] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[3] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[4] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[4] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[4] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[5] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[5] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[5] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[6] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[6] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[6] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[7] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[7] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[7] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[8] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[8] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[8] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[9] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[9] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[9] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[10] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[10] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[10] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[11] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[11] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[11] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[12] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[12] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[12] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[13] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[13] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[13] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[14] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[14] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[14] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[15] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[15] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[15] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[16] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[16] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[16] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[17] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[17] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[17] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[18] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[18] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[18] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[19] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[19] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[19] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[20] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[20] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[20] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[21] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[21] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[21] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[22] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[22] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[22] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[23] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[23] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[23] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[24] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[24] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[24] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[25] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[25] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[25] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[26] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[26] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[26] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[27] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[27] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[27] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[28] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[28] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[28] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[29] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[29] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[29] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[30] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[30] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[30] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[31] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[31] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[31] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[32] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[32] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[32] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[33] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[33] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[33] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[34] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[34] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[34] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[35] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[35] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[35] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[36] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[36] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[36] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[37] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[37] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[37] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[38] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[38] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[38] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[39] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[39] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[39] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[40] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[40] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[40] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[41] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[41] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[41] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[42] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[42] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[42] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[43] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[43] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[43] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[44] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[44] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[44] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[45] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[45] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[45] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[46] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[46] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[46] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[47] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[47] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[47] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[48] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[48] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[48] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[49] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[49] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[49] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[50] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[50] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[50] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[51] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[51] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[51] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[52] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[52] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[52] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[53] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[53] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[53] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[54] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[54] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[54] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[55] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[55] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[55] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[56] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[56] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[56] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[57] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[57] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[57] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[58] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[58] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[58] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[59] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[59] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[59] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[60] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[60] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[60] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[61] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[61] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[61] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[62] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[62] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[62] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[63] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[63] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[63] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[0] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[0] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[1] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[1] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[2] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[2] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[2] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[3] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[3] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[3] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[4] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[4] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[4] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[5] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[5] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[5] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[6] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[6] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[6] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[7] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[7] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[7] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[0] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[0] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[1] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[1] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[2] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[2] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[2] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[3] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[3] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[3] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[4] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[4] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[4] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[5] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[5] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[5] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[6] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[6] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[6] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[7] -tag __ddr_p0
set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[7] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[7] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk[0] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to M1_DDR2_clk[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk[1] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to M1_DDR2_clk[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_n[0] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to M1_DDR2_clk_n[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_n[1] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to M1_DDR2_clk_n[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[0] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[10] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[10] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[11] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[11] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[12] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[12] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[13] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[13] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[1] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[2] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[2] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[3] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[3] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[4] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[4] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[5] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[5] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[6] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[6] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[7] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[7] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[8] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[8] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[9] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[9] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba[0] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba[1] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba[2] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba[2] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cs_n[0] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cs_n[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_we_n -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_we_n -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ras_n -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ras_n -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cas_n -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cas_n -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_odt[0] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_odt[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cke[0] -tag __ddr_p0
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cke[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[0] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[0] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[1] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[1] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[2] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[2] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[3] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[3] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[4] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[4] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[5] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[5] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[6] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[6] -tag __ddr_p0
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[7] -tag __ddr_p0
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[7] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[0] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[1] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[2] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[3] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[4] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[5] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[6] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[7] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[8] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[9] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[10] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[11] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[12] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[13] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[14] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[15] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[16] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[17] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[18] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[19] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[20] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[21] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[22] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[23] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[24] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[25] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[26] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[27] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[28] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[29] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[30] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[31] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[32] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[33] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[34] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[35] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[36] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[37] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[38] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[39] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[40] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[41] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[42] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[43] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[44] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[45] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[46] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[47] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[48] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[49] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[50] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[51] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[52] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[53] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[54] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[55] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[56] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[57] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[58] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[59] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[60] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[61] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[62] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[63] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dm[0] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dm[1] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dm[2] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dm[3] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dm[4] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dm[5] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dm[6] -tag __ddr_p0
set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dm[7] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[0] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[1] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[2] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[3] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[4] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[5] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[6] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[7] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[8] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[9] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[10] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[11] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[12] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[13] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[14] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[15] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[16] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[17] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[18] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[19] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[20] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[21] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[22] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[23] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[24] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[25] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[26] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[27] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[28] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[29] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[30] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[31] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[32] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[33] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[34] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[35] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[36] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[37] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[38] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[39] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[40] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[41] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[42] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[43] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[44] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[45] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[46] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[47] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[48] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[49] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[50] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[51] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[52] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[53] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[54] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[55] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[56] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[57] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[58] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[59] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[60] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[61] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[62] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[63] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[0] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[1] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[2] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[3] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[4] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[5] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[6] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[7] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[0] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[1] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[2] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[3] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[4] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[5] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[6] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[7] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[0] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[1] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[2] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[3] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[4] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[5] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[6] -tag __ddr_p0
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[7] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[1] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[2] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[3] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[4] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[5] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL "DUAL-REGIONAL CLOCK" -to ddr_inst|ddr_inst|pll0|upll_memphy|auto_generated|clk[6] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|ureset|phy_reset_mem_stable_n -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|ureset|phy_reset_n -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|s0|sequencer_rw_mgr_inst|rw_mgr_inst|rw_mgr_core_inst|rw_soft_reset_n -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[4] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[4] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[5] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[5] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[6] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[6] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[7] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[7] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[0] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[1] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[2] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[3] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[4] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[5] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[6] -tag __ddr_p0
set_instance_assignment -name GLOBAL_SIGNAL OFF -to ddr_inst|ddr_inst|p0|umemphy|uread_datapath|read_capture_clk_div2[7] -tag __ddr_p0




