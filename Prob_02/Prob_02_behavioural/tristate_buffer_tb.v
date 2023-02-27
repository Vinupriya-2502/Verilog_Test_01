module tri_buffer_tb;
	reg d;
  reg en;
	wire y;
	tri_buffer uut(d,en,y);
	initial
	begin
                #5
		en = 1;
		d = 1; # 20; 
		if ( y == 0 ) 
			$display ("Pass %d %d",d,y);
		else
			$display ("Fail %d %d",d,y);
		
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
