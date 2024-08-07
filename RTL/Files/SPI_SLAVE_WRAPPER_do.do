vlib work
if {[catch {vlog -f SPI_list.txt} ]} { quit  }
if {[catch {vsim -voptargs=+acc work.SPI_SLAVE_tb } ]} {quit;} 
add wave -position insertpoint  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SS_n  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/rst_n \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/clk \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/MOSI \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/rd_add_done_flag  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/SIPO_start  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/cs  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/COUNTER_inst/count  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/rx_data  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/rx_valid  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/tx_data  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/tx_valid  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/SLAVE_inst/MISO  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/RAM_inst/rd_wr_address \
sim:/SPI_SLAVE_tb/Read_word \
sim:/SPI_SLAVE_tb/write_word  \
sim:/SPI_SLAVE_tb/rd_wr_address_tb  \
sim:/SPI_SLAVE_tb/SPI_WRAPPER_DUT/RAM_inst/RAM 
run 0
run -all
exit
