module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);

    parameter B =1'b0 ,A = 1'b1;
    reg present_state,next_state;

always @(posedge clk or posedge areset) begin
    if (areset) begin
        present_state<=B;
    end else begin
       present_state<=next_state;
    end
end

always @(present_state or in) begin
    case(present_state)
    B: begin
      out = 1;
      next_state = in ? B :A;
    end 
    A: begin
      out = 0;
      next_state = in ? A :B;
    end
    default: begin
      out =0;
      next_state=A;
    end
    endcase
end

endmodule