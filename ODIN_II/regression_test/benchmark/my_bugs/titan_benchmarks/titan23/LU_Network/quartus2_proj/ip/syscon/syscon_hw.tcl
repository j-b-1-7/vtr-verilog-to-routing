# TCL File Generated by Component Editor 11.1sp2
# Tue Mar 27 23:42:38 EDT 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | syscon "System Controller" v1.0
# | null 2012.03.27.23:42:38
# | 
# | 
# | E:/Stuff/Project/ece1749/trunk/new/ip/syscon/syscon.sv
# | 
# |    ./syscon.sv syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module syscon
# | 
set_module_property NAME syscon
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME "System Controller"
set_module_property TOP_LEVEL_HDL_FILE syscon.sv
set_module_property TOP_LEVEL_HDL_MODULE syscon
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME syscon
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file syscon.sv {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point s
# | 
add_interface s avalon end
set_interface_property s addressUnits WORDS
set_interface_property s associatedClock clock
set_interface_property s associatedReset reset
set_interface_property s bitsPerSymbol 8
set_interface_property s burstOnBurstBoundariesOnly false
set_interface_property s burstcountUnits WORDS
set_interface_property s explicitAddressSpan 0
set_interface_property s holdTime 0
set_interface_property s linewrapBursts false
set_interface_property s maximumPendingReadTransactions 0
set_interface_property s readLatency 0
set_interface_property s readWaitTime 1
set_interface_property s setupTime 0
set_interface_property s timingUnits Cycles
set_interface_property s writeWaitTime 0

set_interface_property s ENABLED true

add_interface_port s address address Input 1
add_interface_port s writedata writedata Input 32
add_interface_port s write write Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point rstreq
# | 
add_interface rstreq conduit end

set_interface_property rstreq ENABLED true

add_interface_port rstreq reset_req_out export Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock ""
set_interface_property reset synchronousEdges NONE

set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------
