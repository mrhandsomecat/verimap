module cmp_1bit_pdr (a_1, a_0, b_1, b_0, gt_1, gt_0, eq_1, eq_0, lt_1, lt_0, go, done, reset); // d=1 w=2 complex pdr
  input a_1; // d=2 l=2 dr sp0 cd
  input a_0; // d=2 l=2 dr sp0 cd
  input b_1; // d=2 l=2 dr sp0 cd
  input b_0; // d=2 l=2 dr sp0 cd
  output gt_1; // d=0 l=0 dr sp0 cd
  output gt_0; // d=0 l=0 dr sp0 cd
  output eq_1; // d=0 l=0 dr sp0 cd
  output eq_0; // d=0 l=0 dr sp0 cd
  output lt_1; // d=0 l=0 dr sp0 cd
  output lt_0; // d=0 l=0 dr sp0 cd
  wire not_a_1; // d=1 l=1 dr sp1 cd
  wire not_a_0; // d=1 l=1 dr sp1 cd
  wire not_b_1; // d=1 l=1 dr sp1 cd
  wire not_b_0; // d=1 l=1 dr sp1 cd
  wire spinv_a_1; // d=1 l=1 dr sp1 cd
  wire spinv_a_0; // d=1 l=1 dr sp1 cd
  wire spinv_b_1; // d=1 l=1 dr sp1 cd
  wire spinv_b_0; // d=1 l=1 dr sp1 cd
  wire a_cd; // d=1 l=1
  wire b_cd; // d=1 l=1
  wire gt_cd; // d=-1 l=-1
  wire eq_cd; // d=-1 l=-1
  wire lt_cd; // d=-1 l=-1
  wire not_a_cd; // d=0 l=0
  wire not_b_cd; // d=0 l=0
  wire spinv_a_cd; // d=0 l=0
  wire spinv_b_cd; // d=0 l=0
  input go; // d=-1 l=-1
  output done; // d=-1 l=-1
  input reset; // d=-1 l=-1 sr
  wire reset_not; // d=-1 l=-1 sr

  IN1_ndr inst_not_a (.A_1(a_1), .A_0(a_0), .Q_1(not_a_1), .Q_0(not_a_0)); // d=1 w=1 l=1 complex ndr sp1
  IN1_ndr inst_not_b (.A_1(b_1), .A_0(b_0), .Q_1(not_b_1), .Q_0(not_b_0)); // d=1 w=1 l=1 complex ndr sp1
  AND2_ndr inst_gt (.A_1(spinv_a_1), .A_0(spinv_a_0), .B_1(not_b_1), .B_0(not_b_0), .Q_1(gt_1), .Q_0(gt_0)); // d=0 w=1 l=0 complex ndr sp0 cd
  AO22_ndr inst_eq (.A_1(spinv_a_1), .A_0(spinv_a_0), .B_1(spinv_b_1), .B_0(spinv_b_0), .C_1(not_a_1), .C_0(not_a_0), .D_1(not_b_1), .D_0(not_b_0), .Q_1(eq_1), .Q_0(eq_0)); // d=0 w=1 l=0 complex ndr sp0 cd
  AND2_ndr inst_lt (.A_1(spinv_b_1), .A_0(spinv_b_0), .B_1(not_a_1), .B_0(not_a_0), .Q_1(lt_1), .Q_0(lt_0)); // d=0 w=1 l=0 complex ndr sp0 cd
  spinv1_ndr inst_spinv_a (.i_1(a_1), .i_0(a_0), .z_1(spinv_a_1), .z_0(spinv_a_0)); // d=1 w=1 l=1 complex ndr sp1
  spinv1_ndr inst_spinv_b (.i_1(b_1), .i_0(b_0), .z_1(spinv_b_1), .z_0(spinv_b_0)); // d=1 w=1 l=1 complex ndr sp1
  XR2 inst_a_cd (.A(a_1), .B(a_0), .Q(a_cd)); // d=1 w=1 l=1
  XR2 inst_b_cd (.A(b_1), .B(b_0), .Q(b_cd)); // d=1 w=1 l=1
  XR2 inst_gt_cd (.A(gt_1), .B(gt_0), .Q(gt_cd)); // d=-1 w=1 l=-1
  XR2 inst_eq_cd (.A(eq_1), .B(eq_0), .Q(eq_cd)); // d=-1 w=1 l=-1
  XR2 inst_lt_cd (.A(lt_1), .B(lt_0), .Q(lt_cd)); // d=-1 w=1 l=-1
  XR2 inst_not_a_cd (.A(not_a_1), .B(not_a_0), .Q(not_a_cd)); // d=0 w=1 l=0
  XR2 inst_not_b_cd (.A(not_b_1), .B(not_b_0), .Q(not_b_cd)); // d=0 w=1 l=0
  XR2 inst_spinv_a_cd (.A(spinv_a_1), .B(spinv_a_0), .Q(spinv_a_cd)); // d=0 w=1 l=0
  XR2 inst_spinv_b_cd (.A(spinv_b_1), .B(spinv_b_0), .Q(spinv_b_cd)); // d=0 w=1 l=0
  cp010d1 inst_done (.a1(a_cd), .a2(b_cd), .a3(gt_cd), .a4(eq_cd), .a5(lt_cd), .a6(not_a_cd), .a7(not_b_cd), .a8(spinv_a_cd), .a9(spinv_b_cd), .a10(go), .q(done), .qn(), .sdn(reset_not)); // d=0 w=1 l=0 sr
  IN1 inst_reset_not (.A(reset), .Q(reset_not)); // d=-1 w=1 l=-1 pdr sr
endmodule

module cmp_combiner_pdr (gt1_1, gt1_0, eq1_1, eq1_0, lt1_1, lt1_0, gt0_1, gt0_0, eq0_1, eq0_0, lt0_1, lt0_0, gt_1, gt_0, eq_1, eq_0, lt_1, lt_0, go, done, reset); // d=1 w=1 complex pdr
  input gt1_1; // d=1 l=1 dr sp0 cd
  input gt1_0; // d=1 l=1 dr sp0 cd
  input eq1_1; // d=1 l=1 dr sp0 cd
  input eq1_0; // d=1 l=1 dr sp0 cd
  input lt1_1; // d=1 l=1 dr sp0 cd
  input lt1_0; // d=1 l=1 dr sp0 cd
  input gt0_1; // d=1 l=1 dr sp0 cd
  input gt0_0; // d=1 l=1 dr sp0 cd
  input eq0_1; // d=1 l=1 dr sp0 cd
  input eq0_0; // d=1 l=1 dr sp0 cd
  input lt0_1; // d=1 l=1 dr sp0 cd
  input lt0_0; // d=1 l=1 dr sp0 cd
  output gt_1; // d=0 l=0 dr sp0 cd
  output gt_0; // d=0 l=0 dr sp0 cd
  output eq_1; // d=0 l=0 dr sp0 cd
  output eq_0; // d=0 l=0 dr sp0 cd
  output lt_1; // d=0 l=0 dr sp0 cd
  output lt_0; // d=0 l=0 dr sp0 cd
  wire gt1_cd; // d=0 l=0
  wire eq1_cd; // d=0 l=0
  wire lt1_cd; // d=0 l=0
  wire gt0_cd; // d=0 l=0
  wire eq0_cd; // d=0 l=0
  wire lt0_cd; // d=0 l=0
  wire gt_cd; // d=-1 l=-1
  wire eq_cd; // d=-1 l=-1
  wire lt_cd; // d=-1 l=-1
  input go; // d=-1 l=-1
  output done; // d=-1 l=-1
  input reset; // d=-1 l=-1 sr
  wire reset_not; // d=-1 l=-1 sr

  AO21_pdr inst_gt (.A_1(gt0_1), .A_0(gt0_0), .B_1(eq1_1), .B_0(eq1_0), .C_1(gt1_1), .C_0(gt1_0), .Q_1(gt_1), .Q_0(gt_0)); // d=0 w=1 l=0 complex pdr sp0 cd
  AND2_pdr inst_eq (.A_1(eq0_1), .A_0(eq0_0), .B_1(eq1_1), .B_0(eq1_0), .Q_1(eq_1), .Q_0(eq_0)); // d=0 w=1 l=0 complex pdr sp0 cd
  AO21_pdr inst_lt (.A_1(lt0_1), .A_0(lt0_0), .B_1(eq1_1), .B_0(eq1_0), .C_1(lt1_1), .C_0(lt1_0), .Q_1(lt_1), .Q_0(lt_0)); // d=0 w=1 l=0 complex pdr sp0 cd
  XR2 inst_gt1_cd (.A(gt1_1), .B(gt1_0), .Q(gt1_cd)); // d=0 w=1 l=0
  XR2 inst_eq1_cd (.A(eq1_1), .B(eq1_0), .Q(eq1_cd)); // d=0 w=1 l=0
  XR2 inst_lt1_cd (.A(lt1_1), .B(lt1_0), .Q(lt1_cd)); // d=0 w=1 l=0
  XR2 inst_gt0_cd (.A(gt0_1), .B(gt0_0), .Q(gt0_cd)); // d=0 w=1 l=0
  XR2 inst_eq0_cd (.A(eq0_1), .B(eq0_0), .Q(eq0_cd)); // d=0 w=1 l=0
  XR2 inst_lt0_cd (.A(lt0_1), .B(lt0_0), .Q(lt0_cd)); // d=0 w=1 l=0
  XR2 inst_gt_cd (.A(gt_1), .B(gt_0), .Q(gt_cd)); // d=-1 w=1 l=-1
  XR2 inst_eq_cd (.A(eq_1), .B(eq_0), .Q(eq_cd)); // d=-1 w=1 l=-1
  XR2 inst_lt_cd (.A(lt_1), .B(lt_0), .Q(lt_cd)); // d=-1 w=1 l=-1
  cp010d1 inst_done (.a1(gt1_cd), .a2(eq1_cd), .a3(lt1_cd), .a4(gt0_cd), .a5(eq0_cd), .a6(lt0_cd), .a7(gt_cd), .a8(eq_cd), .a9(lt_cd), .a10(go), .q(done), .qn(), .sdn(reset_not)); // d=0 w=1 l=0 sr
  IN1 inst_reset_not (.A(reset), .Q(reset_not)); // d=-1 w=1 l=-1 pdr sr
endmodule

module cmp_4bit_pdr (a_1, a_0, b_1, b_0, gt_1, gt_0, eq_1, eq_0, lt_1, lt_0, go, done, reset); // d=0 w=5 complex pdr
  input [3:0] a_1; // d=5 l=5 dr sp0 cd
  input [3:0] a_0; // d=5 l=5 dr sp0 cd
  input [3:0] b_1; // d=5 l=5 dr sp0 cd
  input [3:0] b_0; // d=5 l=5 dr sp0 cd
  output gt_1; // d=0 l=0 dr sp0 cd
  output gt_0; // d=0 l=0 dr sp0 cd
  output eq_1; // d=0 l=0 dr sp0 cd
  output eq_0; // d=0 l=0 dr sp0 cd
  output lt_1; // d=0 l=0 dr sp0 cd
  output lt_0; // d=0 l=0 dr sp0 cd
  wire [3:0] cmp_gt_1; // d=3 l=3 dr sp0 cd
  wire [3:0] cmp_gt_0; // d=3 l=3 dr sp0 cd
  wire [3:0] cmp_eq_1; // d=3 l=3 dr sp0 cd
  wire [3:0] cmp_eq_0; // d=3 l=3 dr sp0 cd
  wire [3:0] cmp_lt_1; // d=3 l=3 dr sp0 cd
  wire [3:0] cmp_lt_0; // d=3 l=3 dr sp0 cd
  wire cmp_gt_32_1; // d=2 l=2 dr sp0 cd
  wire cmp_gt_32_0; // d=2 l=2 dr sp0 cd
  wire cmp_eq_32_1; // d=2 l=2 dr sp0 cd
  wire cmp_eq_32_0; // d=2 l=2 dr sp0 cd
  wire cmp_lt_32_1; // d=2 l=2 dr sp0 cd
  wire cmp_lt_32_0; // d=2 l=2 dr sp0 cd
  wire cmp_gt_321_1; // d=1 l=1 dr sp0 cd
  wire cmp_gt_321_0; // d=1 l=1 dr sp0 cd
  wire cmp_eq_321_1; // d=1 l=1 dr sp0 cd
  wire cmp_eq_321_0; // d=1 l=1 dr sp0 cd
  wire cmp_lt_321_1; // d=1 l=1 dr sp0 cd
  wire cmp_lt_321_0; // d=1 l=1 dr sp0 cd
  wire a_3_cd; // d=4 l=4
  wire b_3_cd; // d=4 l=4
  wire gt_cd; // d=-1 l=-1
  wire eq_cd; // d=-1 l=-1
  wire lt_cd; // d=-1 l=-1
  wire cmp_gt_3_cd; // d=2 l=2
  wire cmp_eq_3_cd; // d=2 l=2
  wire cmp_lt_3_cd; // d=2 l=2
  wire cmp_gt_32_cd; // d=1 l=1
  wire cmp_eq_32_cd; // d=1 l=1
  wire cmp_lt_32_cd; // d=1 l=1
  wire cmp_gt_321_cd; // d=0 l=0
  wire cmp_eq_321_cd; // d=0 l=0
  wire cmp_lt_321_cd; // d=0 l=0
  input go; // d=-1 l=-1
  output done; // d=-1 l=-1
  wire inst_cmp_0_cd; // d=1 l=1
  input reset; // d=-1 l=-1 sr
  wire inst_cmp_1_cd; // d=2 l=2
  wire inst_cmp_2_cd; // d=3 l=3
  wire inst_cmp_3_cd; // d=3 l=3
  wire inst_32_cd; // d=2 l=2
  wire inst_321_cd; // d=1 l=1
  wire inst_3210_cd; // d=0 l=0
  wire reset_not; // d=-1 l=-1 sr

  cmp_1bit_pdr inst_cmp_0 (.a_1(a_1[0]), .a_0(a_0[0]), .b_1(b_1[0]), .b_0(b_0[0]), .gt_1(cmp_gt_1[0]), .gt_0(cmp_gt_0[0]), .eq_1(cmp_eq_1[0]), .eq_0(cmp_eq_0[0]), .lt_1(cmp_lt_1[0]), .lt_0(cmp_lt_0[0]), .go(go), .done(inst_cmp_0_cd), .reset(reset)); // d=1 w=2 l=1 complex pdr sp0
  cmp_1bit_pdr inst_cmp_1 (.a_1(a_1[1]), .a_0(a_0[1]), .b_1(b_1[1]), .b_0(b_0[1]), .gt_1(cmp_gt_1[1]), .gt_0(cmp_gt_0[1]), .eq_1(cmp_eq_1[1]), .eq_0(cmp_eq_0[1]), .lt_1(cmp_lt_1[1]), .lt_0(cmp_lt_0[1]), .go(go), .done(inst_cmp_1_cd), .reset(reset)); // d=2 w=2 l=2 complex pdr sp0
  cmp_1bit_pdr inst_cmp_2 (.a_1(a_1[2]), .a_0(a_0[2]), .b_1(b_1[2]), .b_0(b_0[2]), .gt_1(cmp_gt_1[2]), .gt_0(cmp_gt_0[2]), .eq_1(cmp_eq_1[2]), .eq_0(cmp_eq_0[2]), .lt_1(cmp_lt_1[2]), .lt_0(cmp_lt_0[2]), .go(go), .done(inst_cmp_2_cd), .reset(reset)); // d=3 w=2 l=3 complex pdr sp0
  cmp_1bit_pdr inst_cmp_3 (.a_1(a_1[3]), .a_0(a_0[3]), .b_1(b_1[3]), .b_0(b_0[3]), .gt_1(cmp_gt_1[3]), .gt_0(cmp_gt_0[3]), .eq_1(cmp_eq_1[3]), .eq_0(cmp_eq_0[3]), .lt_1(cmp_lt_1[3]), .lt_0(cmp_lt_0[3]), .go(go), .done(inst_cmp_3_cd), .reset(reset)); // d=3 w=2 l=3 complex pdr sp0
  cmp_combiner_pdr inst_32 (.gt1_1(cmp_gt_1[3]), .gt1_0(cmp_gt_0[3]), .eq1_1(cmp_eq_1[3]), .eq1_0(cmp_eq_0[3]), .lt1_1(cmp_lt_1[3]), .lt1_0(cmp_lt_0[3]), .gt0_1(cmp_gt_1[2]), .gt0_0(cmp_gt_0[2]), .eq0_1(cmp_eq_1[2]), .eq0_0(cmp_eq_0[2]), 
    .lt0_1(cmp_lt_1[2]), .lt0_0(cmp_lt_0[2]), .gt_1(cmp_gt_32_1), .gt_0(cmp_gt_32_0), .eq_1(cmp_eq_32_1), .eq_0(cmp_eq_32_0), .lt_1(cmp_lt_32_1), .lt_0(cmp_lt_32_0), .go(go), .done(inst_32_cd), .reset(reset)); // d=2 w=1 l=2 complex pdr sp0
  cmp_combiner_pdr inst_321 (.gt1_1(cmp_gt_32_1), .gt1_0(cmp_gt_32_0), .eq1_1(cmp_eq_32_1), .eq1_0(cmp_eq_32_0), .lt1_1(cmp_lt_32_1), .lt1_0(cmp_lt_32_0), .gt0_1(cmp_gt_1[1]), .gt0_0(cmp_gt_0[1]), .eq0_1(cmp_eq_1[1]), .eq0_0(cmp_eq_0[1]), 
    .lt0_1(cmp_lt_1[1]), .lt0_0(cmp_lt_0[1]), .gt_1(cmp_gt_321_1), .gt_0(cmp_gt_321_0), .eq_1(cmp_eq_321_1), .eq_0(cmp_eq_321_0), .lt_1(cmp_lt_321_1), .lt_0(cmp_lt_321_0), .go(go), .done(inst_321_cd), .reset(reset)); // d=1 w=1 l=1 complex pdr sp0
  cmp_combiner_pdr inst_3210 (.gt1_1(cmp_gt_321_1), .gt1_0(cmp_gt_321_0), .eq1_1(cmp_eq_321_1), .eq1_0(cmp_eq_321_0), .lt1_1(cmp_lt_321_1), .lt1_0(cmp_lt_321_0), .gt0_1(cmp_gt_1[0]), .gt0_0(cmp_gt_0[0]), .eq0_1(cmp_eq_1[0]), .eq0_0(cmp_eq_0[0]), 
    .lt0_1(cmp_lt_1[0]), .lt0_0(cmp_lt_0[0]), .gt_1(gt_1), .gt_0(gt_0), .eq_1(eq_1), .eq_0(eq_0), .lt_1(lt_1), .lt_0(lt_0), .go(go), .done(inst_3210_cd), .reset(reset)); // d=0 w=1 l=0 complex pdr sp0
  XR2 inst_a_3_cd (.A(a_1[3]), .B(a_0[3]), .Q(a_3_cd)); // d=4 w=1 l=4
  XR2 inst_b_3_cd (.A(b_1[3]), .B(b_0[3]), .Q(b_3_cd)); // d=4 w=1 l=4
  XR2 inst_gt_cd (.A(gt_1), .B(gt_0), .Q(gt_cd)); // d=-1 w=1 l=-1
  XR2 inst_eq_cd (.A(eq_1), .B(eq_0), .Q(eq_cd)); // d=-1 w=1 l=-1
  XR2 inst_lt_cd (.A(lt_1), .B(lt_0), .Q(lt_cd)); // d=-1 w=1 l=-1
  XR2 inst_cmp_gt_3_cd (.A(cmp_gt_1[3]), .B(cmp_gt_0[3]), .Q(cmp_gt_3_cd)); // d=2 w=1 l=2
  XR2 inst_cmp_eq_3_cd (.A(cmp_eq_1[3]), .B(cmp_eq_0[3]), .Q(cmp_eq_3_cd)); // d=2 w=1 l=2
  XR2 inst_cmp_lt_3_cd (.A(cmp_lt_1[3]), .B(cmp_lt_0[3]), .Q(cmp_lt_3_cd)); // d=2 w=1 l=2
  XR2 inst_cmp_gt_32_cd (.A(cmp_gt_32_1), .B(cmp_gt_32_0), .Q(cmp_gt_32_cd)); // d=1 w=1 l=1
  XR2 inst_cmp_eq_32_cd (.A(cmp_eq_32_1), .B(cmp_eq_32_0), .Q(cmp_eq_32_cd)); // d=1 w=1 l=1
  XR2 inst_cmp_lt_32_cd (.A(cmp_lt_32_1), .B(cmp_lt_32_0), .Q(cmp_lt_32_cd)); // d=1 w=1 l=1
  XR2 inst_cmp_gt_321_cd (.A(cmp_gt_321_1), .B(cmp_gt_321_0), .Q(cmp_gt_321_cd)); // d=0 w=1 l=0
  XR2 inst_cmp_eq_321_cd (.A(cmp_eq_321_1), .B(cmp_eq_321_0), .Q(cmp_eq_321_cd)); // d=0 w=1 l=0
  XR2 inst_cmp_lt_321_cd (.A(cmp_lt_321_1), .B(cmp_lt_321_0), .Q(cmp_lt_321_cd)); // d=0 w=1 l=0
  cp022d1 inst_done (.a1(a_3_cd), .a2(b_3_cd), .a3(gt_cd), .a4(eq_cd), .a5(lt_cd), .a6(cmp_gt_3_cd), .a7(cmp_eq_3_cd), .a8(cmp_lt_3_cd), .a9(cmp_gt_32_cd), .a10(cmp_eq_32_cd), .a11(cmp_lt_32_cd), .a12(cmp_gt_321_cd), .a13(cmp_eq_321_cd), 
    .a14(cmp_lt_321_cd), .a15(inst_cmp_0_cd), .a16(inst_cmp_1_cd), .a17(inst_cmp_2_cd), .a18(inst_cmp_3_cd), .a19(inst_32_cd), .a20(inst_321_cd), .a21(inst_3210_cd), .a22(go), .q(done), .qn(), .sdn(reset_not)); // d=0 w=1 l=0 sr
  IN1 inst_reset_not (.A(reset), .Q(reset_not)); // d=-1 w=1 l=-1 pdr sr
endmodule

