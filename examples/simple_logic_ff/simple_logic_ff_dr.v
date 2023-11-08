module simple_logic_ff_0dr (clk, out_1, out_0, a_1, a_0, b_1, b_0, c_1, c_0, d_1, d_0, reset, spacer); // d=0 w=3 complex init 0dr
  input clk; // d=1 l=1 sr
  output out_1; // d=0 l=0 dr sp0
  output out_0; // d=0 l=0 dr sp0
  input a_1; // d=3 l=3 dr sp0
  input a_0; // d=3 l=3 dr sp0
  input b_1; // d=3 l=3 dr sp0
  input b_0; // d=3 l=3 dr sp0
  input c_1; // d=3 l=3 dr sp0
  input c_0; // d=3 l=3 dr sp0
  input d_1; // d=3 l=3 dr sp0
  input d_0; // d=3 l=3 dr sp0
  input reset; // d=1 l=1 sr
  wire N3_1; // d=1 l=1 dr sp0
  wire N3_0; // d=1 l=1 dr sp0
  wire temp1_1; // d=2 l=2 dr sp1
  wire temp1_0; // d=2 l=2 dr sp1
  wire N1_1; // d=-1 l=-1
  wire N1_0; // d=-1 l=-1
  wire temp2_1; // d=2 l=2 dr sp1
  wire temp2_0; // d=2 l=2 dr sp1
  wire N2_1; // d=-1 l=-1
  wire N2_0; // d=-1 l=-1
  input spacer; // d=-1 l=-1 sr

  OR2_ndr C10 (.A_1(a_1), .A_0(a_0), .B_1(b_1), .B_0(b_0), .Q_1(temp1_1), .Q_0(temp1_0)); // d=2 w=1 l=2 complex ndr sp1 cd
  OR2_ndr C11 (.A_1(c_1), .A_0(c_0), .B_1(d_1), .B_0(d_0), .Q_1(temp2_1), .Q_0(temp2_0)); // d=2 w=1 l=2 complex ndr sp1 cd
  AND2_ndr C12 (.A_1(temp1_1), .A_0(temp1_0), .B_1(temp2_1), .B_0(temp2_0), .Q_1(N3_1), .Q_0(N3_0)); // d=1 w=1 l=1 complex ndr sp0 cd
  DFA_0dr temp1_reg (.C(clk), .D_1(temp1_1), .D_0(temp1_0), .Q_1(N1_1), .Q_0(N1_0), .RN(reset), .SP(spacer)); // d=-1 w=1 l=-1 init ff 0dr
  DFA_0dr temp2_reg (.C(clk), .D_1(temp2_1), .D_0(temp2_0), .Q_1(N2_1), .Q_0(N2_0), .RN(reset), .SP(spacer)); // d=-1 w=1 l=-1 init ff 0dr
  DFA_0dr out_reg (.C(clk), .D_1(N3_1), .D_0(N3_0), .Q_1(out_1), .Q_0(out_0), .RN(reset), .SP(spacer)); // d=0 w=1 l=0 init ff 0dr sp0
endmodule

