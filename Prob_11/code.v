module seq_110011_moore(
input x,clk,reset,
output reg z
);

parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3 , S4 = 4, S5 = 5, S6 = 6;
reg [2:0] PS,NS ;

always @(posedge clk or posedge reset)
    begin
        if(reset)
            PS <= S0;   
        else    
            PS <= NS ; 
    end
always @(PS, x)
begin          
case(PS)
            S0 : begin
                        NS = x ? S1 : S0 ;
                        $display(PS);
                    end
            S1 : begin 
                        NS = x ? S2 : S0 ;
                        $display(PS);
                    end
            S2 : begin 
                        NS = x ? S2 : S3 ;
                        $display(PS);
                    end 
            S3 : begin 
                        NS = x ? S3 : S4 ;
                        $display(PS);
                    end
            S4 : begin 
                        NS = x ? S5 : S0 ;
                        $display(PS);
                    end
	     S5 : begin 
                        NS = x ? S6 : S4 ;
                        $display(PS);
                    end
             S6 : begin 
                        NS = x ? S2 : S4 ;
                        $display(PS);
                    end	
            default: NS = S0; 
        endcase
    end
always @(PS)
begin
  case(PS)
    S6: z = 1;
    default: z = 0;
  endcase 
end 
endmodule
