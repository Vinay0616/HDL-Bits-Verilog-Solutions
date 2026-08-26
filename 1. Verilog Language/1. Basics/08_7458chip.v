module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire a,b,x,y;
    
    assign a = p2a & p2b;
    assign b = p2c & p2d;
    assign p2y = a | b;
    assign x = p1a & p1c & p1b;
    assign y = p1f & p1e & p1d;
    assign p1y = x | y;
    
endmodule
