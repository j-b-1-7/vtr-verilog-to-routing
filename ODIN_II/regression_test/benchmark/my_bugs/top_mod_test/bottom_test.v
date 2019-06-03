`include top_test.v

module bottom_test(g)
wire e;
wire f;
output g;

assign e = 1;
assign f = 1;

top_test my_top(
    e, f, g
);

endmodule