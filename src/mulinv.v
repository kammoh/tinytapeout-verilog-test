module MulInv8(
  input        clock,
  input        reset,
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire  _T_2 = io_in[7] ^ io_in[5]; // @[MulInv8.scala 21:10]
  wire  _T_5 = io_in[7] ^ io_in[6]; // @[MulInv8.scala 22:10]
  wire  _T_13 = io_in[7] ^ io_in[6] ^ io_in[4] ^ io_in[3] ^ io_in[2] ^ io_in[1]; // @[MulInv8.scala 22:38]
  wire  _T_20 = _T_2 ^ io_in[3] ^ io_in[2]; // @[MulInv8.scala 23:24]
  wire  _T_29 = _T_20 ^ io_in[1]; // @[MulInv8.scala 24:31]
  wire  _T_36 = _T_5 ^ io_in[2] ^ io_in[1]; // @[MulInv8.scala 25:24]
  wire  _T_45 = io_in[7] ^ io_in[4] ^ io_in[3] ^ io_in[2] ^ io_in[1]; // @[MulInv8.scala 26:31]
  wire  _T_50 = io_in[6] ^ io_in[4] ^ io_in[1]; // @[MulInv8.scala 27:17]
  wire  _T_55 = io_in[6] ^ io_in[1] ^ io_in[0]; // @[MulInv8.scala 28:17]
  wire [7:0] _T_56 = {_T_2,_T_13,_T_20,_T_29,_T_36,_T_45,_T_50,_T_55}; // @[MulInv8.scala 20:28]
  wire [3:0] hi_1 = _T_56[7:4]; // @[MulInv8.scala 16:12]
  wire [3:0] lo_1 = _T_56[3:0]; // @[MulInv8.scala 16:27]
  wire [3:0] hiPlusLo = hi_1 ^ lo_1; // @[MulInv8.scala 91:21]
  wire  _p4_T_3 = hi_1[3] ^ hi_1[2]; // @[MulInv8.scala 45:10]
  wire  _p4_T_6 = hi_1[2] ^ hi_1[1]; // @[MulInv8.scala 46:10]
  wire  _p4_T_11 = hi_1[3] ^ hi_1[1] ^ hi_1[0]; // @[MulInv8.scala 47:17]
  wire [3:0] _p4_T_12 = {hi_1[3],_p4_T_3,_p4_T_6,_p4_T_11}; // @[MulInv8.scala 43:29]
  wire  _p4_T_15 = _p4_T_12[2] ^ _p4_T_12[0]; // @[MulInv8.scala 65:14]
  wire  _p4_T_22 = _p4_T_12[3] ^ _p4_T_12[2] ^ _p4_T_12[1] ^ _p4_T_12[0]; // @[MulInv8.scala 65:41]
  wire [3:0] _p4_T_25 = {_p4_T_15,_p4_T_22,_p4_T_12[3],_p4_T_12[2]}; // @[MulInv8.scala 65:8]
  wire  _p4_T_28 = hiPlusLo[3] & lo_1[3]; // @[MulInv8.scala 52:13]
  wire  _p4_T_36 = hiPlusLo[3] & lo_1[3] ^ hiPlusLo[3] & lo_1[1] ^ hiPlusLo[1] & lo_1[3]; // @[MulInv8.scala 52:37]
  wire  _p4_T_39 = hiPlusLo[2] & lo_1[3]; // @[MulInv8.scala 53:15]
  wire  _p4_T_40 = hiPlusLo[3] & lo_1[3] ^ hiPlusLo[3] & lo_1[1] ^ hiPlusLo[1] & lo_1[3] ^ _p4_T_39; // @[MulInv8.scala 52:53]
  wire  _p4_T_51 = hiPlusLo[3] & lo_1[2]; // @[MulInv8.scala 54:15]
  wire  _p4_T_52 = _p4_T_40 ^ hiPlusLo[2] & lo_1[1] ^ hiPlusLo[0] & lo_1[3] ^ _p4_T_51; // @[MulInv8.scala 53:55]
  wire  _p4_T_60 = _p4_T_52 ^ hiPlusLo[3] & lo_1[0] ^ hiPlusLo[1] & lo_1[2]; // @[MulInv8.scala 54:39]
  wire  _p4_T_74 = hiPlusLo[2] & lo_1[2]; // @[MulInv8.scala 56:15]
  wire  _p4_T_75 = _p4_T_36 ^ _p4_T_74; // @[MulInv8.scala 55:53]
  wire  _p4_T_83 = _p4_T_75 ^ hiPlusLo[2] & lo_1[0] ^ hiPlusLo[0] & lo_1[2]; // @[MulInv8.scala 56:39]
  wire  _p4_T_97 = hiPlusLo[1] & lo_1[1]; // @[MulInv8.scala 58:15]
  wire  _p4_T_98 = _p4_T_39 ^ _p4_T_51 ^ _p4_T_74 ^ _p4_T_97; // @[MulInv8.scala 57:53]
  wire  _p4_T_106 = _p4_T_98 ^ hiPlusLo[0] & lo_1[1] ^ hiPlusLo[1] & lo_1[0]; // @[MulInv8.scala 58:39]
  wire  _p4_T_121 = _p4_T_28 ^ _p4_T_39 ^ _p4_T_51 ^ _p4_T_97; // @[MulInv8.scala 59:53]
  wire  _p4_T_125 = _p4_T_121 ^ hiPlusLo[0] & lo_1[0]; // @[MulInv8.scala 60:23]
  wire [3:0] _p4_T_126 = {_p4_T_60,_p4_T_83,_p4_T_106,_p4_T_125}; // @[MulInv8.scala 51:8]
  wire [3:0] p4 = _p4_T_25 ^ _p4_T_126; // @[MulInv8.scala 94:36]
  wire [1:0] p4Inv_hi = p4[3:2]; // @[MulInv8.scala 16:12]
  wire [1:0] p4Inv_lo = p4[1:0]; // @[MulInv8.scala 16:27]
  wire [1:0] p4Inv_hiPlusLo = p4Inv_hi ^ p4Inv_lo; // @[MulInv8.scala 82:23]
  wire  _p4Inv_p2_T_3 = p4Inv_hi[1] ^ p4Inv_hi[0]; // @[MulInv8.scala 67:41]
  wire [1:0] _p4Inv_p2_T_4 = {p4Inv_hi[1],_p4Inv_p2_T_3}; // @[MulInv8.scala 67:29]
  wire  _p4Inv_p2_T_7 = _p4Inv_p2_T_4[1] ^ _p4Inv_p2_T_4[0]; // @[MulInv8.scala 75:40]
  wire [1:0] _p4Inv_p2_T_9 = {_p4Inv_p2_T_7,_p4Inv_p2_T_4[1]}; // @[MulInv8.scala 75:34]
  wire  _p4Inv_p2_T_12 = p4Inv_hiPlusLo[1] & p4Inv_lo[1]; // @[MulInv8.scala 70:11]
  wire  _p4Inv_p2_T_20 = p4Inv_hiPlusLo[1] & p4Inv_lo[1] ^ p4Inv_hiPlusLo[0] & p4Inv_lo[1] ^ p4Inv_hiPlusLo[1] &
    p4Inv_lo[0]; // @[MulInv8.scala 70:35]
  wire  _p4Inv_p2_T_27 = _p4Inv_p2_T_12 ^ p4Inv_hiPlusLo[0] & p4Inv_lo[0]; // @[MulInv8.scala 71:19]
  wire [1:0] _p4Inv_p2_T_28 = {_p4Inv_p2_T_20,_p4Inv_p2_T_27}; // @[MulInv8.scala 69:40]
  wire [1:0] p4Inv_p2 = _p4Inv_p2_T_9 ^ _p4Inv_p2_T_28; // @[MulInv8.scala 84:40]
  wire  _p4Inv_p2Inv_T_3 = p4Inv_p2[1] ^ p4Inv_p2[0]; // @[MulInv8.scala 77:42]
  wire [1:0] p4Inv_p2Inv = {p4Inv_p2[1],_p4Inv_p2Inv_T_3}; // @[MulInv8.scala 77:30]
  wire  _p4Inv_T_2 = p4Inv_hi[1] & p4Inv_p2Inv[1]; // @[MulInv8.scala 70:11]
  wire  _p4Inv_T_10 = p4Inv_hi[1] & p4Inv_p2Inv[1] ^ p4Inv_hi[0] & p4Inv_p2Inv[1] ^ p4Inv_hi[1] & p4Inv_p2Inv[0]; // @[MulInv8.scala 70:35]
  wire  _p4Inv_T_17 = _p4Inv_T_2 ^ p4Inv_hi[0] & p4Inv_p2Inv[0]; // @[MulInv8.scala 71:19]
  wire  _p4Inv_T_21 = p4Inv_hiPlusLo[1] & p4Inv_p2Inv[1]; // @[MulInv8.scala 70:11]
  wire  _p4Inv_T_29 = p4Inv_hiPlusLo[1] & p4Inv_p2Inv[1] ^ p4Inv_hiPlusLo[0] & p4Inv_p2Inv[1] ^ p4Inv_hiPlusLo[1] &
    p4Inv_p2Inv[0]; // @[MulInv8.scala 70:35]
  wire  _p4Inv_T_36 = _p4Inv_T_21 ^ p4Inv_hiPlusLo[0] & p4Inv_p2Inv[0]; // @[MulInv8.scala 71:19]
  wire [3:0] p4Inv = {_p4Inv_T_10,_p4Inv_T_17,_p4Inv_T_29,_p4Inv_T_36}; // @[MulInv8.scala 86:26]
  wire  _io_out_T_2 = hi_1[3] & p4Inv[3]; // @[MulInv8.scala 52:13]
  wire  _io_out_T_10 = hi_1[3] & p4Inv[3] ^ hi_1[3] & p4Inv[1] ^ hi_1[1] & p4Inv[3]; // @[MulInv8.scala 52:37]
  wire  _io_out_T_13 = hi_1[2] & p4Inv[3]; // @[MulInv8.scala 53:15]
  wire  _io_out_T_14 = hi_1[3] & p4Inv[3] ^ hi_1[3] & p4Inv[1] ^ hi_1[1] & p4Inv[3] ^ _io_out_T_13; // @[MulInv8.scala 52:53]
  wire  _io_out_T_25 = hi_1[3] & p4Inv[2]; // @[MulInv8.scala 54:15]
  wire  _io_out_T_26 = _io_out_T_14 ^ hi_1[2] & p4Inv[1] ^ hi_1[0] & p4Inv[3] ^ _io_out_T_25; // @[MulInv8.scala 53:55]
  wire  _io_out_T_34 = _io_out_T_26 ^ hi_1[3] & p4Inv[0] ^ hi_1[1] & p4Inv[2]; // @[MulInv8.scala 54:39]
  wire  _io_out_T_48 = hi_1[2] & p4Inv[2]; // @[MulInv8.scala 56:15]
  wire  _io_out_T_49 = _io_out_T_10 ^ _io_out_T_48; // @[MulInv8.scala 55:53]
  wire  _io_out_T_57 = _io_out_T_49 ^ hi_1[2] & p4Inv[0] ^ hi_1[0] & p4Inv[2]; // @[MulInv8.scala 56:39]
  wire  _io_out_T_71 = hi_1[1] & p4Inv[1]; // @[MulInv8.scala 58:15]
  wire  _io_out_T_72 = _io_out_T_13 ^ _io_out_T_25 ^ _io_out_T_48 ^ _io_out_T_71; // @[MulInv8.scala 57:53]
  wire  _io_out_T_80 = _io_out_T_72 ^ hi_1[0] & p4Inv[1] ^ hi_1[1] & p4Inv[0]; // @[MulInv8.scala 58:39]
  wire  _io_out_T_95 = _io_out_T_2 ^ _io_out_T_13 ^ _io_out_T_25 ^ _io_out_T_71; // @[MulInv8.scala 59:53]
  wire  _io_out_T_99 = _io_out_T_95 ^ hi_1[0] & p4Inv[0]; // @[MulInv8.scala 60:23]
  wire  _io_out_T_103 = hiPlusLo[3] & p4Inv[3]; // @[MulInv8.scala 52:13]
  wire  _io_out_T_111 = hiPlusLo[3] & p4Inv[3] ^ hiPlusLo[3] & p4Inv[1] ^ hiPlusLo[1] & p4Inv[3]; // @[MulInv8.scala 52:37]
  wire  _io_out_T_114 = hiPlusLo[2] & p4Inv[3]; // @[MulInv8.scala 53:15]
  wire  _io_out_T_115 = hiPlusLo[3] & p4Inv[3] ^ hiPlusLo[3] & p4Inv[1] ^ hiPlusLo[1] & p4Inv[3] ^ _io_out_T_114; // @[MulInv8.scala 52:53]
  wire  _io_out_T_126 = hiPlusLo[3] & p4Inv[2]; // @[MulInv8.scala 54:15]
  wire  _io_out_T_127 = _io_out_T_115 ^ hiPlusLo[2] & p4Inv[1] ^ hiPlusLo[0] & p4Inv[3] ^ _io_out_T_126; // @[MulInv8.scala 53:55]
  wire  _io_out_T_135 = _io_out_T_127 ^ hiPlusLo[3] & p4Inv[0] ^ hiPlusLo[1] & p4Inv[2]; // @[MulInv8.scala 54:39]
  wire  _io_out_T_149 = hiPlusLo[2] & p4Inv[2]; // @[MulInv8.scala 56:15]
  wire  _io_out_T_150 = _io_out_T_111 ^ _io_out_T_149; // @[MulInv8.scala 55:53]
  wire  _io_out_T_158 = _io_out_T_150 ^ hiPlusLo[2] & p4Inv[0] ^ hiPlusLo[0] & p4Inv[2]; // @[MulInv8.scala 56:39]
  wire  _io_out_T_172 = hiPlusLo[1] & p4Inv[1]; // @[MulInv8.scala 58:15]
  wire  _io_out_T_173 = _io_out_T_114 ^ _io_out_T_126 ^ _io_out_T_149 ^ _io_out_T_172; // @[MulInv8.scala 57:53]
  wire  _io_out_T_181 = _io_out_T_173 ^ hiPlusLo[0] & p4Inv[1] ^ hiPlusLo[1] & p4Inv[0]; // @[MulInv8.scala 58:39]
  wire  _io_out_T_196 = _io_out_T_103 ^ _io_out_T_114 ^ _io_out_T_126 ^ _io_out_T_172; // @[MulInv8.scala 59:53]
  wire  _io_out_T_200 = _io_out_T_196 ^ hiPlusLo[0] & p4Inv[0]; // @[MulInv8.scala 60:23]
  wire [7:0] _io_out_T_202 = {_io_out_T_34,_io_out_T_57,_io_out_T_80,_io_out_T_99,_io_out_T_135,_io_out_T_158,
    _io_out_T_181,_io_out_T_200}; // @[MulInv8.scala 96:44]
  wire  _io_out_T_209 = _io_out_T_202[7] ^ _io_out_T_202[6] ^ _io_out_T_202[5] ^ _io_out_T_202[1]; // @[MulInv8.scala 33:24]
  wire  _io_out_T_212 = _io_out_T_202[6] ^ _io_out_T_202[2]; // @[MulInv8.scala 34:10]
  wire  _io_out_T_215 = _io_out_T_202[6] ^ _io_out_T_202[5]; // @[MulInv8.scala 35:10]
  wire  _io_out_T_217 = _io_out_T_202[6] ^ _io_out_T_202[5] ^ _io_out_T_202[1]; // @[MulInv8.scala 35:17]
  wire  _io_out_T_224 = _io_out_T_215 ^ _io_out_T_202[4] ^ _io_out_T_202[2]; // @[MulInv8.scala 36:24]
  wire  _io_out_T_226 = _io_out_T_215 ^ _io_out_T_202[4] ^ _io_out_T_202[2] ^ _io_out_T_202[1]; // @[MulInv8.scala 36:31]
  wire  _io_out_T_229 = _io_out_T_202[5] ^ _io_out_T_202[4]; // @[MulInv8.scala 37:10]
  wire  _io_out_T_235 = _io_out_T_202[5] ^ _io_out_T_202[4] ^ _io_out_T_202[3] ^ _io_out_T_202[2] ^ _io_out_T_202[1]; // @[MulInv8.scala 37:31]
  wire  _io_out_T_244 = _io_out_T_202[7] ^ _io_out_T_202[4] ^ _io_out_T_202[3] ^ _io_out_T_202[2] ^ _io_out_T_202[1]; // @[MulInv8.scala 38:31]
  wire  _io_out_T_256 = _io_out_T_224 ^ _io_out_T_202[0]; // @[MulInv8.scala 40:31]
  wire [3:0] io_out_lo_2 = {_io_out_T_235,_io_out_T_244,_io_out_T_229,_io_out_T_256}; // @[MulInv8.scala 32:31]
  wire [3:0] io_out_hi_2 = {_io_out_T_209,_io_out_T_212,_io_out_T_217,_io_out_T_226}; // @[MulInv8.scala 32:31]
  assign io_out = {io_out_hi_2,io_out_lo_2}; // @[MulInv8.scala 32:31]
endmodule
