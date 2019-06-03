if [info exists ::env(DSPBA_HDL_DIR)] {
    set dspba_hdl_dir $::env(DSPBA_HDL_DIR)
} else {
    set dspba_hdl_dir $quartus_dir/dspba/Libraries
}

set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/fpc/hcc_package.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/fpc/hcc_implementation.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/fpc/math_package.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/fpc/math_implementation.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/fpc/fpc_library_package.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/fpc/fpc_library.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/base/dspba_library_package.vhd"
set_global_assignment -name VHDL_FILE "$dspba_hdl_dir/vhdl/base/dspba_library.vhd"
