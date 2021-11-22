`timescale 1ns / 1ps
module full_adder(a,b,carryin,sum,carryout) ;
input a,b,carryin;
wire a,b,carryin;

output sum,carryout;
wire sum,carryout;

wire x1,a1,a2;

assign a1=a&b;
assign x1=a^b;
assign a2=x1&carryin;
assign sum=x1^carryin;
assign carryout=a2|a1;



//xor x1 (w1,a,b);
//xor x2 (sum,w1,carryin);

//nand n1 (w2,a,b);
//nand n2 (w3,w1,carryin);
//nand n3 (carryout,w3,w2);

endmodule
