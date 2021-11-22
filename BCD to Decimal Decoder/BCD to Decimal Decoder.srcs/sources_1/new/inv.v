module bcd_demical_encoder(a,b,c,d,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9) ;
input a,b,c,d;
wire A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;
output A0,A1,A2,A3,A4,A5,A6,A7,A8,A9;

assign A0=(~a&~b&~c&~d);
assign A1=(~a&~b&~c&d);
assign A2=(~a&~b&c&~d);
assign A3=(~a&~b&c&d);
assign A4=(~a&b&~c&~d);
assign A5=(~a&b&~c&d);
assign A6=(~a&b&c&~d);
assign A7=(~a&b&c&d);
assign A8=(a&~b&~c&~d);
assign A9=(a&~b&~c&d);

endmodule
