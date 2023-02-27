module mux2_1(input a, input c, input sel, output reg b);
  always @(sel,a,c)
     if (sel == 1)
         b = a;
      else
          b = c;
endmodule
