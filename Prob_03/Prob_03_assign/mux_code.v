module mux2_1(input a, c, sel, output b);
  assign b = sel ? a : c;
endmodule
