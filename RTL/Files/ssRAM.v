module Single_port_Sync_RAM (
    din,rx_valid,clk,rst_n,dout,tx_valid
);

parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

input [9:0] din;
input rx_valid,clk,rst_n;
output  reg [7:0] dout;
output reg tx_valid;

reg [ADDR_SIZE-1:0] RAM [MEM_DEPTH-1:0];

reg  [ADDR_SIZE-1:0] rd_wr_address;


always @(posedge clk) begin
    if(~rst_n)
        begin
        { dout , rd_wr_address , tx_valid } <= 0 ;
        end
    else 
        begin
        if(rx_valid)
            case (din[9:8])
                2'b00: 
                begin
                rd_wr_address <= din[7:0];
                tx_valid <= 0;
                end 
                2'b01: 
                begin
                RAM[rd_wr_address] <= din[7:0];
                tx_valid <= 0;
                end 
                2'b10: 
                begin
                rd_wr_address <= din[7:0];
                tx_valid <= 0;
                end 
                2'b11: 
                begin
                dout <= RAM[rd_wr_address];
                tx_valid <= 1;
            end 
            endcase
        end
end


    
endmodule