// ==============================================================
// File generated by AutoESL - High-Level Synthesis System (C, C++, SystemC)
// Version: 2011.1
// Copyright (C) 2011 Xilinx Inc. All rights reserved.
// 
// ==============================================================



`timescale 1 ns / 1 ps




module SURFdescriptor_wts_core (q, ra, ce, clk
);
   parameter READ_PORT_COUNT=32'd1;
   parameter WRITE_PORT_COUNT=32'd1;
   parameter DATA_WIDTH=32'd32;
   parameter ADDRESS_WIDTH=32'd7;
   parameter WORD_COUNT=32'd113;

   output [READ_PORT_COUNT*DATA_WIDTH-1:0] q;
   input [READ_PORT_COUNT*ADDRESS_WIDTH-1:0]  ra;
   input [READ_PORT_COUNT-1:0]  ce;
   input                                      clk;

   integer                                    i,j,k;

   wire [DATA_WIDTH-1:0]                       mem [0:WORD_COUNT-1];
   reg [ADDRESS_WIDTH-1:0]                    rat;
   reg [ADDRESS_WIDTH-1:0]                    rai [READ_PORT_COUNT-1:0];
   reg [ADDRESS_WIDTH-1:0]                    rai_reg [READ_PORT_COUNT-1:0];
   reg [READ_PORT_COUNT*DATA_WIDTH-1:0]       qi;
   reg [DATA_WIDTH-1:0]                       qt;


    assign mem[0] = 32'b00111110001011100001111100111010;
    assign mem[1] = 32'b00111101110011010001111110100011;
    assign mem[2] = 32'b00111110000011100000011110100011;
    assign mem[3] = 32'b00111110001011101000000100000010;
    assign mem[4] = 32'b00111110001110110010110111010011;
    assign mem[5] = 32'b00111110001011101000000100000010;
    assign mem[6] = 32'b00111110000011100000011110100011;
    assign mem[7] = 32'b00111101110011010001111110100011;
    assign mem[8] = 32'b00111101101101110101101101100110;
    assign mem[9] = 32'b00111101111111000010110110101110;
    assign mem[10] = 32'b00111110001001011000111010101000;
    assign mem[11] = 32'b00111110010001100000100000000111;
    assign mem[12] = 32'b00111110010100101011010011011001;
    assign mem[13] = 32'b00111110010001100000100000000111;
    assign mem[14] = 32'b00111110001001011000111010101000;
    assign mem[15] = 32'b00111101111111000010110110101110;
    assign mem[16] = 32'b00111101101101110101101101100110;
    assign mem[17] = 32'b00111101110011010001111110100011;
    assign mem[18] = 32'b00111101111111000010110110101110;
    assign mem[19] = 32'b00111110001000000111111111101101;
    assign mem[20] = 32'b00111110010001111111011110111110;
    assign mem[21] = 32'b00111110011010000111000100011101;
    assign mem[22] = 32'b00111110011101010001110111101111;
    assign mem[23] = 32'b00111110011010000111000100011101;
    assign mem[24] = 32'b00111110010001111111011110111110;
    assign mem[25] = 32'b00111110001000000111111111101101;
    assign mem[26] = 32'b00111101111111000010110110101110;
    assign mem[27] = 32'b00111101110011010001111110100011;
    assign mem[28] = 32'b00111110000011100000011110100011;
    assign mem[29] = 32'b00111110001001011000111010101000;
    assign mem[30] = 32'b00111110010001111111011110111110;
    assign mem[31] = 32'b00111110011011110110111110001111;
    assign mem[32] = 32'b00111110100001111111010001110111;
    assign mem[33] = 32'b00111110100011100100101011100000;
    assign mem[34] = 32'b00111110100001111111010001110111;
    assign mem[35] = 32'b00111110011011110110111110001111;
    assign mem[36] = 32'b00111110010001111111011110111110;
    assign mem[37] = 32'b00111110001001011000111010101000;
    assign mem[38] = 32'b00111110000011100000011110100011;
    assign mem[39] = 32'b00111110001011101000000100000010;
    assign mem[40] = 32'b00111110010001100000100000000111;
    assign mem[41] = 32'b00111110011010000111000100011101;
    assign mem[42] = 32'b00111110100001111111010001110111;
    assign mem[43] = 32'b00111110100110000011000100100111;
    assign mem[44] = 32'b00111110100111101000011110010000;
    assign mem[45] = 32'b00111110100110000011000100100111;
    assign mem[46] = 32'b00111110100001111111010001110111;
    assign mem[47] = 32'b00111110011010000111000100011101;
    assign mem[48] = 32'b00111110010001100000100000000111;
    assign mem[49] = 32'b00111110001011101000000100000010;
    assign mem[50] = 32'b00111110001011100001111100111010;
    assign mem[51] = 32'b00111110001110110010110111010011;
    assign mem[52] = 32'b00111110010100101011010011011001;
    assign mem[53] = 32'b00111110011101010001110111101111;
    assign mem[54] = 32'b00111110100011100100101011100000;
    assign mem[55] = 32'b00111110100111101000011110010000;
    assign mem[56] = 32'b00111110101001001101110111111000;
    assign mem[57] = 32'b00111110100111101000011110010000;
    assign mem[58] = 32'b00111110100011100100101011100000;
    assign mem[59] = 32'b00111110011101010001110111101111;
    assign mem[60] = 32'b00111110010100101011010011011001;
    assign mem[61] = 32'b00111110001110110010110111010011;
    assign mem[62] = 32'b00111110001011100001111100111010;
    assign mem[63] = 32'b00111110001011101000000100000010;
    assign mem[64] = 32'b00111110010001100000100000000111;
    assign mem[65] = 32'b00111110011010000111000100011101;
    assign mem[66] = 32'b00111110100001111111010001110111;
    assign mem[67] = 32'b00111110100110000011000100100111;
    assign mem[68] = 32'b00111110100111101000011110010000;
    assign mem[69] = 32'b00111110100110000011000100100111;
    assign mem[70] = 32'b00111110100001111111010001110111;
    assign mem[71] = 32'b00111110011010000111000100011101;
    assign mem[72] = 32'b00111110010001100000100000000111;
    assign mem[73] = 32'b00111110001011101000000100000010;
    assign mem[74] = 32'b00111110000011100000011110100011;
    assign mem[75] = 32'b00111110001001011000111010101000;
    assign mem[76] = 32'b00111110010001111111011110111110;
    assign mem[77] = 32'b00111110011011110110111110001111;
    assign mem[78] = 32'b00111110100001111111010001110111;
    assign mem[79] = 32'b00111110100011100100101011100000;
    assign mem[80] = 32'b00111110100001111111010001110111;
    assign mem[81] = 32'b00111110011011110110111110001111;
    assign mem[82] = 32'b00111110010001111111011110111110;
    assign mem[83] = 32'b00111110001001011000111010101000;
    assign mem[84] = 32'b00111110000011100000011110100011;
    assign mem[85] = 32'b00111101110011010001111110100011;
    assign mem[86] = 32'b00111101111111000010110110101110;
    assign mem[87] = 32'b00111110001000000111111111101101;
    assign mem[88] = 32'b00111110010001111111011110111110;
    assign mem[89] = 32'b00111110011010000111000100011101;
    assign mem[90] = 32'b00111110011101010001110111101111;
    assign mem[91] = 32'b00111110011010000111000100011101;
    assign mem[92] = 32'b00111110010001111111011110111110;
    assign mem[93] = 32'b00111110001000000111111111101101;
    assign mem[94] = 32'b00111101111111000010110110101110;
    assign mem[95] = 32'b00111101110011010001111110100011;
    assign mem[96] = 32'b00111101101101110101101101100110;
    assign mem[97] = 32'b00111101111111000010110110101110;
    assign mem[98] = 32'b00111110001001011000111010101000;
    assign mem[99] = 32'b00111110010001100000100000000111;
    assign mem[100] = 32'b00111110010100101011010011011001;
    assign mem[101] = 32'b00111110010001100000100000000111;
    assign mem[102] = 32'b00111110001001011000111010101000;
    assign mem[103] = 32'b00111101111111000010110110101110;
    assign mem[104] = 32'b00111101101101110101101101100110;
    assign mem[105] = 32'b00111101110011010001111110100011;
    assign mem[106] = 32'b00111110000011100000011110100011;
    assign mem[107] = 32'b00111110001011101000000100000010;
    assign mem[108] = 32'b00111110001110110010110111010011;
    assign mem[109] = 32'b00111110001011101000000100000010;
    assign mem[110] = 32'b00111110000011100000011110100011;
    assign mem[111] = 32'b00111101110011010001111110100011;
    assign mem[112] = 32'b00111110001011100001111100111010;


   // Split read addresses
   always @ (ra) begin
      for (i=0;i<READ_PORT_COUNT;i=i+1) begin
         for (j=0;j<ADDRESS_WIDTH;j=j+1) begin
            rat[j]=ra[i*ADDRESS_WIDTH+j];
         end
         rai[i]=rat;
      end
   end

   // guide read addresses using CE
   always @ (posedge clk) begin
      for (i=0;i<READ_PORT_COUNT;i=i+1) begin
         if ( ce[i] ) begin
            rai_reg[i] <= rai[i];
         end
      end
   end


   // Memory read
    genvar x;
    generate
        for (x = 0; x < READ_PORT_COUNT; x = x + 1) begin : gen_q
            assign q[x*DATA_WIDTH+DATA_WIDTH-1:x*DATA_WIDTH] = (rai_reg[x]<WORD_COUNT)?
                mem[rai_reg[x]] : {DATA_WIDTH{1'b0}};
        end
    endgenerate

endmodule


module SURFdescriptor_wts (
    address0,
    ce0,
    q0,


    clk);


parameter DataWidth = 32'd32;
parameter AddressRange = 32'd113;
parameter AddressWidth = 32'd7;

input[AddressWidth-1:0] address0;
input ce0;
output[DataWidth-1:0] q0;
input clk;


reg[DataWidth-1:0] q0;
wire[1 * DataWidth - 1:0] mem_q;
wire[DataWidth - 1:0] mem_q0;
wire[1 * AddressWidth - 1:0]  mem_ra;
wire[1 - 1:0]  mem_ce;


SURFdescriptor_wts_core #(
    .READ_PORT_COUNT( 1 ),
    .WRITE_PORT_COUNT( 1 ),
    .DATA_WIDTH( DataWidth ),
    .ADDRESS_WIDTH( AddressWidth ),
    .WORD_COUNT( AddressRange ))
core_inst (
    .q( mem_q ),
    .ra( mem_ra ),
    .ce( mem_ce ),
    .clk( clk ));


assign mem_q0 =  mem_q[1 * DataWidth - 1 : 0 * DataWidth];

always @ (mem_q0) begin
        q0 = mem_q0;
end

assign mem_ra = {address0};
assign mem_ce = {ce0};

endmodule
