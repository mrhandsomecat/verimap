module OR2_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0); // d=-1 w=1 complex ndr sp1 cd
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  input B_1; // d=-1 l=-1
  input B_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 2;
//  parameter invertor_number = 0;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 8;
//  parameter area = 110;

  NO2 inst_rail_1 (.A(A_1), .B(B_1), .Q(Q_0)); // d=0 w=1 l=0 sr
  NA2 inst_rail_0 (.A(A_0), .B(B_0), .Q(Q_1)); // d=0 w=1 l=0 sr
endmodule

module AND2_ndr (A_1, A_0, B_1, B_0, Q_1, Q_0); // d=-1 w=1 complex ndr sp0 cd
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  input B_1; // d=-1 l=-1
  input B_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 2;
//  parameter invertor_number = 0;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 8;
//  parameter area = 110;

  NA2 inst_rail_1 (.A(A_1), .B(B_1), .Q(Q_0)); // d=0 w=1 l=0 sr
  NO2 inst_rail_0 (.A(A_0), .B(B_0), .Q(Q_1)); // d=0 w=1 l=0 sr
endmodule

module cp08d1 (a1, a2, a3, a4, a5, a6, a7, a8, q, qn, sdn); // d=-1 w=0 complex sr
  input a1; // d=-1 l=-1
  input a2; // d=-1 l=-1
  input a3; // d=-1 l=-1
  input a4; // d=-1 l=-1
  input a5; // d=-1 l=-1
  input a6; // d=-1 l=-1
  input a7; // d=-1 l=-1
  input a8; // d=-1 l=-1
  wire t1_l0_n0; // d=-1 l=-1
  wire t1_l0_n1; // d=-1 l=-1
  wire t1_l0_n2; // d=-1 l=-1
  wire t1_l1_n0; // d=-1 l=-1
  wire t2_l0_n0; // d=-1 l=-1
  wire t2_l0_n1; // d=-1 l=-1
  wire t2_l0_n2; // d=-1 l=-1
  wire t2_l1_n0; // d=-1 l=-1
  output q; // d=-1 l=-1
  output qn; // d=-1 l=-1
  input sdn; // d=-1 l=-1

  cp02d1 inst_q (.a1(t1_l1_n0), .a2(t2_l1_n0), .q(q), .qn(qn), .sdn(sdn)); // d=0 w=1 l=0 sr
  NA2 inst_t1_l0_n0 (.A(a1), .B(a2), .Q(t1_l0_n0)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n1 (.A(a3), .B(a4), .C(a5), .Q(t1_l0_n1)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n2 (.A(a6), .B(a7), .C(a8), .Q(t1_l0_n2)); // d=-1 w=1 l=-1 sr
  NO3 inst_t1_l1_n0 (.A(t1_l0_n0), .B(t1_l0_n1), .C(t1_l0_n2), .Q(t1_l1_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l0_n0 (.A(a1), .B(a2), .Q(t2_l0_n0)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n1 (.A(a3), .B(a4), .C(a5), .Q(t2_l0_n1)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n2 (.A(a6), .B(a7), .C(a8), .Q(t2_l0_n2)); // d=-1 w=1 l=-1 sr
  NA3 inst_t2_l1_n0 (.A(t2_l0_n0), .B(t2_l0_n1), .C(t2_l0_n2), .Q(t2_l1_n0)); // d=-1 w=1 l=-1 sr
endmodule

