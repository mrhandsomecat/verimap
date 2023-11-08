// Spacer converter (12348x)

module spinv_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV1 inst_z_1 (.A(i_0), .Q(z_1));
  INV1 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv0_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV0 inst_z_1 (.A(i_0), .Q(z_1));
  INV0 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv1_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV1 inst_z_1 (.A(i_0), .Q(z_1));
  INV1 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv2_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV2 inst_z_1 (.A(i_0), .Q(z_1));
  INV2 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv3_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV3 inst_z_1 (.A(i_0), .Q(z_1));
  INV3 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv4_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV4 inst_z_1 (.A(i_0), .Q(z_1));
  INV4 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv6_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV6 inst_z_1 (.A(i_0), .Q(z_1));
  INV6 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


module spinv8_ndr (i_1, i_0, z_1, z_0);
  input i_1, i_0;
  output z_1, z_0;

  INV8 inst_z_1 (.A(i_0), .Q(z_1));
  INV8 inst_z_0 (.A(i_1), .Q(z_0));
endmodule 


// 2-Input ANDs for ADD2

module and_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  NOR21 inst_Q_1 (.A(A_0), .B(B_0), .Q(Q_1));
  NAND21 inst_Q_0 (.A(A_1), .B(B_1), .Q(Q_0));
endmodule


// 2-Input ORs for ADD3

module or_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  NAND21 inst_Q_1 (.A(A_0), .B(B_0), .Q(Q_1));
  NOR21 inst_Q_0 (.A(A_1), .B(B_1), .Q(Q_0));
endmodule


// 3-Input ORs for ADD3

module or3_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;

  NAND31 inst_Q_1 (.A(A_0), .B(B_0), .C(C_0), .Q(Q_1));
  NOR31 inst_Q_0 (.A(A_1), .B(B_1), .C(C_1), .Q(Q_0));
endmodule


// Half-Adder (12x)

module ADD21_ndr (A_1, A_0, B_1, B_0, CO_1, CO_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output CO_1, CO_0;
  output S_1, S_0;

  and_ndr inst_CO (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(CO_1), .Q_0(CO_0));
  XOR21_ndr inst_S (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(S_1), .Q_0(S_0));
endmodule


module ADD22_ndr (A_1, A_0, B_1, B_0, CO_1, CO_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output CO_1, CO_0;
  output S_1, S_0;

  and_ndr inst_CO (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(CO_1), .Q_0(CO_0));  
  XOR22_ndr inst_S (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(S_1), .Q_0(S_0));
endmodule


// Full-Adder (12x)

module ADD31_pdr (A_1, A_0, B_1, B_0, CI_1, CI_0, CO_1, CO_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  input CI_1, CI_0;
  output CO_1, CO_0;
  output S_1, S_0;
  wire net_1_1, net_1_0;
  wire net_2_1, net_2_0;
  wire net_3_1, net_3_0;

  and_ndr inst_net_1 (.A_1(B_1), .A_0(B_0), .B_1(CI_1), .B_0(CI_0), .Q_1(net_1_1), .Q_0(net_1_0));
  and_ndr inst_net_2 (.A_1(A_1), .A_0(A_0), .B_1(CI_1), .B_0(CI_0), .Q_1(net_2_1), .Q_0(net_2_0));
  and_ndr inst_net_3 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(net_3_1), .Q_0(net_3_0));
  or3_ndr inst_CO (.A_1(net_1_1), .A_0(net_1_0), .B_1(net_2_1), .B_0(net_2_0), .C_1(net_3_1), .C_0(net_3_0), .Q_1(CO_1), .Q_0(CO_0));
  XOR31_pdr inst_S  (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .C_1(CI_1), .C_0(CI_0), .Q_1(S_1), .Q_0(S_0));
endmodule


module ADD32_pdr (A_1, A_0, B_1, B_0, CI_1, CI_0, CO_1, CO_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  input CI_1, CI_0;
  output CO_1, CO_0;
  output S_1, S_0;
  wire net_1_1, net_1_0;
  wire net_2_1, net_2_0;
  wire net_3_1, net_3_0;

  and_ndr inst_net_1 (.A_1(B_1), .A_0(B_0), .B_1(CI_1), .B_0(CI_0), .Q_1(net_1_1), .Q_0(net_1_0));
  and_ndr inst_net_2 (.A_1(A_1), .A_0(A_0), .B_1(CI_1), .B_0(CI_0), .Q_1(net_2_1), .Q_0(net_2_0));
  and_ndr inst_net_3 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(net_3_1), .Q_0(net_3_0));
  or3_ndr inst_CO (.A_1(net_1_1), .A_0(net_1_0), .B_1(net_2_1), .B_0(net_2_0), .C_1(net_3_1), .C_0(net_3_0), .Q_1(CO_1), .Q_0(CO_0));
  XOR31_ndr inst_S  (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .C_1(CI_1), .C_0(CI_0), .Q_1(S_1), .Q_0(S_0));
endmodule


// 2:1 Inverting Multiplexer (01234x)

module IMUX20_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  IMUX20_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv0_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module IMUX20_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;

  AOI220 inst_Q_1 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(Q_1));
  OAI220 inst_Q_0 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(Q_0));
endmodule


module IMUX21_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  IMUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv1_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module IMUX21_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;

  AOI221 inst_Q_1 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(Q_1));
  OAI221 inst_Q_0 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(Q_0));
endmodule


module IMUX22_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  IMUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv2_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module IMUX22_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;

  AOI222 inst_Q_1 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(Q_1));
  OAI222 inst_Q_0 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(Q_0));
endmodule


module IMUX23_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  IMUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv3_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module IMUX23_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  AOI221 inst_w_1 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(w_1));
  OAI221 inst_w_0 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(w_0));
  
  BUF4 inst_Q_1 (.A(w_1), .Q(Q_1));
  BUF4 inst_Q_0 (.A(w_0), .Q(Q_0));
endmodule


module IMUX24_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  IMUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv4_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module IMUX24_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  AOI221 inst_w_1 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(w_1));
  OAI221 inst_w_0 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(w_0));
  
  BUF4 inst_Q_1 (.A(w_1), .Q(Q_1));
  BUF4 inst_Q_0 (.A(w_0), .Q(Q_0));
endmodule


// 3:1 Inverting Multiplexer (0123x)

module IMUX30_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX20_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX30_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX20_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX31_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX21_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX31_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX21_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX32_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX22_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX32_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX22_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX33_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX23_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX33_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  IMUX23_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 4:1 Inverting Multiplexer (012x)

module IMUX40_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));

  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  IMUX20_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX40_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));

  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  IMUX20_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX41_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));

  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  IMUX21_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX41_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));

  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  IMUX21_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX42_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));

  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  IMUX22_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module IMUX42_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));

  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  IMUX22_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 2:1 Multiplexer (1246x)

module MUX21_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv1_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));  
endmodule


module MUX21_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;

  OAI221 inst_Q_1 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(Q_1));
  AOI221 inst_Q_0 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(Q_0));
endmodule


module MUX22_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv2_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));  
endmodule


module MUX22_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;

  OAI222 inst_Q_1 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(Q_1));
  AOI222 inst_Q_0 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(Q_0));
endmodule


module MUX24_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv4_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));  
endmodule


module MUX24_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  OAI221 inst_w_1 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(w_1));
  AOI221 inst_w_0 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(w_0));
  
  BUF4 inst_Q_1 (.A(w_1), .Q(Q_1));
  BUF4 inst_Q_0 (.A(w_0), .Q(Q_0));
endmodule


module MUX26_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0), .S_1(S_1), .S_0(S_0));
  spinv6_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));  
endmodule


module MUX26_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0, S_1, S_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  input S_1, S_0;
  wire w_1, w_0;

  OAI221 inst_w_1 (.A(A_0), .B(S_1), .C(B_0), .D(S_0), .Q(w_1));
  AOI221 inst_w_0 (.A(A_1), .B(S_0), .C(B_1), .D(S_1), .Q(w_0));
  
  BUF6 inst_Q_1 (.A(w_1), .Q(Q_1));
  BUF6 inst_Q_0 (.A(w_0), .Q(Q_0));
endmodule


// 3:1 Multiplexer (1234x)

module MUX31_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX21_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX31_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX21_pdr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX32_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX22_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX32_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX22_pdr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX33_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX24_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX33_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX24_pdr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX34_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX24_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX34_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));

  MUX24_pdr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 4:1 Multiplexer (123x)

module MUX41_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));
  
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  MUX21_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX41_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));
  
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  MUX21_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX42_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));
  
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  MUX22_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX42_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));
  
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  MUX22_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX43_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));
  
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  MUX24_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module MUX43_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0, S0_1, S0_0, S1_1, S1_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  input S0_1, S0_0;
  input S1_1, S1_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;
  wire spinv_S1_1, spinv_S1_0;
  
  MUX21_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w0_1), .Q_0(w0_0));
  MUX21_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .S_1(S0_1), .S_0(S0_0), .Q_1(w1_1), .Q_0(w1_0));
  
  spinv1_ndr inst_spinv_S1 (.i_1(S1_1), .i_0(S1_0), .z_1(spinv_S1_1), .z_0(spinv_S1_0));
  MUX24_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .S_1(spinv_S1_1), .S_0(spinv_S1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 2-Input XNOR (012x)

module XNR20_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XNR20_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv0_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module XNR20_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  AOI220 inst_Q_1 (.A(A_0), .B(B_1), .C(A_1), .D(B_0), .Q(Q_1));
  OAI220 inst_Q_0 (.A(A_1), .B(B_0), .C(A_0), .D(B_1), .Q(Q_0));
endmodule


module XNR21_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XNR21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module XNR21_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  AOI221 inst_Q_1 (.A(A_0), .B(B_1), .C(A_1), .D(B_0), .Q(Q_1));
  OAI221 inst_Q_0 (.A(A_1), .B(B_0), .C(A_0), .D(B_1), .Q(Q_0));
endmodule


module XNR22_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XNR21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv2_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module XNR22_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  AOI222 inst_Q_1 (.A(A_0), .B(B_1), .C(A_1), .D(B_0), .Q(Q_1));
  OAI222 inst_Q_0 (.A(A_1), .B(B_0), .C(A_0), .D(B_1), .Q(Q_0));
endmodule


// 3-Input XNOR (01x)

module XNR30_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;

  XOR20_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  XNR20_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XNR30_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR20_pdr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  XNR20_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(C_1), .B_0(C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XNR31_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;

  XOR21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  XNR21_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XNR31_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR21_pdr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  XNR21_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(C_1), .B_0(C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 4-Input XNOR (01x)

module XNR40_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XNR20_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XNR40_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XNR20_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XNR41_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XNR21_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XNR41_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XNR21_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 2-Input XOR (012x)

module XOR20_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR20_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv0_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module XOR20_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  OAI220 inst_Q_1 (.A(A_1), .B(B_0), .C(A_0), .D(B_1), .Q(Q_1));
  AOI220 inst_Q_0 (.A(A_0), .B(B_1), .C(A_1), .D(B_0), .Q(Q_0));
endmodule


module XOR21_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module XOR21_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  OAI221 inst_Q_1 (.A(A_1), .B(B_0), .C(A_0), .D(B_1), .Q(Q_1));
  AOI221 inst_Q_0 (.A(A_0), .B(B_1), .C(A_1), .D(B_0), .Q(Q_0));
endmodule


module XOR22_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv2_ndr inst_Q (.i_1(w_1), .i_0(w_0), .z_1(Q_1), .z_0(Q_0));
endmodule


module XOR22_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  output Q_1, Q_0;

  OAI222 inst_Q_1 (.A(A_1), .B(B_0), .C(A_0), .D(B_1), .Q(Q_1));
  AOI222 inst_Q_0 (.A(A_0), .B(B_1), .C(A_1), .D(B_0), .Q(Q_0));
endmodule


// 3-Input XOR (01x)

module XOR30_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;

  XOR20_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv0_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  XOR20_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XOR30_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR20_pdr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  XOR20_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(C_1), .B_0(C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XOR31_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;
  wire spinv_C_1, spinv_C_0;

  XOR21_ndr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  spinv1_ndr inst_spinv_C (.i_1(C_1), .i_0(C_0), .z_1(spinv_C_1), .z_0(spinv_C_0));
  XOR21_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(spinv_C_1), .B_0(spinv_C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XOR31_ndr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  output Q_1, Q_0;
  wire w_1, w_0;

  XOR21_pdr inst_w (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w_1), .Q_0(w_0));
  XOR21_ndr inst_Q (.A_1(w_1), .A_0(w_0), .B_1(C_1), .B_0(C_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


// 4-Input XOR (01x)

module XOR40_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XOR20_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XOR40_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XOR20_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XOR41_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XOR20_ndr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule


module XOR41_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0);
  input A_1, A_0;
  input B_1, B_0;
  input C_1, C_0;
  input D_1, D_0;
  output Q_1, Q_0;
  wire w0_1, w0_0;
  wire w1_1, w1_0;

  XOR20_ndr inst_w0 (.A_1(A_1), .A_0(A_0), .B_1(B_1), .B_0(B_0), .Q_1(w0_1), .Q_0(w0_0));
  XOR20_ndr inst_w1 (.A_1(C_1), .A_0(C_0), .B_1(D_1), .B_0(D_0), .Q_1(w1_1), .Q_0(w1_0));
  XOR20_pdr inst_Q (.A_1(w0_1), .A_0(w0_0), .B_1(w1_1), .B_0(w1_0), .Q_1(Q_1), .Q_0(Q_0));
endmodule
