module bus_arbiter(
    input cpu_req,        // CPU requests bus
    input dma_req,        // DMA requests bus
    output reg bus_grant  // Grants bus control
);

always @(*) begin
    if (dma_req) begin
        bus_grant = 1;   // Give bus control to DMA
    end else if (cpu_req) begin
        bus_grant = 1;   // Give bus control to CPU
    end else begin
        bus_grant = 0;   // No one gets the bus
    end
end
endmodule
