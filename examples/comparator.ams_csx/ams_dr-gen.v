module IN1_ndr (A_1, A_0, Q_1, Q_0); // d=-1 w=1 complex ndr sp1
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 2;
//  parameter invertor_number = 2;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 4;
//  parameter area = 72;

  IN1 inst_rail_1 (.A(A_1), .Q(Q_1)); // d=0 w=1 l=0 sr
  IN1 inst_rail_0 (.A(A_0), .Q(Q_0)); // d=0 w=1 l=0 sr
endmodule

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

module AO22_ndr (A_1, A_0, B_1, B_0, C_1, C_0, D_1, D_0, Q_1, Q_0); // d=-1 w=1 complex ndr sp0 cd
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  input B_1; // d=-1 l=-1
  input B_0; // d=-1 l=-1
  input C_1; // d=-1 l=-1
  input C_0; // d=-1 l=-1
  input D_1; // d=-1 l=-1
  input D_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 2;
//  parameter invertor_number = 0;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 16;
//  parameter area = 218;

  AN22 inst_rail_1 (.A(A_1), .B(B_1), .C(C_1), .D(D_1), .Q(Q_0)); // d=0 w=1 l=0 sr
  ON22 inst_rail_0 (.A(A_0), .B(B_0), .C(C_0), .D(D_0), .Q(Q_1)); // d=0 w=1 l=0 sr
endmodule

module AO21_pdr (A_1, A_0, B_1, B_0, C_1, C_0, Q_1, Q_0); // d=-1 w=1 complex pdr sp0 cd
  input A_1; // d=-1 l=-1
  input A_0; // d=-1 l=-1
  input B_1; // d=-1 l=-1
  input B_0; // d=-1 l=-1
  input C_1; // d=-1 l=-1
  input C_0; // d=-1 l=-1
  output Q_1; // d=-1 l=-1
  output Q_0; // d=-1 l=-1

//  parameter negative_gate_number = 4;
//  parameter invertor_number = 2;
//  parameter flip_flop_number = 0;
//  parameter transistor_number = 14;
//  parameter area = 218;

  AO21 inst_rail_1 (.A(A_1), .B(B_1), .C(C_1), .Q(Q_1)); // d=0 w=1 l=0 sr
  OA21 inst_rail_0 (.A(A_0), .B(B_0), .C(C_0), .Q(Q_0)); // d=0 w=1 l=0 sr
endmodule

module cp010d1 (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, q, qn, sdn); // d=-1 w=0 complex sr
  input a1; // d=-1 l=-1
  input a2; // d=-1 l=-1
  input a3; // d=-1 l=-1
  input a4; // d=-1 l=-1
  input a5; // d=-1 l=-1
  input a6; // d=-1 l=-1
  input a7; // d=-1 l=-1
  input a8; // d=-1 l=-1
  input a9; // d=-1 l=-1
  input a10; // d=-1 l=-1
  wire t1_l0_n0; // d=-1 l=-1
  wire t1_l0_n1; // d=-1 l=-1
  wire t1_l0_n2; // d=-1 l=-1
  wire t1_l0_n3; // d=-1 l=-1
  wire t1_l1_n0; // d=-1 l=-1
  wire t1_l1_n1; // d=-1 l=-1
  wire t1_l2_n0; // d=-1 l=-1
  wire t2_l0_n0; // d=-1 l=-1
  wire t2_l0_n1; // d=-1 l=-1
  wire t2_l0_n2; // d=-1 l=-1
  wire t2_l0_n3; // d=-1 l=-1
  wire t2_l1_n0; // d=-1 l=-1
  wire t2_l1_n1; // d=-1 l=-1
  wire t2_l2_n0; // d=-1 l=-1
  output q; // d=-1 l=-1
  output qn; // d=-1 l=-1
  input sdn; // d=-1 l=-1

  cc02d1 inst_q (.a1(t1_l2_n0), .a2(t2_l2_n0), .q(qn), .qn(q), .cdn(sdn)); // d=0 w=1 l=0 sr
  NA2 inst_t1_l0_n0 (.A(a1), .B(a2), .Q(t1_l0_n0)); // d=-1 w=1 l=-1 sr
  NA2 inst_t1_l0_n1 (.A(a3), .B(a4), .Q(t1_l0_n1)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n2 (.A(a5), .B(a6), .C(a7), .Q(t1_l0_n2)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n3 (.A(a8), .B(a9), .C(a10), .Q(t1_l0_n3)); // d=-1 w=1 l=-1 sr
  NO2 inst_t1_l1_n0 (.A(t1_l0_n0), .B(t1_l0_n1), .Q(t1_l1_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t1_l1_n1 (.A(t1_l0_n2), .B(t1_l0_n3), .Q(t1_l1_n1)); // d=-1 w=1 l=-1 sr
  NA2 inst_t1_l2_n0 (.A(t1_l1_n0), .B(t1_l1_n1), .Q(t1_l2_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l0_n0 (.A(a1), .B(a2), .Q(t2_l0_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l0_n1 (.A(a3), .B(a4), .Q(t2_l0_n1)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n2 (.A(a5), .B(a6), .C(a7), .Q(t2_l0_n2)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n3 (.A(a8), .B(a9), .C(a10), .Q(t2_l0_n3)); // d=-1 w=1 l=-1 sr
  NA2 inst_t2_l1_n0 (.A(t2_l0_n0), .B(t2_l0_n1), .Q(t2_l1_n0)); // d=-1 w=1 l=-1 sr
  NA2 inst_t2_l1_n1 (.A(t2_l0_n2), .B(t2_l0_n3), .Q(t2_l1_n1)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l2_n0 (.A(t2_l1_n0), .B(t2_l1_n1), .Q(t2_l2_n0)); // d=-1 w=1 l=-1 sr
endmodule

module cp022d1 (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, q, qn, sdn); // d=-1 w=0 complex sr
  input a1; // d=-1 l=-1
  input a2; // d=-1 l=-1
  input a3; // d=-1 l=-1
  input a4; // d=-1 l=-1
  input a5; // d=-1 l=-1
  input a6; // d=-1 l=-1
  input a7; // d=-1 l=-1
  input a8; // d=-1 l=-1
  input a9; // d=-1 l=-1
  input a10; // d=-1 l=-1
  input a11; // d=-1 l=-1
  input a12; // d=-1 l=-1
  input a13; // d=-1 l=-1
  input a14; // d=-1 l=-1
  input a15; // d=-1 l=-1
  input a16; // d=-1 l=-1
  input a17; // d=-1 l=-1
  input a18; // d=-1 l=-1
  input a19; // d=-1 l=-1
  input a20; // d=-1 l=-1
  input a21; // d=-1 l=-1
  input a22; // d=-1 l=-1
  wire t1_l0_n0; // d=-1 l=-1
  wire t1_l0_n1; // d=-1 l=-1
  wire t1_l0_n2; // d=-1 l=-1
  wire t1_l0_n3; // d=-1 l=-1
  wire t1_l0_n4; // d=-1 l=-1
  wire t1_l0_n5; // d=-1 l=-1
  wire t1_l0_n6; // d=-1 l=-1
  wire t1_l0_n7; // d=-1 l=-1
  wire t1_l1_n0; // d=-1 l=-1
  wire t1_l1_n1; // d=-1 l=-1
  wire t1_l1_n2; // d=-1 l=-1
  wire t1_l2_n0; // d=-1 l=-1
  wire t2_l0_n0; // d=-1 l=-1
  wire t2_l0_n1; // d=-1 l=-1
  wire t2_l0_n2; // d=-1 l=-1
  wire t2_l0_n3; // d=-1 l=-1
  wire t2_l0_n4; // d=-1 l=-1
  wire t2_l0_n5; // d=-1 l=-1
  wire t2_l0_n6; // d=-1 l=-1
  wire t2_l0_n7; // d=-1 l=-1
  wire t2_l1_n0; // d=-1 l=-1
  wire t2_l1_n1; // d=-1 l=-1
  wire t2_l1_n2; // d=-1 l=-1
  wire t2_l2_n0; // d=-1 l=-1
  output q; // d=-1 l=-1
  output qn; // d=-1 l=-1
  input sdn; // d=-1 l=-1

  cc02d1 inst_q (.a1(t1_l2_n0), .a2(t2_l2_n0), .q(qn), .qn(q), .cdn(sdn)); // d=0 w=1 l=0 sr
  NA2 inst_t1_l0_n0 (.A(a1), .B(a2), .Q(t1_l0_n0)); // d=-1 w=1 l=-1 sr
  NA2 inst_t1_l0_n1 (.A(a3), .B(a4), .Q(t1_l0_n1)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n2 (.A(a5), .B(a6), .C(a7), .Q(t1_l0_n2)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n3 (.A(a8), .B(a9), .C(a10), .Q(t1_l0_n3)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n4 (.A(a11), .B(a12), .C(a13), .Q(t1_l0_n4)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n5 (.A(a14), .B(a15), .C(a16), .Q(t1_l0_n5)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n6 (.A(a17), .B(a18), .C(a19), .Q(t1_l0_n6)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l0_n7 (.A(a20), .B(a21), .C(a22), .Q(t1_l0_n7)); // d=-1 w=1 l=-1 sr
  NO2 inst_t1_l1_n0 (.A(t1_l0_n0), .B(t1_l0_n1), .Q(t1_l1_n0)); // d=-1 w=1 l=-1 sr
  NO3 inst_t1_l1_n1 (.A(t1_l0_n2), .B(t1_l0_n3), .C(t1_l0_n4), .Q(t1_l1_n1)); // d=-1 w=1 l=-1 sr
  NO3 inst_t1_l1_n2 (.A(t1_l0_n5), .B(t1_l0_n6), .C(t1_l0_n7), .Q(t1_l1_n2)); // d=-1 w=1 l=-1 sr
  NA3 inst_t1_l2_n0 (.A(t1_l1_n0), .B(t1_l1_n1), .C(t1_l1_n2), .Q(t1_l2_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l0_n0 (.A(a1), .B(a2), .Q(t2_l0_n0)); // d=-1 w=1 l=-1 sr
  NO2 inst_t2_l0_n1 (.A(a3), .B(a4), .Q(t2_l0_n1)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n2 (.A(a5), .B(a6), .C(a7), .Q(t2_l0_n2)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n3 (.A(a8), .B(a9), .C(a10), .Q(t2_l0_n3)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n4 (.A(a11), .B(a12), .C(a13), .Q(t2_l0_n4)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n5 (.A(a14), .B(a15), .C(a16), .Q(t2_l0_n5)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n6 (.A(a17), .B(a18), .C(a19), .Q(t2_l0_n6)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l0_n7 (.A(a20), .B(a21), .C(a22), .Q(t2_l0_n7)); // d=-1 w=1 l=-1 sr
  NA2 inst_t2_l1_n0 (.A(t2_l0_n0), .B(t2_l0_n1), .Q(t2_l1_n0)); // d=-1 w=1 l=-1 sr
  NA3 inst_t2_l1_n1 (.A(t2_l0_n2), .B(t2_l0_n3), .C(t2_l0_n4), .Q(t2_l1_n1)); // d=-1 w=1 l=-1 sr
  NA3 inst_t2_l1_n2 (.A(t2_l0_n5), .B(t2_l0_n6), .C(t2_l0_n7), .Q(t2_l1_n2)); // d=-1 w=1 l=-1 sr
  NO3 inst_t2_l2_n0 (.A(t2_l1_n0), .B(t2_l1_n1), .C(t2_l1_n2), .Q(t2_l2_n0)); // d=-1 w=1 l=-1 sr
endmodule

