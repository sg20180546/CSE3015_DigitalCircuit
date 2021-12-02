`timescale 1ns / 1ps


module test_bench;
reg IN,clock,res;
wire [3:0] y;

shift_register u_inv(IN,clock,res,y[3:0]);

initial begin
    IN=1;
    res=0;
    clock=0;
end
always #50 clock=~clock;

initial begin
        #51 res=0;
        #101 IN=0;
        #151 IN=1;
        #151 IN=0;
        #500;
        $finish;
end
endmodule