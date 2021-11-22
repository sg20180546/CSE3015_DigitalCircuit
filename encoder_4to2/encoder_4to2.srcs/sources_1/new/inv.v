module priority_encoder(D3,D2,D1,D0,Y1,Y0,AC) ;
input D3,D2,D1,D0;
output Y1,Y0,AC;

assign AC=(D3|D2|D1|D0);
assign Y1=(D3|(~D2&D1));
assign Y0=(D3|D2);
endmodule



//module encoder_4to2_or(A3,A2,A1,A0,E0,E1) ;
//input A0,A1,A2,A3;
//wire E0,E1;
//output E0,E1;

//assign E0=(A2|A3);
//assign E1=(A1|A3);
//endmodule