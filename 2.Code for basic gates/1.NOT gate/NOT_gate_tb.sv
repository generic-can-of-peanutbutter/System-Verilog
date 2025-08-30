`timescale 1ns / 1ps
module not_gate_tb;
logic a,y;
not_gate dut(.a(a),.y(y));
initial begin
a=0;#10
a=1;#10
$display("Value of a=%d and y=%d",a,y);
$finish;
end
endmodule
