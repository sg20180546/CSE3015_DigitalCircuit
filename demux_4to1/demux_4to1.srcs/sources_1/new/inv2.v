module demux_1to4(i,s1,s0,D0,D1,D2,D3) ;
input i,s1,s0;
wire D0,D1,D2,D3;
output D0,D1,D2,D3;

assign D0=(~s1&~s0&i);
assign D1=(~s1&s0&i);
assign D2=(s1&~s0&i);
assign D3=(s1&s0&i);

endmodule


module decoder_4to16(a,b,c,d,A [15:0]) ;
input a,b,c,d;
output [15:0] A;
wire [3:0] en;
//assign en[3:0]=
demux_1to4(1,a,b,en[0],en[1],en[2],en[3]);

//assign A[3:0]=
demux_1to4(en[0],c,d,A[3],A[2],A[1],A[0]);
//assign A[7:4]=
demux_1to4(en[1],c,d,A[7],A[6],A[5],A[4]);
//assign A[11:8]=
demux_1to4(en[2],c,d,A[11],A[10],A[9],A[8]);
//assign A[15:12]=
demux_1to4(en[3],c,d,A[15],A[14],A[13],A[12]);


endmodule


