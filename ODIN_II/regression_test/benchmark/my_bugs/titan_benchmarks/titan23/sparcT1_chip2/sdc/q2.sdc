#Quartus II compatible SDC file for benchmark 'sparcT1_chip2'

#*******************************
# set_time_format 
#*******************************
set_time_format -unit ns -decimal_places 3

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 -name pad_ddr0:pad_ddr0|bw_clk_cl_ddr_ddr:pad_ddr0_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l [get_registers {pad_ddr0:pad_ddr0|bw_clk_cl_ddr_ddr:pad_ddr0_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name TCK [get_ports {TCK}]

create_clock -period 1.0 -name PWRON_RST_L [get_ports {PWRON_RST_L}]

create_clock -period 1.0 -name pad_ddr1:pad_ddr1|bw_clk_cl_ddr_ddr:pad_ddr1_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l [get_registers {pad_ddr1:pad_ddr1|bw_clk_cl_ddr_ddr:pad_ddr1_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr2_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr2_update_dr|q[0]}]

create_clock -period 1.0 -name pad_ddr2:pad_ddr2|bw_clk_cl_ddr_ddr:pad_ddr2_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l [get_registers {pad_ddr2:pad_ddr2|bw_clk_cl_ddr_ddr:pad_ddr2_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name pad_ddr3:pad_ddr3|bw_clk_cl_ddr_ddr:pad_ddr3_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l [get_registers {pad_ddr3:pad_ddr3|bw_clk_cl_ddr_ddr:pad_ddr3_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name ccx:ccx|bw_clk_cl_ccx_cmp:ccx_hdr|cluster_header_dup:Iprimary|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l [get_registers {ccx:ccx|bw_clk_cl_ccx_cmp:ccx_hdr|cluster_header_dup:Iprimary|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name TEST_MODE [get_ports {TEST_MODE}]

create_clock -period 1.0 -name fpu:fpu|fpu_div:fpu_div|fpu_div_frac_dp:fpu_div_frac_dp|clken_buf:ckbuf_div_frac_dp|clken [get_registers {fpu:fpu|fpu_div:fpu_div|fpu_div_frac_dp:fpu_div_frac_dp|clken_buf:ckbuf_div_frac_dp|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_vuad_ctl:vuad_ctl|clken_buf:clk_buf|clken [get_registers {sctag:sctag1|sctag_vuad_ctl:vuad_ctl|clken_buf:clk_buf|clken}]

create_clock -period 1.0 -name jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq1|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff [get_registers {jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq1|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff}]

create_clock -period 1.0 -name sctag:sctag0|sctag_vuad_ctl:vuad_ctl|clken_buf:clk_buf|clken [get_registers {sctag:sctag0|sctag_vuad_ctl:vuad_ctl|clken_buf:clk_buf|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_7|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_7|clken}]

create_clock -period 1.0 -name jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq0|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff [get_registers {jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq0|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff}]

create_clock -period 1.0 -name sctag:sctag1|bw_r_cm16x40:mbtag|mb_ren_d1 [get_registers {sctag:sctag1|bw_r_cm16x40:mbtag|mb_ren_d1}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_7|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_7|clken}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr1_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr1_update_dr|q[0]}]

create_clock -period 1.0 -name sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf1|clken [get_registers {sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf1|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_1|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_1|clken}]

create_clock -period 1.0 -name fpu:fpu|fpu_mul:fpu_mul|fpu_mul_frac_dp:fpu_mul_frac_dp|clken_buf:ckbuf_mul_frac_dp|clken [get_registers {fpu:fpu|fpu_mul:fpu_mul|fpu_mul_frac_dp:fpu_mul_frac_dp|clken_buf:ckbuf_mul_frac_dp|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_12|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_12|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_6|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_6|clken}]

create_clock -period 1.0 -name sctag:sctag0|bw_r_cm16x40:mbtag|mb_ren_d1 [get_registers {sctag:sctag0|bw_r_cm16x40:mbtag|mb_ren_d1}]

create_clock -period 1.0 -name sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf2|clken [get_registers {sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf2|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_10|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_10|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_4|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_4|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf4|clken [get_registers {sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf4|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_5|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_5|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_11|clken [get_registers {sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_11|clken}]

create_clock -period 1.0 -name sctag:sctag1|bw_r_rf32x108:subarray_0|ren_d1 [get_registers {sctag:sctag1|bw_r_rf32x108:subarray_0|ren_d1}]

create_clock -period 1.0 -name sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_idx_hold|clken [get_registers {sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_idx_hold|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf1|clken [get_registers {sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf1|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_iqdp:iqdp|clken_buf:clk_buf0|clken [get_registers {sctag:sctag1|sctag_iqdp:iqdp|clken_buf:clk_buf0|clken}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr0_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr0_update_dr|q[0]}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_1|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_1|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf2|clken [get_registers {sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf2|clken}]

create_clock -period 1.0 -name sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_data_ecc_idx|clken [get_registers {sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_data_ecc_idx|clken}]

create_clock -period 1.0 -name sctag:sctag0|bw_r_rf32x108:subarray_0|ren_d1 [get_registers {sctag:sctag0|bw_r_rf32x108:subarray_0|ren_d1}]

create_clock -period 1.0 -name sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf3|clken [get_registers {sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf3|clken}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr3_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr3_update_dr|q[0]}]

create_clock -period 1.0 -name sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf4|clken [get_registers {sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf4|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_12|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_12|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_6|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_6|clken}]

create_clock -period 1.0 -name sctag:sctag1|bw_r_rf32x108:subarray_11|ren_d1 [get_registers {sctag:sctag1|bw_r_rf32x108:subarray_11|ren_d1}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_10|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_10|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_4|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_4|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_5|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_5|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_11|clken [get_registers {sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_11|clken}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff}]

create_clock -period 1.0 -name jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq3|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff [get_registers {jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq3|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff}]

create_clock -period 1.0 -name sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_idx_hold|clken [get_registers {sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_idx_hold|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_iqdp:iqdp|clken_buf:clk_buf0|clken [get_registers {sctag:sctag0|sctag_iqdp:iqdp|clken_buf:clk_buf0|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_data_ecc_idx|clken [get_registers {sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_data_ecc_idx|clken}]

create_clock -period 1.0 -name fpu:fpu|fpu_add:fpu_add|fpu_add_frac_dp:fpu_add_frac_dp|clken_buf:ckbuf_add_frac_dp|clken [get_registers {fpu:fpu|fpu_add:fpu_add|fpu_add_frac_dp:fpu_add_frac_dp|clken_buf:ckbuf_add_frac_dp|clken}]

create_clock -period 1.0 -name scbuf:scbuf1|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken [get_registers {scbuf:scbuf1|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken}]

create_clock -period 1.0 -name scbuf:scbuf1|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken [get_registers {scbuf:scbuf1|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff}]

create_clock -period 1.0 -name pad_jbusr:pad_jbusr|bw_clk_cl_jbusr_jbus:I69|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l [get_registers {pad_jbusr:pad_jbusr|bw_clk_cl_jbusr_jbus:I69|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name sctag:sctag0|bw_r_rf32x108:subarray_11|ren_d1 [get_registers {sctag:sctag0|bw_r_rf32x108:subarray_11|ren_d1}]

create_clock -period 1.0 -name scbuf:scbuf1|scbuf_evict:evict|clken_buf:clk_buf_r3|clken [get_registers {scbuf:scbuf1|scbuf_evict:evict|clken_buf:clk_buf_r3|clken}]

create_clock -period 1.0 -name scbuf:scbuf1|scbuf_evict:evict|clken_buf:clk_buf_r2|clken [get_registers {scbuf:scbuf1|scbuf_evict:evict|clken_buf:clk_buf_r2|clken}]

create_clock -period 1.0 -name scbuf:scbuf3|scbuf_evict:evict|clken_buf:clk_buf_r3|clken [get_registers {scbuf:scbuf3|scbuf_evict:evict|clken_buf:clk_buf_r3|clken}]

create_clock -period 1.0 -name scbuf:scbuf3|scbuf_evict:evict|clken_buf:clk_buf_r2|clken [get_registers {scbuf:scbuf3|scbuf_evict:evict|clken_buf:clk_buf_r2|clken}]

create_clock -period 1.0 -name jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq2|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff [get_registers {jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq2|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff}]

create_clock -period 1.0 -name sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_addr_c12|clken [get_registers {sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_addr_c12|clken}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff [get_registers {dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff}]

create_clock -period 1.0 -name scbuf:scbuf0|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken [get_registers {scbuf:scbuf0|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken}]

create_clock -period 1.0 -name scbuf:scbuf0|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken [get_registers {scbuf:scbuf0|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken}]

create_clock -period 1.0 -name scbuf:scbuf0|scbuf_evict:evict|clken_buf:clk_buf_r3|clken [get_registers {scbuf:scbuf0|scbuf_evict:evict|clken_buf:clk_buf_r3|clken}]

create_clock -period 1.0 -name scbuf:scbuf0|scbuf_evict:evict|clken_buf:clk_buf_r2|clken [get_registers {scbuf:scbuf0|scbuf_evict:evict|clken_buf:clk_buf_r2|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf3|clken [get_registers {sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf3|clken}]

create_clock -period 1.0 -name scbuf:scbuf2|scbuf_evict:evict|clken_buf:clk_buf_r3|clken [get_registers {scbuf:scbuf2|scbuf_evict:evict|clken_buf:clk_buf_r3|clken}]

create_clock -period 1.0 -name scbuf:scbuf2|scbuf_evict:evict|clken_buf:clk_buf_r2|clken [get_registers {scbuf:scbuf2|scbuf_evict:evict|clken_buf:clk_buf_r2|clken}]

create_clock -period 1.0 -name sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_addr_c12|clken [get_registers {sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_addr_c12|clken}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff}]

create_clock -period 1.0 -name dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff [get_registers {dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff}]

create_clock -period 1.0 -name scbuf:scbuf2|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken [get_registers {scbuf:scbuf2|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken}]

create_clock -period 1.0 -name scbuf:scbuf2|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken [get_registers {scbuf:scbuf2|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken}]

create_clock -period 1.0 -name scbuf:scbuf3|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken [get_registers {scbuf:scbuf3|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken}]

create_clock -period 1.0 -name scbuf:scbuf3|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken [get_registers {scbuf:scbuf3|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_jbusl_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_jbusl_update_dr|q[0]}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_debug_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_debug_update_dr|q[0]}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_jbusr_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_jbusr_update_dr|q[0]}]

create_clock -period 1.0 -name ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_misc_update_dr|q[0] [get_registers {ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_misc_update_dr|q[0]}]

create_clock -period 1.0 -name pad_jbusl:pad_jbusl|bw_clk_cl_jbusl_jbus:I80|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l [get_registers {pad_jbusl:pad_jbusl|bw_clk_cl_jbusl_jbus:I80|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l}]

create_clock -period 1.0 -name pad_jbusl:pad_dbg|bw_clk_cl_jbusl_jbus:I80|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l [get_registers {pad_jbusl:pad_dbg|bw_clk_cl_jbusl_jbus:I80|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l}]


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
set_clock_groups -exclusive -group { pad_ddr0:pad_ddr0|bw_clk_cl_ddr_ddr:pad_ddr0_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l } -group { TCK } -group { PWRON_RST_L } -group { pad_ddr1:pad_ddr1|bw_clk_cl_ddr_ddr:pad_ddr1_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr2_update_dr|q[0] } -group { pad_ddr2:pad_ddr2|bw_clk_cl_ddr_ddr:pad_ddr2_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l } -group { pad_ddr3:pad_ddr3|bw_clk_cl_ddr_ddr:pad_ddr3_header|cluster_header_dup:cluster_header0|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l } -group { ccx:ccx|bw_clk_cl_ccx_cmp:ccx_hdr|cluster_header_dup:Iprimary|bw_clk_cclk_scanlasr_2x:sync_cluster_slave|so_l } -group { TEST_MODE } -group { fpu:fpu|fpu_div:fpu_div|fpu_div_frac_dp:fpu_div_frac_dp|clken_buf:ckbuf_div_frac_dp|clken } -group { sctag:sctag1|sctag_vuad_ctl:vuad_ctl|clken_buf:clk_buf|clken } -group { jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq1|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff } -group { sctag:sctag0|sctag_vuad_ctl:vuad_ctl|clken_buf:clk_buf|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_7|clken } -group { jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq0|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff } -group { sctag:sctag1|bw_r_cm16x40:mbtag|mb_ren_d1 } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_7|clken } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr1_update_dr|q[0] } -group { sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf1|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_1|clken } -group { fpu:fpu|fpu_mul:fpu_mul|fpu_mul_frac_dp:fpu_mul_frac_dp|clken_buf:ckbuf_mul_frac_dp|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_12|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_6|clken } -group { sctag:sctag0|bw_r_cm16x40:mbtag|mb_ren_d1 } -group { sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf2|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_10|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_4|clken } -group { sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf4|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_5|clken } -group { sctag:sctag1|sctag_snpdp:snpdp|clken_buf:ckbuf_11|clken } -group { sctag:sctag1|bw_r_rf32x108:subarray_0|ren_d1 } -group { sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_idx_hold|clken } -group { sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf1|clken } -group { sctag:sctag1|sctag_iqdp:iqdp|clken_buf:clk_buf0|clken } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr0_update_dr|q[0] } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_1|clken } -group { sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf2|clken } -group { sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_data_ecc_idx|clken } -group { sctag:sctag0|bw_r_rf32x108:subarray_0|ren_d1 } -group { sctag:sctag1|sctag_evicttag_dp:evicttag|clken_buf:clk_buf3|clken } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_ddr3_update_dr|q[0] } -group { sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf4|clken } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_12|clken } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_6|clken } -group { sctag:sctag1|bw_r_rf32x108:subarray_11|ren_d1 } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_10|clken } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_4|clken } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_5|clken } -group { sctag:sctag0|sctag_snpdp:snpdp|clken_buf:ckbuf_11|clken } -group { dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff } -group { dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff } -group { jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq3|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff } -group { sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_idx_hold|clken } -group { sctag:sctag0|sctag_iqdp:iqdp|clken_buf:clk_buf0|clken } -group { sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_data_ecc_idx|clken } -group { fpu:fpu|fpu_add:fpu_add|fpu_add_frac_dp:fpu_add_frac_dp|clken_buf:ckbuf_add_frac_dp|clken } -group { scbuf:scbuf1|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken } -group { scbuf:scbuf1|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken } -group { dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff } -group { dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff } -group { pad_jbusr:pad_jbusr|bw_clk_cl_jbusr_jbus:I69|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l } -group { sctag:sctag0|bw_r_rf32x108:subarray_11|ren_d1 } -group { scbuf:scbuf1|scbuf_evict:evict|clken_buf:clk_buf_r3|clken } -group { scbuf:scbuf1|scbuf_evict:evict|clken_buf:clk_buf_r2|clken } -group { scbuf:scbuf3|scbuf_evict:evict|clken_buf:clk_buf_r3|clken } -group { scbuf:scbuf3|scbuf_evict:evict|clken_buf:clk_buf_r2|clken } -group { jbi:jbi|jbi_min:u_min|jbi_min_rq:u_rq2|jbi_min_rq_rhq_buf:u_rhq_buf|bw_rf_16x65:u_rhq_buf|csn_wr_ff } -group { dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff } -group { dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent1b01|csn_wr_ff } -group { sctag:sctag1|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_addr_c12|clken } -group { dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff } -group { dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent3b01|csn_wr_ff } -group { dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff } -group { dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff } -group { dram:dram02|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff } -group { dram:dram02|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff } -group { scbuf:scbuf0|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken } -group { scbuf:scbuf0|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken } -group { scbuf:scbuf0|scbuf_evict:evict|clken_buf:clk_buf_r3|clken } -group { scbuf:scbuf0|scbuf_evict:evict|clken_buf:clk_buf_r2|clken } -group { sctag:sctag0|sctag_evicttag_dp:evicttag|clken_buf:clk_buf3|clken } -group { scbuf:scbuf2|scbuf_evict:evict|clken_buf:clk_buf_r3|clken } -group { scbuf:scbuf2|scbuf_evict:evict|clken_buf:clk_buf_r2|clken } -group { sctag:sctag0|sctag_arbaddrdp:arbaddrdp|clken_buf:ckbuf_addr_c12|clken } -group { dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff } -group { dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent0b01|csn_wr_ff } -group { dram:dram13|dramctl:dramctl0|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff } -group { dram:dram13|dramctl:dramctl1|dram_mem:dram_mem|bw_rf_16x65:dramdatawrqent2b01|csn_wr_ff } -group { scbuf:scbuf2|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken } -group { scbuf:scbuf2|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken } -group { scbuf:scbuf3|scbuf_rdmard:rdmard|clken_buf:clk_buf_ctag|clken } -group { scbuf:scbuf3|scbuf_rdmard:rdmard|clken_buf:clk_buf_data|clken } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_jbusl_update_dr|q[0] } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_debug_update_dr|q[0] } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_jbusr_update_dr|q[0] } -group { ctu:ctu|ctu_dft:ctu_dft|ctu_dft_jtag:u_jtag|dffrl_async_ns:u_dffrl_async_ctu_misc_update_dr|q[0] } -group { pad_jbusl:pad_jbusl|bw_clk_cl_jbusl_jbus:I80|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l } -group { pad_jbusl:pad_dbg|bw_clk_cl_jbusl_jbus:I80|bw_clk_cclk_hdr_48x:xCCHdr|bw_u1_scanlg_2x:sync_cluster_slave|so_l } 
