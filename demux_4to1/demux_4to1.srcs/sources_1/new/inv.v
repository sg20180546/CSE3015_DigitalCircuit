module demux_1to42(i,s1,s0,D0,D1,D2,D3) ;
input i,s1,s0;
wire D0,D1,D2,D3;
output D0,D1,D2,D3;

assign D0=(~s1&~s0&i);
assign D1=(~s1&s0&i);
assign D2=(s1&~s0&i);
assign D3=(s1&s0&i);

endmodule

