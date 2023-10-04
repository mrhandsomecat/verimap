module simple_logic_pdr (out_1, out_0, a_1, a_0, b_1, b_0, c_1, c_0, d_1, d_0); // d=0 w=-1 complex pdr
  output out_1; // d=0 l=0 dr sp0
  output out_0; // d=0 l=0 dr sp0
  input a_1; // d=-1 l=-1 dr sp0
  input a_0; // d=-1 l=-1 dr sp0
  input b_1; // d=-1 l=-1 dr sp0
  input b_0; // d=-1 l=-1 dr sp0
  input c_1; // d=-1 l=-1 dr sp0
  input c_0; // d=-1 l=-1 dr sp0
  input d_1; // d=-1 l=-1 dr sp0
  input d_0; // d=-1 l=-1 dr sp0
  wire temp1_1; // d=-1 l=-1
  wire temp1_0; // d=-1 l=-1
  wire temp2_1; // d=-1 l=-1
  wire temp2_0; // d=-1 l=-1

  OR2_ndr C9 (.A_1(a_1), .A_0(a_0), .B_1(b_1), .B_0(b_0), .Q_1( ), .Q_0( ), .Z_1(temp1_1), .Z_0(temp1_0)); // d=-1 w=1 l=-1 complex ndr cd
  OR2_ndr C10 (.A_1(c_1), .A_0(c_0), .B_1(d_1), .B_0(d_0), .Q_1( ), .Q_0( ), .Z_1(temp2_1), .Z_0(temp2_0)); // d=-1 w=1 l=-1 complex ndr cd
  AND2_ndr C11 (.A_1(temp1_1), .A_0(temp1_0), .B_1(temp2_1), .B_0(temp2_0), .Q_1( ), .Q_0( ), .Z_1(out_1), .Z_0(out_0)); // d=-1 w=1 l=-1 complex ndr cd
endmodule

