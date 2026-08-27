module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum0, sum1a, sum1b;
    wire c0;
    
    add16 a0 (.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(c0), .sum(sum0));
    add16 a1a (.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum1a));
    add16 a1b (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum1b));
               
    assign sum = {(c0 ? sum1b : sum1a), sum0};

endmodule
