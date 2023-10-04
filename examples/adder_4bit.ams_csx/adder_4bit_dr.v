module adder_4bit_pdr (a_1, a_0, b_1, b_0, s_1, s_0, go, done, reset); // d=0 w=4 complex pdr
  input [3:0] a_1; // d=1 l=1 dr sp0 cd
  input [3:0] a_0; // d=1 l=1 dr sp0 cd
  input [3:0] b_1; // d=1 l=1 dr sp0 cd
  input [3:0] b_0; // d=1 l=1 dr sp0 cd
  output [4:0] s_1; // d=0 l=0 dr sp0 cd
  output [4:0] s_0; // d=0 l=0 dr sp0 cd
  wire [2:0] c_1; // d=1 l=1 dr sp0 cd
  wire [2:0] c_0; // d=1 l=1 dr sp0 cd
  wire a_3_cd; // d=0 l=0
  wire b_3_cd; // d=0 l=0
  wire s_4_cd; // d=-1 l=-1
  wire c_2_cd; // d=0 l=0
  input go; // d=-1 l=-1
  output done; // d=-1 l=-1
  input reset; // d=-1 l=-1 sr
  wire reset_not; // d=-1 l=-1 sr

  EO1_pdr inst_s[0] (.A_1(a_1[0]), .A_0(a_0[0]), .B_1(b_1[0]), .B_0(b_0[0]), .Q_1(s_1[0]), .Q_0(s_0[0])); // d=0 w=1 l=0 complex pdr sp0
  AND2_pdr inst_c[0] (.A_1(a_1[0]), .A_0(a_0[0]), .B_1(b_1[0]), .B_0(b_0[0]), .Q_1(c_1[0]), .Q_0(c_0[0])); // d=3 w=1 l=1 complex pdr sp0 cd
  EO3_pdr inst_s[1] (.A_1(a_1[1]), .A_0(a_0[1]), .B_1(b_1[1]), .B_0(b_0[1]), .C_1(c_1[0]), .C_0(c_0[0]), .Q_1(s_1[1]), .Q_0(s_0[1])); // d=0 w=1 l=0 complex pdr sp0
  AO222_pdr inst_c[1] (.A_1(a_1[1]), .A_0(a_0[1]), .B_1(b_1[1]), .B_0(b_0[1]), .C_1(a_1[1]), .C_0(a_0[1]), .D_1(c_1[0]), .D_0(c_0[0]), .E_1(b_1[1]), .E_0(b_0[1]), .F_1(c_1[0]), .F_0(c_0[0]), .Q_1(c_1[1]), .Q_0(c_0[1])); // d=2 w=1 l=1 complex pdr sp0 cd
  EO3_pdr inst_s[2] (.A_1(a_1[2]), .A_0(a_0[2]), .B_1(b_1[2]), .B_0(b_0[2]), .C_1(c_1[1]), .C_0(c_0[1]), .Q_1(s_1[2]), .Q_0(s_0[2])); // d=0 w=1 l=0 complex pdr sp0
  AO222_pdr inst_c[2] (.A_1(a_1[2]), .A_0(a_0[2]), .B_1(b_1[2]), .B_0(b_0[2]), .C_1(a_1[2]), .C_0(a_0[2]), .D_1(c_1[1]), .D_0(c_0[1]), .E_1(b_1[2]), .E_0(b_0[2]), .F_1(c_1[1]), .F_0(c_0[1]), .Q_1(c_1[2]), .Q_0(c_0[2])); // d=1 w=1 l=1 complex pdr sp0 cd
  EO3_pdr inst_s[3] (.A_1(a_1[3]), .A_0(a_0[3]), .B_1(b_1[3]), .B_0(b_0[3]), .C_1(c_1[2]), .C_0(c_0[2]), .Q_1(s_1[3]), .Q_0(s_0[3])); // d=0 w=1 l=0 complex pdr sp0
  AO222_pdr inst_c[3] (.A_1(a_1[3]), .A_0(a_0[3]), .B_1(b_1[3]), .B_0(b_0[3]), .C_1(a_1[3]), .C_0(a_0[3]), .D_1(c_1[2]), .D_0(c_0[2]), .E_1(b_1[3]), .E_0(b_0[3]), .F_1(c_1[2]), .F_0(c_0[2]), .Q_1(s_1[4]), .Q_0(s_0[4])); // d=0 w=1 l=0 complex pdr sp0 cd
  XR2 inst_a_3_cd (.A(a_1[3]), .B(a_0[3]), .Q(a_3_cd)); // d=0 w=1 l=0
  XR2 inst_b_3_cd (.A(b_1[3]), .B(b_0[3]), .Q(b_3_cd)); // d=0 w=1 l=0
  XR2 inst_s_4_cd (.A(s_1[4]), .B(s_0[4]), .Q(s_4_cd)); // d=-1 w=1 l=-1
  XR2 inst_c_2_cd (.A(c_1[2]), .B(c_0[2]), .Q(c_2_cd)); // d=0 w=1 l=0
  cp05d1 inst_done (.a1(a_3_cd), .a2(b_3_cd), .a3(s_4_cd), .a4(c_2_cd), .a5(go), .q(done), .qn(), .sdn(reset_not)); // d=0 w=1 l=0 sr
  IN1 inst_reset_not (.A(reset), .Q(reset_not)); // d=-1 w=1 l=-1 pdr sr
endmodule

