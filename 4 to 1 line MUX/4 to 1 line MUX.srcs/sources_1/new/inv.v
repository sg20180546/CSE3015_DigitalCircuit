module mux_4to1(a,b,A,B,C,D,y) ;
input a,b,A,B,C,D;
wire y,a1,a2,a3,a4;
output y;

assign a1=(~a&~b&A);
assign a2=(a&~b&B);
assign a3=(b&~a&C);
assign a4=(b&a&D);
assign y=(a1|a2|a3|a4);

endmodule
