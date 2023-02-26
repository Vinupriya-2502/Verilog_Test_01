module dlatch(input d, input e,input reset,output reg q);
always@(e or reset)
if(!reset) begin
q=0;
end
else
begin
q<=d;
end
endmodule
