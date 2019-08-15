module simple_function (
    clk,
    reset,
    a,
    b,    
    out,
    clk_out
    );

    input   clk;
    input   reset;
    input   [1:0] a,b;

    output  [2:0] out;
    output  clk_out;

    assign clk_out = clk;

    always @(posedge clk)
    begin
        out = func_out(a,b,reset);
    end

    function [2:0] func_out;
        input [1:0] x, y;
        input rst;

        case(rst)
            1'b0:       func_out <= x + y;
            default:    func_out <= 1'b0;
        endcase
    endfunction

endmodule

// module simple_function (
//     clk,
//     reset,
//     a,
//     b,    
//     out,
//     clk_out
//     );

//     input   clk;
//     input   reset;
//     input   [1:0] a,b;

//     output  [2:0] out;
//     output  clk_out;

//     assign clk_out = clk;

//     func_out    my_fun(clk,a,b,reset, out);  

// endmodule

// module func_out(clk,x,y,rst,out);
//     input clk;
//     input [1:0] x, y;
//     input rst;
//     output [2:0] out;

//     always @(posedge clk)
//     begin
//         case(rst)
//             1'b0:       out <= x + y;
//             default:    out <= 1'b0;
//         endcase
//     end

// endmodule