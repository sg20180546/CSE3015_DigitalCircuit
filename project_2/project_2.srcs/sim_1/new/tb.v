`timescale 1ns / 1ps


module test_bench;
reg [1:0] aa;
wire [3:0] y;

decoder_2to4_nand u_inv(aa[1],aa[0],y[0],y[1],y[2],y[3]);

initial aa[1:0] = 2'b00;
always aa[1:0]= #100 aa[1:0] +2'b01;

initial begin
        #400
        $finish;
end
endmodule