`timescale 1ns/1ps


module full_adder(a,b,carry,in,sum,carryout);
input a,b,carryin;

output sum,carryout;
wire a,b,carryin;

wire x1,a1,a2;

assign a1=a&b;
assign x1=a^b;
assign a2=x1&carryin;
assign sum=x1^carryin;
assign carryout=a2|a1;

endmodule;