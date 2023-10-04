module AND2_pdr (A_1, A_0, B_1, B_0, Q_1, Q_0); // d=-1 w=1 complex pdr sp0 cd
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  input B_1; // d=-1 l=-1
  input B_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 4;
//  parameter invertor_number = 2;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 12;
//  parameter area = 146;

  AND2 inst_rail_1 (.A(A_1), .B(B_1), .Q(Q_1)); // d=0 w=1 l=0 sr
  OR2 inst_rail_0 (.A(A_0), .B(B_0), .Q(Q_0)); // d=0 w=1 l=0 sr
endmodule

module AO222_pdr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, E_1, E_0, F_1, F_0, Q_1, Q_0); // d=-1 w=1 complex pdr sp0 cd
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  input B_1; // d=-1 l=-1
  input B_0; // d=-1 l=-1
  input C_1; // d=-1 l=-1
  input C_0; // d=-1 l=-1
  input D_1; // d=-1 l=-1
  input D_0; // d=-1 l=-1
  input E_1; // d=-1 l=-1
  input E_0; // d=-1 l=-1
  input F_1; // d=-1 l=-1
  input F_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 4;
//  parameter invertor_number = 2;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 26;
//  parameter area = 346;

  AO222 inst_rail_1 (.A(A_1), .B(B_1), .C(C_1), .D(D_1), .E(E_1), .F(F_1), .Q(Q_1)); // d=0 w=1 l=0 sr
  OA222 inst_rail_0 (.A(A_0), .B(B_0), .C(C_0), .D(D_0), .E(E_0), .F(F_0), .Q(Q_0)); // d=0 w=1 l=0 sr
endmodule

module cp05d1 (a1, a2, a3, a4, a5, q, qn, sdn); // d=-1 w=0 complex sr
  input a1; // d=-1 l=-1
  input a2; // d=-1 l=-1
  input a3; // d=-1 l=-1
  input a4; // d=-1 l=-1
  input a5; // d=-1 l=-1
  wire t1_l0_n0; // d=-1 l=-1
  wire t1_l0_n1; // d=-1 l=-1
  wire t1_l1_n0; // d=-1 l=-1
  wire t2_l0_n0; // d=-1 l=-1
  wire t2_l0_n1; // d=-1 l=-1
  wire t2_l1_n0; // d=-1 l=-1
  output q; // d=-1 l=-1
  output qn; // d=-1 l=-1
  input sdn; // d=-1 l=-1

  cp02d1 inst_q (.a1(t1_l1_n0), .a2(t2_l1_n0), .q(q), .qn(qn), .sdn(sdn)); // d=0 w=1 l=0 sr
  NA2 inst_t1_l0_n0 (.A(a1), .B(a2), .Q(t1_l0_n0)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n1 (.A(a3), .B(a4), .C(a5), .Q(t1_l0_n1)); // d=-1 w=1 l=-1 sr
  NO2 inst_t1_l1_n0 (.A(t1_l0_n0), .B(t1_l0_n1), .Q(t1_l1_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l0_n0 (.A(a1), .B(a2), .Q(t2_l0_n0)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n1 (.A(a3), .B(a4), .C(a5), .Q(t2_l0_n1)); // d=-1 w=1 l=-1 sr
  NA2 inst_t2_l1_n0 (.A(t2_l0_n0), .B(t2_l0_n1), .Q(t2_l1_n0)); // d=-1 w=1 l=-1 sr
endmodule

