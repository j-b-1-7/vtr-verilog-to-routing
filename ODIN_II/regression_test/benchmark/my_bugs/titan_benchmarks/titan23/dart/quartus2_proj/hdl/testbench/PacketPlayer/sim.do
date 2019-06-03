vlib work

vlog ../../LFSR3_9.v +incdir+../../
vlog ../../RAMFIFO_ctrl_lfsr.v +incdir+../../
vlog ../../mux_Nto1.v +incdir+../../
vlog ../../DualBRAM.v +incdir+../../
vlog ../../decoder_N.v +incdir+../../
vlog ../../RAMFIFO_slow.v +incdir+../../
vlog ../../RAMFIFO_single_slow.v +incdir+../../
vlog ../../FQCtrl.v +incdir+../../
vlog ../../flit_out_inf.v +incdir+../../
vlog ../../encoder_N.v +incdir+../../
vlog ../../TGPacketFSM.v +incdir+../../
vlog ../../rr_prio.v +incdir+../../
vlog ../../mux_Nto1_decoded.v +incdir+../../
vlog ../../FlitQueue_NC.v +incdir+../../
vlog ../../PacketPlayer.v +incdir+../../

vlog -sv PacketPlayer_tb.v +incdir+../../

vsim -novopt -L xilinxcorelib_ver -L unisims_ver -lib work PacketPlayer_tb

do "wave.do"
log -r /*

run 2.2us

# Use waveform comparison to check against ref.wlf

