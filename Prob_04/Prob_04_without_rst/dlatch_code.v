module dlatch(input d, input e,output reg q);
always@(*)
if(!e) begin
q=0;
end
else
begin
q<=d;
end
endmodule
