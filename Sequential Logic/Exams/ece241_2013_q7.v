module top_module (
    input clk,
    input j,
    input k,
    output reg Q); 
 
  always @(posedge clk ) begin
     Q<= (~k)&(Q) | (j)&(~k) | (j)&(~Q) ;
  end

endmodule
