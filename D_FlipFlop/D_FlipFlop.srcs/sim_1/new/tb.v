`timescale 1ns / 1ps


module test_bench;
reg D;
reg c;
wire QQ,NOTQQ;
D_FF inv(D,c,QQ,NOTQQ);

initial c=1'b0;
initial D=1'b0;
always #200 D=~D;
always #100 c=~c;
initial begin
        #1000
        $finish;
end
endmodule
