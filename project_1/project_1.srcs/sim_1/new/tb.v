`timescale 1ns / 1ps


module test_bench;

reg aaa,bbb;
wire lll,eequal,rrr,iinequal;

one_bit u_inv(aaa,bbb,lll,eequal,rrr,iinequal);


initial begin
        aaa=1'b0; bbb=1'b0; #100;
        aaa=1'b0; bbb=1'b1; #100;
        aaa=1'b1; bbb=1'b0;  #100;
        aaa=1'b1; bbb=1'b1;  #100;

        $finish;
end
endmodule
