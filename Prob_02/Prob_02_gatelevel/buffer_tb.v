module buffertb;
	reg d;
  reg en;
	wire y;
	buffer_g uut(d,en,y);
	initial
	begin
		en = 1;
		d = 1; # 20; 
		if ( y == 0 ) 
			$display ("Pass %d %d",d,y);
		else
			$display ("Fail %d %d",d,y);
		en = 1;
		d = 0; # 20; 
		if ( y == 1 ) 
			$display ("Pass %d %d",d,y);
		else
			$display ("Fail %d %d",d,y);
	end
  
  initial begin 
    $dumpfile("buffer.vcd");
    $dumpvars;
  end
endmodule
