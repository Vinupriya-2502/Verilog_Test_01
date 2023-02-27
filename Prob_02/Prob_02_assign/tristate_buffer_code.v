module tristate_buffer(d,enable,y);
	input d,enable;
	output y;
	assign y= enable ? d : 1'bz;	
endmodule
