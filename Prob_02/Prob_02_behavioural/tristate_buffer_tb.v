module tri_buffer_tb;
	reg d;
        reg enable;
	wire y;
	tri_buffer uut(d,enable,y);
	initial
	begin
                #5
		enable = 1;
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
