module wire_tb;
logic a;
logic z;
Wire DUT(.a(a),.z(z));
initial begin
a=0; #10;
$display("a=%d    z=%d",a,z);
a=1; #10;
$display("a=%d    z=%d",a,z);
$finish;
end
endmodule
