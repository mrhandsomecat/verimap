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
  wire not_z_1, not_z_0;

  AOI221 inst_not_z_1 (.A(i0_1), .B(s_0), .C(i1_1), .D(s_1), .Q(not_z_1));  
  OAI221 inst_not_z_0 (.A(i0_0), .B(s_1), .C(i1_0), .D(s_0), .Q(not_z_0));
  
  INV1 inst_z_1 (.A(not_z_1), .Q(z_1));
  INV1 inst_z_0 (.A(not_z_0), .Q(z_0));
endmodule


//
// Multiplexed Scan D Flip-Flops
//


// DFS

module DFS1_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF1_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module DFS3_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DF3_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


//DFSC


module DFSC1_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFC1_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SP(SP));
endmodule


module DFSC3_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFC3_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SP(SP));
endmodule


// DFSCP

module DFSCP1_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN, SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFCP1_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SN(SN), .SP(SP));
endmodule


module DFSCP3_0dr (C, D_1, D_0, Q_1, Q_0, RN, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input RN, SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFCP3_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .RN(RN), .SN(SN), .SP(SP));
endmodule


// DFSP

module DFSP1_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFP1_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SN(SN), .SP(SP));
endmodule


module DFSP3_0dr (C, D_1, D_0, Q_1, Q_0, SD_1, SD_0, SE_1, SE_0, SN, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SD_1, SD_0;
  input SE_1, SE_0;
  input SN;
  input SP;
  wire w_1, w_0;
  
  mx2_pdr inst_w (.i0_1(D_1), .i0_0(D_0), .i1_1(SD_1), .i1_0(SD_0), .s_1(SE_1), .s_0(SE_0), .z_1(w_1), .z_0(w_0));
  DFP3_0dr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SN(SN), .SP(SP));
endmodule
