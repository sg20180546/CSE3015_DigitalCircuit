`timescale 1ns / 1ps
module full_adder(a,b,carryin,sum,carryout) ;
input a,b,carryin;
wire a,b,carryin;

output sum,carryout;
wire sum,carryout;

wire w1,w2,w3;

xor x1 (w1,a,b);
xor x2 (sum,w1,carryin);

nand n1 (w2,a,b);
nand n2 (w3,w1,carryin);
nand n3 (carryout,w3,w2);

endmodule
