module cpu_initialization(
    input clk,
    input reset,
    output reg [1:0] state
);

localparam INIT = 2'b00, LOAD_REGISTERS = 2'b01, FETCH = 2'b10, EXECUTE = 2'b11;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= INIT;
    end else begin
        case (state)
            INIT: state <= LOAD_REGISTERS;   // Move to load registers
            LOAD_REGISTERS: state <= FETCH;  // Load registers, then move to fetch
            FETCH: state <= EXECUTE;         // Fetch instruction, then execute
            EXECUTE: state <= FETCH;         // After executing, fetch next instruction
            default: state <= INIT;
        endcase
    end
end
endmodule
