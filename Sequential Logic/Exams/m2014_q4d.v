module top_module (
    input clk,
    input in, 
    output reg out);

// reg q;

always @(posedge clk ) begin
    out <= in ^ out ;
end


endmodule
