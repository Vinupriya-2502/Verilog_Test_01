module dff_mux(input enable,input d,input clock,output reg q);
wire gclk;
assign gclk=enable&clock;

always@(posedge gclk)
      begin
       q<=d;
      end
endmodule
