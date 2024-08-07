module SIPO (
    MOSI,rx_data,clk,rst_n,SS_n
);

input MOSI,SS_n,clk,rst_n;
output reg [9:0] rx_data;

always @(posedge clk) begin
    if(~rst_n)
        rx_data <= 0;
    else if(~SS_n)
        rx_data <= {rx_data , MOSI};
    else 
        rx_data <= 0;
end
    
endmodule