module PISO (
    MISO,tx_data,tx_valid,SS_n,clk,rst_n
);
localparam tx_data_width = 8;
input clk,rst_n,SS_n,tx_valid;
input [tx_data_width-1:0] tx_data;
output  MISO;
wire finish;
wire [3:0] count;

SPI_counter #(.max_counting(8)) PISO_COUNTER (clk,rst_n,SS_n,count,tx_valid,finish);

// always @(posedge clk or negedge rst_n) begin
//     if(~rst_n)
//         MISO <=0;
//     else if (~SS_n)
//         begin
//             if (tx_valid)
//              {MISO,tx_data} <= tx_data << 1 ; 
//         end 
//     else MISO <=0;   
// end

assign MISO = tx_data[tx_data_width-count];

    
endmodule