module simple_task (clock, a, b, c );

input clock;
input a;
input b;
output c;

xor_task(a,b,c);

task xor_task;
  input x;
  input y;
  output z;
    begin
      z = x ^ y;
    end
endtask

endmodule