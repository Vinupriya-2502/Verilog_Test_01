module dlatch_tb;
reg d;
reg e;
wire q;
dlatch dut(.d(d),.e(e),.q(q));
initial 
begin
$dumpfile("dltach.vcd");
$dumpvars;
end
initial
begin
e = 0;
d=0;
#10;
e=1;
d=1;#5;
d=0;#5;
d=1;
end
endmodule
