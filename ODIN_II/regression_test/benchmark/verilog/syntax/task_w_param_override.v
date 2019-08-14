module top(a, b1, b2, b3, b4);
    parameter width = 4;

    input[width - 1:0] a;
    output[width + 1:0] b1, b2, b3, b4;

    assign b4 = (a * 4) + 3;

    bottom(.w(a), .x(b2));

    #(.d(width - 1)) bottom(.w(a), .x(b1));

    #(5, 4) bottom (.w(a), .x(b3));


  task bottom;
    parameter c = 4;
    parameter d = 3;

    input[3:0] w;
    output[5:0] x;

    begin
      x = (w * c) + d;
    end
  endtask


endmodule

