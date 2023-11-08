// Module spctrl generates a signal Q which is high for each odd clock 
// cycle and is low for each even clock cycle counting from the moment 
// when RN goes high. Clock cycle starts on negative edge of the clock.
//     ---------->time
// RN: 000111111111
//  C: 010101010101
//  Q: 000011001100

module spctrl (C, RN, Q);
  input C, RN;
  output Q;
  wire R;
  wire not_Q;
  wire csc, not_csc, not_C;

  INV1 inst_not_C (.A(C), .Q(not_C));
  INV1 inst_R (.A(RN), .Q(R));

  AOI221 inst_Q (.A(not_Q), .B(C), .C(not_csc), .D(not_C), .Q(Q));
  AOI221 inst_not_csc0 (.A(csc), .B(not_C), .C(not_Q), .D(C), .Q(not_csc));  

  NAND21 inst_not_Q (.A(RN), .B(Q), .Q(not_Q));
  NOR21 inst_csc (.A(not_csc), .B(R), .Q(csc));
endmodule


module goctrl (C, DN, SN, GO);
  input C, DN, SN;
  output GO;
  wire w1, w0;
  wire not_SN;
  wire not_DN;
  wire SN_C;
  wire not_SN_C, not_GO;
  
  INV1 inst_not_SN (.A(SN), .Q(not_SN));
  NOR21 inst_not_SN_C (.A(not_SN), .B(C), .Q(not_SN_C));
  INV1 inst_SN_C (.A(not_SN_C), .Q(SN_C));
  INV1 inst_not_DN (.A(DN), .Q(not_DN));

  NOR21 inst_w1 (.A(SN_C), .B(w0), .Q(w1));
  NOR21 inst_w0 (.A(not_DN), .B(w1), .Q(w0));
  NOR21 inst_nor_GO (.A(SN_C), .B(w1), .Q(not_GO));
  INV1 inst_GO (.A(not_GO), .Q(GO));
endmodule  


// <Q_1, Q_0> is enforced to all-ones spacer when SP is low. 
// Otherwise  <Q_1, Q_0> = <D_1, D_0> 

module spalt_ndr (C, D_1, D_0, Q_1, Q_0, SP);
  input C;
  input D_1, D_0;
  output Q_1, Q_0;
  input SP;
  wire not_Q_1, not_Q_0;
  wire not_D_1, not_D_0;
  
  AOI221 inst_not_Q_1 (.A(C), .B(SP), .C(SP), .D(Q_1), .Q(not_Q_1));
  AOI221 inst_not_Q_0 (.A(C), .B(SP), .C(SP), .D(Q_0), .Q(not_Q_0));
  
  INV1 inst_not_D_1 (.A(D_1), .Q(not_D_1));
  INV1 inst_not_D_0 (.A(D_0), .Q(not_D_0));
  
  NAND21 inst_Q_1 (.A(not_Q_1), .B(not_D_1), .Q(Q_1));
  NAND21 inst_Q_0 (.A(not_Q_0), .B(not_D_0), .Q(Q_0));
endmodule


module DSDR2SSDR (D_1, D_0, Q_1, Q_0);
  input D_1, D_0;
  output Q_1, Q_0;
  wire not_D_1, not_D_0;
  
  INV1 inst_not_D_1 (.A(D_1), .Q(not_D_1));
  INV1 inst_not_D_0 (.A(D_0), .Q(not_D_0));
  NOR21 inst_Q_1 (.A(not_D_1), .B(D_0), .Q(Q_1));
  NOR21 inst_Q_0 (.A(not_D_0), .B(D_1), .Q(Q_0));
endmodule


// SR2DR

module SR2DR_0dr (C, A, Q_1, Q_0, SP);
  input C;
  input A;
  input SP;
  output Q_1, Q_0;
  wire w_1, w_0;
  wire not_A;

  INV1 inst_not_A (.A(A), .Q(not_A));
  NOR21 inst_w_1 (.A(not_A), .B(C), .Q(w_1));
  NOR21 inst_w_0 (.A(A), .B(C), .Q(w_0));
  spalt_ndr inst_Q (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(Q_1), .Q_0(Q_0), .SP(SP));
endmodule


module SR2DR_1dr (C, A, Q_1, Q_0, SP);
  input C;
  input A;
  input SP;
  output Q_1, Q_0;
  wire w_1, w_0;
  wire not_A;

  INV1 inst_not_A (.A(A), .Q(not_A));
  NOR21 inst_w_1 (.A(not_A), .B(C), .Q(w_1));
  NOR21 inst_w_0 (.A(A), .B(C), .Q(w_0));
  spalt_ndr inst_v (.C(C), .D_1(w_1), .D_0(w_0), .Q_1(v_1), .Q_0(v_0), .SP(SP));
  spinv_ndr inst_q (.i_1(v_1), .i_0(v_0), .z_1(Q_1), .z_0(Q_0));
endmodule


//DR2SR

module DR2SR_0dr (C, A_1, A_0, Q, SP);
  input C;
  input A_1, A_0;
  input SP;
  output Q;
  wire w_1, w_0;

  DSDR2SSDR inst_w (.D_1(A_1), .D_0(A_0), .Q_1(w_1), .Q_0(w_0));

  NOR21 inst_not_q (.A(w_1), .B(Q), .Q(not_Q));
  NOR21 inst_Q (.A(w_0), .B(not_Q), .Q(Q));
endmodule


module DR2SR_1dr (C, A_1, A_0, Q, SP);
  input C;
  input A_1, A_0;
  input SP;
  output Q;
  wire w_1, w_0;

  DSDR2SSDR inst_w (.D_1(A_1), .D_0(A_0), .Q_1(w_1), .Q_0(w_0));

  NOR21 inst_not_q (.A(w_1), .B(Q), .Q(not_Q));
  NOR21 inst_Q (.A(w_0), .B(not_Q), .Q(Q));
endmodule
