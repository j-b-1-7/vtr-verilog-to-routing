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

# Quartus II: Generate Tcl File for Project
# File: DE4_DDR2.tcl2
# Generated on: Thu Jul 21 16:57:22 2011

# Load Quartus II Tcl Project package
package require ::quartus::project

package require ::quartus::flow

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "DE4_DDR2"]} {
		puts "Project DE4_DDR2 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists DE4_DDR2]} {
		project_open -force -revision DE4_DDR2 DE4_DDR2
	} else {
		project_new -revision DE4_DDR2 DE4_DDR2
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Stratix IV"
	set_global_assignment -name DEVICE EP4SGX230KF40C2
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 9.1
	set_global_assignment -name LAST_QUARTUS_VERSION 11.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "20:15:19 JANUARY 27,2010"
	set_global_assignment -name DEVICE_FILTER_PACKAGE FPGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 1152
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 2
	set_global_assignment -name LL_ROOT_REGION ON -section_id "Root Region"
	set_global_assignment -name LL_MEMBER_STATE LOCKED -section_id "Root Region"
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name TIMEQUEST_DO_REPORT_TIMING ON
	set_global_assignment -name FITTER_EFFORT "STANDARD FIT"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name PHYSICAL_SYNTHESIS_COMBO_LOGIC ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_REGISTER_RETIMING ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_EFFORT FAST
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name SEARCH_PATH "/auto/groups/ecad/bluespec/Bluespec-2009.10.B/lib/Verilog"
	set_global_assignment -name PHYSICAL_SYNTHESIS_ASYNCHRONOUS_SIGNAL_PIPELINING ON
	set_global_assignment -name MISC_FILE DE4_DDR2.dpf
	set_global_assignment -name SDC_FILE ddr2_phy_ddr_timing.sdc
	set_global_assignment -name QIP_FILE DE4_SOPC.qip
	set_global_assignment -name QIP_FILE MIPSPLL.qip
	set_global_assignment -name PROJECT_SHOW_ENTITY_NAME ON
	set_global_assignment -name PROJECT_USE_SIMPLIFIED_NAMES OFF
	set_global_assignment -name ENABLE_REDUCED_MEMORY_MODE OFF
	set_global_assignment -name VER_COMPATIBLE_DB_DIR export_db
	set_global_assignment -name AUTO_EXPORT_VER_COMPATIBLE_DB OFF
	set_global_assignment -name SMART_RECOMPILE OFF
	set_global_assignment -name FLOW_DISABLE_ASSEMBLER OFF
	set_global_assignment -name FLOW_ENABLE_HC_COMPARE OFF
	set_global_assignment -name HC_OUTPUT_DIR hc_output
	set_global_assignment -name SAVE_MIGRATION_INFO_DURING_COMPILATION OFF
	set_global_assignment -name FLOW_ENABLE_IO_ASSIGNMENT_ANALYSIS OFF
	set_global_assignment -name RUN_FULL_COMPILE_ON_DEVICE_CHANGE ON
	set_global_assignment -name FLOW_ENABLE_RTL_VIEWER OFF
	set_global_assignment -name READ_OR_WRITE_IN_BYTE_ADDRESS "USE GLOBAL SETTINGS"
	set_global_assignment -name FLOW_HARDCOPY_DESIGN_READINESS_CHECK ON
	set_global_assignment -name FLOW_ENABLE_PARALLEL_MODULES ON
	set_global_assignment -name ENABLE_COMPACT_REPORT_TABLE OFF
	set_global_assignment -name DEFAULT_HOLD_MULTICYCLE "SAME AS MULTICYCLE"
	set_global_assignment -name CUT_OFF_PATHS_BETWEEN_CLOCK_DOMAINS ON
	set_global_assignment -name CUT_OFF_READ_DURING_WRITE_PATHS ON
	set_global_assignment -name CUT_OFF_CLEAR_AND_PRESET_PATHS ON
	set_global_assignment -name CUT_OFF_IO_PIN_FEEDBACK ON
	set_global_assignment -name DO_COMBINED_ANALYSIS OFF
	set_global_assignment -name IGNORE_CLOCK_SETTINGS OFF
	set_global_assignment -name ANALYZE_LATCHES_AS_SYNCHRONOUS_ELEMENTS ON
	set_global_assignment -name DO_MINMAX_ANALYSIS_USING_RISEFALL_DELAYS OFF
	set_global_assignment -name ENABLE_RECOVERY_REMOVAL_ANALYSIS OFF
	set_global_assignment -name ENABLE_CLOCK_LATENCY OFF
	set_global_assignment -name NUMBER_OF_SOURCES_PER_DESTINATION_TO_REPORT 10
	set_global_assignment -name NUMBER_OF_DESTINATION_TO_REPORT 10
	set_global_assignment -name NUMBER_OF_PATHS_TO_REPORT 200
	set_global_assignment -name DO_MIN_ANALYSIS OFF
	set_global_assignment -name DO_MIN_TIMING OFF
	set_global_assignment -name REPORT_IO_PATHS_SEPARATELY OFF
	set_global_assignment -name CLOCK_ANALYSIS_ONLY OFF
	set_global_assignment -name FLOW_ENABLE_TIMING_CONSTRAINT_CHECK OFF
	set_global_assignment -name TIMEQUEST_REPORT_NUM_WORST_CASE_TIMING_PATHS 100
	set_global_assignment -name MUX_RESTRUCTURE AUTO
	set_global_assignment -name ENABLE_IP_DEBUG OFF
	set_global_assignment -name SAVE_DISK_SPACE ON
	set_global_assignment -name DISABLE_OCP_HW_EVAL OFF
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "<None>"
	set_global_assignment -name VERILOG_INPUT_VERSION VERILOG_2001
	set_global_assignment -name VHDL_INPUT_VERSION VHDL_1993
	set_global_assignment -name COMPILATION_LEVEL FULL
	set_global_assignment -name TRUE_WYSIWYG_FLOW OFF
	set_global_assignment -name SMART_COMPILE_IGNORES_TDC_FOR_STRATIX_PLL_CHANGES OFF
	set_global_assignment -name STATE_MACHINE_PROCESSING AUTO
	set_global_assignment -name SAFE_STATE_MACHINE OFF
	set_global_assignment -name EXTRACT_VERILOG_STATE_MACHINES ON
	set_global_assignment -name EXTRACT_VHDL_STATE_MACHINES ON
	set_global_assignment -name IGNORE_VERILOG_INITIAL_CONSTRUCTS OFF
	set_global_assignment -name VERILOG_CONSTANT_LOOP_LIMIT 5000
	set_global_assignment -name VERILOG_NON_CONSTANT_LOOP_LIMIT 250
	set_global_assignment -name ADD_PASS_THROUGH_LOGIC_TO_INFERRED_RAMS ON
	set_global_assignment -name PARALLEL_SYNTHESIS ON
	set_global_assignment -name DSP_BLOCK_BALANCING AUTO
	set_global_assignment -name NOT_GATE_PUSH_BACK ON
	set_global_assignment -name ALLOW_POWER_UP_DONT_CARE ON
	set_global_assignment -name REMOVE_REDUNDANT_LOGIC_CELLS OFF
	set_global_assignment -name REMOVE_DUPLICATE_REGISTERS ON
	set_global_assignment -name IGNORE_CARRY_BUFFERS OFF
	set_global_assignment -name IGNORE_CASCADE_BUFFERS OFF
	set_global_assignment -name IGNORE_GLOBAL_BUFFERS OFF
	set_global_assignment -name IGNORE_ROW_GLOBAL_BUFFERS OFF
	set_global_assignment -name IGNORE_LCELL_BUFFERS OFF
	set_global_assignment -name MAX7000_IGNORE_LCELL_BUFFERS AUTO
	set_global_assignment -name IGNORE_SOFT_BUFFERS ON
	set_global_assignment -name MAX7000_IGNORE_SOFT_BUFFERS OFF
	set_global_assignment -name LIMIT_AHDL_INTEGERS_TO_32_BITS OFF
	set_global_assignment -name AUTO_GLOBAL_CLOCK_MAX ON
	set_global_assignment -name AUTO_GLOBAL_OE_MAX ON
	set_global_assignment -name MAX_AUTO_GLOBAL_REGISTER_CONTROLS ON
	set_global_assignment -name AUTO_IMPLEMENT_IN_ROM OFF
	set_global_assignment -name STRATIX_TECHNOLOGY_MAPPER LUT
	set_global_assignment -name MAX7000_TECHNOLOGY_MAPPER "PRODUCT TERM"
	set_global_assignment -name APEX20K_TECHNOLOGY_MAPPER LUT
	set_global_assignment -name MERCURY_TECHNOLOGY_MAPPER LUT
	set_global_assignment -name FLEX6K_TECHNOLOGY_MAPPER LUT
	set_global_assignment -name FLEX10K_TECHNOLOGY_MAPPER LUT
	set_global_assignment -name STRATIXII_OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name CYCLONE_OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name STRATIX_OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name MAXII_OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name MAX7000_OPTIMIZATION_TECHNIQUE SPEED
	set_global_assignment -name APEX20K_OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name MERCURY_OPTIMIZATION_TECHNIQUE AREA
	set_global_assignment -name FLEX6K_OPTIMIZATION_TECHNIQUE AREA
	set_global_assignment -name FLEX10K_OPTIMIZATION_TECHNIQUE AREA
	set_global_assignment -name ALLOW_XOR_GATE_USAGE ON
	set_global_assignment -name AUTO_LCELL_INSERTION ON
	set_global_assignment -name CARRY_CHAIN_LENGTH 48
	set_global_assignment -name FLEX6K_CARRY_CHAIN_LENGTH 32
	set_global_assignment -name FLEX10K_CARRY_CHAIN_LENGTH 32
	set_global_assignment -name MERCURY_CARRY_CHAIN_LENGTH 48
	set_global_assignment -name STRATIX_CARRY_CHAIN_LENGTH 70
	set_global_assignment -name STRATIXII_CARRY_CHAIN_LENGTH 70
	set_global_assignment -name CASCADE_CHAIN_LENGTH 2
	set_global_assignment -name PARALLEL_EXPANDER_CHAIN_LENGTH 16
	set_global_assignment -name MAX7000_PARALLEL_EXPANDER_CHAIN_LENGTH 4
	set_global_assignment -name AUTO_CARRY_CHAINS ON
	set_global_assignment -name AUTO_CASCADE_CHAINS ON
	set_global_assignment -name AUTO_PARALLEL_EXPANDERS ON
	set_global_assignment -name AUTO_OPEN_DRAIN_PINS ON
	set_global_assignment -name REMOVE_DUPLICATE_LOGIC ON
	set_global_assignment -name ADV_NETLIST_OPT_SYNTH_WYSIWYG_REMAP OFF
	set_global_assignment -name ADV_NETLIST_OPT_SYNTH_GATE_RETIME OFF
	set_global_assignment -name ADV_NETLIST_OPT_RETIME_CORE_AND_IO ON
	set_global_assignment -name AUTO_ROM_RECOGNITION ON
	set_global_assignment -name AUTO_RAM_RECOGNITION ON
	set_global_assignment -name AUTO_DSP_RECOGNITION ON
	set_global_assignment -name AUTO_SHIFT_REGISTER_RECOGNITION AUTO
	set_global_assignment -name AUTO_CLOCK_ENABLE_RECOGNITION ON
	set_global_assignment -name STRICT_RAM_RECOGNITION OFF
	set_global_assignment -name ALLOW_SYNCH_CTRL_USAGE ON
	set_global_assignment -name FORCE_SYNCH_CLEAR OFF
	set_global_assignment -name DONT_TOUCH_USER_CELL OFF
	set_global_assignment -name AUTO_RAM_BLOCK_BALANCING ON
	set_global_assignment -name AUTO_RAM_TO_LCELL_CONVERSION OFF
	set_global_assignment -name IP_SHOW_ANALYSIS_MESSAGES OFF
	set_global_assignment -name AUTO_RESOURCE_SHARING OFF
	set_global_assignment -name USE_NEW_TEXT_REPORT_TABLE_FORMAT OFF
	set_global_assignment -name ALLOW_ANY_RAM_SIZE_FOR_RECOGNITION OFF
	set_global_assignment -name ALLOW_ANY_ROM_SIZE_FOR_RECOGNITION OFF
	set_global_assignment -name ALLOW_ANY_SHIFT_REGISTER_SIZE_FOR_RECOGNITION OFF
	set_global_assignment -name MAX7000_FANIN_PER_CELL 100
	set_global_assignment -name USE_LOGICLOCK_CONSTRAINTS_IN_BALANCING ON
	set_global_assignment -name IGNORE_TRANSLATE_OFF_AND_SYNTHESIS_OFF OFF
	set_global_assignment -name STRATIXGX_BYPASS_REMAPPING_OF_FORCE_SIGNAL_DETECT_SIGNAL_THRESHOLD_SELECT OFF
	set_global_assignment -name SYNTH_TIMING_DRIVEN_REGISTER_DUPLICATION OFF
	set_global_assignment -name SYNTH_TIMING_DRIVEN_BALANCED_MAPPING OFF
	set_global_assignment -name REPORT_PARAMETER_SETTINGS ON
	set_global_assignment -name REPORT_SOURCE_ASSIGNMENTS ON
	set_global_assignment -name REPORT_CONNECTIVITY_CHECKS ON
	set_global_assignment -name IGNORE_MAX_FANOUT_ASSIGNMENTS OFF
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 2
	set_global_assignment -name OPTIMIZE_POWER_DURING_SYNTHESIS "NORMAL COMPILATION"
	set_global_assignment -name HDL_MESSAGE_LEVEL LEVEL2
	set_global_assignment -name HDL_INTERFACE_OUTPUT_PATH ./
	set_global_assignment -name SUPPRESS_REG_MINIMIZATION_MSG OFF
	set_global_assignment -name USE_HIGH_SPEED_ADDER AUTO
	set_global_assignment -name NUMBER_OF_REMOVED_REGISTERS_REPORTED 5000
	set_global_assignment -name NUMBER_OF_INVERTED_REGISTERS_REPORTED 100
	set_global_assignment -name ENCRYPTED_LUTMASK OFF
	set_global_assignment -name SYNTH_CLOCK_MUX_PROTECTION ON
	set_global_assignment -name SYNTH_GATED_CLOCK_CONVERSION OFF
	set_global_assignment -name BLOCK_DESIGN_NAMING AUTO
	set_global_assignment -name SYNTH_PROTECT_SDC_CONSTRAINT OFF
	set_global_assignment -name SYNTHESIS_EFFORT AUTO
	set_global_assignment -name SHIFT_REGISTER_RECOGNITION_ACLR_SIGNAL ON
	set_global_assignment -name PRE_MAPPING_RESYNTHESIS OFF
	set_global_assignment -name SYNTH_MESSAGE_LEVEL MEDIUM
	set_global_assignment -name DISABLE_MLAB_RAM_USE OFF
	set_global_assignment -name DISABLE_REGISTER_MERGING_ACROSS_HIERARCHIES AUTO
	set_global_assignment -name RBCGEN_CRITICAL_WARNING_TO_ERROR ON
	set_global_assignment -name SYNTHESIS_SEED 1
	set_global_assignment -name RAPID_RECOMPILE_SYNTHESIS_MODE ON
	set_global_assignment -name FLEX10K_ENABLE_LOCK_OUTPUT OFF
	set_global_assignment -name DISABLE_PLL_COMPENSATION_DELAY_CHANGE_WARNING OFF
	set_global_assignment -name AUTO_MERGE_PLLS ON
	set_global_assignment -name IGNORE_MODE_FOR_MERGE OFF
	set_global_assignment -name TXPMA_SLEW_RATE LOW
	set_global_assignment -name ADCE_ENABLED AUTO
	set_global_assignment -name ROUTER_TIMING_OPTIMIZATION_LEVEL NORMAL
	set_global_assignment -name ROUTER_CLOCKING_TOPOLOGY_ANALYSIS OFF
	set_global_assignment -name PLACEMENT_EFFORT_MULTIPLIER 1.0
	set_global_assignment -name ROUTER_EFFORT_MULTIPLIER 1.0
	set_global_assignment -name FIT_ATTEMPTS_TO_SKIP 0
	set_global_assignment -name ECO_ALLOW_ROUTING_CHANGES OFF
	set_global_assignment -name BASE_PIN_OUT_FILE_ON_SAMEFRAME_DEVICE OFF
	set_global_assignment -name ENABLE_JTAG_BST_SUPPORT OFF
	set_global_assignment -name MAX7000_ENABLE_JTAG_BST_SUPPORT ON
	set_global_assignment -name ENABLE_NCEO_OUTPUT OFF
	set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS PROGRAMMING PIN"
	set_global_assignment -name STRATIXIII_UPDATE_MODE STANDARD
	set_global_assignment -name STRATIX_UPDATE_MODE STANDARD
	set_global_assignment -name CVP_MODE OFF
	set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name STRATIXIII_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name STRATIXII_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name CYCLONEII_CONFIGURATION_SCHEME "ACTIVE SERIAL"
	set_global_assignment -name APEX20K_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name STRATIX_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name CYCLONE_CONFIGURATION_SCHEME "ACTIVE SERIAL"
	set_global_assignment -name MERCURY_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name FLEX6K_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name FLEX10K_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name APEXII_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name USER_START_UP_CLOCK OFF
	set_global_assignment -name ENABLE_VREFA_PIN OFF
	set_global_assignment -name ENABLE_VREFB_PIN OFF
	set_global_assignment -name ALWAYS_ENABLE_INPUT_BUFFERS OFF
	set_global_assignment -name ENABLE_ASMI_FOR_FLASH_LOADER OFF
	set_global_assignment -name ENABLE_DEVICE_WIDE_RESET OFF
	set_global_assignment -name ENABLE_DEVICE_WIDE_OE OFF
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS OUTPUT DRIVING GROUND"
	set_global_assignment -name ENABLE_INIT_DONE_OUTPUT OFF
	set_global_assignment -name INIT_DONE_OPEN_DRAIN ON
	set_global_assignment -name RESERVE_NWS_NRS_NCS_CS_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_RDYNBUSY_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DATA31_THROUGH_DATA16_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DATA15_THROUGH_DATA8_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DATA7_THROUGH_DATA1_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DATA0_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_DATA1_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_DATA7_THROUGH_DATA2_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_FLASH_NCE_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_OTHER_AP_PINS_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DCLK_AFTER_CONFIGURATION "USE AS PROGRAMMING PIN"
	set_global_assignment -name CRC_ERROR_CHECKING OFF
	set_global_assignment -name INTERNAL_SCRUBBING OFF
	set_global_assignment -name PR_ERROR_OPEN_DRAIN ON
	set_global_assignment -name PR_READY_OPEN_DRAIN ON
	set_global_assignment -name ENABLE_CVP_CONFDONE OFF
	set_global_assignment -name CVP_CONFDONE_OPEN_DRAIN ON
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING OFF
	set_global_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS OFF
	set_global_assignment -name ENABLE_ADVANCED_IO_DELAY_CHAIN_OPTIMIZATION OFF
	set_global_assignment -name BLOCK_RAM_TO_MLAB_CELL_CONVERSION ON
	set_global_assignment -name BLOCK_RAM_AND_MLAB_EQUIVALENT_POWER_UP_CONDITIONS AUTO
	set_global_assignment -name BLOCK_RAM_AND_MLAB_EQUIVALENT_PAUSED_READ_CAPABILITIES CARE
	set_global_assignment -name PROGRAMMABLE_POWER_TECHNOLOGY_SETTING "FORCE ALL TILES WITH FAILING TIMING PATHS TO HIGH SPEED"
	set_global_assignment -name PROGRAMMABLE_POWER_MAXIMUM_HIGH_SPEED_FRACTION_OF_USED_LAB_TILES 1.0
	set_global_assignment -name GUARANTEE_MIN_DELAY_CORNER_IO_ZERO_HOLD_TIME ON
	set_global_assignment -name OPTIMIZE_POWER_DURING_FITTING "NORMAL COMPILATION"
	set_global_assignment -name OPTIMIZE_TIMING "NORMAL COMPILATION"
	set_global_assignment -name ECO_OPTIMIZE_TIMING OFF
	set_global_assignment -name ECO_REGENERATE_REPORT OFF
	set_global_assignment -name OPTIMIZE_IOC_REGISTER_PLACEMENT_FOR_TIMING NORMAL
	set_global_assignment -name FIT_ONLY_ONE_ATTEMPT OFF
	set_global_assignment -name FINAL_PLACEMENT_OPTIMIZATION AUTOMATICALLY
	set_global_assignment -name FITTER_AGGRESSIVE_ROUTABILITY_OPTIMIZATION AUTOMATICALLY
	set_global_assignment -name SEED 1
	set_global_assignment -name SLOW_SLEW_RATE OFF
	set_global_assignment -name PCI_IO OFF
	set_global_assignment -name TURBO_BIT ON
	set_global_assignment -name WEAK_PULL_UP_RESISTOR OFF
	set_global_assignment -name ENABLE_BUS_HOLD_CIRCUITRY OFF
	set_global_assignment -name AUTO_GLOBAL_MEMORY_CONTROLS OFF
	set_global_assignment -name MIGRATION_CONSTRAIN_CORE_RESOURCES ON
	set_global_assignment -name AUTO_PACKED_REGISTERS_STRATIXII AUTO
	set_global_assignment -name AUTO_PACKED_REGISTERS_MAXII AUTO
	set_global_assignment -name AUTO_PACKED_REGISTERS_CYCLONE AUTO
	set_global_assignment -name AUTO_PACKED_REGISTERS OFF
	set_global_assignment -name AUTO_PACKED_REGISTERS_STRATIX AUTO
	set_global_assignment -name NORMAL_LCELL_INSERT ON
	set_global_assignment -name CARRY_OUT_PINS_LCELL_INSERT ON
	set_global_assignment -name AUTO_DELAY_CHAINS ON
	set_global_assignment -name AUTO_FAST_INPUT_REGISTERS OFF
	set_global_assignment -name AUTO_FAST_OUTPUT_REGISTERS OFF
	set_global_assignment -name AUTO_FAST_OUTPUT_ENABLE_REGISTERS OFF
	set_global_assignment -name XSTL_INPUT_ALLOW_SE_BUFFER OFF
	set_global_assignment -name TREAT_BIDIR_AS_OUTPUT OFF
	set_global_assignment -name AUTO_TURBO_BIT ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_COMBO_LOGIC_FOR_AREA OFF
	set_global_assignment -name PHYSICAL_SYNTHESIS_LOG_FILE OFF
	set_global_assignment -name PHYSICAL_SYNTHESIS_MAP_LOGIC_TO_MEMORY_FOR_AREA OFF
	set_global_assignment -name IO_PLACEMENT_OPTIMIZATION ON
	set_global_assignment -name ALLOW_LVTTL_LVCMOS_INPUT_LEVELS_TO_OVERDRIVE_INPUT_BUFFER OFF
	set_global_assignment -name OVERRIDE_DEFAULT_ELECTROMIGRATION_PARAMETERS OFF
	set_global_assignment -name FITTER_AUTO_EFFORT_DESIRED_SLACK_MARGIN "0 ns"
	set_global_assignment -name ROUTER_LCELL_INSERTION_AND_LOGIC_DUPLICATION AUTO
	set_global_assignment -name ROUTER_REGISTER_DUPLICATION AUTO
	set_global_assignment -name ALLOW_SERIES_TERMINATION OFF
	set_global_assignment -name ALLOW_SERIES_WITH_CALIBRATION_TERMINATION OFF
	set_global_assignment -name ALLOW_PARALLEL_TERMINATION OFF
	set_global_assignment -name STRATIXGX_ALLOW_CLOCK_FANOUT_WITH_ANALOG_RESET OFF
	set_global_assignment -name AUTO_GLOBAL_CLOCK ON
	set_global_assignment -name AUTO_GLOBAL_OE ON
	set_global_assignment -name AUTO_GLOBAL_REGISTER_CONTROLS ON
	set_global_assignment -name FITTER_EARLY_TIMING_ESTIMATE_MODE REALISTIC
	set_global_assignment -name STRATIXGX_ALLOW_GIGE_UNDER_FULL_DATARATE_RANGE OFF
	set_global_assignment -name STRATIXGX_ALLOW_RX_CORECLK_FROM_NON_RX_CLKOUT_SOURCE_IN_DOUBLE_DATA_WIDTH_MODE OFF
	set_global_assignment -name STRATIXGX_ALLOW_GIGE_IN_DOUBLE_DATA_WIDTH_MODE OFF
	set_global_assignment -name STRATIXGX_ALLOW_PARALLEL_LOOPBACK_IN_DOUBLE_DATA_WIDTH_MODE OFF
	set_global_assignment -name STRATIXGX_ALLOW_XAUI_IN_SINGLE_DATA_WIDTH_MODE OFF
	set_global_assignment -name STRATIXGX_ALLOW_XAUI_WITH_CORECLK_SELECTED_AT_RATE_MATCHER OFF
	set_global_assignment -name STRATIXGX_ALLOW_XAUI_WITH_RX_CORECLK_FROM_NON_TXPLL_SOURCE OFF
	set_global_assignment -name STRATIXGX_ALLOW_GIGE_WITH_CORECLK_SELECTED_AT_RATE_MATCHER OFF
	set_global_assignment -name STRATIXGX_ALLOW_GIGE_WITHOUT_8B10B OFF
	set_global_assignment -name STRATIXGX_ALLOW_GIGE_WITH_RX_CORECLK_FROM_NON_TXPLL_SOURCE OFF
	set_global_assignment -name STRATIXGX_ALLOW_POST8B10B_LOOPBACK OFF
	set_global_assignment -name STRATIXGX_ALLOW_REVERSE_PARALLEL_LOOPBACK OFF
	set_global_assignment -name STRATIXGX_ALLOW_USE_OF_GXB_COUPLED_IOS OFF
	set_global_assignment -name IO_SSO_CHECKING ON
	set_global_assignment -name GENERATE_GXB_RECONFIG_MIF OFF
	set_global_assignment -name GENERATE_GXB_RECONFIG_MIF_WITH_PLL OFF
	set_global_assignment -name UNIPHY_SEQUENCER_DQS_CONFIG_ENABLE OFF
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED WITH WEAK PULL-UP"
	set_location_assignment PIN_AC35 -to OSC_50_Bank2
	set_instance_assignment -name IO_STANDARD "2.5 V" -to OSC_50_Bank2
	set_location_assignment PIN_AV22 -to OSC_50_Bank3
	set_instance_assignment -name IO_STANDARD "1.8 V" -to OSC_50_Bank3
	set_location_assignment PIN_AV19 -to OSC_50_Bank4
	set_instance_assignment -name IO_STANDARD "1.8 V" -to OSC_50_Bank4
	set_location_assignment PIN_AC6 -to OSC_50_Bank5
	set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to OSC_50_Bank5
	set_location_assignment PIN_AB6 -to OSC_50_Bank6
	set_instance_assignment -name IO_STANDARD "2.5 V" -to OSC_50_Bank6
	set_location_assignment PIN_A19 -to OSC_50_Bank7
	set_instance_assignment -name IO_STANDARD "1.8 V" -to OSC_50_Bank7
	set_location_assignment PIN_AH19 -to GCLKOUT_FPGA
	set_instance_assignment -name IO_STANDARD "1.8 V" -to GCLKOUT_FPGA
	set_location_assignment PIN_A21 -to GCLKIN
	set_instance_assignment -name IO_STANDARD "1.8 V" -to GCLKIN
	set_location_assignment PIN_B22 -to PLL_CLKIN_p
	set_instance_assignment -name IO_STANDARD LVDS -to PLL_CLKIN_p
	set_location_assignment PIN_AP24 -to MAX_PLL_D[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to MAX_PLL_D[0]
	set_location_assignment PIN_AN22 -to MAX_PLL_D[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to MAX_PLL_D[1]
	set_location_assignment PIN_AG17 -to MAX_PLL_D[2]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to MAX_PLL_D[2]
	set_location_assignment PIN_AV11 -to MAX_CONF_D[2]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to MAX_CONF_D[2]
	set_location_assignment PIN_AG22 -to MAX_CONF_D[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to MAX_CONF_D[1]
	set_location_assignment PIN_AW32 -to MAX_CONF_D[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to MAX_CONF_D[0]
	set_location_assignment PIN_V28 -to LED[0]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[0]
	set_location_assignment PIN_W28 -to LED[1]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[1]
	set_location_assignment PIN_R29 -to LED[2]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[2]
	set_location_assignment PIN_P29 -to LED[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[3]
	set_location_assignment PIN_N29 -to LED[4]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[4]
	set_location_assignment PIN_M29 -to LED[5]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[5]
	set_location_assignment PIN_M30 -to LED[6]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[6]
	set_location_assignment PIN_N30 -to LED[7]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to LED[7]
	set_location_assignment PIN_AH5 -to BUTTON[0]
	set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to BUTTON[0]
	set_location_assignment PIN_AG5 -to BUTTON[1]
	set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to BUTTON[1]
	set_location_assignment PIN_AG7 -to BUTTON[2]
	set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to BUTTON[2]
	set_location_assignment PIN_AG8 -to BUTTON[3]
	set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to BUTTON[3]
	set_location_assignment PIN_AC11 -to EXT_IO
	set_instance_assignment -name IO_STANDARD "3.0-V PCI-X" -to EXT_IO
	set_location_assignment PIN_V34 -to CPU_RESET_n
	set_instance_assignment -name IO_STANDARD "2.5 V" -to CPU_RESET_n
	set_location_assignment PIN_AW34 -to M1_DDR2_dq[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[4]
	set_location_assignment PIN_AV32 -to M1_DDR2_dq[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[0]
	set_location_assignment PIN_AW33 -to M1_DDR2_dq[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[5]
	set_location_assignment PIN_AV31 -to M1_DDR2_dq[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[1]
	set_location_assignment PIN_AW31 -to M1_DDR2_dm[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[0]
	set_location_assignment PIN_AW30 -to M1_DDR2_dqsn[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[0]
	set_location_assignment PIN_AV29 -to M1_DDR2_dqs[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[0]
	set_location_assignment PIN_AW28 -to M1_DDR2_dq[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[6]
	set_location_assignment PIN_AW27 -to M1_DDR2_dq[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[7]
	set_location_assignment PIN_AW29 -to M1_DDR2_dq[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[2]
	set_location_assignment PIN_AV28 -to M1_DDR2_dq[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[3]
	set_location_assignment PIN_AM25 -to M1_DDR2_dq[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[12]
	set_location_assignment PIN_AN25 -to M1_DDR2_dq[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[13]
	set_location_assignment PIN_AP25 -to M1_DDR2_dq[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[8]
	set_location_assignment PIN_AV26 -to M1_DDR2_dq[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[9]
	set_location_assignment PIN_AW26 -to M1_DDR2_dm[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[1]
	set_location_assignment PIN_AU26 -to M1_DDR2_dqsn[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[1]
	set_location_assignment PIN_AP28 -to M1_DDR2_clk[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk[0]
	set_location_assignment PIN_AT26 -to M1_DDR2_dqs[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[1]
	set_location_assignment PIN_AR28 -to M1_DDR2_clk_n[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_n[0]
	set_location_assignment PIN_AU25 -to M1_DDR2_dq[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[10]
	set_location_assignment PIN_AR25 -to M1_DDR2_dq[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[14]
	set_location_assignment PIN_AT25 -to M1_DDR2_dq[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[11]
	set_location_assignment PIN_AN24 -to M1_DDR2_dq[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[15]
	set_location_assignment PIN_AN23 -to M1_DDR2_dq[16]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[16]
	set_location_assignment PIN_AM23 -to M1_DDR2_dq[20]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[20]
	set_location_assignment PIN_AP23 -to M1_DDR2_dq[17]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[17]
	set_location_assignment PIN_AR23 -to M1_DDR2_dq[21]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[21]
	set_location_assignment PIN_AU24 -to M1_DDR2_dqsn[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[2]
	set_location_assignment PIN_AT24 -to M1_DDR2_dqs[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[2]
	set_location_assignment PIN_AU23 -to M1_DDR2_dm[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[2]
	set_location_assignment PIN_AL22 -to M1_DDR2_dq[18]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[18]
	set_location_assignment PIN_AT23 -to M1_DDR2_dq[22]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[22]
	set_location_assignment PIN_AM22 -to M1_DDR2_dq[19]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[19]
	set_location_assignment PIN_AL21 -to M1_DDR2_dq[23]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[23]
	set_location_assignment PIN_AJ22 -to M1_DDR2_dq[24]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[24]
	set_location_assignment PIN_AK24 -to M1_DDR2_dq[28]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[28]
	set_location_assignment PIN_AH23 -to M1_DDR2_dq[25]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[25]
	set_location_assignment PIN_AJ23 -to M1_DDR2_dq[29]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[29]
	set_location_assignment PIN_AH22 -to M1_DDR2_dm[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[3]
	set_location_assignment PIN_AL23 -to M1_DDR2_dqsn[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[3]
	set_location_assignment PIN_AK23 -to M1_DDR2_dqs[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[3]
	set_location_assignment PIN_AF22 -to M1_DDR2_dq[26]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[26]
	set_location_assignment PIN_AF23 -to M1_DDR2_dq[30]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[30]
	set_location_assignment PIN_AE23 -to M1_DDR2_dq[27]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[27]
	set_location_assignment PIN_AE22 -to M1_DDR2_dq[31]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[31]
	set_location_assignment PIN_AT28 -to M1_DDR2_cke[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cke[0]
	set_location_assignment PIN_AK27 -to M1_DDR2_cke[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cke[1]
	set_location_assignment PIN_AT29 -to M1_DDR2_addr[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[15]
	set_location_assignment PIN_AP27 -to M1_DDR2_ba[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba[2]
	set_location_assignment PIN_AU29 -to M1_DDR2_addr[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[14]
	set_location_assignment PIN_AP26 -to M1_DDR2_addr[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[12]
	set_location_assignment PIN_AU28 -to M1_DDR2_addr[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[11]
	set_location_assignment PIN_AN27 -to M1_DDR2_addr[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[9]
	set_location_assignment PIN_AT27 -to M1_DDR2_addr[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[7]
	set_location_assignment PIN_AL27 -to M1_DDR2_addr[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[8]
	set_location_assignment PIN_AU27 -to M1_DDR2_addr[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[6]
	set_location_assignment PIN_AK26 -to M1_DDR2_addr[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[5]
	set_location_assignment PIN_AN26 -to M1_DDR2_addr[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[4]
	set_location_assignment PIN_AM26 -to M1_DDR2_addr[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[3]
	set_location_assignment PIN_AW23 -to M1_DDR2_addr[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[2]
	set_location_assignment PIN_AL25 -to M1_DDR2_addr[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[1]
	set_location_assignment PIN_AV23 -to M1_DDR2_addr[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[0]
	set_location_assignment PIN_AJ26 -to M1_DDR2_addr[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[10]
	set_location_assignment PIN_AD25 -to M1_DDR2_ba[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba[1]
	set_location_assignment PIN_AH26 -to M1_DDR2_ba[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba[0]
	set_location_assignment PIN_AE21 -to M1_DDR2_ras_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ras_n
	set_location_assignment PIN_AK25 -to M1_DDR2_we_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_we_n
	set_location_assignment PIN_AG21 -to M1_DDR2_cs_n[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cs_n[0]
	set_location_assignment PIN_AJ25 -to M1_DDR2_cas_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cas_n
	set_location_assignment PIN_AG20 -to M1_DDR2_odt[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_odt[0]
	set_location_assignment PIN_AE25 -to M1_DDR2_cs_n[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cs_n[1]
	set_location_assignment PIN_AD21 -to M1_DDR2_addr[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr[13]
	set_location_assignment PIN_AE24 -to M1_DDR2_odt[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_odt[1]
	set_location_assignment PIN_AK17 -to M1_DDR2_dq[32]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[32]
	set_location_assignment PIN_AG16 -to M1_DDR2_dq[36]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[36]
	set_location_assignment PIN_AM17 -to M1_DDR2_dq[33]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[33]
	set_location_assignment PIN_AH17 -to M1_DDR2_dq[37]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[37]
	set_location_assignment PIN_AL16 -to M1_DDR2_dqsn[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[4]
	set_location_assignment PIN_AL17 -to M1_DDR2_dm[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[4]
	set_location_assignment PIN_AK16 -to M1_DDR2_dqs[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[4]
	set_location_assignment PIN_AF17 -to M1_DDR2_dq[38]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[38]
	set_location_assignment PIN_AH16 -to M1_DDR2_dq[34]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[34]
	set_location_assignment PIN_AE17 -to M1_DDR2_dq[39]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[39]
	set_location_assignment PIN_AJ16 -to M1_DDR2_dq[35]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[35]
	set_location_assignment PIN_AN17 -to M1_DDR2_dq[44]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[44]
	set_location_assignment PIN_AR17 -to M1_DDR2_dq[40]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[40]
	set_location_assignment PIN_AP17 -to M1_DDR2_dq[45]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[45]
	set_location_assignment PIN_AN16 -to M1_DDR2_dq[41]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[41]
	set_location_assignment PIN_AR16 -to M1_DDR2_dqsn[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[5]
	set_location_assignment PIN_AT16 -to M1_DDR2_dm[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[5]
	set_location_assignment PIN_AP16 -to M1_DDR2_dqs[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[5]
	set_location_assignment PIN_AU16 -to M1_DDR2_dq[42]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[42]
	set_location_assignment PIN_AU15 -to M1_DDR2_dq[46]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[46]
	set_location_assignment PIN_AW16 -to M1_DDR2_dq[43]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[43]
	set_location_assignment PIN_AT15 -to M1_DDR2_dq[47]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[47]
	set_location_assignment PIN_AW11 -to M1_DDR2_dq[48]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[48]
	set_location_assignment PIN_AW14 -to M1_DDR2_dq[52]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[52]
	set_location_assignment PIN_AW12 -to M1_DDR2_dq[49]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[49]
	set_location_assignment PIN_AV14 -to M1_DDR2_dq[53]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[53]
	set_location_assignment PIN_AE20 -to M1_DDR2_clk[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk[1]
	set_location_assignment PIN_AF20 -to M1_DDR2_clk_n[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_n[1]
	set_location_assignment PIN_AW13 -to M1_DDR2_dqsn[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[6]
	set_location_assignment PIN_AV13 -to M1_DDR2_dqs[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[6]
	set_location_assignment PIN_AU14 -to M1_DDR2_dm[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[6]
	set_location_assignment PIN_AT14 -to M1_DDR2_dq[50]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[50]
	set_location_assignment PIN_AU11 -to M1_DDR2_dq[54]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[54]
	set_location_assignment PIN_AU12 -to M1_DDR2_dq[51]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[51]
	set_location_assignment PIN_AT12 -to M1_DDR2_dq[55]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[55]
	set_location_assignment PIN_AP13 -to M1_DDR2_dq[56]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[56]
	set_location_assignment PIN_AR14 -to M1_DDR2_dq[60]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[60]
	set_location_assignment PIN_AN14 -to M1_DDR2_dq[57]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[57]
	set_location_assignment PIN_AP14 -to M1_DDR2_dq[61]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[61]
	set_location_assignment PIN_AN13 -to M1_DDR2_dm[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm[7]
	set_location_assignment PIN_AT13 -to M1_DDR2_dqsn[7]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn[7]
	set_location_assignment PIN_AR13 -to M1_DDR2_dqs[7]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs[7]
	set_location_assignment PIN_AL15 -to M1_DDR2_dq[58]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[58]
	set_location_assignment PIN_AM14 -to M1_DDR2_dq[59]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[59]
	set_location_assignment PIN_AL14 -to M1_DDR2_dq[62]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[62]
	set_location_assignment PIN_AL13 -to M1_DDR2_dq[63]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq[63]
	set_location_assignment PIN_AG24 -to M1_DDR2_SDA
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SDA
	set_location_assignment PIN_AH24 -to M1_DDR2_SCL
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SCL
	set_location_assignment PIN_AV25 -to M1_DDR2_SA[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SA[0]
	set_location_assignment PIN_AW25 -to M1_DDR2_SA[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M1_DDR2_SA[1]
	set_location_assignment PIN_J12 -to M2_DDR2_dq[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[4]
	set_location_assignment PIN_F12 -to M2_DDR2_dq[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[0]
	set_location_assignment PIN_J13 -to M2_DDR2_dq[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[5]
	set_location_assignment PIN_H13 -to M2_DDR2_dq[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[1]
	set_location_assignment PIN_H14 -to M2_DDR2_dm[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[0]
	set_location_assignment PIN_E13 -to M2_DDR2_dqsn[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[0]
	set_location_assignment PIN_F13 -to M2_DDR2_dqs[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[0]
	set_location_assignment PIN_G14 -to M2_DDR2_dq[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[6]
	set_location_assignment PIN_D13 -to M2_DDR2_dq[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[7]
	set_location_assignment PIN_E14 -to M2_DDR2_dq[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[2]
	set_location_assignment PIN_F14 -to M2_DDR2_dq[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[3]
	set_location_assignment PIN_P16 -to M2_DDR2_dq[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[12]
	set_location_assignment PIN_N16 -to M2_DDR2_dq[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[13]
	set_location_assignment PIN_P17 -to M2_DDR2_dq[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[8]
	set_location_assignment PIN_N17 -to M2_DDR2_dq[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[9]
	set_location_assignment PIN_M17 -to M2_DDR2_dm[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[1]
	set_location_assignment PIN_J16 -to M2_DDR2_dqsn[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[1]
	set_location_assignment PIN_L13 -to M2_DDR2_clk[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk[0]
	set_location_assignment PIN_K16 -to M2_DDR2_dqs[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[1]
	set_location_assignment PIN_K13 -to M2_DDR2_clk_n[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk_n[0]
	set_location_assignment PIN_L16 -to M2_DDR2_dq[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[10]
	set_location_assignment PIN_J17 -to M2_DDR2_dq[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[14]
	set_location_assignment PIN_K17 -to M2_DDR2_dq[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[11]
	set_location_assignment PIN_H17 -to M2_DDR2_dq[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[15]
	set_location_assignment PIN_B16 -to M2_DDR2_dq[16]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[16]
	set_location_assignment PIN_C16 -to M2_DDR2_dq[20]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[20]
	set_location_assignment PIN_A16 -to M2_DDR2_dq[17]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[17]
	set_location_assignment PIN_E16 -to M2_DDR2_dq[21]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[21]
	set_location_assignment PIN_C15 -to M2_DDR2_dqsn[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[2]
	set_location_assignment PIN_D15 -to M2_DDR2_dqs[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[2]
	set_location_assignment PIN_G15 -to M2_DDR2_dm[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[2]
	set_location_assignment PIN_F15 -to M2_DDR2_dq[18]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[18]
	set_location_assignment PIN_G16 -to M2_DDR2_dq[22]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[22]
	set_location_assignment PIN_D16 -to M2_DDR2_dq[19]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[19]
	set_location_assignment PIN_G17 -to M2_DDR2_dq[23]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[23]
	set_location_assignment PIN_C17 -to M2_DDR2_dq[24]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[24]
	set_location_assignment PIN_C18 -to M2_DDR2_dq[28]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[28]
	set_location_assignment PIN_E17 -to M2_DDR2_dq[25]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[25]
	set_location_assignment PIN_D18 -to M2_DDR2_dq[29]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[29]
	set_location_assignment PIN_F17 -to M2_DDR2_dm[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[3]
	set_location_assignment PIN_F18 -to M2_DDR2_dqsn[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[3]
	set_location_assignment PIN_G18 -to M2_DDR2_dqs[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[3]
	set_location_assignment PIN_F19 -to M2_DDR2_dq[26]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[26]
	set_location_assignment PIN_F20 -to M2_DDR2_dq[30]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[30]
	set_location_assignment PIN_G19 -to M2_DDR2_dq[27]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[27]
	set_location_assignment PIN_G20 -to M2_DDR2_dq[31]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[31]
	set_location_assignment PIN_D11 -to M2_DDR2_cke[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cke[0]
	set_location_assignment PIN_K12 -to M2_DDR2_cke[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cke[1]
	set_location_assignment PIN_M13 -to M2_DDR2_addr[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[15]
	set_location_assignment PIN_B10 -to M2_DDR2_ba[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ba[2]
	set_location_assignment PIN_K14 -to M2_DDR2_addr[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[14]
	set_location_assignment PIN_N15 -to M2_DDR2_addr[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[12]
	set_location_assignment PIN_L14 -to M2_DDR2_addr[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[11]
	set_location_assignment PIN_M14 -to M2_DDR2_addr[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[9]
	set_location_assignment PIN_N13 -to M2_DDR2_addr[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[7]
	set_location_assignment PIN_A10 -to M2_DDR2_addr[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[8]
	set_location_assignment PIN_A11 -to M2_DDR2_addr[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[6]
	set_location_assignment PIN_C11 -to M2_DDR2_addr[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[5]
	set_location_assignment PIN_C13 -to M2_DDR2_addr[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[4]
	set_location_assignment PIN_R14 -to M2_DDR2_addr[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[3]
	set_location_assignment PIN_D14 -to M2_DDR2_addr[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[2]
	set_location_assignment PIN_B11 -to M2_DDR2_addr[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[1]
	set_location_assignment PIN_B14 -to M2_DDR2_addr[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[0]
	set_location_assignment PIN_R18 -to M2_DDR2_addr[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[10]
	set_location_assignment PIN_C14 -to M2_DDR2_ba[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ba[1]
	set_location_assignment PIN_C12 -to M2_DDR2_ba[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ba[0]
	set_location_assignment PIN_J18 -to M2_DDR2_ras_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ras_n
	set_location_assignment PIN_P18 -to M2_DDR2_we_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_we_n
	set_location_assignment PIN_H19 -to M2_DDR2_cs_n[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cs_n[0]
	set_location_assignment PIN_A13 -to M2_DDR2_cas_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cas_n
	set_location_assignment PIN_D19 -to M2_DDR2_odt[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_odt[0]
	set_location_assignment PIN_B13 -to M2_DDR2_cs_n[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cs_n[1]
	set_location_assignment PIN_C19 -to M2_DDR2_addr[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr[13]
	set_location_assignment PIN_A14 -to M2_DDR2_odt[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_odt[1]
	set_location_assignment PIN_N22 -to M2_DDR2_dq[32]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[32]
	set_location_assignment PIN_R22 -to M2_DDR2_dq[36]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[36]
	set_location_assignment PIN_M23 -to M2_DDR2_dq[33]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[33]
	set_location_assignment PIN_P22 -to M2_DDR2_dq[37]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[37]
	set_location_assignment PIN_K23 -to M2_DDR2_dqsn[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[4]
	set_location_assignment PIN_P23 -to M2_DDR2_dm[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[4]
	set_location_assignment PIN_L23 -to M2_DDR2_dqs[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[4]
	set_location_assignment PIN_M24 -to M2_DDR2_dq[38]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[38]
	set_location_assignment PIN_K24 -to M2_DDR2_dq[34]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[34]
	set_location_assignment PIN_J24 -to M2_DDR2_dq[39]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[39]
	set_location_assignment PIN_J25 -to M2_DDR2_dq[35]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[35]
	set_location_assignment PIN_G24 -to M2_DDR2_dq[44]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[44]
	set_location_assignment PIN_G25 -to M2_DDR2_dq[40]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[40]
	set_location_assignment PIN_F24 -to M2_DDR2_dq[45]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[45]
	set_location_assignment PIN_C25 -to M2_DDR2_dq[41]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[41]
	set_location_assignment PIN_E25 -to M2_DDR2_dqsn[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[5]
	set_location_assignment PIN_B25 -to M2_DDR2_dm[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[5]
	set_location_assignment PIN_F25 -to M2_DDR2_dqs[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[5]
	set_location_assignment PIN_A26 -to M2_DDR2_dq[42]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[42]
	set_location_assignment PIN_D25 -to M2_DDR2_dq[46]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[46]
	set_location_assignment PIN_C26 -to M2_DDR2_dq[43]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[43]
	set_location_assignment PIN_D26 -to M2_DDR2_dq[47]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[47]
	set_location_assignment PIN_F27 -to M2_DDR2_dq[48]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[48]
	set_location_assignment PIN_H26 -to M2_DDR2_dq[52]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[52]
	set_location_assignment PIN_G27 -to M2_DDR2_dq[49]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[49]
	set_location_assignment PIN_J26 -to M2_DDR2_dq[53]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[53]
	set_location_assignment PIN_B17 -to M2_DDR2_clk[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk[1]
	set_location_assignment PIN_A17 -to M2_DDR2_clk_n[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk_n[1]
	set_location_assignment PIN_D29 -to M2_DDR2_dqsn[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[6]
	set_location_assignment PIN_E29 -to M2_DDR2_dqs[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[6]
	set_location_assignment PIN_D28 -to M2_DDR2_dm[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[6]
	set_location_assignment PIN_F28 -to M2_DDR2_dq[50]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[50]
	set_location_assignment PIN_E28 -to M2_DDR2_dq[54]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[54]
	set_location_assignment PIN_H28 -to M2_DDR2_dq[51]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[51]
	set_location_assignment PIN_G29 -to M2_DDR2_dq[55]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[55]
	set_location_assignment PIN_C29 -to M2_DDR2_dq[56]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[56]
	set_location_assignment PIN_A27 -to M2_DDR2_dq[60]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[60]
	set_location_assignment PIN_A31 -to M2_DDR2_dq[57]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[57]
	set_location_assignment PIN_A28 -to M2_DDR2_dq[61]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[61]
	set_location_assignment PIN_C30 -to M2_DDR2_dm[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm[7]
	set_location_assignment PIN_B28 -to M2_DDR2_dqsn[7]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn[7]
	set_location_assignment PIN_C28 -to M2_DDR2_dqs[7]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs[7]
	set_location_assignment PIN_C27 -to M2_DDR2_dq[58]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[58]
	set_location_assignment PIN_D27 -to M2_DDR2_dq[59]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[59]
	set_location_assignment PIN_B29 -to M2_DDR2_dq[62]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[62]
	set_location_assignment PIN_B31 -to M2_DDR2_dq[63]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq[63]
	set_location_assignment PIN_J15 -to M2_DDR2_SDA
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M2_DDR2_SDA
	set_location_assignment PIN_K15 -to M2_DDR2_SCL
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M2_DDR2_SCL
	set_location_assignment PIN_A18 -to M2_DDR2_SA[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M2_DDR2_SA[0]
	set_location_assignment PIN_B19 -to M2_DDR2_SA[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to M2_DDR2_SA[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_odt
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_odt
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M1_DDR2_clk[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk_n[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M1_DDR2_clk_n[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk_n[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cs_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cs_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cke
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cke
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[8]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[9]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[10]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[11]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[12]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr[13]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ras_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cas_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_we_n
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[8]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[8]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[9]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[9]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[10]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[10]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[11]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[11]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[12]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[12]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[13]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[13]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[14]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[14]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[15]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[15]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[16]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[16]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[17]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[17]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[18]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[18]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[19]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[19]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[20]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[20]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[21]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[21]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[22]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[22]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[23]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[23]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[24]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[24]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[25]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[25]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[26]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[26]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[27]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[27]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[28]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[28]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[29]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[29]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[30]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[30]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[31]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[31]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[32]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[32]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[33]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[33]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[34]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[34]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[35]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[35]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[36]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[36]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[37]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[37]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[38]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[38]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[39]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[39]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[40]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[40]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[41]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[41]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[42]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[42]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[43]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[43]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[44]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[44]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[45]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[45]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[46]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[46]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[47]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[47]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[48]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[48]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[49]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[49]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[50]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[50]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[51]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[51]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[52]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[52]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[53]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[53]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[54]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[54]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[55]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[55]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[56]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[56]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[57]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[57]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[58]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[58]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[59]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[59]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[60]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[60]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[61]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[61]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[62]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[62]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[63]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq[63]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[8]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[9]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[10]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[11]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[12]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[13]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[14]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[15]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[16]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[17]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[18]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[19]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[20]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[21]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[22]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[23]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[24]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[25]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[26]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[27]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[28]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[29]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[30]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[31]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[32]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[33]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[34]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[35]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[36]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[37]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[38]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[39]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[40]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[41]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[42]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[43]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[44]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[45]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[46]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[47]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[48]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[49]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[50]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[51]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[52]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[53]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[54]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[55]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[56]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[57]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[58]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[59]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[60]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[61]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[62]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq[63]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[8]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[9]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[10]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[11]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[12]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[13]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[14]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[15]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[16]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[17]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[18]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[19]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[20]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[21]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[22]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[23]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[24]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[25]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[26]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[27]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[28]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[29]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[30]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[31]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[32]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[33]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[34]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[35]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[36]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[37]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[38]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[39]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[40]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[41]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[42]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[43]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[44]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[45]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[46]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[47]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[48]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[49]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[50]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[51]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[52]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[53]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[54]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[55]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[56]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[57]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[58]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[59]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[60]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[61]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[62]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq[63]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm[7]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[0]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[1]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[2]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[3]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[4]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[5]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[6]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dq[7]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[0] -to M1_DDR2_dm[0]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[0] -to M1_DDR2_dqs[0]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[8]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[9]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[10]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[11]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[12]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[13]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[14]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dq[15]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[1] -to M1_DDR2_dm[1]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[1] -to M1_DDR2_dqs[1]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[16]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[17]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[18]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[19]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[20]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[21]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[22]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dq[23]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[2] -to M1_DDR2_dm[2]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[2] -to M1_DDR2_dqs[2]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[24]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[25]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[26]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[27]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[28]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[29]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[30]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dq[31]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[3] -to M1_DDR2_dm[3]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[3] -to M1_DDR2_dqs[3]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[32]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[33]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[34]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[35]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[36]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[37]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[38]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dq[39]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[4] -to M1_DDR2_dm[4]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[4] -to M1_DDR2_dqs[4]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[40]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[41]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[42]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[43]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[44]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[45]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[46]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dq[47]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[5] -to M1_DDR2_dm[5]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[5] -to M1_DDR2_dqs[5]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[48]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[49]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[50]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[51]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[52]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[53]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[54]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dq[55]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[6] -to M1_DDR2_dm[6]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[6] -to M1_DDR2_dqs[6]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[56]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[57]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[58]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[59]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[60]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[61]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[62]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dq[63]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs[7] -to M1_DDR2_dm[7]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn[7] -to M1_DDR2_dqs[7]
	set_instance_assignment -name T11_DELAY 7 -to M1_DDR2_dqs
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_odt
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_odt
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M2_DDR2_clk[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk_n[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M2_DDR2_clk_n[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk_n[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cs_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_cs_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cke
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_cke
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[8]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[9]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[10]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[11]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[12]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr[13]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ba[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ba[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ba[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ras_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_cas_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_we_n
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[8]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[8]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[9]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[9]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[10]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[10]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[11]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[11]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[12]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[12]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[13]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[13]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[14]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[14]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[15]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[15]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[16]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[16]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[17]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[17]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[18]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[18]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[19]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[19]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[20]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[20]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[21]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[21]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[22]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[22]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[23]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[23]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[24]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[24]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[25]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[25]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[26]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[26]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[27]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[27]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[28]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[28]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[29]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[29]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[30]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[30]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[31]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[31]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[32]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[32]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[33]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[33]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[34]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[34]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[35]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[35]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[36]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[36]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[37]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[37]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[38]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[38]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[39]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[39]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[40]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[40]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[41]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[41]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[42]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[42]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[43]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[43]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[44]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[44]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[45]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[45]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[46]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[46]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[47]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[47]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[48]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[48]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[49]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[49]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[50]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[50]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[51]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[51]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[52]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[52]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[53]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[53]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[54]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[54]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[55]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[55]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[56]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[56]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[57]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[57]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[58]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[58]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[59]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[59]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[60]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[60]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[61]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[61]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[62]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[62]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[63]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq[63]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[8]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[9]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[10]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[11]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[12]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[13]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[14]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[15]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[16]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[17]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[18]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[19]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[20]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[21]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[22]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[23]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[24]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[25]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[26]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[27]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[28]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[29]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[30]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[31]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[32]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[33]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[34]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[35]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[36]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[37]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[38]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[39]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[40]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[41]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[42]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[43]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[44]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[45]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[46]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[47]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[48]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[49]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[50]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[51]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[52]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[53]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[54]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[55]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[56]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[57]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[58]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[59]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[60]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[61]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[62]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq[63]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[8]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[9]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[10]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[11]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[12]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[13]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[14]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[15]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[16]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[17]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[18]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[19]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[20]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[21]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[22]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[23]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[24]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[25]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[26]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[27]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[28]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[29]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[30]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[31]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[32]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[33]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[34]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[35]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[36]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[37]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[38]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[39]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[40]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[41]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[42]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[43]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[44]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[45]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[46]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[47]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[48]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[49]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[50]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[51]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[52]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[53]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[54]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[55]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[56]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[57]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[58]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[59]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[60]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[61]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[62]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq[63]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm[7]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[0]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[1]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[2]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[3]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[4]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[5]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[6]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dq[7]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[0] -to M2_DDR2_dm[0]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[0] -to M2_DDR2_dqs[0]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[8]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[9]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[10]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[11]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[12]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[13]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[14]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dq[15]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[1] -to M2_DDR2_dm[1]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[1] -to M2_DDR2_dqs[1]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[16]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[17]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[18]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[19]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[20]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[21]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[22]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dq[23]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[2] -to M2_DDR2_dm[2]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[2] -to M2_DDR2_dqs[2]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[24]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[25]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[26]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[27]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[28]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[29]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[30]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dq[31]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[3] -to M2_DDR2_dm[3]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[3] -to M2_DDR2_dqs[3]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[32]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[33]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[34]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[35]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[36]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[37]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[38]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dq[39]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[4] -to M2_DDR2_dm[4]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[4] -to M2_DDR2_dqs[4]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[40]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[41]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[42]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[43]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[44]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[45]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[46]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dq[47]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[5] -to M2_DDR2_dm[5]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[5] -to M2_DDR2_dqs[5]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[48]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[49]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[50]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[51]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[52]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[53]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[54]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dq[55]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[6] -to M2_DDR2_dm[6]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[6] -to M2_DDR2_dqs[6]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[56]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[57]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[58]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[59]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[60]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[61]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[62]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dq[63]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs[7] -to M2_DDR2_dm[7]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn[7] -to M2_DDR2_dqs[7]
	set_instance_assignment -name T11_DELAY 7 -to M2_DDR2_dqs
	set_location_assignment PIN_AF25 -to termination_blk0~_rup_pad
	set_location_assignment PIN_AG25 -to termination_blk0~_rdn_pad
	set_instance_assignment -name IO_STANDARD "1.8 V" -to termination_blk0~_rup_pad
	set_instance_assignment -name IO_STANDARD "1.8 V" -to termination_blk0~_rdn_pad
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_odt_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_odt_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk_to_and_from_the_ddr2[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M2_DDR2_clk_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk_n_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk_n_to_and_from_the_ddr2[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M2_DDR2_clk_n_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_clk_n_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_clk_n_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cs_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_cs_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cke_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_cke_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[8]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[9]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[10]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[11]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[12]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_addr_from_the_ddr2[13]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_addr_from_the_ddr2[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ba_from_the_ddr2[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ba_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ba_from_the_ddr2[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ba_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ba_from_the_ddr2[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ba_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_ras_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_ras_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_cas_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_cas_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_we_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M2_DDR2_we_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M2_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M2_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M2_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M2_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M2_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M2_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[0] -to M2_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[0] -to M2_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[1] -to M2_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[1] -to M2_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[2] -to M2_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[2] -to M2_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[3] -to M2_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[3] -to M2_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[4] -to M2_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[4] -to M2_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[5] -to M2_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[5] -to M2_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[6] -to M2_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[6] -to M2_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name DQ_GROUP 9 -from M2_DDR2_dqs_to_and_from_the_ddr2[7] -to M2_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M2_DDR2_dqsn_to_and_from_the_ddr2[7] -to M2_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name T11_DELAY 7 -to M2_DDR2_dqs_to_and_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_odt_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_odt_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk_to_and_from_the_ddr2[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M1_DDR2_clk_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_n_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk_n_to_and_from_the_ddr2[0]
	set_instance_assignment -name TREAT_BIDIR_AS_OUTPUT ON -to M1_DDR2_clk_n_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_clk_n_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_clk_n_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cs_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cs_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cke_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cke_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[8]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[9]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[10]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[11]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[12]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_addr_from_the_ddr2[13]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_addr_from_the_ddr2[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba_from_the_ddr2[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba_from_the_ddr2[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ba_from_the_ddr2[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ba_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_ras_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_ras_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_cas_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_cas_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_we_n_from_the_ddr2
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to M1_DDR2_we_n_from_the_ddr2
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.8-V SSTL CLASS I" -to M1_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to M1_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to M1_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to M1_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dqsn_to_and_from_the_ddr2[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to M1_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to M1_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[0]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[1]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[2]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[3]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[4]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[5]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[6]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dq_to_and_from_the_ddr2[7]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[0] -to M1_DDR2_dm_from_the_ddr2[0]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[0] -to M1_DDR2_dqs_to_and_from_the_ddr2[0]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[8]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[9]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[10]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[11]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[12]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[13]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[14]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dq_to_and_from_the_ddr2[15]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[1] -to M1_DDR2_dm_from_the_ddr2[1]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[1] -to M1_DDR2_dqs_to_and_from_the_ddr2[1]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[16]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[17]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[18]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[19]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[20]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[21]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[22]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dq_to_and_from_the_ddr2[23]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[2] -to M1_DDR2_dm_from_the_ddr2[2]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[2] -to M1_DDR2_dqs_to_and_from_the_ddr2[2]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[24]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[25]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[26]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[27]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[28]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[29]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[30]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dq_to_and_from_the_ddr2[31]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[3] -to M1_DDR2_dm_from_the_ddr2[3]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[3] -to M1_DDR2_dqs_to_and_from_the_ddr2[3]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[32]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[33]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[34]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[35]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[36]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[37]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[38]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dq_to_and_from_the_ddr2[39]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[4] -to M1_DDR2_dm_from_the_ddr2[4]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[4] -to M1_DDR2_dqs_to_and_from_the_ddr2[4]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[40]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[41]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[42]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[43]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[44]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[45]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[46]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dq_to_and_from_the_ddr2[47]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[5] -to M1_DDR2_dm_from_the_ddr2[5]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[5] -to M1_DDR2_dqs_to_and_from_the_ddr2[5]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[48]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[49]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[50]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[51]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[52]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[53]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[54]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dq_to_and_from_the_ddr2[55]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[6] -to M1_DDR2_dm_from_the_ddr2[6]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[6] -to M1_DDR2_dqs_to_and_from_the_ddr2[6]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[56]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[57]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[58]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[59]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[60]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[61]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[62]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dq_to_and_from_the_ddr2[63]
	set_instance_assignment -name DQ_GROUP 9 -from M1_DDR2_dqs_to_and_from_the_ddr2[7] -to M1_DDR2_dm_from_the_ddr2[7]
	set_instance_assignment -name DQSB_DQS_PAIR ON -from M1_DDR2_dqsn_to_and_from_the_ddr2[7] -to M1_DDR2_dqs_to_and_from_the_ddr2[7]
	set_instance_assignment -name T11_DELAY 7 -to M1_DDR2_dqs_to_and_from_the_ddr2
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name FLOW_ENABLE_POWER_ANALYZER OFF
	set_global_assignment -name REVISION_TYPE BASE
	set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON -family "Stratix IV"
	set_global_assignment -name TIMEQUEST_MULTICORNER_ANALYSIS ON -family "Stratix IV"
	set_global_assignment -name TIMEQUEST_REPORT_WORST_CASE_TIMING_PATHS OFF -family "Stratix IV"
	set_global_assignment -name TIMEQUEST_DO_CCPP_REMOVAL ON -family "Stratix IV"
	set_global_assignment -name ALLOW_SHIFT_REGISTER_MERGING_ACROSS_HIERARCHIES AUTO
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON -family "Stratix IV"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "Stratix IV"
	set_global_assignment -name ARRIAV_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS" -family "Stratix IV"
	set_global_assignment -name OPTIMIZE_SSN OFF
	set_global_assignment -name OPTIMIZE_SSN OFF -family "Stratix IV"
	set_global_assignment -name SET_PULSE_WIDTH WIDTH_0
	set_global_assignment -name LOCAL_LINE_DELAY_CHAIN OFF
	set_global_assignment -name ENABLE_HOLD_BACK_OFF ON
	set_global_assignment -name CONFIGURATION_VCCIO_LEVEL AUTO
	set_global_assignment -name FORCE_CONFIGURATION_VCCIO OFF
	set_global_assignment -name SYNCHRONIZER_IDENTIFICATION OFF
	set_global_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION ON
	set_global_assignment -name OPTIMIZE_FOR_METASTABILITY ON
	set_global_assignment -name RAM_BLOCK_READ_CLOCK_DUTY_CYCLE_DEPENDENCY ON
	set_global_assignment -name M144K_BLOCK_READ_CLOCK_DUTY_CYCLE_DEPENDENCY OFF
	set_global_assignment -name STRATIXIII_MRAM_COMPATIBILITY ON
	set_global_assignment -name STRATIXIII_LUTAB_SLOWDOWN OFF
	set_global_assignment -name FORCE_FITTER_TO_AVOID_PERIPHERY_PLACEMENT_WARNINGS OFF
	set_global_assignment -name AUTO_C3_M9K_BIT_SKIP OFF
	set_global_assignment -name PR_DONE_OPEN_DRAIN ON
	set_global_assignment -name NCEO_OPEN_DRAIN ON
	set_global_assignment -name ENABLE_CRC_ERROR_PIN OFF
	set_global_assignment -name ENABLE_PR_PINS OFF
	set_global_assignment -name CLAMPING_DIODE OFF
	set_global_assignment -name TRI_STATE_SPI_PINS OFF
	set_global_assignment -name EDA_SIMULATION_TOOL "<None>"
	set_global_assignment -name EDA_TIMING_ANALYSIS_TOOL "<None>"
	set_global_assignment -name EDA_BOARD_DESIGN_TIMING_TOOL "<None>"
	set_global_assignment -name EDA_BOARD_DESIGN_SYMBOL_TOOL "<None>"
	set_global_assignment -name EDA_BOARD_DESIGN_SIGNAL_INTEGRITY_TOOL "<None>"
	set_global_assignment -name EDA_BOARD_DESIGN_BOUNDARY_SCAN_TOOL "<None>"
	set_global_assignment -name EDA_BOARD_DESIGN_TOOL "<None>"
	set_global_assignment -name EDA_FORMAL_VERIFICATION_TOOL "<None>"
	set_global_assignment -name EDA_RESYNTHESIS_TOOL "<None>"
	set_global_assignment -name STRATIX_FAST_PLL_INCREASE_LOCK_WINDOW OFF
	set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION ON
	set_global_assignment -name COMPRESSION_MODE OFF
	set_global_assignment -name CLOCK_SOURCE INTERNAL
	set_global_assignment -name CONFIGURATION_CLOCK_FREQUENCY "10 MHZ"
	set_global_assignment -name CONFIGURATION_CLOCK_DIVISOR 1
	set_global_assignment -name ENABLE_LOW_VOLTAGE_MODE_ON_CONFIG_DEVICE ON
	set_global_assignment -name FLEX6K_ENABLE_LOW_VOLTAGE_MODE_ON_CONFIG_DEVICE OFF
	set_global_assignment -name FLEX10K_ENABLE_LOW_VOLTAGE_MODE_ON_CONFIG_DEVICE ON
	set_global_assignment -name MAX7000S_JTAG_USER_CODE FFFF
	set_global_assignment -name STRATIX_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name APEX20K_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name MERCURY_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name FLEX10K_JTAG_USER_CODE 7F
	set_global_assignment -name MAX7000_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name MAX7000_USE_CHECKSUM_AS_USERCODE OFF
	set_global_assignment -name USE_CHECKSUM_AS_USERCODE OFF
	set_global_assignment -name SECURITY_BIT OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF -family "Stratix IV"
	set_global_assignment -name CYCLONEIII_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name STRATIXII_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name APEX20K_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name MERCURY_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name FLEX6K_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name FLEX10K_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name CYCLONE_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name STRATIX_CONFIGURATION_DEVICE AUTO
	set_global_assignment -name APEX20K_CONFIG_DEVICE_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name STRATIX_CONFIG_DEVICE_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name MERCURY_CONFIG_DEVICE_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name FLEX10K_CONFIG_DEVICE_JTAG_USER_CODE FFFFFFFF
	set_global_assignment -name EPROM_USE_CHECKSUM_AS_USERCODE OFF
	set_global_assignment -name AUTO_INCREMENT_CONFIG_DEVICE_JTAG_USER_CODE ON
	set_global_assignment -name DISABLE_NCS_AND_OE_PULLUPS_ON_CONFIG_DEVICE OFF
	set_global_assignment -name GENERATE_TTF_FILE OFF
	set_global_assignment -name GENERATE_RBF_FILE OFF
	set_global_assignment -name GENERATE_HEX_FILE OFF
	set_global_assignment -name HEXOUT_FILE_START_ADDRESS 0
	set_global_assignment -name HEXOUT_FILE_COUNT_DIRECTION UP
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_NO_OUTPUT_GND "AS OUTPUT DRIVING AN UNSPECIFIED SIGNAL"
	set_global_assignment -name RELEASE_CLEARS_BEFORE_TRI_STATES OFF
	set_global_assignment -name AUTO_RESTART_CONFIGURATION ON
	set_global_assignment -name HARDCOPYII_POWER_ON_EXTRA_DELAY OFF
	set_global_assignment -name STRATIXII_EP2S60ES_ALLOW_MRAM_USAGE OFF
	set_global_assignment -name STRATIXII_ALLOW_DUAL_PORT_DUAL_CLOCK_MRAM_USAGE OFF
	set_global_assignment -name STRATIXII_MRAM_COMPATIBILITY OFF
	set_global_assignment -name CYCLONEII_M4K_COMPATIBILITY ON
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name USE_CHECKERED_PATTERN_AS_UNINITIALIZED_RAM_CONTENT OFF
	set_global_assignment -name ARRIAIIGX_RX_CDR_LOCKUP_FIX_OVERRIDE OFF
	set_global_assignment -name START_TIME "0 ns"
	set_global_assignment -name SIMULATION_MODE TIMING
	set_global_assignment -name AUTO_USE_SIMULATION_PDB_NETLIST OFF
	set_global_assignment -name ADD_DEFAULT_PINS_TO_SIMULATION_OUTPUT_WAVEFORMS ON
	set_global_assignment -name SETUP_HOLD_DETECTION OFF
	set_global_assignment -name SETUP_HOLD_DETECTION_INPUT_REGISTERS_BIDIR_PINS_DISABLED OFF
	set_global_assignment -name CHECK_OUTPUTS OFF
	set_global_assignment -name SIMULATION_COVERAGE ON
	set_global_assignment -name SIMULATION_COMPLETE_COVERAGE_REPORT_PANEL ON
	set_global_assignment -name SIMULATION_MISSING_1_VALUE_COVERAGE_REPORT_PANEL ON
	set_global_assignment -name SIMULATION_MISSING_0_VALUE_COVERAGE_REPORT_PANEL ON
	set_global_assignment -name GLITCH_DETECTION OFF
	set_global_assignment -name GLITCH_INTERVAL "1 ns"
	set_global_assignment -name SIM_NO_DELAYS OFF
	set_global_assignment -name SIMULATOR_GENERATE_SIGNAL_ACTIVITY_FILE OFF
	set_global_assignment -name SIMULATION_WITH_GLITCH_FILTERING_WHEN_GENERATING_SAF ON
	set_global_assignment -name SIMULATION_BUS_CHANNEL_GROUPING OFF
	set_global_assignment -name SIMULATION_VDB_RESULT_FLUSH ON
	set_global_assignment -name VECTOR_COMPARE_TRIGGER_MODE INPUT_EDGE
	set_global_assignment -name SIMULATION_NETLIST_VIEWER OFF
	set_global_assignment -name SIMULATION_INTERCONNECT_DELAY_MODEL_TYPE TRANSPORT
	set_global_assignment -name SIMULATION_CELL_DELAY_MODEL_TYPE TRANSPORT
	set_global_assignment -name SIMULATOR_GENERATE_POWERPLAY_VCD_FILE OFF
	set_global_assignment -name SIMULATOR_PVT_TIMING_MODEL_TYPE AUTO
	set_global_assignment -name SIMULATION_WITH_AUTO_GLITCH_FILTERING AUTO
	set_global_assignment -name DRC_TOP_FANOUT 50
	set_global_assignment -name DRC_FANOUT_EXCEEDING 30
	set_global_assignment -name DRC_GATED_CLOCK_FEED 30
	set_global_assignment -name ASSG_CAT ON
	set_global_assignment -name ASSG_RULE_MISSING_FMAX ON
	set_global_assignment -name ASSG_RULE_MISSING_TIMING ON
	set_global_assignment -name HARDCOPY_FLOW_AUTOMATION MIGRATION_ONLY
	set_global_assignment -name ENABLE_DRC_SETTINGS OFF
	set_global_assignment -name CLK_RULE_CLKNET_CLKSPINES_THRESHOLD 25
	set_global_assignment -name TIMING_RULE_SHIFT_REG ON
	set_global_assignment -name TIMING_RULE_COIN_CLKEDGE ON
	set_global_assignment -name DRC_DETAIL_MESSAGE_LIMIT 10
	set_global_assignment -name DRC_VIOLATION_MESSAGE_LIMIT 30
	set_global_assignment -name DRC_DEADLOCK_STATE_LIMIT 2
	set_global_assignment -name MERGE_HEX_FILE OFF
	set_global_assignment -name GENERATE_SVF_FILE OFF
	set_global_assignment -name GENERATE_ISC_FILE OFF
	set_global_assignment -name GENERATE_JAM_FILE OFF
	set_global_assignment -name GENERATE_JBC_FILE OFF
	set_global_assignment -name GENERATE_JBC_FILE_COMPRESSED ON
	set_global_assignment -name GENERATE_CONFIG_SVF_FILE OFF
	set_global_assignment -name GENERATE_CONFIG_ISC_FILE OFF
	set_global_assignment -name GENERATE_CONFIG_JAM_FILE OFF
	set_global_assignment -name GENERATE_CONFIG_JBC_FILE OFF
	set_global_assignment -name GENERATE_CONFIG_JBC_FILE_COMPRESSED ON
	set_global_assignment -name GENERATE_CONFIG_HEXOUT_FILE OFF
	set_global_assignment -name ISP_CLAMP_STATE_DEFAULT "TRI-STATE"
	set_global_assignment -name SIGNALPROBE_ALLOW_OVERUSE OFF
	set_global_assignment -name SIGNALPROBE_DURING_NORMAL_COMPILATION OFF
	set_global_assignment -name HUB_ENTITY_NAME sld_hub
	set_global_assignment -name HUB_INSTANCE_NAME auto_hub
	set_global_assignment -name LOGICLOCK_INCREMENTAL_COMPILE_ASSIGNMENT OFF
	set_global_assignment -name POWER_DEFAULT_TOGGLE_RATE 12.5%
	set_global_assignment -name POWER_DEFAULT_INPUT_IO_TOGGLE_RATE 12.5%
	set_global_assignment -name POWER_USE_PVA ON
	set_global_assignment -name POWER_USE_INPUT_FILE "NO FILE"
	set_global_assignment -name POWER_USE_INPUT_FILES OFF
	set_global_assignment -name POWER_VCD_FILTER_GLITCHES ON
	set_global_assignment -name POWER_REPORT_SIGNAL_ACTIVITY OFF
	set_global_assignment -name POWER_REPORT_POWER_DISSIPATION OFF
	set_global_assignment -name POWER_USE_DEVICE_CHARACTERISTICS TYPICAL
	set_global_assignment -name POWER_AUTO_COMPUTE_TJ ON
	set_global_assignment -name POWER_TJ_VALUE 25
	set_global_assignment -name POWER_USE_TA_VALUE 25
	set_global_assignment -name POWER_USE_CUSTOM_COOLING_SOLUTION OFF
	set_global_assignment -name POWER_BOARD_TEMPERATURE 25
	set_global_assignment -name INCREMENTAL_COMPILATION FULL_INCREMENTAL_COMPILATION
	set_global_assignment -name IGNORE_PARTITIONS OFF
	set_global_assignment -name AUTO_EXPORT_INCREMENTAL_COMPILATION OFF
	set_global_assignment -name INCREMENTAL_COMPILATION_EXPORT_NETLIST_TYPE POST_FIT
	set_global_assignment -name RAPID_RECOMPILE_MODE OFF
	set_global_assignment -name QIC_USE_BINARY_DATABASES ON
	set_global_assignment -name ENABLE_ACCELERATED_INCREMENTAL_COMPILE ON
	set_global_assignment -name OUTPUT_IO_TIMING_ENDPOINT "NEAR END"
	set_global_assignment -name RTLV_REMOVE_FANOUT_FREE_REGISTERS ON
	set_global_assignment -name RTLV_SIMPLIFIED_LOGIC ON
	set_global_assignment -name RTLV_GROUP_RELATED_NODES ON
	set_global_assignment -name RTLV_GROUP_COMB_LOGIC_IN_CLOUD OFF
	set_global_assignment -name RTLV_GROUP_COMB_LOGIC_IN_CLOUD_TMV OFF
	set_global_assignment -name RTLV_GROUP_RELATED_NODES_TMV ON
	set_global_assignment -name EQC_CONSTANT_DFF_DETECTION ON
	set_global_assignment -name EQC_DUPLICATE_DFF_DETECTION ON
	set_global_assignment -name EQC_BBOX_MERGE ON
	set_global_assignment -name EQC_LVDS_MERGE ON
	set_global_assignment -name EQC_RAM_UNMERGING ON
	set_global_assignment -name EQC_DFF_SS_EMULATION ON
	set_global_assignment -name EQC_RAM_REGISTER_UNPACK ON
	set_global_assignment -name EQC_MAC_REGISTER_UNPACK ON
	set_global_assignment -name EQC_SET_PARTITION_BB_TO_VCC_GND ON
	set_global_assignment -name EQC_STRUCTURE_MATCHING ON
	set_global_assignment -name EQC_AUTO_BREAK_CONE ON
	set_global_assignment -name EQC_POWER_UP_COMPARE OFF
	set_global_assignment -name EQC_AUTO_COMP_LOOP_CUT ON
	set_global_assignment -name EQC_AUTO_INVERSION ON
	set_global_assignment -name EQC_AUTO_TERMINATE ON
	set_global_assignment -name EQC_SUB_CONE_REPORT OFF
	set_global_assignment -name EQC_RENAMING_RULES ON
	set_global_assignment -name EQC_PARAMETER_CHECK ON
	set_global_assignment -name EQC_AUTO_PORTSWAP ON
	set_global_assignment -name EQC_DETECT_DONT_CARES ON
	set_global_assignment -name EQC_SHOW_ALL_MAPPED_POINTS OFF
	set_global_assignment -name TOP_LEVEL_ENTITY DE4_DDR2
	set_global_assignment -name PARTITION_PRESERVE_HIGH_SPEED_TILES ON -section_id Top
	set_global_assignment -name PARTITION_IGNORE_SOURCE_FILE_CHANGES OFF -section_id Top
	set_global_assignment -name PARTITION_ALWAYS_USE_QXP_NETLIST OFF -section_id Top
	set_global_assignment -name PARTITION_IMPORT_ASSIGNMENTS ON -section_id Top
	set_global_assignment -name PARTITION_IMPORT_EXISTING_ASSIGNMENTS REPLACE_CONFLICTING -section_id Top
	set_global_assignment -name PARTITION_IMPORT_EXISTING_LOGICLOCK_REGIONS REPLACE_CONFLICTING -section_id Top
	set_global_assignment -name PARTITION_IMPORT_PIN_ASSIGNMENTS ON -section_id Top
	set_global_assignment -name PARTITION_IMPORT_PROMOTE_ASSIGNMENTS ON -section_id Top
	set_global_assignment -name PARTITION_TYPE STANDARD_PARTITION -section_id Top
	set_global_assignment -name ALLOW_MULTIPLE_PERSONAS OFF -section_id Top
	set_global_assignment -name EDA_RTL_SIM_MODE NOT_USED -section_id eda_simulation

	# Commit assignments
	export_assignments

	# Execute the project.
	execute_flow -compile

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
