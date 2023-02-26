module dff_mux(input d, input enable, input clock,output reg q);
wire store;
reg op;
assign store=q;
always@(*)
begin 
case(enable)
0 : op=store;
1 : op=d;
endcase
end
always@(posedge clock)
begin
q<=op;
end
endmodule
