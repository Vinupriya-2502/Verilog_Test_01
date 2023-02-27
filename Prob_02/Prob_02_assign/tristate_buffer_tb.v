module buffertb;
	reg d;
        reg enable;
	wire y;
	tristate_buffer uut(d,enable,y);
	initial
	begin
		enable = 1;
		d = 0; # 10; 
		if ( y == 0 ) 
			$display ("Pass %d %d",d,y);
		else
			$display ("Fail %d %d",d,y);
		enable = 1;
		d = 1; # 10; 
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
