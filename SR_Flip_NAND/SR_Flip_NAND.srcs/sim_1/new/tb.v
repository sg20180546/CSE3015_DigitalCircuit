`timescale 1ns / 1ps


module test_bench;
reg [1:0] SR;
reg c;
wire QQ,NOTQQ;
SR_FF_NAND inv(SR[1],SR[0],c,QQ,NOTQQ);

initial c=1'b0;
initial SR[1:0] = 2'b10;
always SR[1:0]= #200 SR[1:0] - 2'b01;
always #100 c=~c;
initial begin
        #600
        $finish;
end
endmodule