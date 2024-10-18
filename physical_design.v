module clock_gating(
    input clk,
    input enable,
    output reg gated_clk
);

always @(*) begin
    if (enable) begin
        gated_clk = clk;   // Enable the clock when required
    end else begin
        gated_clk = 0;     // Disable the clock to save power
    end
end
endmodule
