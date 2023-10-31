module simple_logic_pdr (out_1, out_0, a_1, a_0, b_1, b_0, c_1, c_0, d_1, d_0, go, done, reset); // d=0 w=2 complex pdr
  output out_1; // d=0 l=0 dr sp0 cd
  output out_0; // d=0 l=0 dr sp0 cd
  input a_1; // d=2 l=2 dr sp0 cd
  input a_0; // d=2 l=2 dr sp0 cd
  input b_1; // d=2 l=2 dr sp0 cd
  input b_0; // d=2 l=2 dr sp0 cd
  input c_1; // d=2 l=2 dr sp0 cd
  input c_0; // d=2 l=2 dr sp0 cd
  input d_1; // d=2 l=2 dr sp0 cd
  input d_0; // d=2 l=2 dr sp0 cd
  wire temp1_1; // d=1 l=1 dr sp1 cd
  wire temp1_0; // d=1 l=1 dr sp1 cd
  wire temp2_1; // d=1 l=1 dr sp1 cd
  wire temp2_0; // d=1 l=1 dr sp1 cd
  wire out_cd; // d=-1 l=-1
  wire a_cd; // d=1 l=1
  wire b_cd; // d=1 l=1
  wire c_cd; // d=1 l=1
  wire d_cd; // d=1 l=1
  wire temp1_cd; // d=0 l=0
  wire temp2_cd; // d=0 l=0
  input go; // d=-1 l=-1
  output done; // d=-1 l=-1
  input reset; // d=-1 l=-1 sr

  OR2_ndr C9 (.A_1(a_1), .A_0(a_0), .B_1(b_1), .B_0(b_0), .Q_1(temp1_1), .Q_0(temp1_0)); // d=1 w=1 l=1 complex ndr sp1 cd
  OR2_ndr C10 (.A_1(c_1), .A_0(c_0), .B_1(d_1), .B_0(d_0), .Q_1(temp2_1), .Q_0(temp2_0)); // d=1 w=1 l=1 complex ndr sp1 cd
  AND2_ndr C11 (.A_1(temp1_1), .A_0(temp1_0), .B_1(temp2_1), .B_0(temp2_0), .Q_1(out_1), .Q_0(out_0)); // d=0 w=1 l=0 complex ndr sp0 cd
  XR2 inst_out_cd (.A(out_1), .B(out_0), .Q(out_cd)); // d=-1 w=1 l=-1
  XR2 inst_a_cd (.A(a_1), .B(a_0), .Q(a_cd)); // d=1 w=1 l=1
  XR2 inst_b_cd (.A(b_1), .B(b_0), .Q(b_cd)); // d=1 w=1 l=1
  XR2 inst_c_cd (.A(c_1), .B(c_0), .Q(c_cd)); // d=1 w=1 l=1
  XR2 inst_d_cd (.A(d_1), .B(d_0), .Q(d_cd)); // d=1 w=1 l=1
  XR2 inst_temp1_cd (.A(temp1_1), .B(temp1_0), .Q(temp1_cd)); // d=0 w=1 l=0
  XR2 inst_temp2_cd (.A(temp2_1), .B(temp2_0), .Q(temp2_cd)); // d=0 w=1 l=0
  cp08d1 inst_done (.a1(out_cd), .a2(a_cd), .a3(b_cd), .a4(c_cd), .a5(d_cd), .a6(temp1_cd), .a7(temp2_cd), .a8(go), .q(done), .qn(), .sdn(reset)); // d=0 w=1 l=0 sr
endmodule

