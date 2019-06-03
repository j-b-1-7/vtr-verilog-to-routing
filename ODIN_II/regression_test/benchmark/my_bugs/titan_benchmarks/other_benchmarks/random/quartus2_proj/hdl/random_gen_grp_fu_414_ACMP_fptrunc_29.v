// ==============================================================
// File generated by AutoESL - High-Level Synthesis System (C, C++, SystemC)
// Version: 2011.1
// Copyright (C) 2011 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module random_gen_grp_fu_414_ACMP_fptrunc_29(
    clk,
    reset,
    ce,
    din0,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
output[dout_WIDTH - 1:0] dout;



ACMP_fptrunc #(
.ID( ID ),
.NUM_STAGE( 2 ),
.din0_WIDTH( din0_WIDTH ),
.dout_WIDTH( dout_WIDTH ))
ACMP_fptrunc_U(
    .clk( clk ),
    .reset( reset ),
    .ce( ce ),
    .din0( din0 ),
    .dout( dout ));

endmodule
