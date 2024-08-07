module SPI_SLAVE_tb ();

reg MOSI,clk,rst_n,SS_n;
wire MISO;

SPI_WRAPPER SPI_WRAPPER_DUT (MOSI,MISO,SS_n,clk,rst_n);

initial begin
    clk = 0 ;
    forever #1 clk = ~ clk;
end

reg [7:0] mode_pattern;
integer i,j,err,pass;
reg [7:0] rd_wr_address_tb;
reg [7:0] write_word;
reg [7:0] Read_word;
reg [7:0] ref_mem [255:0];
reg arbitrary;


initial begin
    {err,pass} = 0;
    rst_n =0;
    repeat(2) @(negedge clk);
    rst_n=1;
    // Initialize the memory 
    $readmemb("mem_file.mem",SPI_WRAPPER_DUT.RAM_inst.RAM);
    mode_pattern = 'b11011000;
    for (i=0;i<=60000;i=i+2) begin
        SS_n = 0;
        @(negedge clk);
        MOSI = mode_pattern[i%8];
        @(negedge clk);
        for ( j = 0 ; j < 10 ; j  = j +1 ) begin
            if(j=='d0)
                MOSI = mode_pattern [i%8];
            else if (j=='d1)    
                MOSI = mode_pattern [(i%8)+1];
            else 
                begin 
                    MOSI =$random;                        
                    case ({mode_pattern[(i%8)],mode_pattern[(i%8)+1]})
                        2'b01: write_word = {write_word,MOSI};
                        2'b00: rd_wr_address_tb= {rd_wr_address_tb,MOSI};
                        2'b10: rd_wr_address_tb = {rd_wr_address_tb,MOSI};
                    endcase
                end
            @(negedge clk);
        end
        if({mode_pattern[(i%8)+1],mode_pattern[(i%8)]}=='b11) begin
            repeat(9) @(negedge clk) begin
                 Read_word = {Read_word,MISO};
            end
        end
        // Here I could have a general question about any thing happening within the wrapper
       
        SS_n = 1;
         
        @(negedge clk);
        case ({mode_pattern[i%8],mode_pattern[(i%8)+1]})
            2'b01: begin
                    if(write_word !== SPI_WRAPPER_DUT.RAM_inst.RAM[rd_wr_address_tb])
                        begin 
                            err = err +1;
                        end
                    else 
                        pass = pass +1; 
                    end
            2'b11: 
                    begin
                        if(Read_word !== SPI_WRAPPER_DUT.RAM_inst.RAM[rd_wr_address_tb])
                            begin
                                err = err +1;
                            end
                    else 
                        pass = pass +1; 
                    end
        endcase
    end
    $display("Test ended with %0d passed & %0d failed\n",pass,err);
    $stop;

end

always @(err) begin
    if(err)
        $display("Time = %0t\n",$time);
end
    
endmodule