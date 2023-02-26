module dff_tb;
  reg d, clock; 
  wire q;
  dff uut (.d(d), .clock(clock),.q(q));
  initial
    begin
      clock=0;
      d= 0;
      end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #100$finish;
    end
  always 
    #5  clock = ~clock;
initial
begin
  d=1;#10;
  if (q==1) $display("pass");
  d=0;#10;
if (q==0) $display("pass");
  d=1;#10;
if (q==1) $display("pass");
    end
endmodule
