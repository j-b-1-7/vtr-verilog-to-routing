vlib work

set libs {altera_mf_ver altera_lnsim_ver altera_ver lpm_ver sgate_ver stratixiv_ver}

foreach lib $libs {
    vmap $lib verilog_libs/$lib
}
