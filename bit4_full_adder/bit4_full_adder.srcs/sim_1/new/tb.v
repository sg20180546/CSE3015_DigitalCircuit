`timescale 1ns / 1ps


module test_bench;
reg [8:0] var;
wire [3:0] SUM;
wire COUT;
bit4_full_adder inv(var[3:0],var[7:4],var[8],SUM [3:0],COUT);
//bit4_full_adder inv( var[3:0](A)
//                    .var[7:4](B)
//                    .var[8](cin)
//                    .COUT(cout)
//                    .SUM[3:0] (S) );

initial var[8:0] = 9'b000000000;
always var[8:0]= #2 var[8:0] +9'b000000001;

initial begin
        #1600
        $finish;
end
endmodule