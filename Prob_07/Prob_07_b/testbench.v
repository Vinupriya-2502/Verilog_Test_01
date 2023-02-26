module dff_and_tb;
reg enable;
reg d;
reg clock;
wire q;
dff_mux uut(enable,d,clock,q);
initial
begin
$dumpfile("dump1.vcd");
$dumpvars;
end
initial
begin
enable=0;
clock=0;
d=0;
#5;
enable=1;
d=1;
#10;
d=0;
#10;
d=1;
end
always 
#5 clock=~clock;
endmodule

