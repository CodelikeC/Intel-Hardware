module address_decoding
(input [15:0] address, 
output reg memory_select, 
output reg io_select); 

always @(*)begin 
    if (address >= 16'h0000 && address <= 16'h7FFF) begin
        memory_select = 1;   // Select memory for this range
        io_select = 0;
    end else if (address >= 16'h8000 && address <= 16'hFFFF) begin
        memory_select = 0;
        io_select = 1;       // Select I/O for this range
    end else begin
        memory_select = 0;
        io_select = 0;
    end
end
 
endmodule 