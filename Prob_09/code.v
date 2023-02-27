module sync_fifo (
  input clk, rst,
  input we, re,
  input [31:0] DATAIN,
  output reg [31:0] DATAOUT,
  output full,
  output empty
);
  
  reg [1023:0] wptr, rptr;
  reg [31:0] mem[1023:0];
  
  always @(posedge clk) begin
    if (rst) begin
      wptr <= 0;
      rptr <= 0;
      DATAOUT <= 0;
    end
  end
  
  always @(posedge clk) begin
    if (we & !full) begin
      mem[wptr] <= DATAIN;
      wptr <= wptr + 1;
    end
  end
  
  always @(posedge clk) begin
    if (re & !empty) begin
      DATAOUT <= mem[rptr];
      rptr <= rptr + 1;
    end
  end
  
  assign full = ({~wptr[1023], wptr[1022:0]} == rptr[1022:0]);
  assign empty = (wptr == rptr);
  
endmodule

