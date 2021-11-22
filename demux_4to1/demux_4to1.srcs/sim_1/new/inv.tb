`timescale 1ns / 1ps
module test_bench;
reg [3:0] ss;
reg  [15:0] Y;

decoder_4to16 u_inv(ss[3],ss[2],ss[1],ss[0],Y);


initial ss[3:0] = 4'b0000;
always ss[3:0]= #100 ss[3:0] +4'b0001;

initial begin
        #1600
        $finish;
end
endmodule

//module test_bench;
//reg [1:0] ss;
//reg i;
//wire  A,B,C,D;

//demux_1to4 u_inv(i,ss[1],ss[0],A,B,C,D);


//initial i=1'b1;
//initial ss[1:0] = 2'b00;
//always ss[1:0]= #100 ss[1:0] +2'b01;

//initial begin
//        #400
//        $finish;
//end
//endmodule