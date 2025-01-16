module top_module (
    input clk,
    input w, R, E, L,
    output Q
);

wire w1,D;
reg out;

assign w1 = E ? w : Q;
assign D = L ? R :w1;

always @(posedge clk ) begin
    out <= D;
end
assign Q = out ;

endmodule
