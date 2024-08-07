module SPI_SLAVE (
    MOSI,MISO,SS_n,clk,rst_n,rx_data,rx_valid,tx_data,tx_valid
);

// SPI-SLAVE FSM 
// STATES (IDLE/CHK_CMD/WRITE/READ_DATA/READ_ADD)
parameter IDLE = 3'b000;
parameter CHK_CMD = 3'b001;
parameter WRITE = 3'b010;
parameter READ_DATA = 3'b011;
parameter READ_ADD = 3'b100;
// FSM Details

input MOSI,clk,SS_n,rst_n,tx_valid;
input [7:0] tx_data;
output [9:0] rx_data;
output rx_valid;
output MISO;
wire SIPO_start;
wire [3:0] counter;
reg rd_add_done_flag; // Flag to state that a previous read address has been recorded

SIPO SIPO_inst (MOSI,rx_data,clk,rst_n,SS_n);
PISO PISO_inst (MISO,tx_data,tx_valid,SS_n,clk,rst_n);
SPI_counter COUNTER_inst (clk,rst_n,SS_n,counter,SIPO_start,rx_valid);

// Apply FSM encoding attribute directly to the FSM register
(* fsm_encoding = "sequential" *) 
reg [2:0] ns, cs;

// STATE MEMORY
always @(posedge clk) begin
    if(~rst_n)
        cs <= IDLE;
    else 
        cs <= ns;
end

// STATE TRANSITIONS
always @(*) begin
    case (cs)
        IDLE: 
            begin
                if(~SS_n)
                    ns = CHK_CMD;
                else
                    ns = IDLE;
            end
        CHK_CMD: 
            begin
                if (SS_n)
                    ns =IDLE;
                else if (~MOSI) 
                    ns = WRITE;
                else if (rd_add_done_flag)
                    ns = READ_DATA;
                else ns = READ_ADD;
            end
        WRITE: 
            begin
                if (SS_n)
                    ns  = IDLE;
                else if (~rx_valid)
                    ns = WRITE; 
                // The FSM has dead-end until the user ends the communication (A MUST)
            end
        READ_DATA: 
            begin
                if (SS_n)
                    ns = IDLE;
                else  if (~rx_valid)
                    ns = READ_DATA;    
            end
        READ_ADD: 
            begin
                if (SS_n)
                    ns = IDLE;
                else if (~rx_valid)
                    ns = READ_ADD;
            end
        default: ns = IDLE; 
    endcase
    end
    // OUTPUT LOGIC & CONTROL
    assign SIPO_start = ( cs == IDLE || cs == CHK_CMD || SS_n == 1 )? 0 : 1 ;
    
    always @(posedge clk) begin
         if(~rst_n)
            rd_add_done_flag <= 0;
         else if (cs == READ_ADD && rx_valid == 1)
            rd_add_done_flag <= 1;
         else if(cs == READ_DATA)
            rd_add_done_flag <= 0;
        // No other corner case since using single-port RAM necessitates that
        // For every READ_ADD , a READ_DATA should follow & so as the writing operation

    end

endmodule
