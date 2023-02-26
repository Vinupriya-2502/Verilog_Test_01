module dff (d   , clock   , q);
  input d, clock ; 
  output reg q;

  always @ ( negedge clock)
      begin
        q <= d;
        end
endmodule  
