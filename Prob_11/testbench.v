module seq_det_tb;
reg x;
reg clk;
reg reset;
wire z;
seq_110011_moore uut (
    .x(x), 
    .clk(clk), 
    .reset(reset), 
    .z(z)
);

always #5 clk = ~ clk;  

initial begin
 $dumpfile("dump.vcd");
 $dumpvars;
 end

    initial
    begin
    clk = 1'b0;
    reset = 1'b1;
    #15 reset = 1'b0;
    begin 
    #12 x = 0;#10 x = 0 ; #10 x = 1 ; #10 x = 1 ;
    #12 x = 0;#10 x = 0 ; #10 x = 1 ; #10 x = 1 ;
    #12 x = 1;#10 x = 0 ; #10 x = 0 ; #10 x = 1 ;
    #12 x = 0;#10 x = 0 ; #10 x = 1 ; #10 x = 0 ;
    #10 $finish;
    end
     
end 
endmodule

