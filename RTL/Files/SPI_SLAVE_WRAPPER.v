module SPI_WRAPPER (
    MOSI,MISO,SS_n,clk,rst_n
);

    input MOSI,clk,rst_n,SS_n;
    output MISO;
    wire [9:0] rx_data;
    wire rx_valid,tx_valid;
    wire [7:0] tx_data;
    
    SPI_SLAVE SLAVE_inst (MOSI,MISO,SS_n,clk,rst_n,rx_data,rx_valid,tx_data,tx_valid); 
    Single_port_Sync_RAM RAM_inst (rx_data,rx_valid,clk,rst_n,tx_data,tx_valid);
    
endmodule