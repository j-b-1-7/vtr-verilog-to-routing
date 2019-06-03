module equal_16(a,

                b,

                o);



  output o;

  input [15:0] a;

  input [15:0] b;

  wire n1;  wire n10;  wire n11;  wire n12;  wire n13;  wire n14;  wire n15;  wire n16;

  wire n17;  wire n18;  wire n19;  wire n2;  wire n20;  wire n21;  wire n22;  wire n23;

  wire n24;  wire n25;  wire n26;  wire n27;  wire n28;  wire n29;  wire n3;  wire n30;

  wire n31;  wire n32;  wire n4;  wire n5;  wire n6;  wire n7;  wire n8;  wire n9;

  wire [15:0] a;

  wire [15:0] b;

  

  xor i1(n1,a[0],b[0]);

  xor i2(n2,a[1],b[1]);

  xor i3(n3,a[2],b[2]);

  xor i4(n4,a[3],b[3]);

  xor i5(n5,a[4],b[4]);

  xor i6(n6,a[5],b[5]);

  xor i7(n7,a[6],b[6]);

  xor i8(n8,a[7],b[7]);

  xor i9(n9,a[8],b[8]);

  xor i10(n10,a[9],b[9]);

  xor i11(n11,a[10],b[10]);

  xor i12(n12,a[11],b[11]);

  xor i13(n13,a[12],b[12]);

  xor i14(n14,a[13],b[13]);

  xor i15(n15,a[14],b[14]);

  xor i16(n16,a[15],b[15]);

  or i17(n17,n1,n2);

  or i18(n18,n3,n4);

  or i19(n19,n17,n18);

  or i20(n20,n5,n6);

  or i21(n21,n7,n8);

  or i22(n22,n20,n21);

  or i23(n23,n19,n22);

  or i24(n24,n9,n10);

  or i25(n25,n11,n12);

  or i26(n26,n24,n25);

  or i27(n27,n13,n14);

  or i28(n28,n15,n16);

  or i29(n29,n27,n28);

  or i30(n30,n26,n29);

  or i31(n31,n23,n30);

  assign o = n32;

  not x(n32,n31);

  //assign n32 = ~n31;

endmodule

module downcnt(fsm_cur_st,add_carry_cksum);



               input [15:0] fsm_cur_st;

               wire [15:0] fsm_cur_st;

               output add_carry_cksum;

  

  equal_16 equal_3(.a(fsm_cur_st[15:0]),.b(16'b0010000000000000),.o(add_carry_cksum));

  

endmodule



