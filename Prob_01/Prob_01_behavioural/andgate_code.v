module andg_beh(input a, input b,output reg c);
initial begin
if(a && b)begin
c=1;
end	
else begin
c=0;
end
end
endmodule
