module sync_fifo_tb;
  wire [31:0] DATAOUT;
  wire full, empty;
  reg clock, reset, wn, rn;
  reg [31:0] DATAIN;  
  
  sync_fifo dut( clock, reset, wn, rn, DATAIN,DATAOUT, full, empty);
  
  initial begin 
    $dumpfile("fifo_wave.vcd"); $dumpvars;
  end

  initial
  begin
    clock = 0; DATAIN = 8'd0;
    reset = 1; clock = 1; #5 ; clock = 0; #5;
    reset = 0;
    wn = 1; rn = 0;
    DATAIN = 8'd10;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd15;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd20;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd30;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd35;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd40;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd45;
    clock = 1; #5 ; clock = 0; #5;
   
    wn = 0; rn = 1;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
    clock = 1; #5 ; clock = 0; #5;
   
  end

endmodule
