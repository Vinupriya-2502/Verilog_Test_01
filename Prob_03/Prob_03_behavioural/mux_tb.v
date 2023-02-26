module mux_tb;
   reg a, c, sel;
   wire b;
   mux2_1 tb(.a(a), .b(b), .sel(sel), .c(c));
   initial begin

      a = 0; c = 1; sel = 1;
      #10;
      if (b==0) $display("pass");
      a = 0; c = 0; sel = 0;
      #10;
      if (b == 0) $display("pass");
      a = 1; c = 1; sel = 1;
      #10;
      if (b== 0) $display("pass");
     
      $finish;
   end
endmodule
