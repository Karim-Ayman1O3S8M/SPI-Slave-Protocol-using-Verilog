module SPI_counter (
    clk,rst_n,SS_n,count,start,finish
);

parameter max_counting = 10;
parameter COUNTER_WIDTH = 4;
input clk,start,rst_n,SS_n;
output reg [COUNTER_WIDTH-1:0] count;
output finish;

assign finish = (count == max_counting)? 1 : 0 ;

always @(posedge clk) begin
    if(~rst_n)
        count <=0;
    else if (~SS_n)
        begin
            if(start)
                begin
                    if(count == max_counting)
                        count <=0;
                    else count <= count + 1 ;
                end
            else 
                count <= 0 ;
        end
    else 
        count <=0;
end

endmodule

// This module aims to count 10 bits then output a flag (rx_valid)
// The start Signal is to start the counting after the CHK_OP state is finished
// We can optimize the ports instead of using rst_n & SS_n ,  we can reduce them as well
// count is redundant but used for debugging only (May be reduced)
