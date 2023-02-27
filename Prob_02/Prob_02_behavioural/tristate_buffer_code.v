module tri_buffer(input d,enable,output reg y);
initial begin
	if(enable)begin
		 y=d;
			end
		
			else begin
		 y=1'bz;
	end
end
endmodule
