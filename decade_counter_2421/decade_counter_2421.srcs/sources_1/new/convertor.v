module bcd_convertor(a,b,c,d,A,B,C,D) ;
input a,b,c,d;
wire a,b,c,d;

output A,B,C,D;
wire A,B,C,D;


assign A=((b&c)|(b&d)|a);
assign B=(a| (b&~d) | (b&c));
assign C=(a|(~b&c) | (b& ~c&d));
assign D=d;

endmodule
