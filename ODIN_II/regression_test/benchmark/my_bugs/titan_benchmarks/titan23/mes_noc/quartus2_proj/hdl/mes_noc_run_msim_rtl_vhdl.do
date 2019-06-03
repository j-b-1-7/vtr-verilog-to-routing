transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/mesh/mesh_router.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/mesh/mesh_2d_pkg.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/tg_pkg.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/reader_input_mux.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/mesh_addr_resolver.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/lfsr.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/hibi_addr_pkg.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/packet_codec/pkt_enc_dec.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/packet_codec/pkt_enc.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/packet_codec/pkt_dec.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/packet_codec/enc_dec_1d.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/monitor/mon_pkg.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/fifo/multiclk_fifo.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/fifo/fifo.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/mes_noc_pkg.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/uart_sim.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/mesh/mesh_2d.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/mes_noc.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/wrapper.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/trigger.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/tg_top.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/sender_wrapper.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/sender.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/reader_wrapper.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/reader.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/master_sender_mux.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/master.vhd}
vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/traffic_generator/dpram_general.vhd}

vcom  -work work {/home/kmurray/dev/work/ece1749/1749_project/mes_noc/mes_noc_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L stratixiv_hssi -L stratixiv_pcie_hip -L stratixiv -L rtl_work -L work -voptargs="+acc"  mes_noc_tb

add wave *
log -r /*
do ../../wave.do
view structure
view signals
run 800000 ns
#run 1000000 ns
