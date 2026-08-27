module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum0, sum1;
    wire c0;
    
    add16 a0 (.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(c0), .sum(sum0));
    add16 a1 (.a(a[31:16]), .b(b[31:16]), .cin(c0), .sum(sum1));
    
    assign sum = {sum1, sum0};
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign {cout, sum} = a + b + cin;    

endmodule
