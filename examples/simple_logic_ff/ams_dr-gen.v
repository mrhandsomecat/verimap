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

