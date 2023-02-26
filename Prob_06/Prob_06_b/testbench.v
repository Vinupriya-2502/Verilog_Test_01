module dff_mux_tb;
  reg reset,d,clock;
  wire q;
  dff_mux dut(reset,d,clock,q);
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  always #5 clock=~clock;
   
  initial
    begin
    clock=0;
    reset=0;
    #5;
    reset=1;
  end
  
  initial
  begin
    d=0;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #100 $finish;
  end
endmodule
