module dff_mux(input reset,input d,input clock,output reg q);
reg op;
  always@(*)
    begin
      case(reset)
        0: op=1'b0;
        1: op=d;
      endcase
    end
      always@(posedge clock)
      begin
       q<=op;
      end
 
 endmodule
