module bus_timing(
    input clk,
    input reset,
    output reg ready
);

reg [3:0] counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter <= 0;
        ready <= 0;
    end else if (counter == 4'b1111) begin  // After 16 clock cycles
        ready <= 1;   // Set ready signal
    end else begin
        counter <= counter + 1;
        ready <= 0;
    end
end
endmodule

