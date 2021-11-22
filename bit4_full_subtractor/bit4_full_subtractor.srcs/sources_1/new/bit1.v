`timescale 1ns / 1ps

module full_subtractor(a,b,borrowin,diff,borrowout) ;
input a,b,borrowin;
wire a,b,borrowin;

output diff,borrowout;
wire diff,borrowout;

wire w1,w2,w3;

xor x1 (w1,a,b);
xor x2 (diff,w1,borrowin);

and a1 (w2,~a,b);
and a2 (w3,~w1,borrowin);
or n3 (borrowout,w2,w3);

endmodule
