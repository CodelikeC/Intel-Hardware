module Data_buffering(
    input [7:0] data_in, // dau vao co kich thuoc 7bit // 
    input enable, // cho phep dau vao va luu tru 7 bit // 
    output reg[7:0] data_out
); 

always @(posedge enable) begin
    data_out <= data_in; 
end
endmodule