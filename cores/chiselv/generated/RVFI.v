module RegisterBank(
  input         clock,
  input         reset,
  output [31:0] io_regPort_rs1,
  output [31:0] io_regPort_rs2,
  input  [5:0]  io_regPort_rs1_addr,
  input  [5:0]  io_regPort_rs2_addr,
  input  [5:0]  io_regPort_regwr_addr,
  input  [31:0] io_regPort_regwr_data,
  input         io_regPort_writeEnable,
  input         io_regPort_stall
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_1; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_2; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_3; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_4; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_5; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_6; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_7; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_8; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_9; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_10; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_11; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_12; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_13; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_14; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_15; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_16; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_17; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_18; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_19; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_20; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_21; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_22; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_23; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_24; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_25; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_26; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_27; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_28; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_29; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_30; // @[RegisterBank.scala 22:21]
  reg [31:0] regs_31; // @[RegisterBank.scala 22:21]
  wire [31:0] _GEN_1 = 5'h1 == io_regPort_rs1_addr[4:0] ? $signed(regs_1) : $signed(regs_0); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_2 = 5'h2 == io_regPort_rs1_addr[4:0] ? $signed(regs_2) : $signed(_GEN_1); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_3 = 5'h3 == io_regPort_rs1_addr[4:0] ? $signed(regs_3) : $signed(_GEN_2); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_4 = 5'h4 == io_regPort_rs1_addr[4:0] ? $signed(regs_4) : $signed(_GEN_3); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_5 = 5'h5 == io_regPort_rs1_addr[4:0] ? $signed(regs_5) : $signed(_GEN_4); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_6 = 5'h6 == io_regPort_rs1_addr[4:0] ? $signed(regs_6) : $signed(_GEN_5); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_7 = 5'h7 == io_regPort_rs1_addr[4:0] ? $signed(regs_7) : $signed(_GEN_6); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_8 = 5'h8 == io_regPort_rs1_addr[4:0] ? $signed(regs_8) : $signed(_GEN_7); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_9 = 5'h9 == io_regPort_rs1_addr[4:0] ? $signed(regs_9) : $signed(_GEN_8); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_10 = 5'ha == io_regPort_rs1_addr[4:0] ? $signed(regs_10) : $signed(_GEN_9); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_11 = 5'hb == io_regPort_rs1_addr[4:0] ? $signed(regs_11) : $signed(_GEN_10); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_12 = 5'hc == io_regPort_rs1_addr[4:0] ? $signed(regs_12) : $signed(_GEN_11); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_13 = 5'hd == io_regPort_rs1_addr[4:0] ? $signed(regs_13) : $signed(_GEN_12); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_14 = 5'he == io_regPort_rs1_addr[4:0] ? $signed(regs_14) : $signed(_GEN_13); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_15 = 5'hf == io_regPort_rs1_addr[4:0] ? $signed(regs_15) : $signed(_GEN_14); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_16 = 5'h10 == io_regPort_rs1_addr[4:0] ? $signed(regs_16) : $signed(_GEN_15); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_17 = 5'h11 == io_regPort_rs1_addr[4:0] ? $signed(regs_17) : $signed(_GEN_16); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_18 = 5'h12 == io_regPort_rs1_addr[4:0] ? $signed(regs_18) : $signed(_GEN_17); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_19 = 5'h13 == io_regPort_rs1_addr[4:0] ? $signed(regs_19) : $signed(_GEN_18); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_20 = 5'h14 == io_regPort_rs1_addr[4:0] ? $signed(regs_20) : $signed(_GEN_19); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_21 = 5'h15 == io_regPort_rs1_addr[4:0] ? $signed(regs_21) : $signed(_GEN_20); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_22 = 5'h16 == io_regPort_rs1_addr[4:0] ? $signed(regs_22) : $signed(_GEN_21); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_23 = 5'h17 == io_regPort_rs1_addr[4:0] ? $signed(regs_23) : $signed(_GEN_22); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_24 = 5'h18 == io_regPort_rs1_addr[4:0] ? $signed(regs_24) : $signed(_GEN_23); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_25 = 5'h19 == io_regPort_rs1_addr[4:0] ? $signed(regs_25) : $signed(_GEN_24); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_26 = 5'h1a == io_regPort_rs1_addr[4:0] ? $signed(regs_26) : $signed(_GEN_25); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_27 = 5'h1b == io_regPort_rs1_addr[4:0] ? $signed(regs_27) : $signed(_GEN_26); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_28 = 5'h1c == io_regPort_rs1_addr[4:0] ? $signed(regs_28) : $signed(_GEN_27); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_29 = 5'h1d == io_regPort_rs1_addr[4:0] ? $signed(regs_29) : $signed(_GEN_28); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_30 = 5'h1e == io_regPort_rs1_addr[4:0] ? $signed(regs_30) : $signed(_GEN_29); // @[RegisterBank.scala 25:{18,18}]
  wire [31:0] _GEN_33 = 5'h1 == io_regPort_rs2_addr[4:0] ? $signed(regs_1) : $signed(regs_0); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_34 = 5'h2 == io_regPort_rs2_addr[4:0] ? $signed(regs_2) : $signed(_GEN_33); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_35 = 5'h3 == io_regPort_rs2_addr[4:0] ? $signed(regs_3) : $signed(_GEN_34); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_36 = 5'h4 == io_regPort_rs2_addr[4:0] ? $signed(regs_4) : $signed(_GEN_35); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_37 = 5'h5 == io_regPort_rs2_addr[4:0] ? $signed(regs_5) : $signed(_GEN_36); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_38 = 5'h6 == io_regPort_rs2_addr[4:0] ? $signed(regs_6) : $signed(_GEN_37); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_39 = 5'h7 == io_regPort_rs2_addr[4:0] ? $signed(regs_7) : $signed(_GEN_38); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_40 = 5'h8 == io_regPort_rs2_addr[4:0] ? $signed(regs_8) : $signed(_GEN_39); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_41 = 5'h9 == io_regPort_rs2_addr[4:0] ? $signed(regs_9) : $signed(_GEN_40); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_42 = 5'ha == io_regPort_rs2_addr[4:0] ? $signed(regs_10) : $signed(_GEN_41); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_43 = 5'hb == io_regPort_rs2_addr[4:0] ? $signed(regs_11) : $signed(_GEN_42); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_44 = 5'hc == io_regPort_rs2_addr[4:0] ? $signed(regs_12) : $signed(_GEN_43); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_45 = 5'hd == io_regPort_rs2_addr[4:0] ? $signed(regs_13) : $signed(_GEN_44); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_46 = 5'he == io_regPort_rs2_addr[4:0] ? $signed(regs_14) : $signed(_GEN_45); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_47 = 5'hf == io_regPort_rs2_addr[4:0] ? $signed(regs_15) : $signed(_GEN_46); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_48 = 5'h10 == io_regPort_rs2_addr[4:0] ? $signed(regs_16) : $signed(_GEN_47); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_49 = 5'h11 == io_regPort_rs2_addr[4:0] ? $signed(regs_17) : $signed(_GEN_48); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_50 = 5'h12 == io_regPort_rs2_addr[4:0] ? $signed(regs_18) : $signed(_GEN_49); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_51 = 5'h13 == io_regPort_rs2_addr[4:0] ? $signed(regs_19) : $signed(_GEN_50); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_52 = 5'h14 == io_regPort_rs2_addr[4:0] ? $signed(regs_20) : $signed(_GEN_51); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_53 = 5'h15 == io_regPort_rs2_addr[4:0] ? $signed(regs_21) : $signed(_GEN_52); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_54 = 5'h16 == io_regPort_rs2_addr[4:0] ? $signed(regs_22) : $signed(_GEN_53); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_55 = 5'h17 == io_regPort_rs2_addr[4:0] ? $signed(regs_23) : $signed(_GEN_54); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_56 = 5'h18 == io_regPort_rs2_addr[4:0] ? $signed(regs_24) : $signed(_GEN_55); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_57 = 5'h19 == io_regPort_rs2_addr[4:0] ? $signed(regs_25) : $signed(_GEN_56); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_58 = 5'h1a == io_regPort_rs2_addr[4:0] ? $signed(regs_26) : $signed(_GEN_57); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_59 = 5'h1b == io_regPort_rs2_addr[4:0] ? $signed(regs_27) : $signed(_GEN_58); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_60 = 5'h1c == io_regPort_rs2_addr[4:0] ? $signed(regs_28) : $signed(_GEN_59); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_61 = 5'h1d == io_regPort_rs2_addr[4:0] ? $signed(regs_29) : $signed(_GEN_60); // @[RegisterBank.scala 26:{18,18}]
  wire [31:0] _GEN_62 = 5'h1e == io_regPort_rs2_addr[4:0] ? $signed(regs_30) : $signed(_GEN_61); // @[RegisterBank.scala 26:{18,18}]
  assign io_regPort_rs1 = 5'h1f == io_regPort_rs1_addr[4:0] ? $signed(regs_31) : $signed(_GEN_30); // @[RegisterBank.scala 25:{18,18}]
  assign io_regPort_rs2 = 5'h1f == io_regPort_rs2_addr[4:0] ? $signed(regs_31) : $signed(_GEN_62); // @[RegisterBank.scala 26:{18,18}]
  always @(posedge clock) begin
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_0 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h0 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_0 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end else begin
        regs_0 <= 32'sh0; // @[RegisterBank.scala 23:11]
      end
    end else begin
      regs_0 <= 32'sh0; // @[RegisterBank.scala 23:11]
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_1 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_1 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_2 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h2 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_2 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_3 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h3 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_3 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_4 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h4 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_4 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_5 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h5 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_5 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_6 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h6 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_6 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_7 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h7 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_7 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_8 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h8 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_8 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_9 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h9 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_9 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_10 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'ha == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_10 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_11 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'hb == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_11 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_12 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'hc == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_12 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_13 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'hd == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_13 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_14 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'he == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_14 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_15 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'hf == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_15 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_16 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h10 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_16 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_17 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h11 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_17 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_18 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h12 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_18 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_19 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h13 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_19 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_20 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h14 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_20 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_21 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h15 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_21 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_22 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h16 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_22 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_23 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h17 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_23 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_24 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h18 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_24 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_25 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h19 == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_25 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_26 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1a == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_26 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_27 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1b == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_27 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_28 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1c == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_28 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_29 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1d == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_29 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_30 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1e == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_30 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
    if (reset) begin // @[RegisterBank.scala 22:21]
      regs_31 <= 32'sh0; // @[RegisterBank.scala 22:21]
    end else if (io_regPort_writeEnable & io_regPort_regwr_addr != 6'h0 & ~io_regPort_stall) begin // @[RegisterBank.scala 27:86]
      if (5'h1f == io_regPort_regwr_addr[4:0]) begin // @[RegisterBank.scala 28:33]
        regs_31 <= io_regPort_regwr_data; // @[RegisterBank.scala 28:33]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regs_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ProgramCounter(
  input         clock,
  input         reset,
  input  [31:0] io_pcPort_dataIn,
  output [31:0] io_pcPort_PC,
  output [31:0] io_pcPort_PC4,
  input         io_pcPort_writeEnable,
  input         io_pcPort_writeAdd
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[ProgramCounter.scala 17:19]
  wire [31:0] _pc_T_5 = $signed(pc) + $signed(io_pcPort_dataIn); // @[ProgramCounter.scala 20:73]
  assign io_pcPort_PC = pc; // @[ProgramCounter.scala 23:17]
  assign io_pcPort_PC4 = pc + 32'h4; // @[ProgramCounter.scala 22:23]
  always @(posedge clock) begin
    if (reset) begin // @[ProgramCounter.scala 17:19]
      pc <= 32'h0; // @[ProgramCounter.scala 17:19]
    end else if (io_pcPort_writeEnable) begin // @[ProgramCounter.scala 19:31]
      if (io_pcPort_writeAdd) begin // @[ProgramCounter.scala 20:14]
        pc <= _pc_T_5;
      end else begin
        pc <= io_pcPort_dataIn;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ALU(
  input  [5:0]  io_ALUPort_inst,
  input  [31:0] io_ALUPort_a,
  input  [31:0] io_ALUPort_b,
  output [31:0] io_ALUPort_x
);
  wire [4:0] shamt = io_ALUPort_b[4:0]; // @[ALU.scala 24:36]
  wire  _op_T = io_ALUPort_inst == 6'h2; // @[ALU.scala 30:24]
  wire  _op_T_1 = io_ALUPort_inst == 6'hb; // @[ALU.scala 31:24]
  wire  _op_T_2 = io_ALUPort_inst == 6'h9; // @[ALU.scala 32:24]
  wire  _op_T_3 = io_ALUPort_inst == 6'h7; // @[ALU.scala 33:24]
  wire  _op_T_4 = io_ALUPort_inst == 6'h11; // @[ALU.scala 34:24]
  wire  _op_T_5 = io_ALUPort_inst == 6'hf; // @[ALU.scala 35:24]
  wire  _op_T_6 = io_ALUPort_inst == 6'hd; // @[ALU.scala 36:24]
  wire  _op_T_7 = io_ALUPort_inst == 6'h13; // @[ALU.scala 37:24]
  wire  _op_T_8 = io_ALUPort_inst == 6'h15; // @[ALU.scala 38:24]
  wire [5:0] _op_T_9 = _op_T_8 ? 6'h14 : io_ALUPort_inst; // @[Mux.scala 98:16]
  wire [5:0] _op_T_10 = _op_T_7 ? 6'h12 : _op_T_9; // @[Mux.scala 98:16]
  wire [5:0] _op_T_11 = _op_T_6 ? 6'hc : _op_T_10; // @[Mux.scala 98:16]
  wire [5:0] _op_T_12 = _op_T_5 ? 6'he : _op_T_11; // @[Mux.scala 98:16]
  wire [5:0] _op_T_13 = _op_T_4 ? 6'h10 : _op_T_12; // @[Mux.scala 98:16]
  wire [5:0] _op_T_14 = _op_T_3 ? 6'h6 : _op_T_13; // @[Mux.scala 98:16]
  wire [5:0] _op_T_15 = _op_T_2 ? 6'h8 : _op_T_14; // @[Mux.scala 98:16]
  wire [5:0] _op_T_16 = _op_T_1 ? 6'ha : _op_T_15; // @[Mux.scala 98:16]
  wire [5:0] op = _op_T ? 6'h1 : _op_T_16; // @[Mux.scala 98:16]
  wire [31:0] _out_T_1 = io_ALUPort_a + io_ALUPort_b; // @[ALU.scala 44:22]
  wire [31:0] _out_T_3 = io_ALUPort_a - io_ALUPort_b; // @[ALU.scala 45:22]
  wire [31:0] _out_T_6 = $signed(io_ALUPort_a) >>> shamt; // @[ALU.scala 47:40]
  wire [31:0] _out_T_7 = io_ALUPort_a >> shamt; // @[ALU.scala 48:22]
  wire [62:0] _GEN_14 = {{31'd0}, io_ALUPort_a}; // @[ALU.scala 49:22]
  wire [62:0] _out_T_8 = _GEN_14 << shamt; // @[ALU.scala 49:22]
  wire [31:0] _out_T_9 = io_ALUPort_a & io_ALUPort_b; // @[ALU.scala 51:22]
  wire [31:0] _out_T_10 = io_ALUPort_a | io_ALUPort_b; // @[ALU.scala 52:22]
  wire [31:0] _out_T_11 = io_ALUPort_a ^ io_ALUPort_b; // @[ALU.scala 53:22]
  wire  _GEN_0 = 6'h33 == op & io_ALUPort_a >= io_ALUPort_b; // @[ALU.scala 42:14 61:18]
  wire  _GEN_1 = 6'h32 == op ? $signed(io_ALUPort_a) >= $signed(io_ALUPort_b) : _GEN_0; // @[ALU.scala 42:14 60:18]
  wire  _GEN_2 = 6'h31 == op ? io_ALUPort_a != io_ALUPort_b : _GEN_1; // @[ALU.scala 42:14 59:18]
  wire  _GEN_3 = 6'h30 == op ? io_ALUPort_a == io_ALUPort_b : _GEN_2; // @[ALU.scala 42:14 58:18]
  wire  _GEN_4 = 6'h14 == op ? io_ALUPort_a < io_ALUPort_b : _GEN_3; // @[ALU.scala 42:14 56:18]
  wire  _GEN_5 = 6'h12 == op ? $signed(io_ALUPort_a) < $signed(io_ALUPort_b) : _GEN_4; // @[ALU.scala 42:14 55:18]
  wire [31:0] _GEN_6 = 6'hc == op ? _out_T_11 : {{31'd0}, _GEN_5}; // @[ALU.scala 42:14 53:17]
  wire [31:0] _GEN_7 = 6'he == op ? _out_T_10 : _GEN_6; // @[ALU.scala 42:14 52:17]
  wire [31:0] _GEN_8 = 6'h10 == op ? _out_T_9 : _GEN_7; // @[ALU.scala 42:14 51:17]
  wire [62:0] _GEN_9 = 6'h6 == op ? _out_T_8 : {{31'd0}, _GEN_8}; // @[ALU.scala 42:14 49:17]
  wire [62:0] _GEN_10 = 6'h8 == op ? {{31'd0}, _out_T_7} : _GEN_9; // @[ALU.scala 42:14 48:17]
  wire [62:0] _GEN_11 = 6'ha == op ? {{31'd0}, _out_T_6} : _GEN_10; // @[ALU.scala 42:14 47:17]
  wire [62:0] _GEN_12 = 6'h3 == op ? {{31'd0}, _out_T_3} : _GEN_11; // @[ALU.scala 42:14 45:17]
  wire [62:0] _GEN_13 = 6'h1 == op ? {{31'd0}, _out_T_1} : _GEN_12; // @[ALU.scala 42:14 44:17]
  assign io_ALUPort_x = _GEN_13[31:0]; // @[ALU.scala 64:16]
endmodule
module Decoder(
  input  [31:0] io_DecoderPort_op,
  output [5:0]  io_DecoderPort_inst,
  output [4:0]  io_DecoderPort_rd,
  output [4:0]  io_DecoderPort_rs1,
  output [4:0]  io_DecoderPort_rs2,
  output [31:0] io_DecoderPort_imm,
  output        io_DecoderPort_toALU,
  output        io_DecoderPort_branch,
  output        io_DecoderPort_use_imm,
  output        io_DecoderPort_jump,
  output        io_DecoderPort_is_load,
  output        io_DecoderPort_is_store
);
  wire [31:0] _signals_T = io_DecoderPort_op & 32'hfe00707f; // @[Lookup.scala 31:38]
  wire  _signals_T_1 = 32'h33 == _signals_T; // @[Lookup.scala 31:38]
  wire [31:0] _signals_T_2 = io_DecoderPort_op & 32'h707f; // @[Lookup.scala 31:38]
  wire  _signals_T_3 = 32'h13 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_5 = 32'h40000033 == _signals_T; // @[Lookup.scala 31:38]
  wire [31:0] _signals_T_6 = io_DecoderPort_op & 32'h7f; // @[Lookup.scala 31:38]
  wire  _signals_T_7 = 32'h37 == _signals_T_6; // @[Lookup.scala 31:38]
  wire  _signals_T_9 = 32'h17 == _signals_T_6; // @[Lookup.scala 31:38]
  wire  _signals_T_11 = 32'h1033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_13 = 32'h1013 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_15 = 32'h40005033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_17 = 32'h5013 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_21 = 32'h40005013 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_23 = 32'h4033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_25 = 32'h4013 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_27 = 32'h6033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_29 = 32'h6013 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_31 = 32'h7033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_33 = 32'h7013 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_35 = 32'h2033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_37 = 32'h2013 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_39 = 32'h3033 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_41 = 32'h3013 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_43 = 32'h63 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_45 = 32'h1063 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_47 = 32'h4063 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_49 = 32'h5063 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_51 = 32'h6063 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_53 = 32'h7063 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_55 = 32'h6f == _signals_T_6; // @[Lookup.scala 31:38]
  wire  _signals_T_57 = 32'h67 == _signals_T_2; // @[Lookup.scala 31:38]
  wire [31:0] _signals_T_58 = io_DecoderPort_op & 32'hf00fffff; // @[Lookup.scala 31:38]
  wire  _signals_T_59 = 32'hf == _signals_T_58; // @[Lookup.scala 31:38]
  wire  _signals_T_61 = 32'h20f == io_DecoderPort_op; // @[Lookup.scala 31:38]
  wire  _signals_T_63 = 32'h73 == io_DecoderPort_op; // @[Lookup.scala 31:38]
  wire  _signals_T_65 = 32'h100073 == io_DecoderPort_op; // @[Lookup.scala 31:38]
  wire  _signals_T_67 = 32'h1073 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_69 = 32'h2073 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_71 = 32'h3073 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_73 = 32'h5073 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_75 = 32'h6073 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_77 = 32'h7073 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_79 = 32'h3 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_81 = 32'h1003 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_83 = 32'h4003 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_85 = 32'h5003 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_87 = 32'h2003 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_89 = 32'h23 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_91 = 32'h1023 == _signals_T_2; // @[Lookup.scala 31:38]
  wire  _signals_T_93 = 32'h2023 == _signals_T_2; // @[Lookup.scala 31:38]
  wire [1:0] _signals_T_94 = _signals_T_93 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_95 = _signals_T_91 ? 2'h3 : _signals_T_94; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_96 = _signals_T_89 ? 2'h3 : _signals_T_95; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_97 = _signals_T_87 ? 2'h2 : _signals_T_96; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_98 = _signals_T_85 ? 2'h2 : _signals_T_97; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_99 = _signals_T_83 ? 2'h2 : _signals_T_98; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_100 = _signals_T_81 ? 2'h2 : _signals_T_99; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_101 = _signals_T_79 ? 2'h2 : _signals_T_100; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_102 = _signals_T_77 ? 2'h2 : _signals_T_101; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_103 = _signals_T_75 ? 2'h2 : _signals_T_102; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_104 = _signals_T_73 ? 2'h2 : _signals_T_103; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_105 = _signals_T_71 ? 2'h2 : _signals_T_104; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_106 = _signals_T_69 ? 2'h2 : _signals_T_105; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_107 = _signals_T_67 ? 2'h2 : _signals_T_106; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_108 = _signals_T_65 ? 2'h2 : _signals_T_107; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_109 = _signals_T_63 ? 2'h2 : _signals_T_108; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_110 = _signals_T_61 ? 2'h2 : _signals_T_109; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_111 = _signals_T_59 ? 2'h2 : _signals_T_110; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_112 = _signals_T_57 ? 2'h2 : _signals_T_111; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_113 = _signals_T_55 ? 3'h6 : {{1'd0}, _signals_T_112}; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_114 = _signals_T_53 ? 3'h4 : _signals_T_113; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_115 = _signals_T_51 ? 3'h4 : _signals_T_114; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_116 = _signals_T_49 ? 3'h4 : _signals_T_115; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_117 = _signals_T_47 ? 3'h4 : _signals_T_116; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_118 = _signals_T_45 ? 3'h4 : _signals_T_117; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_119 = _signals_T_43 ? 3'h4 : _signals_T_118; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_120 = _signals_T_41 ? 3'h2 : _signals_T_119; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_121 = _signals_T_39 ? 3'h1 : _signals_T_120; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_122 = _signals_T_37 ? 3'h2 : _signals_T_121; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_123 = _signals_T_35 ? 3'h1 : _signals_T_122; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_124 = _signals_T_33 ? 3'h2 : _signals_T_123; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_125 = _signals_T_31 ? 3'h1 : _signals_T_124; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_126 = _signals_T_29 ? 3'h2 : _signals_T_125; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_127 = _signals_T_27 ? 3'h1 : _signals_T_126; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_128 = _signals_T_25 ? 3'h2 : _signals_T_127; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_129 = _signals_T_23 ? 3'h1 : _signals_T_128; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_130 = _signals_T_21 ? 3'h2 : _signals_T_129; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_131 = _signals_T_15 ? 3'h1 : _signals_T_130; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_132 = _signals_T_17 ? 3'h2 : _signals_T_131; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_133 = _signals_T_15 ? 3'h1 : _signals_T_132; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_134 = _signals_T_13 ? 3'h2 : _signals_T_133; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_135 = _signals_T_11 ? 3'h1 : _signals_T_134; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_136 = _signals_T_9 ? 3'h5 : _signals_T_135; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_137 = _signals_T_7 ? 3'h5 : _signals_T_136; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_138 = _signals_T_5 ? 3'h1 : _signals_T_137; // @[Lookup.scala 33:37]
  wire [2:0] _signals_T_139 = _signals_T_3 ? 3'h2 : _signals_T_138; // @[Lookup.scala 33:37]
  wire [2:0] signals_0 = _signals_T_1 ? 3'h1 : _signals_T_139; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_140 = _signals_T_93 ? 6'h2f : 6'h0; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_141 = _signals_T_91 ? 6'h2e : _signals_T_140; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_142 = _signals_T_89 ? 6'h2d : _signals_T_141; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_143 = _signals_T_87 ? 6'h2c : _signals_T_142; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_144 = _signals_T_85 ? 6'h2b : _signals_T_143; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_145 = _signals_T_83 ? 6'h2a : _signals_T_144; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_146 = _signals_T_81 ? 6'h29 : _signals_T_145; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_147 = _signals_T_79 ? 6'h28 : _signals_T_146; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_148 = _signals_T_77 ? 6'h27 : _signals_T_147; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_149 = _signals_T_75 ? 6'h26 : _signals_T_148; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_150 = _signals_T_73 ? 6'h25 : _signals_T_149; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_151 = _signals_T_71 ? 6'h24 : _signals_T_150; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_152 = _signals_T_69 ? 6'h23 : _signals_T_151; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_153 = _signals_T_67 ? 6'h22 : _signals_T_152; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_154 = _signals_T_65 ? 6'h21 : _signals_T_153; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_155 = _signals_T_63 ? 6'h20 : _signals_T_154; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_156 = _signals_T_61 ? 6'h1f : _signals_T_155; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_157 = _signals_T_59 ? 6'h1e : _signals_T_156; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_158 = _signals_T_57 ? 6'h1d : _signals_T_157; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_159 = _signals_T_55 ? 6'h1c : _signals_T_158; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_160 = _signals_T_53 ? 6'h1b : _signals_T_159; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_161 = _signals_T_51 ? 6'h1a : _signals_T_160; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_162 = _signals_T_49 ? 6'h19 : _signals_T_161; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_163 = _signals_T_47 ? 6'h18 : _signals_T_162; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_164 = _signals_T_45 ? 6'h17 : _signals_T_163; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_165 = _signals_T_43 ? 6'h16 : _signals_T_164; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_166 = _signals_T_41 ? 6'h15 : _signals_T_165; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_167 = _signals_T_39 ? 6'h14 : _signals_T_166; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_168 = _signals_T_37 ? 6'h13 : _signals_T_167; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_169 = _signals_T_35 ? 6'h12 : _signals_T_168; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_170 = _signals_T_33 ? 6'h11 : _signals_T_169; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_171 = _signals_T_31 ? 6'h10 : _signals_T_170; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_172 = _signals_T_29 ? 6'hf : _signals_T_171; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_173 = _signals_T_27 ? 6'he : _signals_T_172; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_174 = _signals_T_25 ? 6'hd : _signals_T_173; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_175 = _signals_T_23 ? 6'hc : _signals_T_174; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_176 = _signals_T_21 ? 6'hb : _signals_T_175; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_177 = _signals_T_15 ? 6'ha : _signals_T_176; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_178 = _signals_T_17 ? 6'h9 : _signals_T_177; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_179 = _signals_T_15 ? 6'h8 : _signals_T_178; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_180 = _signals_T_13 ? 6'h7 : _signals_T_179; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_181 = _signals_T_11 ? 6'h6 : _signals_T_180; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_182 = _signals_T_9 ? 6'h5 : _signals_T_181; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_183 = _signals_T_7 ? 6'h4 : _signals_T_182; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_184 = _signals_T_5 ? 6'h3 : _signals_T_183; // @[Lookup.scala 33:37]
  wire [5:0] _signals_T_185 = _signals_T_3 ? 6'h2 : _signals_T_184; // @[Lookup.scala 33:37]
  wire  _signals_T_228 = _signals_T_9 ? 1'h0 : _signals_T_11 | (_signals_T_13 | (_signals_T_15 | (_signals_T_17 | (
    _signals_T_15 | (_signals_T_21 | (_signals_T_23 | (_signals_T_25 | (_signals_T_27 | (_signals_T_29 | (_signals_T_31
     | (_signals_T_33 | (_signals_T_35 | (_signals_T_37 | (_signals_T_39 | _signals_T_41)))))))))))))); // @[Lookup.scala 33:37]
  wire  _signals_T_229 = _signals_T_7 ? 1'h0 : _signals_T_228; // @[Lookup.scala 33:37]
  wire  _signals_T_258 = _signals_T_41 ? 1'h0 : _signals_T_43 | (_signals_T_45 | (_signals_T_47 | (_signals_T_49 | (
    _signals_T_51 | _signals_T_53)))); // @[Lookup.scala 33:37]
  wire  _signals_T_259 = _signals_T_39 ? 1'h0 : _signals_T_258; // @[Lookup.scala 33:37]
  wire  _signals_T_260 = _signals_T_37 ? 1'h0 : _signals_T_259; // @[Lookup.scala 33:37]
  wire  _signals_T_261 = _signals_T_35 ? 1'h0 : _signals_T_260; // @[Lookup.scala 33:37]
  wire  _signals_T_262 = _signals_T_33 ? 1'h0 : _signals_T_261; // @[Lookup.scala 33:37]
  wire  _signals_T_263 = _signals_T_31 ? 1'h0 : _signals_T_262; // @[Lookup.scala 33:37]
  wire  _signals_T_264 = _signals_T_29 ? 1'h0 : _signals_T_263; // @[Lookup.scala 33:37]
  wire  _signals_T_265 = _signals_T_27 ? 1'h0 : _signals_T_264; // @[Lookup.scala 33:37]
  wire  _signals_T_266 = _signals_T_25 ? 1'h0 : _signals_T_265; // @[Lookup.scala 33:37]
  wire  _signals_T_267 = _signals_T_23 ? 1'h0 : _signals_T_266; // @[Lookup.scala 33:37]
  wire  _signals_T_268 = _signals_T_21 ? 1'h0 : _signals_T_267; // @[Lookup.scala 33:37]
  wire  _signals_T_269 = _signals_T_15 ? 1'h0 : _signals_T_268; // @[Lookup.scala 33:37]
  wire  _signals_T_270 = _signals_T_17 ? 1'h0 : _signals_T_269; // @[Lookup.scala 33:37]
  wire  _signals_T_271 = _signals_T_15 ? 1'h0 : _signals_T_270; // @[Lookup.scala 33:37]
  wire  _signals_T_272 = _signals_T_13 ? 1'h0 : _signals_T_271; // @[Lookup.scala 33:37]
  wire  _signals_T_273 = _signals_T_11 ? 1'h0 : _signals_T_272; // @[Lookup.scala 33:37]
  wire  _signals_T_274 = _signals_T_9 ? 1'h0 : _signals_T_273; // @[Lookup.scala 33:37]
  wire  _signals_T_275 = _signals_T_7 ? 1'h0 : _signals_T_274; // @[Lookup.scala 33:37]
  wire  _signals_T_276 = _signals_T_5 ? 1'h0 : _signals_T_275; // @[Lookup.scala 33:37]
  wire  _signals_T_277 = _signals_T_3 ? 1'h0 : _signals_T_276; // @[Lookup.scala 33:37]
  wire  _signals_T_289 = _signals_T_71 ? 1'h0 : _signals_T_73 | (_signals_T_75 | (_signals_T_77 | (_signals_T_79 | (
    _signals_T_81 | (_signals_T_83 | (_signals_T_85 | (_signals_T_87 | (_signals_T_89 | (_signals_T_91 | _signals_T_93))
    ))))))); // @[Lookup.scala 33:37]
  wire  _signals_T_290 = _signals_T_69 ? 1'h0 : _signals_T_289; // @[Lookup.scala 33:37]
  wire  _signals_T_291 = _signals_T_67 ? 1'h0 : _signals_T_290; // @[Lookup.scala 33:37]
  wire  _signals_T_292 = _signals_T_65 ? 1'h0 : _signals_T_291; // @[Lookup.scala 33:37]
  wire  _signals_T_293 = _signals_T_63 ? 1'h0 : _signals_T_292; // @[Lookup.scala 33:37]
  wire  _signals_T_295 = _signals_T_59 ? 1'h0 : _signals_T_61 | _signals_T_293; // @[Lookup.scala 33:37]
  wire  _signals_T_305 = _signals_T_39 ? 1'h0 : _signals_T_41 | (_signals_T_43 | (_signals_T_45 | (_signals_T_47 | (
    _signals_T_49 | (_signals_T_51 | (_signals_T_53 | (_signals_T_55 | (_signals_T_57 | _signals_T_295)))))))); // @[Lookup.scala 33:37]
  wire  _signals_T_307 = _signals_T_35 ? 1'h0 : _signals_T_37 | _signals_T_305; // @[Lookup.scala 33:37]
  wire  _signals_T_309 = _signals_T_31 ? 1'h0 : _signals_T_33 | _signals_T_307; // @[Lookup.scala 33:37]
  wire  _signals_T_311 = _signals_T_27 ? 1'h0 : _signals_T_29 | _signals_T_309; // @[Lookup.scala 33:37]
  wire  _signals_T_313 = _signals_T_23 ? 1'h0 : _signals_T_25 | _signals_T_311; // @[Lookup.scala 33:37]
  wire  _signals_T_315 = _signals_T_15 ? 1'h0 : _signals_T_21 | _signals_T_313; // @[Lookup.scala 33:37]
  wire  _signals_T_317 = _signals_T_15 ? 1'h0 : _signals_T_17 | _signals_T_315; // @[Lookup.scala 33:37]
  wire  _signals_T_319 = _signals_T_11 ? 1'h0 : _signals_T_13 | _signals_T_317; // @[Lookup.scala 33:37]
  wire  _signals_T_322 = _signals_T_5 ? 1'h0 : _signals_T_7 | (_signals_T_9 | _signals_T_319); // @[Lookup.scala 33:37]
  wire  _signals_T_344 = _signals_T_53 ? 1'h0 : _signals_T_55 | _signals_T_57; // @[Lookup.scala 33:37]
  wire  _signals_T_345 = _signals_T_51 ? 1'h0 : _signals_T_344; // @[Lookup.scala 33:37]
  wire  _signals_T_346 = _signals_T_49 ? 1'h0 : _signals_T_345; // @[Lookup.scala 33:37]
  wire  _signals_T_347 = _signals_T_47 ? 1'h0 : _signals_T_346; // @[Lookup.scala 33:37]
  wire  _signals_T_348 = _signals_T_45 ? 1'h0 : _signals_T_347; // @[Lookup.scala 33:37]
  wire  _signals_T_349 = _signals_T_43 ? 1'h0 : _signals_T_348; // @[Lookup.scala 33:37]
  wire  _signals_T_350 = _signals_T_41 ? 1'h0 : _signals_T_349; // @[Lookup.scala 33:37]
  wire  _signals_T_351 = _signals_T_39 ? 1'h0 : _signals_T_350; // @[Lookup.scala 33:37]
  wire  _signals_T_352 = _signals_T_37 ? 1'h0 : _signals_T_351; // @[Lookup.scala 33:37]
  wire  _signals_T_353 = _signals_T_35 ? 1'h0 : _signals_T_352; // @[Lookup.scala 33:37]
  wire  _signals_T_354 = _signals_T_33 ? 1'h0 : _signals_T_353; // @[Lookup.scala 33:37]
  wire  _signals_T_355 = _signals_T_31 ? 1'h0 : _signals_T_354; // @[Lookup.scala 33:37]
  wire  _signals_T_356 = _signals_T_29 ? 1'h0 : _signals_T_355; // @[Lookup.scala 33:37]
  wire  _signals_T_357 = _signals_T_27 ? 1'h0 : _signals_T_356; // @[Lookup.scala 33:37]
  wire  _signals_T_358 = _signals_T_25 ? 1'h0 : _signals_T_357; // @[Lookup.scala 33:37]
  wire  _signals_T_359 = _signals_T_23 ? 1'h0 : _signals_T_358; // @[Lookup.scala 33:37]
  wire  _signals_T_360 = _signals_T_21 ? 1'h0 : _signals_T_359; // @[Lookup.scala 33:37]
  wire  _signals_T_361 = _signals_T_15 ? 1'h0 : _signals_T_360; // @[Lookup.scala 33:37]
  wire  _signals_T_362 = _signals_T_17 ? 1'h0 : _signals_T_361; // @[Lookup.scala 33:37]
  wire  _signals_T_363 = _signals_T_15 ? 1'h0 : _signals_T_362; // @[Lookup.scala 33:37]
  wire  _signals_T_364 = _signals_T_13 ? 1'h0 : _signals_T_363; // @[Lookup.scala 33:37]
  wire  _signals_T_365 = _signals_T_11 ? 1'h0 : _signals_T_364; // @[Lookup.scala 33:37]
  wire  _signals_T_366 = _signals_T_9 ? 1'h0 : _signals_T_365; // @[Lookup.scala 33:37]
  wire  _signals_T_367 = _signals_T_7 ? 1'h0 : _signals_T_366; // @[Lookup.scala 33:37]
  wire  _signals_T_368 = _signals_T_5 ? 1'h0 : _signals_T_367; // @[Lookup.scala 33:37]
  wire  _signals_T_369 = _signals_T_3 ? 1'h0 : _signals_T_368; // @[Lookup.scala 33:37]
  wire  _signals_T_378 = _signals_T_77 ? 1'h0 : _signals_T_79 | (_signals_T_81 | (_signals_T_83 | (_signals_T_85 |
    _signals_T_87))); // @[Lookup.scala 33:37]
  wire  _signals_T_379 = _signals_T_75 ? 1'h0 : _signals_T_378; // @[Lookup.scala 33:37]
  wire  _signals_T_380 = _signals_T_73 ? 1'h0 : _signals_T_379; // @[Lookup.scala 33:37]
  wire  _signals_T_381 = _signals_T_71 ? 1'h0 : _signals_T_380; // @[Lookup.scala 33:37]
  wire  _signals_T_382 = _signals_T_69 ? 1'h0 : _signals_T_381; // @[Lookup.scala 33:37]
  wire  _signals_T_383 = _signals_T_67 ? 1'h0 : _signals_T_382; // @[Lookup.scala 33:37]
  wire  _signals_T_384 = _signals_T_65 ? 1'h0 : _signals_T_383; // @[Lookup.scala 33:37]
  wire  _signals_T_385 = _signals_T_63 ? 1'h0 : _signals_T_384; // @[Lookup.scala 33:37]
  wire  _signals_T_386 = _signals_T_61 ? 1'h0 : _signals_T_385; // @[Lookup.scala 33:37]
  wire  _signals_T_387 = _signals_T_59 ? 1'h0 : _signals_T_386; // @[Lookup.scala 33:37]
  wire  _signals_T_388 = _signals_T_57 ? 1'h0 : _signals_T_387; // @[Lookup.scala 33:37]
  wire  _signals_T_389 = _signals_T_55 ? 1'h0 : _signals_T_388; // @[Lookup.scala 33:37]
  wire  _signals_T_390 = _signals_T_53 ? 1'h0 : _signals_T_389; // @[Lookup.scala 33:37]
  wire  _signals_T_391 = _signals_T_51 ? 1'h0 : _signals_T_390; // @[Lookup.scala 33:37]
  wire  _signals_T_392 = _signals_T_49 ? 1'h0 : _signals_T_391; // @[Lookup.scala 33:37]
  wire  _signals_T_393 = _signals_T_47 ? 1'h0 : _signals_T_392; // @[Lookup.scala 33:37]
  wire  _signals_T_394 = _signals_T_45 ? 1'h0 : _signals_T_393; // @[Lookup.scala 33:37]
  wire  _signals_T_395 = _signals_T_43 ? 1'h0 : _signals_T_394; // @[Lookup.scala 33:37]
  wire  _signals_T_396 = _signals_T_41 ? 1'h0 : _signals_T_395; // @[Lookup.scala 33:37]
  wire  _signals_T_397 = _signals_T_39 ? 1'h0 : _signals_T_396; // @[Lookup.scala 33:37]
  wire  _signals_T_398 = _signals_T_37 ? 1'h0 : _signals_T_397; // @[Lookup.scala 33:37]
  wire  _signals_T_399 = _signals_T_35 ? 1'h0 : _signals_T_398; // @[Lookup.scala 33:37]
  wire  _signals_T_400 = _signals_T_33 ? 1'h0 : _signals_T_399; // @[Lookup.scala 33:37]
  wire  _signals_T_401 = _signals_T_31 ? 1'h0 : _signals_T_400; // @[Lookup.scala 33:37]
  wire  _signals_T_402 = _signals_T_29 ? 1'h0 : _signals_T_401; // @[Lookup.scala 33:37]
  wire  _signals_T_403 = _signals_T_27 ? 1'h0 : _signals_T_402; // @[Lookup.scala 33:37]
  wire  _signals_T_404 = _signals_T_25 ? 1'h0 : _signals_T_403; // @[Lookup.scala 33:37]
  wire  _signals_T_405 = _signals_T_23 ? 1'h0 : _signals_T_404; // @[Lookup.scala 33:37]
  wire  _signals_T_406 = _signals_T_21 ? 1'h0 : _signals_T_405; // @[Lookup.scala 33:37]
  wire  _signals_T_407 = _signals_T_15 ? 1'h0 : _signals_T_406; // @[Lookup.scala 33:37]
  wire  _signals_T_408 = _signals_T_17 ? 1'h0 : _signals_T_407; // @[Lookup.scala 33:37]
  wire  _signals_T_409 = _signals_T_15 ? 1'h0 : _signals_T_408; // @[Lookup.scala 33:37]
  wire  _signals_T_410 = _signals_T_13 ? 1'h0 : _signals_T_409; // @[Lookup.scala 33:37]
  wire  _signals_T_411 = _signals_T_11 ? 1'h0 : _signals_T_410; // @[Lookup.scala 33:37]
  wire  _signals_T_412 = _signals_T_9 ? 1'h0 : _signals_T_411; // @[Lookup.scala 33:37]
  wire  _signals_T_413 = _signals_T_7 ? 1'h0 : _signals_T_412; // @[Lookup.scala 33:37]
  wire  _signals_T_414 = _signals_T_5 ? 1'h0 : _signals_T_413; // @[Lookup.scala 33:37]
  wire  _signals_T_415 = _signals_T_3 ? 1'h0 : _signals_T_414; // @[Lookup.scala 33:37]
  wire  _signals_T_419 = _signals_T_87 ? 1'h0 : _signals_T_89 | (_signals_T_91 | _signals_T_93); // @[Lookup.scala 33:37]
  wire  _signals_T_420 = _signals_T_85 ? 1'h0 : _signals_T_419; // @[Lookup.scala 33:37]
  wire  _signals_T_421 = _signals_T_83 ? 1'h0 : _signals_T_420; // @[Lookup.scala 33:37]
  wire  _signals_T_422 = _signals_T_81 ? 1'h0 : _signals_T_421; // @[Lookup.scala 33:37]
  wire  _signals_T_423 = _signals_T_79 ? 1'h0 : _signals_T_422; // @[Lookup.scala 33:37]
  wire  _signals_T_424 = _signals_T_77 ? 1'h0 : _signals_T_423; // @[Lookup.scala 33:37]
  wire  _signals_T_425 = _signals_T_75 ? 1'h0 : _signals_T_424; // @[Lookup.scala 33:37]
  wire  _signals_T_426 = _signals_T_73 ? 1'h0 : _signals_T_425; // @[Lookup.scala 33:37]
  wire  _signals_T_427 = _signals_T_71 ? 1'h0 : _signals_T_426; // @[Lookup.scala 33:37]
  wire  _signals_T_428 = _signals_T_69 ? 1'h0 : _signals_T_427; // @[Lookup.scala 33:37]
  wire  _signals_T_429 = _signals_T_67 ? 1'h0 : _signals_T_428; // @[Lookup.scala 33:37]
  wire  _signals_T_430 = _signals_T_65 ? 1'h0 : _signals_T_429; // @[Lookup.scala 33:37]
  wire  _signals_T_431 = _signals_T_63 ? 1'h0 : _signals_T_430; // @[Lookup.scala 33:37]
  wire  _signals_T_432 = _signals_T_61 ? 1'h0 : _signals_T_431; // @[Lookup.scala 33:37]
  wire  _signals_T_433 = _signals_T_59 ? 1'h0 : _signals_T_432; // @[Lookup.scala 33:37]
  wire  _signals_T_434 = _signals_T_57 ? 1'h0 : _signals_T_433; // @[Lookup.scala 33:37]
  wire  _signals_T_435 = _signals_T_55 ? 1'h0 : _signals_T_434; // @[Lookup.scala 33:37]
  wire  _signals_T_436 = _signals_T_53 ? 1'h0 : _signals_T_435; // @[Lookup.scala 33:37]
  wire  _signals_T_437 = _signals_T_51 ? 1'h0 : _signals_T_436; // @[Lookup.scala 33:37]
  wire  _signals_T_438 = _signals_T_49 ? 1'h0 : _signals_T_437; // @[Lookup.scala 33:37]
  wire  _signals_T_439 = _signals_T_47 ? 1'h0 : _signals_T_438; // @[Lookup.scala 33:37]
  wire  _signals_T_440 = _signals_T_45 ? 1'h0 : _signals_T_439; // @[Lookup.scala 33:37]
  wire  _signals_T_441 = _signals_T_43 ? 1'h0 : _signals_T_440; // @[Lookup.scala 33:37]
  wire  _signals_T_442 = _signals_T_41 ? 1'h0 : _signals_T_441; // @[Lookup.scala 33:37]
  wire  _signals_T_443 = _signals_T_39 ? 1'h0 : _signals_T_442; // @[Lookup.scala 33:37]
  wire  _signals_T_444 = _signals_T_37 ? 1'h0 : _signals_T_443; // @[Lookup.scala 33:37]
  wire  _signals_T_445 = _signals_T_35 ? 1'h0 : _signals_T_444; // @[Lookup.scala 33:37]
  wire  _signals_T_446 = _signals_T_33 ? 1'h0 : _signals_T_445; // @[Lookup.scala 33:37]
  wire  _signals_T_447 = _signals_T_31 ? 1'h0 : _signals_T_446; // @[Lookup.scala 33:37]
  wire  _signals_T_448 = _signals_T_29 ? 1'h0 : _signals_T_447; // @[Lookup.scala 33:37]
  wire  _signals_T_449 = _signals_T_27 ? 1'h0 : _signals_T_448; // @[Lookup.scala 33:37]
  wire  _signals_T_450 = _signals_T_25 ? 1'h0 : _signals_T_449; // @[Lookup.scala 33:37]
  wire  _signals_T_451 = _signals_T_23 ? 1'h0 : _signals_T_450; // @[Lookup.scala 33:37]
  wire  _signals_T_452 = _signals_T_21 ? 1'h0 : _signals_T_451; // @[Lookup.scala 33:37]
  wire  _signals_T_453 = _signals_T_15 ? 1'h0 : _signals_T_452; // @[Lookup.scala 33:37]
  wire  _signals_T_454 = _signals_T_17 ? 1'h0 : _signals_T_453; // @[Lookup.scala 33:37]
  wire  _signals_T_455 = _signals_T_15 ? 1'h0 : _signals_T_454; // @[Lookup.scala 33:37]
  wire  _signals_T_456 = _signals_T_13 ? 1'h0 : _signals_T_455; // @[Lookup.scala 33:37]
  wire  _signals_T_457 = _signals_T_11 ? 1'h0 : _signals_T_456; // @[Lookup.scala 33:37]
  wire  _signals_T_458 = _signals_T_9 ? 1'h0 : _signals_T_457; // @[Lookup.scala 33:37]
  wire  _signals_T_459 = _signals_T_7 ? 1'h0 : _signals_T_458; // @[Lookup.scala 33:37]
  wire  _signals_T_460 = _signals_T_5 ? 1'h0 : _signals_T_459; // @[Lookup.scala 33:37]
  wire  _signals_T_461 = _signals_T_3 ? 1'h0 : _signals_T_460; // @[Lookup.scala 33:37]
  wire [19:0] _io_DecoderPort_imm_T_2 = io_DecoderPort_op[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_DecoderPort_imm_T_4 = {_io_DecoderPort_imm_T_2,io_DecoderPort_op[31:20]}; // @[Cat.scala 30:58]
  wire [31:0] _io_DecoderPort_imm_T_10 = {_io_DecoderPort_imm_T_2,io_DecoderPort_op[31:25],io_DecoderPort_op[11:7]}; // @[Cat.scala 30:58]
  wire [18:0] _io_DecoderPort_imm_T_13 = io_DecoderPort_op[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_DecoderPort_imm_T_18 = {_io_DecoderPort_imm_T_13,io_DecoderPort_op[31],io_DecoderPort_op[7],
    io_DecoderPort_op[30:25],io_DecoderPort_op[11:8],1'h0}; // @[Cat.scala 30:58]
  wire [31:0] _io_DecoderPort_imm_T_21 = {io_DecoderPort_op[31:12],12'h0}; // @[Cat.scala 30:58]
  wire [10:0] _io_DecoderPort_imm_T_24 = io_DecoderPort_op[31] ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_DecoderPort_imm_T_30 = {_io_DecoderPort_imm_T_24,io_DecoderPort_op[31],io_DecoderPort_op[19:12],
    io_DecoderPort_op[20],io_DecoderPort_op[30:25],io_DecoderPort_op[24:21],1'h0}; // @[Cat.scala 30:58]
  wire [4:0] _GEN_0 = 3'h6 == signals_0 ? io_DecoderPort_op[11:7] : 5'h0; // @[Decoder.scala 109:22 135:26 97:27]
  wire [31:0] _GEN_1 = 3'h6 == signals_0 ? _io_DecoderPort_imm_T_30 : 32'h0; // @[Decoder.scala 109:22 136:26 100:27]
  wire [4:0] _GEN_2 = 3'h5 == signals_0 ? io_DecoderPort_op[11:7] : _GEN_0; // @[Decoder.scala 109:22 131:26]
  wire [31:0] _GEN_3 = 3'h5 == signals_0 ? _io_DecoderPort_imm_T_21 : _GEN_1; // @[Decoder.scala 109:22 132:26]
  wire [4:0] _GEN_4 = 3'h4 == signals_0 ? io_DecoderPort_op[19:15] : 5'h0; // @[Decoder.scala 109:22 126:26 98:27]
  wire [4:0] _GEN_5 = 3'h4 == signals_0 ? io_DecoderPort_op[24:20] : 5'h0; // @[Decoder.scala 109:22 127:26 99:27]
  wire [31:0] _GEN_6 = 3'h4 == signals_0 ? _io_DecoderPort_imm_T_18 : _GEN_3; // @[Decoder.scala 109:22 128:26]
  wire [4:0] _GEN_7 = 3'h4 == signals_0 ? 5'h0 : _GEN_2; // @[Decoder.scala 109:22 97:27]
  wire [4:0] _GEN_8 = 3'h3 == signals_0 ? io_DecoderPort_op[19:15] : _GEN_4; // @[Decoder.scala 109:22 121:26]
  wire [4:0] _GEN_9 = 3'h3 == signals_0 ? io_DecoderPort_op[24:20] : _GEN_5; // @[Decoder.scala 109:22 122:26]
  wire [31:0] _GEN_10 = 3'h3 == signals_0 ? _io_DecoderPort_imm_T_10 : _GEN_6; // @[Decoder.scala 109:22 123:26]
  wire [4:0] _GEN_11 = 3'h3 == signals_0 ? 5'h0 : _GEN_7; // @[Decoder.scala 109:22 97:27]
  wire [4:0] _GEN_12 = 3'h2 == signals_0 ? io_DecoderPort_op[11:7] : _GEN_11; // @[Decoder.scala 109:22 116:26]
  wire [4:0] _GEN_13 = 3'h2 == signals_0 ? io_DecoderPort_op[19:15] : _GEN_8; // @[Decoder.scala 109:22 117:26]
  wire [31:0] _GEN_14 = 3'h2 == signals_0 ? _io_DecoderPort_imm_T_4 : _GEN_10; // @[Decoder.scala 109:22 118:26]
  wire [4:0] _GEN_15 = 3'h2 == signals_0 ? 5'h0 : _GEN_9; // @[Decoder.scala 109:22 99:27]
  assign io_DecoderPort_inst = _signals_T_1 ? 6'h1 : _signals_T_185; // @[Lookup.scala 33:37]
  assign io_DecoderPort_rd = 3'h1 == signals_0 ? io_DecoderPort_op[11:7] : _GEN_12; // @[Decoder.scala 109:22 111:26]
  assign io_DecoderPort_rs1 = 3'h1 == signals_0 ? io_DecoderPort_op[19:15] : _GEN_13; // @[Decoder.scala 109:22 112:26]
  assign io_DecoderPort_rs2 = 3'h1 == signals_0 ? io_DecoderPort_op[24:20] : _GEN_15; // @[Decoder.scala 109:22 113:26]
  assign io_DecoderPort_imm = 3'h1 == signals_0 ? 32'h0 : _GEN_14; // @[Decoder.scala 109:22 100:27]
  assign io_DecoderPort_toALU = _signals_T_1 | (_signals_T_3 | (_signals_T_5 | _signals_T_229)); // @[Lookup.scala 33:37]
  assign io_DecoderPort_branch = _signals_T_1 ? 1'h0 : _signals_T_277; // @[Lookup.scala 33:37]
  assign io_DecoderPort_use_imm = _signals_T_1 ? 1'h0 : _signals_T_3 | _signals_T_322; // @[Lookup.scala 33:37]
  assign io_DecoderPort_jump = _signals_T_1 ? 1'h0 : _signals_T_369; // @[Lookup.scala 33:37]
  assign io_DecoderPort_is_load = _signals_T_1 ? 1'h0 : _signals_T_415; // @[Lookup.scala 33:37]
  assign io_DecoderPort_is_store = _signals_T_1 ? 1'h0 : _signals_T_461; // @[Lookup.scala 33:37]
endmodule
module GPIO(
  input         clock,
  input         reset,
  input  [31:0] io_GPIOPort_dataIn,
  output [31:0] io_GPIOPort_valueOut,
  output [31:0] io_GPIOPort_directionOut,
  input         io_GPIOPort_writeValue,
  input         io_GPIOPort_writeDirection,
  inout  [7:0]  io_externalPort
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] InOut_dataIn; // @[GPIO.scala 25:21]
  wire [7:0] InOut_dataOut; // @[GPIO.scala 25:21]
  wire [7:0] InOut_dir; // @[GPIO.scala 25:21]
  reg [31:0] GPIO; // @[GPIO.scala 22:26]
  reg [31:0] direction; // @[GPIO.scala 23:26]
  GPIOInOut #(.WIDTH(8)) InOut ( // @[GPIO.scala 25:21]
    .dataIn(InOut_dataIn),
    .dataOut(InOut_dataOut),
    .dir(InOut_dir),
    .dataIO(io_externalPort)
  );
  assign io_GPIOPort_valueOut = {{24'd0}, InOut_dataOut}; // @[GPIO.scala 29:28]
  assign io_GPIOPort_directionOut = direction; // @[GPIO.scala 30:28]
  assign InOut_dataIn = GPIO[7:0]; // @[GPIO.scala 26:28]
  assign InOut_dir = direction[7:0]; // @[GPIO.scala 27:28]
  always @(posedge clock) begin
    if (reset) begin // @[GPIO.scala 22:26]
      GPIO <= 32'h0; // @[GPIO.scala 22:26]
    end else if (io_GPIOPort_writeValue) begin // @[GPIO.scala 33:32]
      GPIO <= io_GPIOPort_dataIn; // @[GPIO.scala 34:10]
    end
    if (reset) begin // @[GPIO.scala 23:26]
      direction <= 32'h0; // @[GPIO.scala 23:26]
    end else if (io_GPIOPort_writeDirection) begin // @[GPIO.scala 36:36]
      direction <= io_GPIOPort_dataIn; // @[GPIO.scala 37:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  GPIO = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  direction = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Timer(
  input         clock,
  input         reset,
  input  [31:0] io_timerPort_dataIn,
  output [31:0] io_timerPort_dataOut,
  input         io_timerPort_writeEnable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] counter; // @[Timer.scala 18:24]
  wire [31:0] _counter_T_1 = counter + 32'h1; // @[Timer.scala 26:26]
  assign io_timerPort_dataOut = counter; // @[Timer.scala 29:24]
  always @(posedge clock) begin
    if (reset) begin // @[Timer.scala 18:24]
      counter <= 32'h0; // @[Timer.scala 18:24]
    end else if (io_timerPort_writeEnable) begin // @[Timer.scala 20:34]
      counter <= io_timerPort_dataIn; // @[Timer.scala 21:13]
    end else begin
      counter <= _counter_T_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  counter = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module MemoryIOManager(
  input         clock,
  input         reset,
  input         io_MemoryIOPort_writeRequest,
  input         io_MemoryIOPort_readRequest,
  input  [31:0] io_MemoryIOPort_readAddr,
  output [31:0] io_MemoryIOPort_readData,
  input  [31:0] io_MemoryIOPort_writeAddr,
  input  [31:0] io_MemoryIOPort_writeData,
  input  [1:0]  io_MemoryIOPort_dataSize,
  output [31:0] io_GPIO0Port_dataIn,
  input  [31:0] io_GPIO0Port_valueOut,
  input  [31:0] io_GPIO0Port_directionOut,
  output        io_GPIO0Port_writeValue,
  output        io_GPIO0Port_writeDirection,
  output [31:0] io_Timer0Port_dataIn,
  input  [31:0] io_Timer0Port_dataOut,
  output        io_Timer0Port_writeEnable,
  output [15:0] io_DataMemPort_readAddress,
  input  [31:0] io_DataMemPort_readData,
  output [15:0] io_DataMemPort_writeAddress,
  output [31:0] io_DataMemPort_writeData,
  output        io_DataMemPort_writeEnable,
  output        io_stall
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] clockDivisor; // @[MemoryIOManager.scala 65:29]
  reg [1:0] DACK; // @[MemoryIOManager.scala 81:29]
  wire  _DACK_T = DACK > 2'h0; // @[MemoryIOManager.scala 83:10]
  wire [1:0] _DACK_T_2 = DACK - 2'h1; // @[MemoryIOManager.scala 84:10]
  wire  _DACK_T_3 = io_MemoryIOPort_readRequest | io_MemoryIOPort_writeRequest; // @[MemoryIOManager.scala 85:38]
  wire  stallEnable = io_MemoryIOPort_readAddr[31:28] == 4'h8 | io_MemoryIOPort_writeAddr[31:28] == 4'h8; // @[MemoryIOManager.scala 187:38]
  wire [3:0] stallLatency = stallEnable ? 4'h1 : 4'h0; // @[MemoryIOManager.scala 187:73 189:32]
  wire [3:0] _DACK_T_4 = io_MemoryIOPort_readRequest | io_MemoryIOPort_writeRequest ? stallLatency : 4'h0; // @[MemoryIOManager.scala 85:8]
  wire [3:0] _DACK_T_5 = _DACK_T ? {{2'd0}, _DACK_T_2} : _DACK_T_4; // @[MemoryIOManager.scala 82:14]
  wire [31:0] _GEN_0 = io_MemoryIOPort_readAddr[11:0] == 12'h0 ? 32'hbaadcafe : 32'h0; // @[MemoryIOManager.scala 92:{40,49}]
  wire [31:0] _GEN_1 = io_MemoryIOPort_readAddr[11:0] == 12'h8 ? 32'h20 : _GEN_0; // @[MemoryIOManager.scala 94:{40,49}]
  wire [31:0] _GEN_2 = io_MemoryIOPort_readAddr[11:0] == 12'h10 ? 32'h1 : _GEN_1; // @[MemoryIOManager.scala 96:{41,50}]
  wire [31:0] _GEN_3 = io_MemoryIOPort_readAddr[11:0] == 12'h18 ? 32'h1 : _GEN_2; // @[MemoryIOManager.scala 98:{41,50}]
  wire [31:0] _GEN_4 = io_MemoryIOPort_readAddr[11:0] == 12'h20 ? 32'h0 : _GEN_3; // @[MemoryIOManager.scala 100:{41,50}]
  wire [31:0] _GEN_5 = io_MemoryIOPort_readAddr[11:0] == 12'h24 ? 32'h1 : _GEN_4; // @[MemoryIOManager.scala 102:{41,50}]
  wire [31:0] _GEN_6 = io_MemoryIOPort_readAddr[31:12] == 20'h1 & io_MemoryIOPort_readRequest ? _GEN_5 : 32'h0; // @[MemoryIOManager.scala 90:76]
  wire  _T_21 = io_MemoryIOPort_readAddr[7:0] == 8'h4; // @[MemoryIOManager.scala 109:30]
  wire [31:0] _GEN_9 = io_MemoryIOPort_readAddr[7:0] == 8'h10 ? clockDivisor : 32'h0; // @[MemoryIOManager.scala 121:49 122:19 125:28]
  wire [31:0] _GEN_10 = io_MemoryIOPort_readAddr[7:0] == 8'hc ? 32'h3 : _GEN_9; // @[MemoryIOManager.scala 117:49 118:19]
  wire [31:0] _GEN_12 = io_MemoryIOPort_readAddr[7:0] == 8'h4 ? _GEN_6 : _GEN_10; // @[MemoryIOManager.scala 109:42]
  wire [31:0] _GEN_14 = io_MemoryIOPort_readRequest ? _GEN_12 : _GEN_6; // @[MemoryIOManager.scala 108:39]
  wire  _T_27 = io_MemoryIOPort_writeAddr[7:0] == 8'h0; // @[MemoryIOManager.scala 129:31]
  wire [31:0] _GEN_15 = io_MemoryIOPort_writeAddr[7:0] == 8'h10 ? {{24'd0}, io_MemoryIOPort_writeData[7:0]} :
    clockDivisor; // @[MemoryIOManager.scala 135:50 136:24 65:29]
  wire [31:0] _GEN_23 = io_MemoryIOPort_readAddr[31:12] == 20'h30000 | io_MemoryIOPort_writeAddr[31:12] == 20'h30000 ?
    _GEN_14 : _GEN_6; // @[MemoryIOManager.scala 106:85]
  wire [31:0] _GEN_27 = _T_21 ? io_GPIO0Port_valueOut : 32'h0; // @[MemoryIOManager.scala 150:49 151:19 153:28]
  wire [31:0] _GEN_28 = io_MemoryIOPort_readAddr[7:0] == 8'h0 ? io_GPIO0Port_directionOut : _GEN_27; // @[MemoryIOManager.scala 146:42 147:17]
  wire [31:0] _GEN_29 = io_MemoryIOPort_readRequest ? _GEN_28 : _GEN_23; // @[MemoryIOManager.scala 144:39]
  wire  _GEN_30 = io_MemoryIOPort_writeAddr[7:0] == 8'h4 & io_MemoryIOPort_writeRequest; // @[MemoryIOManager.scala 162:50 163:35 59:31]
  wire  _GEN_31 = _T_27 & io_MemoryIOPort_writeRequest; // @[MemoryIOManager.scala 158:43 159:37 60:31]
  wire  _GEN_32 = _T_27 ? 1'h0 : _GEN_30; // @[MemoryIOManager.scala 158:43 59:31]
  wire  _GEN_33 = io_MemoryIOPort_writeRequest & _GEN_31; // @[MemoryIOManager.scala 156:40 60:31]
  wire  _GEN_34 = io_MemoryIOPort_writeRequest & _GEN_32; // @[MemoryIOManager.scala 156:40 59:31]
  wire [31:0] _GEN_35 = io_MemoryIOPort_writeRequest ? io_MemoryIOPort_writeData : 32'h0; // @[MemoryIOManager.scala 156:40 165:27 58:31]
  wire [31:0] _GEN_36 = io_MemoryIOPort_readAddr[31:12] == 20'h30001 | io_MemoryIOPort_writeAddr[31:12] == 20'h30001 ?
    _GEN_29 : _GEN_23; // @[MemoryIOManager.scala 142:85]
  wire [31:0] _GEN_40 = io_MemoryIOPort_readAddr[31:12] == 20'h30002 | io_MemoryIOPort_writeAddr[31:12] == 20'h30002 ? 32'h0
     : _GEN_36; // @[MemoryIOManager.scala 171:85 172:13]
  wire [31:0] _GEN_42 = io_MemoryIOPort_readRequest ? io_Timer0Port_dataOut : _GEN_40; // @[MemoryIOManager.scala 181:39 182:15]
  wire [31:0] _GEN_45 = io_MemoryIOPort_readAddr[31:12] == 20'h30003 | io_MemoryIOPort_writeAddr[31:12] == 20'h30003 ?
    _GEN_42 : _GEN_40; // @[MemoryIOManager.scala 176:85]
  wire [31:0] _io_DataMemPort_readAddress_T_2 = {4'h0,io_MemoryIOPort_readAddr[27:0]}; // @[Cat.scala 30:58]
  wire  _T_58 = 2'h3 == io_MemoryIOPort_dataSize; // @[MemoryIOManager.scala 193:38]
  wire  _T_59 = 2'h2 == io_MemoryIOPort_dataSize; // @[MemoryIOManager.scala 193:38]
  wire [31:0] _GEN_46 = ~io_DataMemPort_readAddress[1] ? 32'h0 : _GEN_45; // @[MemoryIOManager.scala 196:56 198:27]
  wire [31:0] _GEN_47 = io_DataMemPort_readAddress[1] ? 32'h0 : _GEN_46; // @[MemoryIOManager.scala 196:56 197:27]
  wire  _T_63 = 2'h1 == io_MemoryIOPort_dataSize; // @[MemoryIOManager.scala 193:38]
  wire [31:0] _GEN_48 = 2'h0 == io_DataMemPort_readAddress[1:0] ? 32'h0 : _GEN_45; // @[MemoryIOManager.scala 202:50 206:27]
  wire [31:0] _GEN_49 = 2'h1 == io_DataMemPort_readAddress[1:0] ? 32'h0 : _GEN_48; // @[MemoryIOManager.scala 202:50 205:27]
  wire [31:0] _GEN_50 = 2'h2 == io_DataMemPort_readAddress[1:0] ? 32'h0 : _GEN_49; // @[MemoryIOManager.scala 202:50 204:27]
  wire [31:0] _GEN_51 = 2'h3 == io_DataMemPort_readAddress[1:0] ? 32'h0 : _GEN_50; // @[MemoryIOManager.scala 202:50 203:27]
  wire [31:0] _GEN_52 = 2'h1 == io_MemoryIOPort_dataSize ? _GEN_51 : _GEN_45; // @[MemoryIOManager.scala 193:38]
  wire [31:0] _GEN_53 = 2'h2 == io_MemoryIOPort_dataSize ? _GEN_47 : _GEN_52; // @[MemoryIOManager.scala 193:38]
  wire [31:0] _GEN_54 = 2'h3 == io_MemoryIOPort_dataSize ? 32'h0 : _GEN_53; // @[MemoryIOManager.scala 193:38 194:23]
  wire [31:0] _io_DataMemPort_writeAddress_T_2 = {4'h0,io_MemoryIOPort_writeAddr[27:0]}; // @[Cat.scala 30:58]
  wire [31:0] _dataToWrite_T_2 = {io_MemoryIOPort_writeData[15:0],16'h0}; // @[Cat.scala 30:58]
  wire [31:0] _dataToWrite_T_5 = {16'h0,io_MemoryIOPort_writeData[15:0]}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_55 = ~io_DataMemPort_writeAddress[1] ? _dataToWrite_T_5 : 32'h0; // @[MemoryIOManager.scala 225:61 231:29]
  wire [3:0] _GEN_56 = ~io_DataMemPort_writeAddress[1] ? 4'h3 : 4'h0; // @[MemoryIOManager.scala 225:61 232:29]
  wire [31:0] _GEN_57 = io_DataMemPort_writeAddress[1] ? _dataToWrite_T_2 : _GEN_55; // @[MemoryIOManager.scala 225:61 227:29]
  wire [3:0] _GEN_58 = io_DataMemPort_writeAddress[1] ? 4'hc : _GEN_56; // @[MemoryIOManager.scala 225:61 228:29]
  wire [31:0] _dataToWrite_T_8 = {io_MemoryIOPort_writeData[7:0],24'h0}; // @[Cat.scala 30:58]
  wire [31:0] _dataToWrite_T_12 = {8'h0,io_MemoryIOPort_writeData[7:0],16'h0}; // @[Cat.scala 30:58]
  wire [31:0] _dataToWrite_T_16 = {16'h0,io_MemoryIOPort_writeData[7:0],8'h0}; // @[Cat.scala 30:58]
  wire [31:0] _dataToWrite_T_19 = {24'h0,io_MemoryIOPort_writeData[7:0]}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_59 = 2'h0 == io_DataMemPort_writeAddress[1:0] ? _dataToWrite_T_19 : 32'h0; // @[MemoryIOManager.scala 237:55 251:29]
  wire [3:0] _GEN_60 = 2'h0 == io_DataMemPort_writeAddress[1:0] ? 4'h1 : 4'h0; // @[MemoryIOManager.scala 237:55 252:29]
  wire [31:0] _GEN_61 = 2'h1 == io_DataMemPort_writeAddress[1:0] ? _dataToWrite_T_16 : _GEN_59; // @[MemoryIOManager.scala 237:55 247:29]
  wire [3:0] _GEN_62 = 2'h1 == io_DataMemPort_writeAddress[1:0] ? 4'h2 : _GEN_60; // @[MemoryIOManager.scala 237:55 248:29]
  wire [31:0] _GEN_63 = 2'h2 == io_DataMemPort_writeAddress[1:0] ? _dataToWrite_T_12 : _GEN_61; // @[MemoryIOManager.scala 237:55 243:29]
  wire [3:0] _GEN_64 = 2'h2 == io_DataMemPort_writeAddress[1:0] ? 4'h4 : _GEN_62; // @[MemoryIOManager.scala 237:55 244:29]
  wire [31:0] _GEN_65 = 2'h3 == io_DataMemPort_writeAddress[1:0] ? _dataToWrite_T_8 : _GEN_63; // @[MemoryIOManager.scala 237:55 239:29]
  wire [3:0] _GEN_66 = 2'h3 == io_DataMemPort_writeAddress[1:0] ? 4'h8 : _GEN_64; // @[MemoryIOManager.scala 237:55 240:29]
  wire [31:0] _GEN_67 = _T_63 ? _GEN_65 : 32'h0; // @[MemoryIOManager.scala 219:42]
  wire [3:0] _GEN_68 = _T_63 ? _GEN_66 : 4'h0; // @[MemoryIOManager.scala 219:42]
  wire [31:0] _GEN_69 = _T_59 ? _GEN_57 : _GEN_67; // @[MemoryIOManager.scala 219:42]
  wire [3:0] _GEN_70 = _T_59 ? _GEN_58 : _GEN_68; // @[MemoryIOManager.scala 219:42]
  wire [31:0] dataToWrite = _T_58 ? io_MemoryIOPort_writeData : _GEN_69; // @[MemoryIOManager.scala 219:42 221:25]
  wire [3:0] writeMask = _T_58 ? 4'hf : _GEN_70; // @[MemoryIOManager.scala 219:42 222:25]
  wire [7:0] _dataIn_T_3 = writeMask[3] ? dataToWrite[31:24] : 8'h0; // @[MemoryIOManager.scala 259:14]
  wire [7:0] _dataIn_T_7 = writeMask[2] ? dataToWrite[23:16] : 8'h0; // @[MemoryIOManager.scala 260:14]
  wire [7:0] _dataIn_T_11 = writeMask[1] ? dataToWrite[15:8] : 8'h0; // @[MemoryIOManager.scala 261:14]
  wire [7:0] _dataIn_T_15 = writeMask[0] ? dataToWrite[7:0] : 8'h0; // @[MemoryIOManager.scala 262:14]
  wire [31:0] dataIn = {_dataIn_T_3,_dataIn_T_7,_dataIn_T_11,_dataIn_T_15}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_73 = ~io_stall ? _io_DataMemPort_writeAddress_T_2 : 32'h0; // @[MemoryIOManager.scala 212:23 216:37 74:31]
  wire  _GEN_74 = ~io_stall & io_MemoryIOPort_writeRequest; // @[MemoryIOManager.scala 212:23 217:37 71:31]
  wire [31:0] _GEN_75 = ~io_stall ? dataIn : 32'h0; // @[MemoryIOManager.scala 212:23 264:34 72:31]
  wire [31:0] _GEN_76 = ~io_stall ? dataIn : _GEN_54; // @[MemoryIOManager.scala 212:23 265:34]
  wire [31:0] _GEN_77 = io_MemoryIOPort_writeRequest ? _GEN_73 : 32'h0; // @[MemoryIOManager.scala 211:40 74:31]
  wire  _GEN_78 = io_MemoryIOPort_writeRequest & _GEN_74; // @[MemoryIOManager.scala 211:40 71:31]
  wire [31:0] _GEN_79 = io_MemoryIOPort_writeRequest ? _GEN_75 : 32'h0; // @[MemoryIOManager.scala 211:40 72:31]
  wire [31:0] _GEN_80 = io_MemoryIOPort_writeRequest ? _GEN_76 : _GEN_54; // @[MemoryIOManager.scala 211:40]
  wire [31:0] _GEN_83 = stallEnable ? _io_DataMemPort_readAddress_T_2 : 32'h0; // @[MemoryIOManager.scala 187:73 191:32 73:31]
  wire [31:0] _GEN_85 = stallEnable ? _GEN_77 : 32'h0; // @[MemoryIOManager.scala 187:73 74:31]
  wire [3:0] _GEN_7 = reset ? 4'h0 : _DACK_T_5; // @[MemoryIOManager.scala 81:{29,29} 82:8]
  assign io_MemoryIOPort_readData = stallEnable ? _GEN_80 : _GEN_45; // @[MemoryIOManager.scala 187:73]
  assign io_GPIO0Port_dataIn = io_MemoryIOPort_readAddr[31:12] == 20'h30001 | io_MemoryIOPort_writeAddr[31:12] == 20'h30001
     ? _GEN_35 : 32'h0; // @[MemoryIOManager.scala 142:85 58:31]
  assign io_GPIO0Port_writeValue = (io_MemoryIOPort_readAddr[31:12] == 20'h30001 | io_MemoryIOPort_writeAddr[31:12] == 20'h30001
    ) & _GEN_34; // @[MemoryIOManager.scala 142:85 59:31]
  assign io_GPIO0Port_writeDirection = (io_MemoryIOPort_readAddr[31:12] == 20'h30001 | io_MemoryIOPort_writeAddr[31:12]
     == 20'h30001) & _GEN_33; // @[MemoryIOManager.scala 142:85 60:31]
  assign io_Timer0Port_dataIn = io_MemoryIOPort_readAddr[31:12] == 20'h30003 | io_MemoryIOPort_writeAddr[31:12] == 20'h30003
     ? _GEN_35 : 32'h0; // @[MemoryIOManager.scala 176:85 62:29]
  assign io_Timer0Port_writeEnable = (io_MemoryIOPort_readAddr[31:12] == 20'h30003 | io_MemoryIOPort_writeAddr[31:12]
     == 20'h30003) & io_MemoryIOPort_writeRequest; // @[MemoryIOManager.scala 176:85 63:29]
  assign io_DataMemPort_readAddress = _GEN_83[15:0];
  assign io_DataMemPort_writeAddress = _GEN_85[15:0];
  assign io_DataMemPort_writeData = stallEnable ? _GEN_79 : 32'h0; // @[MemoryIOManager.scala 187:73 72:31]
  assign io_DataMemPort_writeEnable = stallEnable & _GEN_78; // @[MemoryIOManager.scala 187:73 71:31]
  assign io_stall = _DACK_T_3 & DACK != 2'h1 & stallEnable; // @[MemoryIOManager.scala 87:94]
  always @(posedge clock) begin
    if (reset) begin // @[MemoryIOManager.scala 65:29]
      clockDivisor <= 32'h0; // @[MemoryIOManager.scala 65:29]
    end else if (io_MemoryIOPort_readAddr[31:12] == 20'h30000 | io_MemoryIOPort_writeAddr[31:12] == 20'h30000) begin // @[MemoryIOManager.scala 106:85]
      if (io_MemoryIOPort_writeRequest) begin // @[MemoryIOManager.scala 128:40]
        if (!(io_MemoryIOPort_writeAddr[7:0] == 8'h0)) begin // @[MemoryIOManager.scala 129:43]
          clockDivisor <= _GEN_15;
        end
      end
    end
    DACK <= _GEN_7[1:0]; // @[MemoryIOManager.scala 81:{29,29} 82:8]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  clockDivisor = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  DACK = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RVFICPUWrapper(
  input         clock,
  input         reset,
  inout  [7:0]  io_GPIO0External,
  output [15:0] io_instructionMemPort_readAddr,
  input  [31:0] io_instructionMemPort_readData,
  output [15:0] io_dataMemPort_writeAddress,
  output [31:0] io_dataMemPort_writeData,
  output        io_dataMemPort_writeEnable,
  output        rvfi_valid,
  output [63:0] rvfi_order,
  output [31:0] rvfi_insn,
  output        rvfi_trap,
  output [4:0]  rvfi_rs1_addr,
  output [31:0] rvfi_rs1_rdata,
  output [4:0]  rvfi_rs2_addr,
  output [31:0] rvfi_rs2_rdata,
  output [4:0]  rvfi_rd_addr,
  output [31:0] rvfi_rd_wdata,
  output [31:0] rvfi_pc_rdata,
  output [31:0] rvfi_pc_wdata,
  output [31:0] rvfi_mem_addr,
  output [31:0] rvfi_mem_rdata,
  output [31:0] rvfi_mem_wdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  registerBank_clock; // @[CPUSingleCycle.scala 30:28]
  wire  registerBank_reset; // @[CPUSingleCycle.scala 30:28]
  wire [31:0] registerBank_io_regPort_rs1; // @[CPUSingleCycle.scala 30:28]
  wire [31:0] registerBank_io_regPort_rs2; // @[CPUSingleCycle.scala 30:28]
  wire [5:0] registerBank_io_regPort_rs1_addr; // @[CPUSingleCycle.scala 30:28]
  wire [5:0] registerBank_io_regPort_rs2_addr; // @[CPUSingleCycle.scala 30:28]
  wire [5:0] registerBank_io_regPort_regwr_addr; // @[CPUSingleCycle.scala 30:28]
  wire [31:0] registerBank_io_regPort_regwr_data; // @[CPUSingleCycle.scala 30:28]
  wire  registerBank_io_regPort_writeEnable; // @[CPUSingleCycle.scala 30:28]
  wire  registerBank_io_regPort_stall; // @[CPUSingleCycle.scala 30:28]
  wire  PC_clock; // @[CPUSingleCycle.scala 36:18]
  wire  PC_reset; // @[CPUSingleCycle.scala 36:18]
  wire [31:0] PC_io_pcPort_dataIn; // @[CPUSingleCycle.scala 36:18]
  wire [31:0] PC_io_pcPort_PC; // @[CPUSingleCycle.scala 36:18]
  wire [31:0] PC_io_pcPort_PC4; // @[CPUSingleCycle.scala 36:18]
  wire  PC_io_pcPort_writeEnable; // @[CPUSingleCycle.scala 36:18]
  wire  PC_io_pcPort_writeAdd; // @[CPUSingleCycle.scala 36:18]
  wire [5:0] ALU_io_ALUPort_inst; // @[CPUSingleCycle.scala 42:19]
  wire [31:0] ALU_io_ALUPort_a; // @[CPUSingleCycle.scala 42:19]
  wire [31:0] ALU_io_ALUPort_b; // @[CPUSingleCycle.scala 42:19]
  wire [31:0] ALU_io_ALUPort_x; // @[CPUSingleCycle.scala 42:19]
  wire [31:0] decoder_io_DecoderPort_op; // @[CPUSingleCycle.scala 48:23]
  wire [5:0] decoder_io_DecoderPort_inst; // @[CPUSingleCycle.scala 48:23]
  wire [4:0] decoder_io_DecoderPort_rd; // @[CPUSingleCycle.scala 48:23]
  wire [4:0] decoder_io_DecoderPort_rs1; // @[CPUSingleCycle.scala 48:23]
  wire [4:0] decoder_io_DecoderPort_rs2; // @[CPUSingleCycle.scala 48:23]
  wire [31:0] decoder_io_DecoderPort_imm; // @[CPUSingleCycle.scala 48:23]
  wire  decoder_io_DecoderPort_toALU; // @[CPUSingleCycle.scala 48:23]
  wire  decoder_io_DecoderPort_branch; // @[CPUSingleCycle.scala 48:23]
  wire  decoder_io_DecoderPort_use_imm; // @[CPUSingleCycle.scala 48:23]
  wire  decoder_io_DecoderPort_jump; // @[CPUSingleCycle.scala 48:23]
  wire  decoder_io_DecoderPort_is_load; // @[CPUSingleCycle.scala 48:23]
  wire  decoder_io_DecoderPort_is_store; // @[CPUSingleCycle.scala 48:23]
  wire  GPIO0_clock; // @[CPUSingleCycle.scala 52:21]
  wire  GPIO0_reset; // @[CPUSingleCycle.scala 52:21]
  wire [31:0] GPIO0_io_GPIOPort_dataIn; // @[CPUSingleCycle.scala 52:21]
  wire [31:0] GPIO0_io_GPIOPort_valueOut; // @[CPUSingleCycle.scala 52:21]
  wire [31:0] GPIO0_io_GPIOPort_directionOut; // @[CPUSingleCycle.scala 52:21]
  wire  GPIO0_io_GPIOPort_writeValue; // @[CPUSingleCycle.scala 52:21]
  wire  GPIO0_io_GPIOPort_writeDirection; // @[CPUSingleCycle.scala 52:21]
  wire  timer0_clock; // @[CPUSingleCycle.scala 56:22]
  wire  timer0_reset; // @[CPUSingleCycle.scala 56:22]
  wire [31:0] timer0_io_timerPort_dataIn; // @[CPUSingleCycle.scala 56:22]
  wire [31:0] timer0_io_timerPort_dataOut; // @[CPUSingleCycle.scala 56:22]
  wire  timer0_io_timerPort_writeEnable; // @[CPUSingleCycle.scala 56:22]
  wire  memoryIOManager_clock; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_reset; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_MemoryIOPort_writeRequest; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_MemoryIOPort_readRequest; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_MemoryIOPort_readAddr; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_MemoryIOPort_readData; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_MemoryIOPort_writeAddr; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_MemoryIOPort_writeData; // @[CPUSingleCycle.scala 59:31]
  wire [1:0] memoryIOManager_io_MemoryIOPort_dataSize; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_GPIO0Port_dataIn; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_GPIO0Port_valueOut; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_GPIO0Port_directionOut; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_GPIO0Port_writeValue; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_GPIO0Port_writeDirection; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_Timer0Port_dataIn; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_Timer0Port_dataOut; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_Timer0Port_writeEnable; // @[CPUSingleCycle.scala 59:31]
  wire [15:0] memoryIOManager_io_DataMemPort_readAddress; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_DataMemPort_readData; // @[CPUSingleCycle.scala 59:31]
  wire [15:0] memoryIOManager_io_DataMemPort_writeAddress; // @[CPUSingleCycle.scala 59:31]
  wire [31:0] memoryIOManager_io_DataMemPort_writeData; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_DataMemPort_writeEnable; // @[CPUSingleCycle.scala 59:31]
  wire  memoryIOManager_io_stall; // @[CPUSingleCycle.scala 59:31]
  wire  stall = memoryIOManager_io_stall;
  wire  _T = ~stall; // @[CPUSingleCycle.scala 78:8]
  wire [31:0] _GEN_1 = ~stall ? PC_io_pcPort_PC4 : 32'h0; // @[CPUSingleCycle.scala 78:16 38:28 81:30]
  wire  trap = decoder_io_DecoderPort_inst == 6'h0; // @[CPUSingleCycle.scala 97:36]
  wire  _GEN_3 = trap | _T; // @[CPUSingleCycle.scala 101:30 97:50]
  wire [31:0] _GEN_4 = trap ? PC_io_pcPort_PC : _GEN_1; // @[CPUSingleCycle.scala 102:30 97:50]
  wire [31:0] _ALU_io_ALUPort_b_T_1 = decoder_io_DecoderPort_use_imm ? decoder_io_DecoderPort_imm :
    registerBank_io_regPort_rs2; // @[CPUSingleCycle.scala 109:28]
  wire [5:0] _GEN_5 = decoder_io_DecoderPort_toALU ? decoder_io_DecoderPort_inst : 6'h0; // @[CPUSingleCycle.scala 106:38 107:25 43:23]
  wire [31:0] _GEN_6 = decoder_io_DecoderPort_toALU ? registerBank_io_regPort_rs1 : 32'h0; // @[CPUSingleCycle.scala 106:38 108:25 44:23]
  wire [31:0] _GEN_7 = decoder_io_DecoderPort_toALU ? _ALU_io_ALUPort_b_T_1 : 32'h0; // @[CPUSingleCycle.scala 106:38 109:22 45:23]
  wire  _GEN_8 = decoder_io_DecoderPort_toALU; // @[CPUSingleCycle.scala 106:38 115:41 31:39]
  wire [31:0] _GEN_9 = decoder_io_DecoderPort_toALU ? $signed(ALU_io_ALUPort_x) : $signed(32'sh0); // @[CPUSingleCycle.scala 106:38 116:41 32:39]
  wire [5:0] _T_5 = decoder_io_DecoderPort_inst; // @[CPUSingleCycle.scala 123:41]
  wire [5:0] _GEN_10 = 6'h1b == _T_5 ? 6'h33 : _GEN_5; // @[CPUSingleCycle.scala 123:41 129:36]
  wire [5:0] _GEN_11 = 6'h1a == _T_5 ? 6'h14 : _GEN_10; // @[CPUSingleCycle.scala 123:41 128:36]
  wire [5:0] _GEN_12 = 6'h19 == _T_5 ? 6'h32 : _GEN_11; // @[CPUSingleCycle.scala 123:41 127:36]
  wire [5:0] _GEN_13 = 6'h18 == _T_5 ? 6'h12 : _GEN_12; // @[CPUSingleCycle.scala 123:41 126:36]
  wire [5:0] _GEN_14 = 6'h17 == _T_5 ? 6'h31 : _GEN_13; // @[CPUSingleCycle.scala 123:41 125:36]
  wire [5:0] _GEN_15 = 6'h16 == _T_5 ? 6'h30 : _GEN_14; // @[CPUSingleCycle.scala 123:41 124:36]
  wire  _T_22 = ALU_io_ALUPort_x == 32'h1; // @[CPUSingleCycle.scala 131:27]
  wire  _GEN_16 = ALU_io_ALUPort_x == 32'h1 | _GEN_3; // @[CPUSingleCycle.scala 131:36 132:32]
  wire [31:0] _GEN_18 = ALU_io_ALUPort_x == 32'h1 ? decoder_io_DecoderPort_imm : _GEN_4; // @[CPUSingleCycle.scala 131:36 134:32]
  wire [31:0] _GEN_19 = decoder_io_DecoderPort_branch ? registerBank_io_regPort_rs1 : _GEN_6; // @[CPUSingleCycle.scala 120:39 121:22]
  wire [31:0] _GEN_20 = decoder_io_DecoderPort_branch ? registerBank_io_regPort_rs2 : _GEN_7; // @[CPUSingleCycle.scala 120:39 122:22]
  wire [5:0] _GEN_21 = decoder_io_DecoderPort_branch ? _GEN_15 : _GEN_5; // @[CPUSingleCycle.scala 120:39]
  wire  _GEN_22 = decoder_io_DecoderPort_branch ? _GEN_16 : _GEN_3; // @[CPUSingleCycle.scala 120:39]
  wire  _GEN_23 = decoder_io_DecoderPort_branch & _T_22; // @[CPUSingleCycle.scala 120:39 39:28]
  wire [31:0] _GEN_24 = decoder_io_DecoderPort_branch ? _GEN_18 : _GEN_4; // @[CPUSingleCycle.scala 120:39]
  wire  _GEN_25 = decoder_io_DecoderPort_inst == 6'h1c | _GEN_23; // @[CPUSingleCycle.scala 149:47 151:29]
  wire [31:0] _GEN_26 = decoder_io_DecoderPort_inst == 6'h1c ? decoder_io_DecoderPort_imm : _GEN_24; // @[CPUSingleCycle.scala 149:47 152:29]
  wire [31:0] _PC_io_pcPort_dataIn_T_4 = $signed(registerBank_io_regPort_rs1) + $signed(decoder_io_DecoderPort_imm); // @[CPUSingleCycle.scala 157:81]
  wire [31:0] _PC_io_pcPort_dataIn_T_6 = {_PC_io_pcPort_dataIn_T_4[31:1],1'h0}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_27 = decoder_io_DecoderPort_inst == 6'h1d ? _PC_io_pcPort_dataIn_T_6 : _GEN_26; // @[CPUSingleCycle.scala 154:48 156:27]
  wire  _GEN_28 = decoder_io_DecoderPort_jump | _GEN_8; // @[CPUSingleCycle.scala 139:37 141:41]
  wire [5:0] _GEN_29 = decoder_io_DecoderPort_jump ? 6'h1 : _GEN_21; // @[CPUSingleCycle.scala 139:37 143:40]
  wire [31:0] _GEN_30 = decoder_io_DecoderPort_jump ? PC_io_pcPort_PC : _GEN_19; // @[CPUSingleCycle.scala 139:37 144:40]
  wire [31:0] _GEN_31 = decoder_io_DecoderPort_jump ? 32'h4 : _GEN_20; // @[CPUSingleCycle.scala 139:37 145:40]
  wire [31:0] _GEN_32 = decoder_io_DecoderPort_jump ? $signed(ALU_io_ALUPort_x) : $signed(_GEN_9); // @[CPUSingleCycle.scala 139:37 146:40]
  wire [31:0] _registerBank_io_regPort_regwr_data_T_4 = {decoder_io_DecoderPort_imm[31:12],12'h0}; // @[Cat.scala 30:58]
  wire [31:0] _registerBank_io_regPort_regwr_data_T_5 = {decoder_io_DecoderPort_imm[31:12],12'h0}; // @[CPUSingleCycle.scala 166:99]
  wire  _GEN_36 = decoder_io_DecoderPort_inst == 6'h4 | _GEN_28; // @[CPUSingleCycle.scala 164:45 165:41]
  wire [31:0] _GEN_37 = decoder_io_DecoderPort_inst == 6'h4 ? $signed(_registerBank_io_regPort_regwr_data_T_5) :
    $signed(_GEN_32); // @[CPUSingleCycle.scala 164:45 166:41]
  wire  _GEN_38 = decoder_io_DecoderPort_inst == 6'h5 | _GEN_36; // @[CPUSingleCycle.scala 170:47 171:41]
  wire [5:0] _GEN_39 = decoder_io_DecoderPort_inst == 6'h5 ? 6'h1 : _GEN_29; // @[CPUSingleCycle.scala 170:47 172:41]
  wire [31:0] _GEN_40 = decoder_io_DecoderPort_inst == 6'h5 ? PC_io_pcPort_PC : _GEN_30; // @[CPUSingleCycle.scala 170:47 173:41]
  wire [31:0] _GEN_41 = decoder_io_DecoderPort_inst == 6'h5 ? _registerBank_io_regPort_regwr_data_T_4 : _GEN_31; // @[CPUSingleCycle.scala 170:47 174:22]
  wire [31:0] _GEN_42 = decoder_io_DecoderPort_inst == 6'h5 ? $signed(ALU_io_ALUPort_x) : $signed(_GEN_37); // @[CPUSingleCycle.scala 170:47 178:40]
  wire [1:0] _GEN_47 = decoder_io_DecoderPort_inst == 6'h2c ? 2'h3 : 2'h0; // @[CPUSingleCycle.scala 197:46 198:16]
  wire [31:0] _GEN_48 = decoder_io_DecoderPort_inst == 6'h2c ? $signed(memoryIOManager_io_MemoryIOPort_readData) :
    $signed(32'sh0); // @[CPUSingleCycle.scala 197:46 199:16]
  wire [15:0] _dataOut_T_3 = memoryIOManager_io_MemoryIOPort_readData[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _dataOut_T_6 = {_dataOut_T_3,memoryIOManager_io_MemoryIOPort_readData[15:0]}; // @[CPUSingleCycle.scala 207:9]
  wire [1:0] _GEN_49 = decoder_io_DecoderPort_inst == 6'h29 ? 2'h2 : _GEN_47; // @[CPUSingleCycle.scala 202:46 203:16]
  wire [31:0] _GEN_50 = decoder_io_DecoderPort_inst == 6'h29 ? $signed(_dataOut_T_6) : $signed(_GEN_48); // @[CPUSingleCycle.scala 202:46 204:15]
  wire [31:0] _dataOut_T_10 = {16'h0,memoryIOManager_io_MemoryIOPort_readData[15:0]}; // @[CPUSingleCycle.scala 212:87]
  wire [1:0] _GEN_51 = decoder_io_DecoderPort_inst == 6'h2b ? 2'h2 : _GEN_49; // @[CPUSingleCycle.scala 210:47 211:16]
  wire [31:0] _GEN_52 = decoder_io_DecoderPort_inst == 6'h2b ? $signed(_dataOut_T_10) : $signed(_GEN_50); // @[CPUSingleCycle.scala 210:47 212:16]
  wire [23:0] _dataOut_T_13 = memoryIOManager_io_MemoryIOPort_readData[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _dataOut_T_16 = {_dataOut_T_13,memoryIOManager_io_MemoryIOPort_readData[7:0]}; // @[CPUSingleCycle.scala 220:9]
  wire [1:0] _GEN_53 = decoder_io_DecoderPort_inst == 6'h28 ? 2'h1 : _GEN_51; // @[CPUSingleCycle.scala 215:46 216:16]
  wire [31:0] _GEN_54 = decoder_io_DecoderPort_inst == 6'h28 ? $signed(_dataOut_T_16) : $signed(_GEN_52); // @[CPUSingleCycle.scala 215:46 217:15]
  wire [31:0] _dataOut_T_20 = {24'h0,memoryIOManager_io_MemoryIOPort_readData[7:0]}; // @[CPUSingleCycle.scala 225:86]
  wire [1:0] dataSize = decoder_io_DecoderPort_inst == 6'h2a ? 2'h1 : _GEN_53; // @[CPUSingleCycle.scala 223:47 224:16]
  wire [31:0] dataOut = decoder_io_DecoderPort_inst == 6'h2a ? $signed(_dataOut_T_20) : $signed(_GEN_54); // @[CPUSingleCycle.scala 223:47 225:16]
  wire [1:0] _GEN_58 = decoder_io_DecoderPort_is_load ? dataSize : 2'h0; // @[CPUSingleCycle.scala 192:40 228:49 65:48]
  wire [31:0] _GEN_61 = decoder_io_DecoderPort_inst == 6'h2f ? registerBank_io_regPort_rs2 : 32'h0; // @[CPUSingleCycle.scala 242:46 243:16]
  wire [1:0] _GEN_62 = decoder_io_DecoderPort_inst == 6'h2f ? 2'h3 : 2'h0; // @[CPUSingleCycle.scala 242:46 244:16]
  wire [31:0] _dataOut_T_24 = {16'h0,registerBank_io_regPort_rs2[15:0]}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_63 = decoder_io_DecoderPort_inst == 6'h2e ? _dataOut_T_24 : _GEN_61; // @[CPUSingleCycle.scala 247:46 248:16]
  wire [1:0] _GEN_64 = decoder_io_DecoderPort_inst == 6'h2e ? 2'h2 : _GEN_62; // @[CPUSingleCycle.scala 247:46 249:16]
  wire [31:0] _dataOut_T_27 = {24'h0,registerBank_io_regPort_rs2[7:0]}; // @[Cat.scala 30:58]
  wire [31:0] dataOut_1 = decoder_io_DecoderPort_inst == 6'h2d ? _dataOut_T_27 : _GEN_63; // @[CPUSingleCycle.scala 252:46 253:16]
  wire [1:0] dataSize_1 = decoder_io_DecoderPort_inst == 6'h2d ? 2'h1 : _GEN_64; // @[CPUSingleCycle.scala 252:46 254:16]
  reg  rvfi_valid_; // @[RVFI_Wrapper.scala 48:27]
  reg [63:0] rvfi_order_; // @[RVFI_Wrapper.scala 49:27]
  wire [63:0] _rvfi_order_T_1 = rvfi_order_ + 64'h1; // @[RVFI_Wrapper.scala 67:30]
  RegisterBank registerBank ( // @[CPUSingleCycle.scala 30:28]
    .clock(registerBank_clock),
    .reset(registerBank_reset),
    .io_regPort_rs1(registerBank_io_regPort_rs1),
    .io_regPort_rs2(registerBank_io_regPort_rs2),
    .io_regPort_rs1_addr(registerBank_io_regPort_rs1_addr),
    .io_regPort_rs2_addr(registerBank_io_regPort_rs2_addr),
    .io_regPort_regwr_addr(registerBank_io_regPort_regwr_addr),
    .io_regPort_regwr_data(registerBank_io_regPort_regwr_data),
    .io_regPort_writeEnable(registerBank_io_regPort_writeEnable),
    .io_regPort_stall(registerBank_io_regPort_stall)
  );
  ProgramCounter PC ( // @[CPUSingleCycle.scala 36:18]
    .clock(PC_clock),
    .reset(PC_reset),
    .io_pcPort_dataIn(PC_io_pcPort_dataIn),
    .io_pcPort_PC(PC_io_pcPort_PC),
    .io_pcPort_PC4(PC_io_pcPort_PC4),
    .io_pcPort_writeEnable(PC_io_pcPort_writeEnable),
    .io_pcPort_writeAdd(PC_io_pcPort_writeAdd)
  );
  ALU ALU ( // @[CPUSingleCycle.scala 42:19]
    .io_ALUPort_inst(ALU_io_ALUPort_inst),
    .io_ALUPort_a(ALU_io_ALUPort_a),
    .io_ALUPort_b(ALU_io_ALUPort_b),
    .io_ALUPort_x(ALU_io_ALUPort_x)
  );
  Decoder decoder ( // @[CPUSingleCycle.scala 48:23]
    .io_DecoderPort_op(decoder_io_DecoderPort_op),
    .io_DecoderPort_inst(decoder_io_DecoderPort_inst),
    .io_DecoderPort_rd(decoder_io_DecoderPort_rd),
    .io_DecoderPort_rs1(decoder_io_DecoderPort_rs1),
    .io_DecoderPort_rs2(decoder_io_DecoderPort_rs2),
    .io_DecoderPort_imm(decoder_io_DecoderPort_imm),
    .io_DecoderPort_toALU(decoder_io_DecoderPort_toALU),
    .io_DecoderPort_branch(decoder_io_DecoderPort_branch),
    .io_DecoderPort_use_imm(decoder_io_DecoderPort_use_imm),
    .io_DecoderPort_jump(decoder_io_DecoderPort_jump),
    .io_DecoderPort_is_load(decoder_io_DecoderPort_is_load),
    .io_DecoderPort_is_store(decoder_io_DecoderPort_is_store)
  );
  GPIO GPIO0 ( // @[CPUSingleCycle.scala 52:21]
    .clock(GPIO0_clock),
    .reset(GPIO0_reset),
    .io_GPIOPort_dataIn(GPIO0_io_GPIOPort_dataIn),
    .io_GPIOPort_valueOut(GPIO0_io_GPIOPort_valueOut),
    .io_GPIOPort_directionOut(GPIO0_io_GPIOPort_directionOut),
    .io_GPIOPort_writeValue(GPIO0_io_GPIOPort_writeValue),
    .io_GPIOPort_writeDirection(GPIO0_io_GPIOPort_writeDirection),
    .io_externalPort(io_GPIO0External)
  );
  Timer timer0 ( // @[CPUSingleCycle.scala 56:22]
    .clock(timer0_clock),
    .reset(timer0_reset),
    .io_timerPort_dataIn(timer0_io_timerPort_dataIn),
    .io_timerPort_dataOut(timer0_io_timerPort_dataOut),
    .io_timerPort_writeEnable(timer0_io_timerPort_writeEnable)
  );
  MemoryIOManager memoryIOManager ( // @[CPUSingleCycle.scala 59:31]
    .clock(memoryIOManager_clock),
    .reset(memoryIOManager_reset),
    .io_MemoryIOPort_writeRequest(memoryIOManager_io_MemoryIOPort_writeRequest),
    .io_MemoryIOPort_readRequest(memoryIOManager_io_MemoryIOPort_readRequest),
    .io_MemoryIOPort_readAddr(memoryIOManager_io_MemoryIOPort_readAddr),
    .io_MemoryIOPort_readData(memoryIOManager_io_MemoryIOPort_readData),
    .io_MemoryIOPort_writeAddr(memoryIOManager_io_MemoryIOPort_writeAddr),
    .io_MemoryIOPort_writeData(memoryIOManager_io_MemoryIOPort_writeData),
    .io_MemoryIOPort_dataSize(memoryIOManager_io_MemoryIOPort_dataSize),
    .io_GPIO0Port_dataIn(memoryIOManager_io_GPIO0Port_dataIn),
    .io_GPIO0Port_valueOut(memoryIOManager_io_GPIO0Port_valueOut),
    .io_GPIO0Port_directionOut(memoryIOManager_io_GPIO0Port_directionOut),
    .io_GPIO0Port_writeValue(memoryIOManager_io_GPIO0Port_writeValue),
    .io_GPIO0Port_writeDirection(memoryIOManager_io_GPIO0Port_writeDirection),
    .io_Timer0Port_dataIn(memoryIOManager_io_Timer0Port_dataIn),
    .io_Timer0Port_dataOut(memoryIOManager_io_Timer0Port_dataOut),
    .io_Timer0Port_writeEnable(memoryIOManager_io_Timer0Port_writeEnable),
    .io_DataMemPort_readAddress(memoryIOManager_io_DataMemPort_readAddress),
    .io_DataMemPort_readData(memoryIOManager_io_DataMemPort_readData),
    .io_DataMemPort_writeAddress(memoryIOManager_io_DataMemPort_writeAddress),
    .io_DataMemPort_writeData(memoryIOManager_io_DataMemPort_writeData),
    .io_DataMemPort_writeEnable(memoryIOManager_io_DataMemPort_writeEnable),
    .io_stall(memoryIOManager_io_stall)
  );
  assign io_instructionMemPort_readAddr = PC_io_pcPort_PC[15:0]; // @[CPUSingleCycle.scala 85:34]
  assign io_dataMemPort_writeAddress = memoryIOManager_io_DataMemPort_writeAddress; // @[CPUSingleCycle.scala 71:34]
  assign io_dataMemPort_writeData = memoryIOManager_io_DataMemPort_writeData; // @[CPUSingleCycle.scala 71:34]
  assign io_dataMemPort_writeEnable = memoryIOManager_io_DataMemPort_writeEnable; // @[CPUSingleCycle.scala 71:34]
  assign rvfi_valid = rvfi_valid_; // @[RVFI_Wrapper.scala 69:14]
  assign rvfi_order = rvfi_order_; // @[RVFI_Wrapper.scala 70:14]
  assign rvfi_insn = decoder_io_DecoderPort_op; // @[RVFI_Wrapper.scala 71:14]
  assign rvfi_trap = decoder_io_DecoderPort_inst == 6'h0; // @[CPUSingleCycle.scala 97:36]
  assign rvfi_rs1_addr = registerBank_io_regPort_rs1_addr[4:0]; // @[RVFI_Wrapper.scala 73:18]
  assign rvfi_rs1_rdata = registerBank_io_regPort_rs1; // @[RVFI_Wrapper.scala 74:18]
  assign rvfi_rs2_addr = registerBank_io_regPort_rs2_addr[4:0]; // @[RVFI_Wrapper.scala 75:18]
  assign rvfi_rs2_rdata = registerBank_io_regPort_rs2; // @[RVFI_Wrapper.scala 76:18]
  assign rvfi_rd_addr = registerBank_io_regPort_regwr_addr[4:0]; // @[RVFI_Wrapper.scala 77:18]
  assign rvfi_rd_wdata = registerBank_io_regPort_regwr_data; // @[RVFI_Wrapper.scala 78:18]
  assign rvfi_pc_rdata = PC_io_pcPort_PC; // @[RVFI_Wrapper.scala 80:17]
  assign rvfi_pc_wdata = PC_io_pcPort_writeAdd ? PC_io_pcPort_dataIn : PC_io_pcPort_PC4; // @[RVFI_Wrapper.scala 81:23]
  assign rvfi_mem_addr = ALU_io_ALUPort_x; // @[RVFI_Wrapper.scala 83:18]
  assign rvfi_mem_rdata = decoder_io_DecoderPort_is_load ? memoryIOManager_io_DataMemPort_readData : 32'h0; // @[RVFI_Wrapper.scala 84:24]
  assign rvfi_mem_wdata = decoder_io_DecoderPort_is_store ? memoryIOManager_io_DataMemPort_writeData : 32'h0; // @[RVFI_Wrapper.scala 87:24]
  assign registerBank_clock = clock;
  assign registerBank_reset = reset;
  assign registerBank_io_regPort_rs1_addr = {{1'd0}, decoder_io_DecoderPort_rs1}; // @[CPUSingleCycle.scala 92:38]
  assign registerBank_io_regPort_rs2_addr = {{1'd0}, decoder_io_DecoderPort_rs2}; // @[CPUSingleCycle.scala 93:38]
  assign registerBank_io_regPort_regwr_addr = {{1'd0}, decoder_io_DecoderPort_rd}; // @[CPUSingleCycle.scala 91:38]
  assign registerBank_io_regPort_regwr_data = decoder_io_DecoderPort_is_load ? $signed(dataOut) : $signed(_GEN_42); // @[CPUSingleCycle.scala 192:40 230:49]
  assign registerBank_io_regPort_writeEnable = decoder_io_DecoderPort_is_load | _GEN_38; // @[CPUSingleCycle.scala 192:40 229:49]
  assign registerBank_io_regPort_stall = memoryIOManager_io_stall; // @[CPUSingleCycle.scala 33:39]
  assign PC_clock = clock;
  assign PC_reset = reset;
  assign PC_io_pcPort_dataIn = decoder_io_DecoderPort_jump ? _GEN_27 : _GEN_24; // @[CPUSingleCycle.scala 139:37]
  assign PC_io_pcPort_writeEnable = decoder_io_DecoderPort_jump | _GEN_22; // @[CPUSingleCycle.scala 139:37 148:30]
  assign PC_io_pcPort_writeAdd = decoder_io_DecoderPort_jump ? _GEN_25 : _GEN_23; // @[CPUSingleCycle.scala 139:37]
  assign ALU_io_ALUPort_inst = decoder_io_DecoderPort_is_load | decoder_io_DecoderPort_is_store ? 6'h1 : _GEN_39; // @[CPUSingleCycle.scala 182:75 184:25]
  assign ALU_io_ALUPort_a = decoder_io_DecoderPort_is_load | decoder_io_DecoderPort_is_store ?
    registerBank_io_regPort_rs1 : _GEN_40; // @[CPUSingleCycle.scala 182:75 185:25]
  assign ALU_io_ALUPort_b = decoder_io_DecoderPort_is_load | decoder_io_DecoderPort_is_store ?
    decoder_io_DecoderPort_imm : _GEN_41; // @[CPUSingleCycle.scala 182:75 186:25]
  assign decoder_io_DecoderPort_op = io_instructionMemPort_readData; // @[CPUSingleCycle.scala 88:29]
  assign GPIO0_clock = clock;
  assign GPIO0_reset = reset;
  assign GPIO0_io_GPIOPort_dataIn = memoryIOManager_io_GPIO0Port_dataIn; // @[CPUSingleCycle.scala 69:32]
  assign GPIO0_io_GPIOPort_writeValue = memoryIOManager_io_GPIO0Port_writeValue; // @[CPUSingleCycle.scala 69:32]
  assign GPIO0_io_GPIOPort_writeDirection = memoryIOManager_io_GPIO0Port_writeDirection; // @[CPUSingleCycle.scala 69:32]
  assign timer0_clock = clock;
  assign timer0_reset = reset;
  assign timer0_io_timerPort_dataIn = memoryIOManager_io_Timer0Port_dataIn; // @[CPUSingleCycle.scala 70:33]
  assign timer0_io_timerPort_writeEnable = memoryIOManager_io_Timer0Port_writeEnable; // @[CPUSingleCycle.scala 70:33]
  assign memoryIOManager_clock = clock;
  assign memoryIOManager_reset = reset;
  assign memoryIOManager_io_MemoryIOPort_writeRequest = decoder_io_DecoderPort_is_store; // @[CPUSingleCycle.scala 233:41 235:50 61:48]
  assign memoryIOManager_io_MemoryIOPort_readRequest = decoder_io_DecoderPort_is_load; // @[CPUSingleCycle.scala 192:40 227:49 60:48]
  assign memoryIOManager_io_MemoryIOPort_readAddr = decoder_io_DecoderPort_is_load | decoder_io_DecoderPort_is_store ?
    ALU_io_ALUPort_x : 32'h0; // @[CPUSingleCycle.scala 182:75 188:47 63:48]
  assign memoryIOManager_io_MemoryIOPort_writeAddr = decoder_io_DecoderPort_is_load | decoder_io_DecoderPort_is_store ?
    ALU_io_ALUPort_x : 32'h0; // @[CPUSingleCycle.scala 182:75 188:47 63:48]
  assign memoryIOManager_io_MemoryIOPort_writeData = decoder_io_DecoderPort_is_store ? dataOut_1 : 32'h0; // @[CPUSingleCycle.scala 233:41 257:47 64:48]
  assign memoryIOManager_io_MemoryIOPort_dataSize = decoder_io_DecoderPort_is_store ? dataSize_1 : _GEN_58; // @[CPUSingleCycle.scala 233:41 256:47]
  assign memoryIOManager_io_GPIO0Port_valueOut = GPIO0_io_GPIOPort_valueOut; // @[CPUSingleCycle.scala 69:32]
  assign memoryIOManager_io_GPIO0Port_directionOut = GPIO0_io_GPIOPort_directionOut; // @[CPUSingleCycle.scala 69:32]
  assign memoryIOManager_io_Timer0Port_dataOut = timer0_io_timerPort_dataOut; // @[CPUSingleCycle.scala 70:33]
  assign memoryIOManager_io_DataMemPort_readData = 32'h0; // @[CPUSingleCycle.scala 71:34]
  always @(posedge clock) begin
    if (reset) begin // @[RVFI_Wrapper.scala 48:27]
      rvfi_valid_ <= 1'h0; // @[RVFI_Wrapper.scala 48:27]
    end else begin
      rvfi_valid_ <= _T; // @[RVFI_Wrapper.scala 65:14]
    end
    if (reset) begin // @[RVFI_Wrapper.scala 49:27]
      rvfi_order_ <= 64'h0; // @[RVFI_Wrapper.scala 49:27]
    end else if (rvfi_valid_) begin // @[RVFI_Wrapper.scala 66:20]
      rvfi_order_ <= _rvfi_order_T_1; // @[RVFI_Wrapper.scala 67:16]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (trap & ~reset) begin
          $fwrite(32'h80000002,"ILLEGAL (%x) at address %x\n",io_instructionMemPort_readData,PC_io_pcPort_PC); // @[CPUSingleCycle.scala 98:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rvfi_valid_ = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  rvfi_order_ = _RAND_1[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RVFI(
  input         clock,
  input         reset,
  output [31:0] io_imem_addr,
  input  [31:0] io_imem_rdata,
  output [31:0] io_dmem_addr,
  output [31:0] io_dmem_wdata,
  output        io_dmem_wen,
  output        rvfi_valid,
  output [63:0] rvfi_order,
  output [31:0] rvfi_insn,
  output        rvfi_trap,
  output        rvfi_halt,
  output        rvfi_intr,
  output [1:0]  rvfi_ixl,
  output [1:0]  rvfi_mode,
  output [4:0]  rvfi_rs1_addr,
  output [31:0] rvfi_rs1_rdata,
  output [4:0]  rvfi_rs2_addr,
  output [31:0] rvfi_rs2_rdata,
  output [4:0]  rvfi_rd_addr,
  output [31:0] rvfi_rd_wdata,
  output [31:0] rvfi_pc_rdata,
  output [31:0] rvfi_pc_wdata,
  output [31:0] rvfi_mem_addr,
  output [3:0]  rvfi_mem_rmask,
  output [3:0]  rvfi_mem_wmask,
  output [31:0] rvfi_mem_rdata,
  output [31:0] rvfi_mem_wdata
);
  wire  CPU_clock; // @[RVFI_Wrapper.scala 109:19]
  wire  CPU_reset; // @[RVFI_Wrapper.scala 109:19]
  wire [7:0] CPU_io_GPIO0External; // @[RVFI_Wrapper.scala 109:19]
  wire [15:0] CPU_io_instructionMemPort_readAddr; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_io_instructionMemPort_readData; // @[RVFI_Wrapper.scala 109:19]
  wire [15:0] CPU_io_dataMemPort_writeAddress; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_io_dataMemPort_writeData; // @[RVFI_Wrapper.scala 109:19]
  wire  CPU_io_dataMemPort_writeEnable; // @[RVFI_Wrapper.scala 109:19]
  wire  CPU_rvfi_valid; // @[RVFI_Wrapper.scala 109:19]
  wire [63:0] CPU_rvfi_order; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_insn; // @[RVFI_Wrapper.scala 109:19]
  wire  CPU_rvfi_trap; // @[RVFI_Wrapper.scala 109:19]
  wire [4:0] CPU_rvfi_rs1_addr; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_rs1_rdata; // @[RVFI_Wrapper.scala 109:19]
  wire [4:0] CPU_rvfi_rs2_addr; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_rs2_rdata; // @[RVFI_Wrapper.scala 109:19]
  wire [4:0] CPU_rvfi_rd_addr; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_rd_wdata; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_pc_rdata; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_pc_wdata; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_mem_addr; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_mem_rdata; // @[RVFI_Wrapper.scala 109:19]
  wire [31:0] CPU_rvfi_mem_wdata; // @[RVFI_Wrapper.scala 109:19]
  RVFICPUWrapper CPU ( // @[RVFI_Wrapper.scala 109:19]
    .clock(CPU_clock),
    .reset(CPU_reset),
    .io_GPIO0External(CPU_io_GPIO0External),
    .io_instructionMemPort_readAddr(CPU_io_instructionMemPort_readAddr),
    .io_instructionMemPort_readData(CPU_io_instructionMemPort_readData),
    .io_dataMemPort_writeAddress(CPU_io_dataMemPort_writeAddress),
    .io_dataMemPort_writeData(CPU_io_dataMemPort_writeData),
    .io_dataMemPort_writeEnable(CPU_io_dataMemPort_writeEnable),
    .rvfi_valid(CPU_rvfi_valid),
    .rvfi_order(CPU_rvfi_order),
    .rvfi_insn(CPU_rvfi_insn),
    .rvfi_trap(CPU_rvfi_trap),
    .rvfi_rs1_addr(CPU_rvfi_rs1_addr),
    .rvfi_rs1_rdata(CPU_rvfi_rs1_rdata),
    .rvfi_rs2_addr(CPU_rvfi_rs2_addr),
    .rvfi_rs2_rdata(CPU_rvfi_rs2_rdata),
    .rvfi_rd_addr(CPU_rvfi_rd_addr),
    .rvfi_rd_wdata(CPU_rvfi_rd_wdata),
    .rvfi_pc_rdata(CPU_rvfi_pc_rdata),
    .rvfi_pc_wdata(CPU_rvfi_pc_wdata),
    .rvfi_mem_addr(CPU_rvfi_mem_addr),
    .rvfi_mem_rdata(CPU_rvfi_mem_rdata),
    .rvfi_mem_wdata(CPU_rvfi_mem_wdata)
  );
  assign io_imem_addr = {{16'd0}, CPU_io_instructionMemPort_readAddr}; // @[RVFI_Wrapper.scala 126:38]
  assign io_dmem_addr = {{16'd0}, CPU_io_dataMemPort_writeAddress}; // @[RVFI_Wrapper.scala 129:17]
  assign io_dmem_wdata = CPU_io_dataMemPort_writeData; // @[RVFI_Wrapper.scala 130:17]
  assign io_dmem_wen = CPU_io_dataMemPort_writeEnable; // @[RVFI_Wrapper.scala 131:17]
  assign rvfi_valid = CPU_rvfi_valid; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_order = CPU_rvfi_order; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_insn = CPU_rvfi_insn; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_trap = CPU_rvfi_trap; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_halt = 1'h0; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_intr = 1'h0; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_ixl = 2'h1; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_mode = 2'h3; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_rs1_addr = CPU_rvfi_rs1_addr; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_rs1_rdata = CPU_rvfi_rs1_rdata; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_rs2_addr = CPU_rvfi_rs2_addr; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_rs2_rdata = CPU_rvfi_rs2_rdata; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_rd_addr = CPU_rvfi_rd_addr; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_rd_wdata = CPU_rvfi_rd_wdata; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_pc_rdata = CPU_rvfi_pc_rdata; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_pc_wdata = CPU_rvfi_pc_wdata; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_mem_addr = CPU_rvfi_mem_addr; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_mem_rmask = 4'h0; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_mem_wmask = 4'h0; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_mem_rdata = CPU_rvfi_mem_rdata; // @[RVFI_Wrapper.scala 124:8]
  assign rvfi_mem_wdata = CPU_rvfi_mem_wdata; // @[RVFI_Wrapper.scala 124:8]
  assign CPU_clock = clock;
  assign CPU_reset = reset;
  assign CPU_io_instructionMemPort_readData = io_imem_rdata; // @[RVFI_Wrapper.scala 127:38]
endmodule
