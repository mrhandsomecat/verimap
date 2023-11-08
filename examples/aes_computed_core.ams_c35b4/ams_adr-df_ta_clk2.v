//
// This file containes dual-rail flip-flops implementations built on
// timing assumptions. These flip-flops enforce all-zerous spacer on
// positive phase of each odd clock cycle and all-ones spacer on positive
// phase of each even clock cycle. This type of flip-flops requires extra 
// input SP which should be low on positive phase of each even clock cycle
// (countin from the moment of reset) and should be high the rest of the 
// time.
//
// Pros:
// (+) The size of aternating flip-flops is nearly the same as the 
//     size of not-alternating flip-flops.
//      
// Cons:
// (-) New input SP is added to each flip-flop.
// (-) SP input of the circuit may have a big fanin(?).
// (-) Modification of Verimap tool to inset SP input hierarchcally to all 
//     upper-level modules. 
//


// Delay for flip-flops with timing assumptions

module delay (A, Q);
  input A;
  output Q;

  BUF2 inst_q (.A(A), .Q(Q));
endmodule


// DF

module DF1_0dr (C, D_1, D_0, Q_1, Q_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SP;
  wire M_1, M_0;
  wire M_1_buf, M_0_buf;
  wire C_buf;
  wire w_1, w_0;
  wire D_1_buf, D_0_buf;
  
  delay inst_C_buf1 (.A(C), .Q(C_buf));

  delay inst_D_1_buf (.A(D_1), .Q(D_1_buf));
  delay inst_D_0_buf (.A(D_0), .Q(D_0_buf));

  OAI2111 inst_M_1 (.D(M_0), .C(C), .B(C_buf), .A(D_1_buf), .Q(M_1));
  OAI2111 inst_M_0 (.D(M_1), .C(C), .B(C_buf), .A(D_0_buf), .Q(M_0));

  delay inst_M_1_buf (.A(M_1), .Q(M_1_buf));
  delay inst_M_0_buf (.A(M_0), .Q(M_0_buf));

  AOI2111 inst_w_1 (.D(w_0), .C(C), .B(C_buf), .A(M_1_buf), .Q(w_1));
  AOI2111 inst_w_0 (.D(w_1), .C(C), .B(C_buf), .A(M_0_buf), .Q(w_0));

  spalt_ndr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module DF3_0dr (C, D_1, D_0, Q_1, Q_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SP;
  wire w_1, w_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  BUF2 inst_Q_1 (.A(w_1), .Q(Q_1));
  BUF2 inst_Q_0 (.A(w_0), .Q(Q_0));
endmodule


// DFC

module DFC1_0dr (C, D_1, D_0, Q_1, Q_0, RN, SP);
  input C;
  input D_1, D_0;
  input RN;
  input SP;
  output Q_1, Q_0;
  wire R;
  wire w_1, w_0;
  wire not_Q_1, not_Q_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  INV1 inst_R (.A(RN), .Q(R));

  NAND21 inst_not_Q_1 (.A(RN), .B(w_1), .Q(not_Q_1));
  NOR21 inst_not_Q_0 (.A(R), .B(w_0), .Q(not_Q_0));

  INV1 inst_Q_1 (.A(not_Q_1), .Q(Q_1));
  INV1 inst_Q_0 (.A(not_Q_0), .Q(Q_0));
endmodule


module DFC3_0dr (C, D_1, D_0, Q_1, Q_0, RN, SP);
  input C;
  input D_1, D_0;
  input RN;
  input SP;
  output Q_1, Q_0;
  wire R;
  wire w_1, w_0;
  wire not_Q_1, not_Q_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  INV1 inst_R (.A(RN), .Q(R));

  NAND21 inst_not_Q_1 (.A(RN), .B(w_1), .Q(not_Q_1));
  NOR21 inst_not_Q_0 (.A(R), .B(w_0), .Q(not_Q_0));

  INV3 inst_Q_1 (.A(not_Q_1), .Q(Q_1));
  INV3 inst_Q_0 (.A(not_Q_0), .Q(Q_0));
endmodule


// DFCP

module DFCP1_0dr (C, D_1, D_0, Q_1, Q_0, RN, SN, SP);
  input C;
  input D_1, D_0;
  input RN, SN;
  input SP;
  output Q_1, Q_0;
  wire R, S;
  wire w_1, w_0;
  wire not_Q_1, not_Q_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  INV1 inst_R (.A(RN), .Q(R));
  INV1 inst_S (.A(SN), .Q(S));

  OAI211 inst_not_Q_1 (.A(w_1), .B(S), .C(R), .Q(not_Q_1));
  OAI211 inst_not_Q_0 (.A(w_0), .B(R), .C(S), .Q(not_Q_0));

  INV1 inst_Q_1 (.A(not_Q_1), .Q(Q_1));
  INV1 inst_Q_0 (.A(not_Q_0), .Q(Q_0));
endmodule


module DFCP3_0dr (C, D_1, D_0, Q_1, Q_0, RN, SN, SP);
  input C;
  input D_1, D_0;
  input RN, SN;
  input SP;
  output Q_1, Q_0;
  wire R, S;
  wire w_1, w_0;
  wire not_Q_1, not_Q_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  INV1 inst_R (.A(RN), .Q(R));
  INV1 inst_S (.A(SN), .Q(S));

  OAI211 inst_not_Q_1 (.A(w_1), .B(S), .C(R), .Q(not_Q_1));
  OAI211 inst_not_Q_0 (.A(w_0), .B(R), .C(S), .Q(not_Q_0));

  INV3 inst_Q_1 (.A(not_Q_1), .Q(Q_1));
  INV3 inst_Q_0 (.A(not_Q_0), .Q(Q_0));
endmodule


// DFP

module DFP1_0dr (C, D_1, D_0, Q_1, Q_0, SN, SP);
  input C;
  input D_1, D_0;
  input SN;
  input SP;
  output Q_1, Q_0;
  wire S;
  wire w_1, w_0;
  wire not_Q_1, not_Q_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  INV1 inst_S (.A(SN), .Q(S));

  NOR21 inst_not_Q_1 (.A(S), .B(w_1), .Q(not_Q_1));
  NAND21 inst_not_Q_0 (.A(SN), .B(w_0), .Q(not_Q_0));
  
  INV1 inst_Q_1 (.A(not_Q_1), .Q(Q_1));
  INV1 inst_Q_0 (.A(not_Q_0), .Q(Q_0));
endmodule


module DFP3_0dr (C, D_1, D_0, Q_1, Q_0, SN, SP);
  input C;
  input D_1, D_0;
  input SN;
  input SP;
  output Q_1, Q_0;
  wire S;
  wire w_1, w_0;
  wire not_Q_1, not_Q_0;

  DF1_0dr inst_w (.C(C), .D_1(D_1), .D_0(D_0), .Q_1(w_1), .Q_0(w_0), .SP(SP));

  INV1 inst_S (.A(SN), .Q(S));

  NOR21 inst_not_Q_1 (.A(S), .B(w_1), .Q(not_Q_1));
  NAND21 inst_not_Q_0 (.A(SN), .B(w_0), .Q(not_Q_0));
  
  INV3 inst_Q_1 (.A(not_Q_1), .Q(Q_1));
  INV3 inst_Q_0 (.A(not_Q_0), .Q(Q_0));
endmodule


// Tie-Down to Logic Low-Level

module TIE0_0dr (C, Q_1, Q_0, SP);
  input C;
  input SP;
  output Q_1, Q_0;
  wire w_1, w_0;

  TIE0 inst_w_1 (.Q(w_1));
  INV1 inst_w_0 (.A(C), .Q(w_0));

  spalt_ndr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module TIE0_1dr (C, Q_1, Q_0, SP);
  input C;
  input SP;
  output Q_1, Q_0;
  wire w_1, w_0;

  TIE0_0dr inst_w (.C(C), .Q_1(w_1), .Q_0(w_0), .SP(SP));
  spinv_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


// Tie-Up to Logic High-Level

module TIE1_0dr (C, Q_1, Q_0, SP);
  input C;
  input SP;
  output Q_1, Q_0;
  wire w_1, w_0;

  INV1 inst_w_1 (.A(C), .Q(w_1));
  TIE0 inst_w_0 (.Q(w_0));

  spalt_ndr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module TIE1_1dr (C, Q_1, Q_0, SP);
  input C;
  input SP;
  output Q_1, Q_0;
  wire w_1, w_0;

  TIE1_0dr inst_w (.C(C), .Q_1(w_1), .Q_0(w_0), .SP(SP));
  spinv_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule
