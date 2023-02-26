module dlatch_tb;
reg d;
reg e;
reg reset;
wire q;
dlatch dut(.d(d),.e(e),.reset(reset),.q(q));
initial 
begin
$dumpfile("dltach.vcd");
$dumpvars;
end
initial
begin
reset=0;
e = 0;
d=0;
#10;
e=1;
reset =1; 
d=1;#10;
reset = 0;#5;
d=0;#10;
d=1;
end
endmodule
