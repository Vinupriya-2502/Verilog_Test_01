module dff (d   , clock   , q);
  input d, clock ; 
  output reg q;

  always @ ( posedge clock)
      begin
        q <= d;
        end
endmodule  
