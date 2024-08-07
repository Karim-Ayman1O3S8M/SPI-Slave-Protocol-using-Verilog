// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug  6 23:47:55 2024
// Host        : Karim running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./SPI_synth/SPI_WRAPPER_netlist.v
// Design      : SPI_WRAPPER
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PISO
   (Q,
    SR,
    clk_IBUF_BUFG);
  output [2:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;

  SPI_counter PISO_COUNTER
       (.Q(Q),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module SIPO
   (SR,
    rx_data,
    D,
    tx_valid_reg,
    RAM_reg,
    rst_n_IBUF,
    SS_n_IBUF,
    MOSI_IBUF,
    rx_valid,
    tx_valid,
    clk_IBUF_BUFG);
  output [0:0]SR;
  output [1:0]rx_data;
  output [7:0]D;
  output tx_valid_reg;
  output RAM_reg;
  input rst_n_IBUF;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rx_valid;
  input tx_valid;
  input clk_IBUF_BUFG;

  wire \<const1> ;
  wire [7:0]D;
  wire MOSI_IBUF;
  wire RAM_reg;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire clk_IBUF_BUFG;
  wire rst_n_IBUF;
  wire [1:0]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire tx_valid;
  wire tx_valid_reg;

  LUT4 #(
    .INIT(16'h80FF)) 
    RAM_reg_i_1
       (.I0(rx_data[0]),
        .I1(rx_data[1]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(RAM_reg));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_wr_address[7]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(SS_n_IBUF),
        .O(\rx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[1]_i_1 
       (.I0(D[0]),
        .I1(SS_n_IBUF),
        .O(\rx_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[2]_i_1 
       (.I0(D[1]),
        .I1(SS_n_IBUF),
        .O(\rx_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[3]_i_1 
       (.I0(D[2]),
        .I1(SS_n_IBUF),
        .O(\rx_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[4]_i_1 
       (.I0(D[3]),
        .I1(SS_n_IBUF),
        .O(\rx_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[5]_i_1 
       (.I0(D[4]),
        .I1(SS_n_IBUF),
        .O(\rx_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[6]_i_1 
       (.I0(D[5]),
        .I1(SS_n_IBUF),
        .O(\rx_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[7]_i_1 
       (.I0(D[6]),
        .I1(SS_n_IBUF),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[8]_i_1 
       (.I0(D[7]),
        .I1(SS_n_IBUF),
        .O(\rx_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[9]_i_1 
       (.I0(rx_data[0]),
        .I1(SS_n_IBUF),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data[0]),
        .I1(rx_data[1]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
endmodule

module SPI_SLAVE
   (\rx_data_reg[0] ,
    WEA,
    D,
    Q,
    tx_valid_reg,
    RAM_reg,
    E,
    clk_IBUF_BUFG,
    MOSI_IBUF,
    SS_n_IBUF,
    rst_n_IBUF,
    tx_valid,
    SR);
  output \rx_data_reg[0] ;
  output [0:0]WEA;
  output [7:0]D;
  output [2:0]Q;
  output tx_valid_reg;
  output RAM_reg;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input MOSI_IBUF;
  input SS_n_IBUF;
  input rst_n_IBUF;
  input tx_valid;
  input [0:0]SR;

  wire \<const1> ;
  wire COUNTER_inst_n_1;
  wire COUNTER_inst_n_3;
  wire [7:0]D;
  wire [0:0]E;
  wire GND_1;
  wire MOSI_IBUF;
  wire [2:0]Q;
  wire RAM_reg;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire [2:0]cs;
  wire [2:0]ns;
  wire \ns_reg[0]_i_1_n_0 ;
  wire \ns_reg[1]_i_1_n_0 ;
  wire \ns_reg[2]_i_1_n_0 ;
  wire rd_add_done_flag;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data_reg[0] ;
  wire rx_valid;
  wire tx_valid;
  wire tx_valid_reg;

  SPI_counter__parameterized0 COUNTER_inst
       (.E(COUNTER_inst_n_1),
        .Q(cs),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(WEA),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rd_add_done_flag(rd_add_done_flag),
        .rd_add_done_flag_reg(COUNTER_inst_n_3),
        .\rd_wr_address_reg[0] (E),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_data(rx_data),
        .rx_valid(rx_valid));
  GND GND
       (.G(GND_1));
  PISO PISO_inst
       (.Q(Q),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  SIPO SIPO_inst
       (.D(D),
        .MOSI_IBUF(MOSI_IBUF),
        .RAM_reg(RAM_reg),
        .SR(\rx_data_reg[0] ),
        .SS_n_IBUF(SS_n_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid),
        .tx_valid_reg(tx_valid_reg));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  (* FSM_ENCODING = "gray" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(\rx_data_reg[0] ));
  (* FSM_ENCODING = "gray" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(\rx_data_reg[0] ));
  (* FSM_ENCODING = "gray" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(\rx_data_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[0] 
       (.CLR(GND_1),
        .D(\ns_reg[0]_i_1_n_0 ),
        .G(COUNTER_inst_n_1),
        .GE(VCC_2),
        .Q(ns[0]));
  LUT6 #(
    .INIT(64'h000000000000EA55)) 
    \ns_reg[0]_i_1 
       (.I0(cs[1]),
        .I1(MOSI_IBUF),
        .I2(rd_add_done_flag),
        .I3(cs[0]),
        .I4(SS_n_IBUF),
        .I5(cs[2]),
        .O(\ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[1] 
       (.CLR(GND_1),
        .D(\ns_reg[1]_i_1_n_0 ),
        .G(COUNTER_inst_n_1),
        .GE(VCC_2),
        .Q(ns[1]));
  LUT6 #(
    .INIT(64'h000000000000EEAE)) 
    \ns_reg[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(MOSI_IBUF),
        .I3(rd_add_done_flag),
        .I4(SS_n_IBUF),
        .I5(cs[2]),
        .O(\ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[2] 
       (.CLR(GND_1),
        .D(\ns_reg[2]_i_1_n_0 ),
        .G(COUNTER_inst_n_1),
        .GE(VCC_2),
        .Q(ns[2]));
  LUT6 #(
    .INIT(64'h0000000000020F00)) 
    \ns_reg[2]_i_1 
       (.I0(MOSI_IBUF),
        .I1(rd_add_done_flag),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(SS_n_IBUF),
        .O(\ns_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    rd_add_done_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(COUNTER_inst_n_3),
        .Q(rd_add_done_flag),
        .R(\rx_data_reg[0] ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_WRAPPER
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire [2:0]\PISO_inst/count ;
  wire RAM;
  wire RAM_inst_n_1;
  wire SLAVE_inst_n_0;
  wire SLAVE_inst_n_13;
  wire SLAVE_inst_n_14;
  wire SLAVE_inst_n_15;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  Single_port_Sync_RAM RAM_inst
       (.D(rx_data),
        .E(SLAVE_inst_n_15),
        .MISO_OBUF(MISO_OBUF),
        .Q(\PISO_inst/count ),
        .SR(RAM_inst_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(RAM),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n(SLAVE_inst_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SLAVE_inst_n_14),
        .\rx_data_reg[8]_0 (SLAVE_inst_n_13),
        .tx_valid(tx_valid));
  SPI_SLAVE SLAVE_inst
       (.D(rx_data),
        .E(SLAVE_inst_n_15),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(\PISO_inst/count ),
        .RAM_reg(SLAVE_inst_n_14),
        .SR(RAM_inst_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(RAM),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[0] (SLAVE_inst_n_0),
        .tx_valid(tx_valid),
        .tx_valid_reg(SLAVE_inst_n_13));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule

module SPI_counter
   (Q,
    SR,
    clk_IBUF_BUFG);
  output [2:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire \<const1> ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_2__0_n_0 ;
  wire \count_reg_n_0_[3] ;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\count_reg_n_0_[3] ),
        .I3(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count[3]_i_2__0 
       (.I0(\count_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[3]_i_2__0_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "SPI_counter" *) 
module SPI_counter__parameterized0
   (WEA,
    E,
    rx_valid,
    rd_add_done_flag_reg,
    \rd_wr_address_reg[0] ,
    rx_data,
    Q,
    SS_n_IBUF,
    rst_n_IBUF,
    rd_add_done_flag,
    clk_IBUF_BUFG);
  output [0:0]WEA;
  output [0:0]E;
  output rx_valid;
  output rd_add_done_flag_reg;
  output [0:0]\rd_wr_address_reg[0] ;
  input [1:0]rx_data;
  input [2:0]Q;
  input SS_n_IBUF;
  input rst_n_IBUF;
  input rd_add_done_flag;
  input clk_IBUF_BUFG;

  wire \<const1> ;
  wire [0:0]E;
  wire [2:0]Q;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire rd_add_done_flag;
  wire rd_add_done_flag_reg;
  wire [0:0]\rd_wr_address_reg[0] ;
  wire rst_n_IBUF;
  wire [1:0]rx_data;
  wire rx_valid;

  LUT6 #(
    .INIT(64'h0000000800000000)) 
    RAM_reg_i_2
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(rx_data[1]),
        .I5(rx_data[0]),
        .O(WEA));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1FF)) 
    \count[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(SS_n_IBUF),
        .I3(rst_n_IBUF),
        .O(\count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \count[3]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(\count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count[3]_i_2_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFF5F)) 
    \ns_reg[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rx_valid),
        .I3(SS_n_IBUF),
        .I4(Q[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \ns_reg[2]_i_3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(rx_valid));
  LUT5 #(
    .INIT(32'hFF3F0200)) 
    rd_add_done_flag_i_1
       (.I0(rx_valid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rd_add_done_flag),
        .O(rd_add_done_flag_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \rd_wr_address[7]_i_2 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(rx_data[0]),
        .O(\rd_wr_address_reg[0] ));
endmodule

module Single_port_Sync_RAM
   (tx_valid,
    SR,
    MISO_OBUF,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    D,
    WEA,
    \rx_data_reg[8]_0 ,
    SS_n_IBUF,
    Q,
    E);
  output tx_valid;
  output [0:0]SR;
  output MISO_OBUF;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]D;
  input [0:0]WEA;
  input \rx_data_reg[8]_0 ;
  input SS_n_IBUF;
  input [2:0]Q;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire MISO_OBUF;
  wire MISO_OBUF_inst_i_2_n_0;
  wire MISO_OBUF_inst_i_3_n_0;
  wire [2:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire [7:0]rd_wr_address;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire [7:0]tx_data;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  MUXF7 MISO_OBUF_inst_i_1
       (.I0(MISO_OBUF_inst_i_2_n_0),
        .I1(MISO_OBUF_inst_i_3_n_0),
        .O(MISO_OBUF),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_OBUF_inst_i_2
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(Q[0]),
        .I3(tx_data[6]),
        .I4(Q[1]),
        .I5(tx_data[0]),
        .O(MISO_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_OBUF_inst_i_3
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(Q[0]),
        .I3(tx_data[2]),
        .I4(Q[1]),
        .I5(tx_data[4]),
        .O(MISO_OBUF_inst_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "RAM_inst/RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,rd_wr_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,rd_wr_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hDF)) 
    \count[3]_i_1 
       (.I0(tx_valid),
        .I1(SS_n_IBUF),
        .I2(rst_n_IBUF),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(rd_wr_address[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(rd_wr_address[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(rd_wr_address[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(rd_wr_address[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(rd_wr_address[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(rd_wr_address[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(rd_wr_address[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_wr_address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(rd_wr_address[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(tx_valid),
        .R(rst_n));
endmodule
