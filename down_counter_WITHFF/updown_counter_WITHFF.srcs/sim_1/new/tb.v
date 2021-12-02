`timescale 1ns / 1ps

module test_bench;
//reg TT;
reg c;
wire [3:0] AA;
down_async inv(c,AA);

initial c=1'b0;
//initial TT=0;
//always TT= #200 ~TT;
always #100 c=~c;
initial begin
        #1000
        $finish;
end
endmodule
//module test_bench;
//reg TT;
//reg c;
//wire QQ,NOTQQ;
//T_FF inv(TT,c,QQ,NOTQQ);

//initial c=1'b0;
//initial TT=0;
//always TT= #200 ~TT;
//always #100 c=~c;
//initial begin
//        #1000
//        $finish;
//end
//endmodule
