/*
  D-Enable, Multiplexed Scan and Multiplexed Scan D-Enabled Flip-Flops 
*/

//  DR Multiplexor used to build Scan and D-Enable Flip-Flops 
//  (it does not invert the spacer)

module mx2_pdr (i0_1, i0_0, i1_1, i1_0, s_1, s_0, z_1, z_0);
  input i0_1, i0_0;
  input i1_1, i1_0;
  input s_1, s_0;
  output z_1, z_0;

  AO22 inst_w_1 (.A(i0_1), .B(s_0), .C(i1_1), .D(s_1), .Q(z_1));  
  OA22 inst_w_0 (.A(i0_0), .B(s_1), .C(i1_0), .D(s_0), .Q(z_0));
endmodule


//
// Multiplexed Scan D Flip-Flops
//


// DFS8

module DFS8_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF8_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module DFS82_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF82_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module DFS84_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF84_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


// DFS9

module DFS9_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF9_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SN(SN), .SP(SP));
endmodule


module DFS92_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF92_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SN(SN), .SP(SP));
endmodule


module DFS94_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF94_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SN(SN), .SP(SP));
endmodule


//DFSA

module DFSA_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFA_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SP(SP));
endmodule


module DFSA2_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFA2_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SP(SP));
endmodule


module DFSA4_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFA4_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SP(SP));
endmodule


// DFSB

module DFSB_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN, SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFB_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SN(SN), .SP(SP));
endmodule


module DFSB2_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN, SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFB2_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SN(SN), .SP(SP));
endmodule


module DFSB4_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN, SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFB4_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SN(SN), .SP(SP));
endmodule

//
// Latches
//

// DL8

module DL8_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DF8_0dr inst_w ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));
endmodule


module DL82_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DF8_0dr inst_w ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));
endmodule


module DL84_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DF8_0dr inst_w ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));
endmodule


// DL9

module DL9_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, SN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input SN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DF9_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .SN(SN), .SP(SP));
endmodule


module DL92_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, SN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input SN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DF9_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .SN(SN), .SP(SP));
endmodule


module DL94_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, SN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input SN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DF9_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .SN(SN), .SP(SP));
endmodule


// DLA

module DLA_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, RN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input RN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DFA_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .RN(RN), .SP(SP));
endmodule


module DLA2_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, RN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input RN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DFA_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .RN(RN), .SP(SP));
endmodule


module DLA4_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, RN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input RN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DFA_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .RN(RN), .SP(SP));
endmodule


// DLB

module DLB_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, RN, SN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input RN;
  input SN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DFB_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .RN(RN), .SN(SN), .SP(SP));
endmodule


module DLB2_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, RN, SN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input RN;
  input SN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DFB_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .RN(RN), .SN(SN), .SP(SP));
endmodule


module DLB4_0dr (D_1, D_0, GN_1, GN_0, Q_1, Q_0, RN, SN, C, SP);
  input D_1, D_0;
  input GN_1, GN_0;
  output Q_1, Q_0;
  input RN;
  input SN;
  input C;
  input SP;
  wire w_1, w_0;

  mx2_pdr inst_q ( .i0_1(D_1), .i0_0(D_0), .i1_1(w_1), .i1_0(w_0), .s_1(GN_1), .s_0(GN_0), .z_1(Q_1), .z_0(Q_0) );
  DFB_0dr inst_Q ( .C(C), .D_1(Q_1), .D_0(Q_0), .Q_1(w_1), .Q_0(w_0), .RN(RN), .SN(SN), .SP(SP));
endmodule
