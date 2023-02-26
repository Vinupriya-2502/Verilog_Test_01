module andg_tb;
reg a;
reg b;
wire c;
andg uut(a,b,c);
initial
	begin
		$dumpfile("andgate.vcd");
		$dumpvars;
	end
initial 
begin
	a=0;b=0;
	#10;
	a=0;b=1;
	#10
	a=1;b=0;
	#10;
	a=1;b=1;
	#10 $finish;
end
	
endmodule
