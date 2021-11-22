module decoder_2to4_nand(a,b,y0,y1,y2,y3) ;
input a,b;
wire a,b;
output y0,y1,y2,y3;

assign y0=~(~b&~a);
assign y1=~(b&~a);
assign y2=~(~b&a);
assign y3=~(b&a);

endmodule