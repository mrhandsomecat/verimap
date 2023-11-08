/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Wed Nov  8 12:29:54 2023
/////////////////////////////////////////////////////////////


module cve2_multdiv_fast ( clk_i, rst_ni, mult_en_i, div_en_i, mult_sel_i, 
        div_sel_i, operator_i, signed_mode_i, op_a_i, op_b_i, alu_adder_ext_i, 
        alu_adder_i, equal_to_zero_i, alu_operand_a_o, alu_operand_b_o, 
    .imd_val_q_i({\imd_val_q_i[0][33] , \imd_val_q_i[0][32] , 
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] , \imd_val_q_i[1][33] , 
        \imd_val_q_i[1][32] , \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , 
        \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , 
        \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , 
        \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , 
        \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , 
        \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , 
        \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , 
        \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , 
        \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , 
        \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , 
        \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), 
    .imd_val_d_o({\imd_val_d_o[0][33] , \imd_val_d_o[0][32] , 
        \imd_val_d_o[0][31] , \imd_val_d_o[0][30] , \imd_val_d_o[0][29] , 
        \imd_val_d_o[0][28] , \imd_val_d_o[0][27] , \imd_val_d_o[0][26] , 
        \imd_val_d_o[0][25] , \imd_val_d_o[0][24] , \imd_val_d_o[0][23] , 
        \imd_val_d_o[0][22] , \imd_val_d_o[0][21] , \imd_val_d_o[0][20] , 
        \imd_val_d_o[0][19] , \imd_val_d_o[0][18] , \imd_val_d_o[0][17] , 
        \imd_val_d_o[0][16] , \imd_val_d_o[0][15] , \imd_val_d_o[0][14] , 
        \imd_val_d_o[0][13] , \imd_val_d_o[0][12] , \imd_val_d_o[0][11] , 
        \imd_val_d_o[0][10] , \imd_val_d_o[0][9] , \imd_val_d_o[0][8] , 
        \imd_val_d_o[0][7] , \imd_val_d_o[0][6] , \imd_val_d_o[0][5] , 
        \imd_val_d_o[0][4] , \imd_val_d_o[0][3] , \imd_val_d_o[0][2] , 
        \imd_val_d_o[0][1] , \imd_val_d_o[0][0] , \imd_val_d_o[1][33] , 
        \imd_val_d_o[1][32] , \imd_val_d_o[1][31] , \imd_val_d_o[1][30] , 
        \imd_val_d_o[1][29] , \imd_val_d_o[1][28] , \imd_val_d_o[1][27] , 
        \imd_val_d_o[1][26] , \imd_val_d_o[1][25] , \imd_val_d_o[1][24] , 
        \imd_val_d_o[1][23] , \imd_val_d_o[1][22] , \imd_val_d_o[1][21] , 
        \imd_val_d_o[1][20] , \imd_val_d_o[1][19] , \imd_val_d_o[1][18] , 
        \imd_val_d_o[1][17] , \imd_val_d_o[1][16] , \imd_val_d_o[1][15] , 
        \imd_val_d_o[1][14] , \imd_val_d_o[1][13] , \imd_val_d_o[1][12] , 
        \imd_val_d_o[1][11] , \imd_val_d_o[1][10] , \imd_val_d_o[1][9] , 
        \imd_val_d_o[1][8] , \imd_val_d_o[1][7] , \imd_val_d_o[1][6] , 
        \imd_val_d_o[1][5] , \imd_val_d_o[1][4] , \imd_val_d_o[1][3] , 
        \imd_val_d_o[1][2] , \imd_val_d_o[1][1] , \imd_val_d_o[1][0] }), 
        imd_val_we_o, multdiv_result_o, valid_o );
  input [1:0] operator_i;
  input [1:0] signed_mode_i;
  input [31:0] op_a_i;
  input [31:0] op_b_i;
  input [33:0] alu_adder_ext_i;
  input [31:0] alu_adder_i;
  output [32:0] alu_operand_a_o;
  output [32:0] alu_operand_b_o;
  output [1:0] imd_val_we_o;
  output [31:0] multdiv_result_o;
  input clk_i, rst_ni, mult_en_i, div_en_i, mult_sel_i, div_sel_i,
         equal_to_zero_i, \imd_val_q_i[0][33] , \imd_val_q_i[0][32] ,
         \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] ,
         \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] ,
         \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] ,
         \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] ,
         \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] ,
         \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] ,
         \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] ,
         \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] ,
         \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] ,
         \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] ,
         \imd_val_q_i[0][1] , \imd_val_q_i[0][0] , \imd_val_q_i[1][33] ,
         \imd_val_q_i[1][32] , \imd_val_q_i[1][31] , \imd_val_q_i[1][30] ,
         \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , \imd_val_q_i[1][27] ,
         \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , \imd_val_q_i[1][24] ,
         \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , \imd_val_q_i[1][21] ,
         \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , \imd_val_q_i[1][18] ,
         \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , \imd_val_q_i[1][15] ,
         \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , \imd_val_q_i[1][12] ,
         \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , \imd_val_q_i[1][9] ,
         \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , \imd_val_q_i[1][6] ,
         \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , \imd_val_q_i[1][3] ,
         \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , \imd_val_q_i[1][0] ;
  output \imd_val_d_o[0][33] , \imd_val_d_o[0][32] , \imd_val_d_o[0][31] ,
         \imd_val_d_o[0][30] , \imd_val_d_o[0][29] , \imd_val_d_o[0][28] ,
         \imd_val_d_o[0][27] , \imd_val_d_o[0][26] , \imd_val_d_o[0][25] ,
         \imd_val_d_o[0][24] , \imd_val_d_o[0][23] , \imd_val_d_o[0][22] ,
         \imd_val_d_o[0][21] , \imd_val_d_o[0][20] , \imd_val_d_o[0][19] ,
         \imd_val_d_o[0][18] , \imd_val_d_o[0][17] , \imd_val_d_o[0][16] ,
         \imd_val_d_o[0][15] , \imd_val_d_o[0][14] , \imd_val_d_o[0][13] ,
         \imd_val_d_o[0][12] , \imd_val_d_o[0][11] , \imd_val_d_o[0][10] ,
         \imd_val_d_o[0][9] , \imd_val_d_o[0][8] , \imd_val_d_o[0][7] ,
         \imd_val_d_o[0][6] , \imd_val_d_o[0][5] , \imd_val_d_o[0][4] ,
         \imd_val_d_o[0][3] , \imd_val_d_o[0][2] , \imd_val_d_o[0][1] ,
         \imd_val_d_o[0][0] , \imd_val_d_o[1][33] , \imd_val_d_o[1][32] ,
         \imd_val_d_o[1][31] , \imd_val_d_o[1][30] , \imd_val_d_o[1][29] ,
         \imd_val_d_o[1][28] , \imd_val_d_o[1][27] , \imd_val_d_o[1][26] ,
         \imd_val_d_o[1][25] , \imd_val_d_o[1][24] , \imd_val_d_o[1][23] ,
         \imd_val_d_o[1][22] , \imd_val_d_o[1][21] , \imd_val_d_o[1][20] ,
         \imd_val_d_o[1][19] , \imd_val_d_o[1][18] , \imd_val_d_o[1][17] ,
         \imd_val_d_o[1][16] , \imd_val_d_o[1][15] , \imd_val_d_o[1][14] ,
         \imd_val_d_o[1][13] , \imd_val_d_o[1][12] , \imd_val_d_o[1][11] ,
         \imd_val_d_o[1][10] , \imd_val_d_o[1][9] , \imd_val_d_o[1][8] ,
         \imd_val_d_o[1][7] , \imd_val_d_o[1][6] , \imd_val_d_o[1][5] ,
         \imd_val_d_o[1][4] , \imd_val_d_o[1][3] , \imd_val_d_o[1][2] ,
         \imd_val_d_o[1][1] , \imd_val_d_o[1][0] , valid_o;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, mult_en_internal, N33, div_by_zero_q, N34, sign_a,
         sign_b, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N67, N68, _cse_14, _cse_19, mult_valid,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82,
         N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96,
         N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108,
         N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119,
         N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N179, is_greater_equal, N180, N181, N182,
         N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193,
         N194, N195, N196, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, N210, N211, N212, N213, div_sign_a,
         div_sign_b, div_change_sign, \_cse_33[32] , \_cse_33[31] ,
         \_cse_33[30] , \_cse_33[29] , \_cse_33[28] , \_cse_33[27] ,
         \_cse_33[26] , \_cse_33[25] , \_cse_33[24] , \_cse_33[23] ,
         \_cse_33[22] , \_cse_33[21] , \_cse_33[20] , \_cse_33[19] ,
         \_cse_33[18] , \_cse_33[17] , \_cse_33[16] , \_cse_33[15] ,
         \_cse_33[14] , \_cse_33[13] , \_cse_33[12] , \_cse_33[11] ,
         \_cse_33[10] , \_cse_33[9] , \_cse_33[8] , \_cse_33[7] , \_cse_33[6] ,
         \_cse_33[5] , \_cse_33[4] , \_cse_33[3] , \_cse_33[2] , \_cse_33[1] ,
         \_cse_44[32] , \_cse_44[31] , \_cse_44[30] , \_cse_44[29] ,
         \_cse_44[28] , \_cse_44[27] , \_cse_44[26] , \_cse_44[25] ,
         \_cse_44[24] , \_cse_44[23] , \_cse_44[22] , \_cse_44[21] ,
         \_cse_44[20] , \_cse_44[19] , \_cse_44[18] , \_cse_44[17] ,
         \_cse_44[16] , \_cse_44[15] , \_cse_44[14] , \_cse_44[13] ,
         \_cse_44[12] , \_cse_44[11] , \_cse_44[10] , \_cse_44[9] ,
         \_cse_44[8] , \_cse_44[7] , \_cse_44[6] , \_cse_44[5] , \_cse_44[4] ,
         \_cse_44[3] , \_cse_44[2] , \_cse_44[1] , N214, N215, N216, N217,
         N218, div_valid, N219, N220, N221, N222, N223, N224, N225, N226, N227,
         N228, N229, N230, N231, N232, N233, N234, N235, N236, N237, N238,
         N239, N240, N241, N242, N243, N244, N245, N246, N247, N248, N249,
         N250, N251, N252, N253, N254, N255, N256, N257, N258, N259, N260,
         N261, N262, N263, N264, N265, N266, N267, N268, N269, N270, N271,
         N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282,
         N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N305, N306, N307, N308, N309, N310, N311, N312, N313, N314, N315,
         N316, N317, N318, N319, N320, N321, N322, N323, N324, N325, N326,
         N327, N328, N329, N330, N331, N332, N333, N334, N335, N336, N337,
         N338, N339, N340, N341, N342, N343, N344, N345, N346, N347, N348,
         N349, N350, N351, N352, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N368, N369, N370,
         N371, N372, N373, N374, N375, N376, N377, N378, N379, N380, N381,
         N382, N383, N384, N385, N386, N387, N388, N389, N390, N391, N392,
         N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403,
         N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414,
         N415, N416, N417, N418, N419, N420, N421, N422, N423, N424, N425,
         N426, N427, N428, N429, N430, N431, N432, N433, N434, N435, N436,
         N437, N438, N439, N440, N441, N442, N443, N444, N445, N446, N447,
         N448, N449, N450, N451, N452, N453, N454, N455, N456, N457, N458,
         N459, N460, N461, N462, N463, N464, N465, N466, N467, N468, N469,
         N470, N471, N472, N473, N474, N475, N476, N477, N478, N479, N480,
         N481, N482, N483, N484, N485, N486, N487, N488, N489, N490, N491,
         N492, N493, N494, N495, N496, N497, N498, N499, N500, N501, N502,
         N503, N504, N505, N506, N507, N508, N509, N510, N511, N512, N513,
         N514, N515, N516, N517, N518, N519, N520, N521, N522, N523, N524,
         N525, N526, N527, N528, N529, N530, N531, N532, N533, N534, N535,
         N536, N537, N538, N539, N540, N541, N542, N543, N544, N545, N546,
         N547, N548, N549, N550, N551, N552, N553, N554, N555, N556, N557,
         N558, N559;
  wire   [4:0] div_counter_q;
  wire   [2:0] md_state_q;
  wire   [31:0] op_numerator_q;
  wire   [31:0] op_quotient_q;
  wire   [4:0] div_counter_d;
  wire   [31:0] op_quotient_d;
  wire   [2:0] md_state_d;
  wire   [33:0] op_remainder_d;
  wire   [33:0] mac_res_d;
  wire   [15:0] \gen_mult_fast.mult_op_a ;
  wire   [15:0] \gen_mult_fast.mult_op_b ;
  wire   [33:0] accum;
  wire   [33:0] mac_res_signed;
  wire   [1:0] \gen_mult_fast.mult_state_q ;
  wire   [1:0] \gen_mult_fast.mult_state_d ;
  wire   [31:0] next_remainder;
  wire   [31:0] one_shift;
  wire   [31:0] next_quotient;
  assign alu_operand_b_o[0] = 1'b1;
  assign alu_operand_a_o[0] = 1'b1;
  assign \imd_val_d_o[1][32]  = 1'b0;
  assign \imd_val_d_o[1][33]  = 1'b0;

  GTECH_AND2 C389 ( .A(N69), .B(N70), .Z(N71) );
  GTECH_OR2 C391 ( .A(\gen_mult_fast.mult_state_q [1]), .B(N70), .Z(N72) );
  GTECH_OR2 C394 ( .A(N69), .B(\gen_mult_fast.mult_state_q [0]), .Z(N74) );
  GTECH_AND2 C396 ( .A(\gen_mult_fast.mult_state_q [1]), .B(
        \gen_mult_fast.mult_state_q [0]), .Z(N76) );
  ASH_UNS_UNS_OP sll_384 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .SH(div_counter_q), .Z(one_shift) );
  GTECH_AND2 C842 ( .A(N219), .B(N220), .Z(N222) );
  GTECH_AND2 C843 ( .A(N222), .B(N221), .Z(N223) );
  GTECH_OR2 C845 ( .A(md_state_q[2]), .B(md_state_q[1]), .Z(N224) );
  GTECH_OR2 C846 ( .A(N224), .B(N221), .Z(N225) );
  GTECH_OR2 C849 ( .A(md_state_q[2]), .B(N220), .Z(N227) );
  GTECH_OR2 C850 ( .A(N227), .B(md_state_q[0]), .Z(N228) );
  GTECH_OR2 C854 ( .A(md_state_q[2]), .B(N220), .Z(N230) );
  GTECH_OR2 C855 ( .A(N230), .B(N221), .Z(N231) );
  GTECH_OR2 C858 ( .A(N219), .B(md_state_q[1]), .Z(N233) );
  GTECH_OR2 C859 ( .A(N233), .B(md_state_q[0]), .Z(N234) );
  GTECH_OR2 C863 ( .A(N219), .B(md_state_q[1]), .Z(N236) );
  GTECH_OR2 C864 ( .A(N236), .B(N221), .Z(N237) );
  GTECH_OR2 C868 ( .A(N219), .B(N220), .Z(N239) );
  GTECH_OR2 C869 ( .A(N239), .B(md_state_q[0]), .Z(N240) );
  GTECH_AND2 C871 ( .A(md_state_q[2]), .B(md_state_q[1]), .Z(N242) );
  GTECH_AND2 C872 ( .A(N242), .B(md_state_q[0]), .Z(N243) );
  GTECH_NOT I_0 ( .A(operator_i[1]), .Z(N543) );
  GTECH_OR2 C2333 ( .A(operator_i[0]), .B(N543), .Z(N544) );
  GTECH_NOT I_1 ( .A(N544), .Z(N545) );
  GTECH_OR2 C2335 ( .A(operator_i[0]), .B(operator_i[1]), .Z(N546) );
  GTECH_NOT I_2 ( .A(N546), .Z(N547) );
  GTECH_OR2 C2340 ( .A(signed_mode_i[0]), .B(signed_mode_i[1]), .Z(N548) );
  GTECH_NOT I_3 ( .A(div_counter_q[0]), .Z(N549) );
  GTECH_OR2 C2347 ( .A(div_counter_q[3]), .B(div_counter_q[4]), .Z(N550) );
  GTECH_OR2 C2348 ( .A(div_counter_q[2]), .B(N550), .Z(N551) );
  GTECH_OR2 C2349 ( .A(div_counter_q[1]), .B(N551), .Z(N552) );
  GTECH_OR2 C2350 ( .A(N549), .B(N552), .Z(N553) );
  GTECH_NOT I_4 ( .A(N553), .Z(N554) );
  GTECH_NOT I_5 ( .A(alu_adder_ext_i[32]), .Z(N555) );
  GTECH_NOT I_6 ( .A(N213), .Z(N556) );
  SUB_UNS_OP sub_404 ( .A(div_counter_q), .B(1'b1), .Z({N218, N217, N216, N215, 
        N214}) );
  MULT_TC_OP mult_270 ( .A({sign_a, \gen_mult_fast.mult_op_a }), .B({sign_b, 
        \gen_mult_fast.mult_op_b }), .Z({N68, N67, N66, N65, N64, N63, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, 
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}) );
  ADD_TC_OP add_270 ( .A({N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, 
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}), .B(accum), .Z(
        mac_res_signed) );
  SELECT_OP C2388 ( .DATA1(op_remainder_d), .DATA2(mac_res_d), .CONTROL1(N0), 
        .CONTROL2(N1), .Z({\imd_val_d_o[0][33] , \imd_val_d_o[0][32] , 
        \imd_val_d_o[0][31] , \imd_val_d_o[0][30] , \imd_val_d_o[0][29] , 
        \imd_val_d_o[0][28] , \imd_val_d_o[0][27] , \imd_val_d_o[0][26] , 
        \imd_val_d_o[0][25] , \imd_val_d_o[0][24] , \imd_val_d_o[0][23] , 
        \imd_val_d_o[0][22] , \imd_val_d_o[0][21] , \imd_val_d_o[0][20] , 
        \imd_val_d_o[0][19] , \imd_val_d_o[0][18] , \imd_val_d_o[0][17] , 
        \imd_val_d_o[0][16] , \imd_val_d_o[0][15] , \imd_val_d_o[0][14] , 
        \imd_val_d_o[0][13] , \imd_val_d_o[0][12] , \imd_val_d_o[0][11] , 
        \imd_val_d_o[0][10] , \imd_val_d_o[0][9] , \imd_val_d_o[0][8] , 
        \imd_val_d_o[0][7] , \imd_val_d_o[0][6] , \imd_val_d_o[0][5] , 
        \imd_val_d_o[0][4] , \imd_val_d_o[0][3] , \imd_val_d_o[0][2] , 
        \imd_val_d_o[0][1] , \imd_val_d_o[0][0] }) );
  GTECH_BUF B_0 ( .A(div_sel_i), .Z(N0) );
  GTECH_BUF B_1 ( .A(N34), .Z(N1) );
  SELECT_OP C2389 ( .DATA1({\imd_val_q_i[0][31] , \imd_val_q_i[0][30] , 
        \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , 
        \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , 
        \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , 
        \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , 
        \imd_val_q_i[0][17] , \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , 
        \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , 
        \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , 
        \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , 
        \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , 
        \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), 
        .DATA2(mac_res_d[31:0]), .CONTROL1(N0), .CONTROL2(N1), .Z(
        multdiv_result_o) );
  SELECT_OP C2390 ( .DATA1({1'b0, 1'b0, mac_res_signed[15:0], 
        \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , 
        \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , 
        \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , 
        \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , 
        \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , 
        \imd_val_q_i[0][0] }), .DATA2(mac_res_signed), .CONTROL1(N2), 
        .CONTROL2(N3), .Z({N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, 
        N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77}) );
  GTECH_BUF B_2 ( .A(N547), .Z(N2) );
  GTECH_BUF B_3 ( .A(N546), .Z(N3) );
  SELECT_OP C2391 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] }), .DATA2({\imd_val_q_i[0][33] , 
        \imd_val_q_i[0][32] , \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , 
        \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , 
        \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , 
        \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , 
        \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , 
        \imd_val_q_i[0][17] , \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , 
        \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , 
        \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , 
        \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , 
        \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , 
        \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), 
        .CONTROL1(N2), .CONTROL2(N3), .Z({N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111}) );
  SELECT_OP C2392 ( .DATA1({1'b0, 1'b0, mac_res_signed[15:0], 
        \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , 
        \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , 
        \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , 
        \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , 
        \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , 
        \imd_val_q_i[0][0] }), .DATA2(mac_res_signed), .CONTROL1(N2), 
        .CONTROL2(N3), .Z({N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, 
        N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, 
        N146, N145}) );
  SELECT_OP C2394 ( .DATA1(op_a_i[15:0]), .DATA2(op_a_i[15:0]), .DATA3(
        op_a_i[31:16]), .DATA4(op_a_i[31:16]), .CONTROL1(N4), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .Z(\gen_mult_fast.mult_op_a ) );
  GTECH_BUF B_4 ( .A(N71), .Z(N4) );
  GTECH_BUF B_5 ( .A(N73), .Z(N5) );
  GTECH_BUF B_6 ( .A(N75), .Z(N6) );
  GTECH_BUF B_7 ( .A(N76), .Z(N7) );
  SELECT_OP C2395 ( .DATA1(op_b_i[15:0]), .DATA2(op_b_i[31:16]), .DATA3(
        op_b_i[15:0]), .DATA4(op_b_i[31:16]), .CONTROL1(N4), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .Z(\gen_mult_fast.mult_op_b ) );
  SELECT_OP C2396 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(_cse_19), .DATA4(
        _cse_19), .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), 
        .Z(sign_a) );
  SELECT_OP C2397 ( .DATA1(1'b0), .DATA2(_cse_14), .DATA3(1'b0), .DATA4(
        _cse_14), .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), 
        .Z(sign_b) );
  SELECT_OP C2398 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] }), .DATA3({N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111}), .DATA4({N179, N179, N179, N179, N179, N179, 
        N179, N179, N179, N179, N179, N179, N179, N179, N179, N179, 
        \imd_val_q_i[0][33] , \imd_val_q_i[0][32] , \imd_val_q_i[0][31] , 
        \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , 
        \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , 
        \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , 
        \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , 
        \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , \imd_val_q_i[0][16] }), 
        .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .Z(accum)
         );
  SELECT_OP C2399 ( .DATA1(mac_res_signed), .DATA2({N110, N109, N108, N107, 
        N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, 
        N79, N78, N77}), .DATA3({N178, N177, N176, N175, N174, N173, N172, 
        N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, 
        N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, 
        N147, N146, N145}), .DATA4(mac_res_signed), .CONTROL1(N4), .CONTROL2(
        N5), .CONTROL3(N6), .CONTROL4(N7), .Z(mac_res_d) );
  SELECT_OP C2400 ( .DATA1({1'b0, 1'b1}), .DATA2({1'b1, 1'b0}), .DATA3({N546, 
        N546}), .DATA4({1'b0, 1'b0}), .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(
        N6), .CONTROL4(N7), .Z(\gen_mult_fast.mult_state_d ) );
  SELECT_OP C2401 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N547), .DATA4(1'b1), 
        .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .Z(
        mult_valid) );
  SELECT_OP C2402 ( .DATA1(alu_adder_ext_i[32:1]), .DATA2({
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), .CONTROL1(N8), .CONTROL2(
        N9), .Z(next_remainder) );
  GTECH_BUF B_8 ( .A(is_greater_equal), .Z(N8) );
  GTECH_BUF B_9 ( .A(N180), .Z(N9) );
  SELECT_OP C2403 ( .DATA1({N181, N182, N183, N184, N185, N186, N187, N188, 
        N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200, 
        N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212}), .DATA2(op_quotient_q), .CONTROL1(N8), .CONTROL2(N9), .Z(next_quotient) );
  SELECT_OP C2404 ( .DATA1(N555), .DATA2(\imd_val_q_i[0][31] ), .CONTROL1(N10), 
        .CONTROL2(N11), .Z(is_greater_equal) );
  GTECH_BUF B_10 ( .A(N556), .Z(N10) );
  GTECH_BUF B_11 ( .A(N213), .Z(N11) );
  SELECT_OP C2405 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA2(op_a_i), .CONTROL1(N12), .CONTROL2(N13), .Z({N276, N275, N274, N273, 
        N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246, N245}) );
  GTECH_BUF B_12 ( .A(N545), .Z(N12) );
  GTECH_BUF B_13 ( .A(N544), .Z(N13) );
  SELECT_OP C2406 ( .DATA1(equal_to_zero_i), .DATA2(div_by_zero_q), .CONTROL1(
        N12), .CONTROL2(N13), .Z(N277) );
  SELECT_OP C2407 ( .DATA1(alu_adder_i), .DATA2(op_a_i), .CONTROL1(N14), 
        .CONTROL2(N15), .Z({N310, N309, N308, N307, N306, N305, N304, N303, 
        N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, 
        N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279}) );
  GTECH_BUF B_14 ( .A(div_sign_a), .Z(N14) );
  GTECH_BUF B_15 ( .A(N278), .Z(N15) );
  SELECT_OP C2408 ( .DATA1(alu_adder_i), .DATA2(op_b_i), .CONTROL1(N16), 
        .CONTROL2(N17), .Z({N375, N374, N373, N372, N371, N370, N369, N368, 
        N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, 
        N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344}) );
  GTECH_BUF B_16 ( .A(div_sign_b), .Z(N16) );
  GTECH_BUF B_17 ( .A(N343), .Z(N17) );
  SELECT_OP C2410 ( .DATA1(next_quotient), .DATA2(next_remainder), .CONTROL1(
        N12), .CONTROL2(N13), .Z({N408, N407, N406, N405, N404, N403, N402, 
        N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, 
        N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, 
        N377}) );
  SELECT_OP C2411 ( .DATA1({1'b0, 1'b0, alu_adder_i}), .DATA2({
        \imd_val_q_i[0][33] , \imd_val_q_i[0][32] , \imd_val_q_i[0][31] , 
        \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , 
        \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , 
        \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , 
        \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , 
        \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , \imd_val_q_i[0][16] , 
        \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , 
        \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , 
        \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , 
        \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , 
        \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , 
        \imd_val_q_i[0][0] }), .CONTROL1(N18), .CONTROL2(N19), .Z({N445, N444, 
        N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, 
        N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, 
        N419, N418, N417, N416, N415, N414, N413, N412}) );
  GTECH_BUF B_18 ( .A(div_change_sign), .Z(N18) );
  GTECH_BUF B_19 ( .A(N411), .Z(N19) );
  SELECT_OP C2412 ( .DATA1({N445, N444, N443, N442, N441, N440, N439, N438, 
        N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, 
        N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, 
        N413, N412}), .DATA2({1'b0, 1'b0, alu_adder_i}), .DATA3({
        \imd_val_q_i[0][33] , \imd_val_q_i[0][32] , \imd_val_q_i[0][31] , 
        \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , 
        \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , 
        \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , 
        \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , 
        \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , \imd_val_q_i[0][16] , 
        \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , 
        \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , 
        \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , 
        \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , 
        \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , 
        \imd_val_q_i[0][0] }), .CONTROL1(N12), .CONTROL2(N512), .CONTROL3(N410), .Z({N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, 
        N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, 
        N455, N454, N453, N452, N451, N450, N449, N448, N447, N446}) );
  SELECT_OP C2413 ( .DATA1({N545, N545, N276, N275, N274, N273, N272, N271, 
        N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N246, N245}), .DATA2({\imd_val_q_i[0][33] , \imd_val_q_i[0][32] , 
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), .DATA3({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, op_numerator_q[31]}), .DATA4({1'b0, 
        next_remainder, N376}), .DATA5({1'b0, 1'b0, N408, N407, N406, N405, 
        N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, 
        N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, 
        N380, N379, N378, N377}), .DATA6({N479, N478, N477, N476, N475, N474, 
        N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, 
        N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, 
        N449, N448, N447, N446}), .DATA7({\imd_val_q_i[0][33] , 
        \imd_val_q_i[0][32] , \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , 
        \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , 
        \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , 
        \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , 
        \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , 
        \imd_val_q_i[0][17] , \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , 
        \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , 
        \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , 
        \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , 
        \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , 
        \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), 
        .DATA8({\imd_val_q_i[0][33] , \imd_val_q_i[0][32] , 
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), .CONTROL1(N20), .CONTROL2(
        N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), .CONTROL6(N25), 
        .CONTROL7(N26), .CONTROL8(N27), .Z(op_remainder_d) );
  GTECH_BUF B_20 ( .A(N223), .Z(N20) );
  GTECH_BUF B_21 ( .A(N226), .Z(N21) );
  GTECH_BUF B_22 ( .A(N229), .Z(N22) );
  GTECH_BUF B_23 ( .A(N232), .Z(N23) );
  GTECH_BUF B_24 ( .A(N235), .Z(N24) );
  GTECH_BUF B_25 ( .A(N238), .Z(N25) );
  GTECH_BUF B_26 ( .A(N241), .Z(N26) );
  GTECH_BUF B_27 ( .A(N243), .Z(N27) );
  SELECT_OP C2414 ( .DATA1({equal_to_zero_i, equal_to_zero_i, N244}), .DATA2({
        1'b0, 1'b1, 1'b0}), .DATA3({1'b0, 1'b1, 1'b1}), .DATA4({N554, N553, 
        N553}), .DATA5({1'b1, 1'b0, 1'b1}), .DATA6({1'b1, 1'b1, 1'b0}), 
        .DATA7({1'b0, 1'b0, 1'b0}), .DATA8({1'b0, 1'b0, 1'b0}), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .Z(md_state_d) );
  SELECT_OP C2415 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA3({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), .DATA5({
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] }), .DATA6({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA7({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .DATA8({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N20), .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), 
        .CONTROL5(N24), .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .Z(
        alu_operand_a_o[32:1]) );
  SELECT_OP C2416 ( .DATA1({\_cse_33[32] , \_cse_33[31] , \_cse_33[30] , 
        \_cse_33[29] , \_cse_33[28] , \_cse_33[27] , \_cse_33[26] , 
        \_cse_33[25] , \_cse_33[24] , \_cse_33[23] , \_cse_33[22] , 
        \_cse_33[21] , \_cse_33[20] , \_cse_33[19] , \_cse_33[18] , 
        \_cse_33[17] , \_cse_33[16] , \_cse_33[15] , \_cse_33[14] , 
        \_cse_33[13] , \_cse_33[12] , \_cse_33[11] , \_cse_33[10] , 
        \_cse_33[9] , \_cse_33[8] , \_cse_33[7] , \_cse_33[6] , \_cse_33[5] , 
        \_cse_33[4] , \_cse_33[3] , \_cse_33[2] , \_cse_33[1] }), .DATA2({N311, 
        N312, N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323, 
        N324, N325, N326, N327, N328, N329, N330, N331, N332, N333, N334, N335, 
        N336, N337, N338, N339, N340, N341, N342}), .DATA3({\_cse_33[32] , 
        \_cse_33[31] , \_cse_33[30] , \_cse_33[29] , \_cse_33[28] , 
        \_cse_33[27] , \_cse_33[26] , \_cse_33[25] , \_cse_33[24] , 
        \_cse_33[23] , \_cse_33[22] , \_cse_33[21] , \_cse_33[20] , 
        \_cse_33[19] , \_cse_33[18] , \_cse_33[17] , \_cse_33[16] , 
        \_cse_33[15] , \_cse_33[14] , \_cse_33[13] , \_cse_33[12] , 
        \_cse_33[11] , \_cse_33[10] , \_cse_33[9] , \_cse_33[8] , \_cse_33[7] , 
        \_cse_33[6] , \_cse_33[5] , \_cse_33[4] , \_cse_33[3] , \_cse_33[2] , 
        \_cse_33[1] }), .DATA4({\_cse_44[32] , \_cse_44[31] , \_cse_44[30] , 
        \_cse_44[29] , \_cse_44[28] , \_cse_44[27] , \_cse_44[26] , 
        \_cse_44[25] , \_cse_44[24] , \_cse_44[23] , \_cse_44[22] , 
        \_cse_44[21] , \_cse_44[20] , \_cse_44[19] , \_cse_44[18] , 
        \_cse_44[17] , \_cse_44[16] , \_cse_44[15] , \_cse_44[14] , 
        \_cse_44[13] , \_cse_44[12] , \_cse_44[11] , \_cse_44[10] , 
        \_cse_44[9] , \_cse_44[8] , \_cse_44[7] , \_cse_44[6] , \_cse_44[5] , 
        \_cse_44[4] , \_cse_44[3] , \_cse_44[2] , \_cse_44[1] }), .DATA5({
        \_cse_44[32] , \_cse_44[31] , \_cse_44[30] , \_cse_44[29] , 
        \_cse_44[28] , \_cse_44[27] , \_cse_44[26] , \_cse_44[25] , 
        \_cse_44[24] , \_cse_44[23] , \_cse_44[22] , \_cse_44[21] , 
        \_cse_44[20] , \_cse_44[19] , \_cse_44[18] , \_cse_44[17] , 
        \_cse_44[16] , \_cse_44[15] , \_cse_44[14] , \_cse_44[13] , 
        \_cse_44[12] , \_cse_44[11] , \_cse_44[10] , \_cse_44[9] , 
        \_cse_44[8] , \_cse_44[7] , \_cse_44[6] , \_cse_44[5] , \_cse_44[4] , 
        \_cse_44[3] , \_cse_44[2] , \_cse_44[1] }), .DATA6({N480, N481, N482, 
        N483, N484, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494, 
        N495, N496, N497, N498, N499, N500, N501, N502, N503, N504, N505, N506, 
        N507, N508, N509, N510, N511}), .DATA7({\_cse_33[32] , \_cse_33[31] , 
        \_cse_33[30] , \_cse_33[29] , \_cse_33[28] , \_cse_33[27] , 
        \_cse_33[26] , \_cse_33[25] , \_cse_33[24] , \_cse_33[23] , 
        \_cse_33[22] , \_cse_33[21] , \_cse_33[20] , \_cse_33[19] , 
        \_cse_33[18] , \_cse_33[17] , \_cse_33[16] , \_cse_33[15] , 
        \_cse_33[14] , \_cse_33[13] , \_cse_33[12] , \_cse_33[11] , 
        \_cse_33[10] , \_cse_33[9] , \_cse_33[8] , \_cse_33[7] , \_cse_33[6] , 
        \_cse_33[5] , \_cse_33[4] , \_cse_33[3] , \_cse_33[2] , \_cse_33[1] }), 
        .DATA8({\_cse_33[32] , \_cse_33[31] , \_cse_33[30] , \_cse_33[29] , 
        \_cse_33[28] , \_cse_33[27] , \_cse_33[26] , \_cse_33[25] , 
        \_cse_33[24] , \_cse_33[23] , \_cse_33[22] , \_cse_33[21] , 
        \_cse_33[20] , \_cse_33[19] , \_cse_33[18] , \_cse_33[17] , 
        \_cse_33[16] , \_cse_33[15] , \_cse_33[14] , \_cse_33[13] , 
        \_cse_33[12] , \_cse_33[11] , \_cse_33[10] , \_cse_33[9] , 
        \_cse_33[8] , \_cse_33[7] , \_cse_33[6] , \_cse_33[5] , \_cse_33[4] , 
        \_cse_33[3] , \_cse_33[2] , \_cse_33[1] }), .CONTROL1(N20), .CONTROL2(
        N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), .CONTROL6(N25), 
        .CONTROL7(N26), .CONTROL8(N27), .Z(alu_operand_b_o[32:1]) );
  SELECT_OP C2417 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1}), .DATA3({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA4({
        N218, N217, N216, N215, N214}), .DATA5({N218, N217, N216, N215, N214}), 
        .DATA6({N218, N217, N216, N215, N214}), .DATA7({N218, N217, N216, N215, 
        N214}), .DATA8({N218, N217, N216, N215, N214}), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .Z(div_counter_d) );
  SELECT_OP C2418 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(next_quotient), .CONTROL1(N21), .CONTROL2(N23), .Z(op_quotient_d) );
  SELECT_OP C2419 ( .DATA1({\imd_val_q_i[1][31] , \imd_val_q_i[1][30] , 
        \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , 
        \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , 
        \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , 
        \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , 
        \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , 
        \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , 
        \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , 
        \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , 
        \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , 
        \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), 
        .DATA2({\imd_val_q_i[1][31] , \imd_val_q_i[1][30] , 
        \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , 
        \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , 
        \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , 
        \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , 
        \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , 
        \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , 
        \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , 
        \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , 
        \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , 
        \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), 
        .DATA3({N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, 
        N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, 
        N353, N352, N351, N350, N349, N348, N347, N346, N345, N344}), .DATA4({
        \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , \imd_val_q_i[1][29] , 
        \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , \imd_val_q_i[1][26] , 
        \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , \imd_val_q_i[1][23] , 
        \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , \imd_val_q_i[1][20] , 
        \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , \imd_val_q_i[1][17] , 
        \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , \imd_val_q_i[1][14] , 
        \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , \imd_val_q_i[1][11] , 
        \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , \imd_val_q_i[1][8] , 
        \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , \imd_val_q_i[1][5] , 
        \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , \imd_val_q_i[1][2] , 
        \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), .DATA5({
        \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , \imd_val_q_i[1][29] , 
        \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , \imd_val_q_i[1][26] , 
        \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , \imd_val_q_i[1][23] , 
        \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , \imd_val_q_i[1][20] , 
        \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , \imd_val_q_i[1][17] , 
        \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , \imd_val_q_i[1][14] , 
        \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , \imd_val_q_i[1][11] , 
        \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , \imd_val_q_i[1][8] , 
        \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , \imd_val_q_i[1][5] , 
        \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , \imd_val_q_i[1][2] , 
        \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), .DATA6({
        \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , \imd_val_q_i[1][29] , 
        \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , \imd_val_q_i[1][26] , 
        \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , \imd_val_q_i[1][23] , 
        \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , \imd_val_q_i[1][20] , 
        \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , \imd_val_q_i[1][17] , 
        \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , \imd_val_q_i[1][14] , 
        \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , \imd_val_q_i[1][11] , 
        \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , \imd_val_q_i[1][8] , 
        \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , \imd_val_q_i[1][5] , 
        \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , \imd_val_q_i[1][2] , 
        \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), .DATA7({
        \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , \imd_val_q_i[1][29] , 
        \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , \imd_val_q_i[1][26] , 
        \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , \imd_val_q_i[1][23] , 
        \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , \imd_val_q_i[1][20] , 
        \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , \imd_val_q_i[1][17] , 
        \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , \imd_val_q_i[1][14] , 
        \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , \imd_val_q_i[1][11] , 
        \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , \imd_val_q_i[1][8] , 
        \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , \imd_val_q_i[1][5] , 
        \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , \imd_val_q_i[1][2] , 
        \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), .DATA8({
        \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , \imd_val_q_i[1][29] , 
        \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , \imd_val_q_i[1][26] , 
        \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , \imd_val_q_i[1][23] , 
        \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , \imd_val_q_i[1][20] , 
        \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , \imd_val_q_i[1][17] , 
        \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , \imd_val_q_i[1][14] , 
        \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , \imd_val_q_i[1][11] , 
        \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , \imd_val_q_i[1][8] , 
        \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , \imd_val_q_i[1][5] , 
        \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , \imd_val_q_i[1][2] , 
        \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), .CONTROL1(N20), .CONTROL2(
        N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), .CONTROL6(N25), 
        .CONTROL7(N26), .CONTROL8(N27), .Z({\imd_val_d_o[1][31] , 
        \imd_val_d_o[1][30] , \imd_val_d_o[1][29] , \imd_val_d_o[1][28] , 
        \imd_val_d_o[1][27] , \imd_val_d_o[1][26] , \imd_val_d_o[1][25] , 
        \imd_val_d_o[1][24] , \imd_val_d_o[1][23] , \imd_val_d_o[1][22] , 
        \imd_val_d_o[1][21] , \imd_val_d_o[1][20] , \imd_val_d_o[1][19] , 
        \imd_val_d_o[1][18] , \imd_val_d_o[1][17] , \imd_val_d_o[1][16] , 
        \imd_val_d_o[1][15] , \imd_val_d_o[1][14] , \imd_val_d_o[1][13] , 
        \imd_val_d_o[1][12] , \imd_val_d_o[1][11] , \imd_val_d_o[1][10] , 
        \imd_val_d_o[1][9] , \imd_val_d_o[1][8] , \imd_val_d_o[1][7] , 
        \imd_val_d_o[1][6] , \imd_val_d_o[1][5] , \imd_val_d_o[1][4] , 
        \imd_val_d_o[1][3] , \imd_val_d_o[1][2] , \imd_val_d_o[1][1] , 
        \imd_val_d_o[1][0] }) );
  SELECT_OP C2420 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b1), .DATA8(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .Z(div_valid) );
  MUX_OP C2421 ( .D0(op_numerator_q[0]), .D1(op_numerator_q[1]), .D2(
        op_numerator_q[2]), .D3(op_numerator_q[3]), .D4(op_numerator_q[4]), 
        .D5(op_numerator_q[5]), .D6(op_numerator_q[6]), .D7(op_numerator_q[7]), 
        .D8(op_numerator_q[8]), .D9(op_numerator_q[9]), .D10(
        op_numerator_q[10]), .D11(op_numerator_q[11]), .D12(op_numerator_q[12]), .D13(op_numerator_q[13]), .D14(op_numerator_q[14]), .D15(op_numerator_q[15]), 
        .D16(op_numerator_q[16]), .D17(op_numerator_q[17]), .D18(
        op_numerator_q[18]), .D19(op_numerator_q[19]), .D20(op_numerator_q[20]), .D21(op_numerator_q[21]), .D22(op_numerator_q[22]), .D23(op_numerator_q[23]), 
        .D24(op_numerator_q[24]), .D25(op_numerator_q[25]), .D26(
        op_numerator_q[26]), .D27(op_numerator_q[27]), .D28(op_numerator_q[28]), .D29(op_numerator_q[29]), .D30(op_numerator_q[30]), .D31(op_numerator_q[31]), 
        .S0(N28), .S1(N29), .S2(N30), .S3(N31), .S4(N32), .Z(N376) );
  GTECH_BUF B_28 ( .A(N214), .Z(N28) );
  GTECH_BUF B_29 ( .A(N215), .Z(N29) );
  GTECH_BUF B_30 ( .A(N216), .Z(N30) );
  GTECH_BUF B_31 ( .A(N217), .Z(N31) );
  GTECH_BUF B_32 ( .A(N218), .Z(N32) );
  GTECH_AND2 C2424 ( .A(mult_en_i), .B(N557), .Z(mult_en_internal) );
  GTECH_NOT I_7 ( .A(1'b0), .Z(N557) );
  GTECH_AND2 C2426 ( .A(div_en_i), .B(N557), .Z(imd_val_we_o[1]) );
  GTECH_NOT I_8 ( .A(rst_ni), .Z(N33) );
  GTECH_OR2 C2430 ( .A(mult_en_internal), .B(imd_val_we_o[1]), .Z(
        imd_val_we_o[0]) );
  GTECH_NOT I_9 ( .A(div_sel_i), .Z(N34) );
  GTECH_AND2 C2434 ( .A(signed_mode_i[1]), .B(op_b_i[31]), .Z(_cse_14) );
  GTECH_AND2 C2435 ( .A(signed_mode_i[0]), .B(op_a_i[31]), .Z(_cse_19) );
  GTECH_NOT I_10 ( .A(\gen_mult_fast.mult_state_q [1]), .Z(N69) );
  GTECH_NOT I_11 ( .A(\gen_mult_fast.mult_state_q [0]), .Z(N70) );
  GTECH_NOT I_12 ( .A(N72), .Z(N73) );
  GTECH_NOT I_13 ( .A(N74), .Z(N75) );
  GTECH_AND2 C2450 ( .A(N548), .B(\imd_val_q_i[0][33] ), .Z(N179) );
  GTECH_NOT I_14 ( .A(is_greater_equal), .Z(N180) );
  GTECH_OR2 C2458 ( .A(op_quotient_q[31]), .B(one_shift[31]), .Z(N181) );
  GTECH_OR2 C2459 ( .A(op_quotient_q[30]), .B(one_shift[30]), .Z(N182) );
  GTECH_OR2 C2460 ( .A(op_quotient_q[29]), .B(one_shift[29]), .Z(N183) );
  GTECH_OR2 C2461 ( .A(op_quotient_q[28]), .B(one_shift[28]), .Z(N184) );
  GTECH_OR2 C2462 ( .A(op_quotient_q[27]), .B(one_shift[27]), .Z(N185) );
  GTECH_OR2 C2463 ( .A(op_quotient_q[26]), .B(one_shift[26]), .Z(N186) );
  GTECH_OR2 C2464 ( .A(op_quotient_q[25]), .B(one_shift[25]), .Z(N187) );
  GTECH_OR2 C2465 ( .A(op_quotient_q[24]), .B(one_shift[24]), .Z(N188) );
  GTECH_OR2 C2466 ( .A(op_quotient_q[23]), .B(one_shift[23]), .Z(N189) );
  GTECH_OR2 C2467 ( .A(op_quotient_q[22]), .B(one_shift[22]), .Z(N190) );
  GTECH_OR2 C2468 ( .A(op_quotient_q[21]), .B(one_shift[21]), .Z(N191) );
  GTECH_OR2 C2469 ( .A(op_quotient_q[20]), .B(one_shift[20]), .Z(N192) );
  GTECH_OR2 C2470 ( .A(op_quotient_q[19]), .B(one_shift[19]), .Z(N193) );
  GTECH_OR2 C2471 ( .A(op_quotient_q[18]), .B(one_shift[18]), .Z(N194) );
  GTECH_OR2 C2472 ( .A(op_quotient_q[17]), .B(one_shift[17]), .Z(N195) );
  GTECH_OR2 C2473 ( .A(op_quotient_q[16]), .B(one_shift[16]), .Z(N196) );
  GTECH_OR2 C2474 ( .A(op_quotient_q[15]), .B(one_shift[15]), .Z(N197) );
  GTECH_OR2 C2475 ( .A(op_quotient_q[14]), .B(one_shift[14]), .Z(N198) );
  GTECH_OR2 C2476 ( .A(op_quotient_q[13]), .B(one_shift[13]), .Z(N199) );
  GTECH_OR2 C2477 ( .A(op_quotient_q[12]), .B(one_shift[12]), .Z(N200) );
  GTECH_OR2 C2478 ( .A(op_quotient_q[11]), .B(one_shift[11]), .Z(N201) );
  GTECH_OR2 C2479 ( .A(op_quotient_q[10]), .B(one_shift[10]), .Z(N202) );
  GTECH_OR2 C2480 ( .A(op_quotient_q[9]), .B(one_shift[9]), .Z(N203) );
  GTECH_OR2 C2481 ( .A(op_quotient_q[8]), .B(one_shift[8]), .Z(N204) );
  GTECH_OR2 C2482 ( .A(op_quotient_q[7]), .B(one_shift[7]), .Z(N205) );
  GTECH_OR2 C2483 ( .A(op_quotient_q[6]), .B(one_shift[6]), .Z(N206) );
  GTECH_OR2 C2484 ( .A(op_quotient_q[5]), .B(one_shift[5]), .Z(N207) );
  GTECH_OR2 C2485 ( .A(op_quotient_q[4]), .B(one_shift[4]), .Z(N208) );
  GTECH_OR2 C2486 ( .A(op_quotient_q[3]), .B(one_shift[3]), .Z(N209) );
  GTECH_OR2 C2487 ( .A(op_quotient_q[2]), .B(one_shift[2]), .Z(N210) );
  GTECH_OR2 C2488 ( .A(op_quotient_q[1]), .B(one_shift[1]), .Z(N211) );
  GTECH_OR2 C2489 ( .A(op_quotient_q[0]), .B(one_shift[0]), .Z(N212) );
  GTECH_XOR2 C2490 ( .A(\imd_val_q_i[0][31] ), .B(\imd_val_q_i[1][31] ), .Z(
        N213) );
  GTECH_AND2 C2493 ( .A(op_a_i[31]), .B(signed_mode_i[0]), .Z(div_sign_a) );
  GTECH_AND2 C2494 ( .A(op_b_i[31]), .B(signed_mode_i[1]), .Z(div_sign_b) );
  GTECH_AND2 C2495 ( .A(N558), .B(N559), .Z(div_change_sign) );
  GTECH_XOR2 C2496 ( .A(div_sign_a), .B(div_sign_b), .Z(N558) );
  GTECH_NOT I_15 ( .A(div_by_zero_q), .Z(N559) );
  GTECH_NOT I_16 ( .A(op_b_i[31]), .Z(\_cse_33[32] ) );
  GTECH_NOT I_17 ( .A(op_b_i[30]), .Z(\_cse_33[31] ) );
  GTECH_NOT I_18 ( .A(op_b_i[29]), .Z(\_cse_33[30] ) );
  GTECH_NOT I_19 ( .A(op_b_i[28]), .Z(\_cse_33[29] ) );
  GTECH_NOT I_20 ( .A(op_b_i[27]), .Z(\_cse_33[28] ) );
  GTECH_NOT I_21 ( .A(op_b_i[26]), .Z(\_cse_33[27] ) );
  GTECH_NOT I_22 ( .A(op_b_i[25]), .Z(\_cse_33[26] ) );
  GTECH_NOT I_23 ( .A(op_b_i[24]), .Z(\_cse_33[25] ) );
  GTECH_NOT I_24 ( .A(op_b_i[23]), .Z(\_cse_33[24] ) );
  GTECH_NOT I_25 ( .A(op_b_i[22]), .Z(\_cse_33[23] ) );
  GTECH_NOT I_26 ( .A(op_b_i[21]), .Z(\_cse_33[22] ) );
  GTECH_NOT I_27 ( .A(op_b_i[20]), .Z(\_cse_33[21] ) );
  GTECH_NOT I_28 ( .A(op_b_i[19]), .Z(\_cse_33[20] ) );
  GTECH_NOT I_29 ( .A(op_b_i[18]), .Z(\_cse_33[19] ) );
  GTECH_NOT I_30 ( .A(op_b_i[17]), .Z(\_cse_33[18] ) );
  GTECH_NOT I_31 ( .A(op_b_i[16]), .Z(\_cse_33[17] ) );
  GTECH_NOT I_32 ( .A(op_b_i[15]), .Z(\_cse_33[16] ) );
  GTECH_NOT I_33 ( .A(op_b_i[14]), .Z(\_cse_33[15] ) );
  GTECH_NOT I_34 ( .A(op_b_i[13]), .Z(\_cse_33[14] ) );
  GTECH_NOT I_35 ( .A(op_b_i[12]), .Z(\_cse_33[13] ) );
  GTECH_NOT I_36 ( .A(op_b_i[11]), .Z(\_cse_33[12] ) );
  GTECH_NOT I_37 ( .A(op_b_i[10]), .Z(\_cse_33[11] ) );
  GTECH_NOT I_38 ( .A(op_b_i[9]), .Z(\_cse_33[10] ) );
  GTECH_NOT I_39 ( .A(op_b_i[8]), .Z(\_cse_33[9] ) );
  GTECH_NOT I_40 ( .A(op_b_i[7]), .Z(\_cse_33[8] ) );
  GTECH_NOT I_41 ( .A(op_b_i[6]), .Z(\_cse_33[7] ) );
  GTECH_NOT I_42 ( .A(op_b_i[5]), .Z(\_cse_33[6] ) );
  GTECH_NOT I_43 ( .A(op_b_i[4]), .Z(\_cse_33[5] ) );
  GTECH_NOT I_44 ( .A(op_b_i[3]), .Z(\_cse_33[4] ) );
  GTECH_NOT I_45 ( .A(op_b_i[2]), .Z(\_cse_33[3] ) );
  GTECH_NOT I_46 ( .A(op_b_i[1]), .Z(\_cse_33[2] ) );
  GTECH_NOT I_47 ( .A(op_b_i[0]), .Z(\_cse_33[1] ) );
  GTECH_NOT I_48 ( .A(\imd_val_q_i[1][31] ), .Z(\_cse_44[32] ) );
  GTECH_NOT I_49 ( .A(\imd_val_q_i[1][30] ), .Z(\_cse_44[31] ) );
  GTECH_NOT I_50 ( .A(\imd_val_q_i[1][29] ), .Z(\_cse_44[30] ) );
  GTECH_NOT I_51 ( .A(\imd_val_q_i[1][28] ), .Z(\_cse_44[29] ) );
  GTECH_NOT I_52 ( .A(\imd_val_q_i[1][27] ), .Z(\_cse_44[28] ) );
  GTECH_NOT I_53 ( .A(\imd_val_q_i[1][26] ), .Z(\_cse_44[27] ) );
  GTECH_NOT I_54 ( .A(\imd_val_q_i[1][25] ), .Z(\_cse_44[26] ) );
  GTECH_NOT I_55 ( .A(\imd_val_q_i[1][24] ), .Z(\_cse_44[25] ) );
  GTECH_NOT I_56 ( .A(\imd_val_q_i[1][23] ), .Z(\_cse_44[24] ) );
  GTECH_NOT I_57 ( .A(\imd_val_q_i[1][22] ), .Z(\_cse_44[23] ) );
  GTECH_NOT I_58 ( .A(\imd_val_q_i[1][21] ), .Z(\_cse_44[22] ) );
  GTECH_NOT I_59 ( .A(\imd_val_q_i[1][20] ), .Z(\_cse_44[21] ) );
  GTECH_NOT I_60 ( .A(\imd_val_q_i[1][19] ), .Z(\_cse_44[20] ) );
  GTECH_NOT I_61 ( .A(\imd_val_q_i[1][18] ), .Z(\_cse_44[19] ) );
  GTECH_NOT I_62 ( .A(\imd_val_q_i[1][17] ), .Z(\_cse_44[18] ) );
  GTECH_NOT I_63 ( .A(\imd_val_q_i[1][16] ), .Z(\_cse_44[17] ) );
  GTECH_NOT I_64 ( .A(\imd_val_q_i[1][15] ), .Z(\_cse_44[16] ) );
  GTECH_NOT I_65 ( .A(\imd_val_q_i[1][14] ), .Z(\_cse_44[15] ) );
  GTECH_NOT I_66 ( .A(\imd_val_q_i[1][13] ), .Z(\_cse_44[14] ) );
  GTECH_NOT I_67 ( .A(\imd_val_q_i[1][12] ), .Z(\_cse_44[13] ) );
  GTECH_NOT I_68 ( .A(\imd_val_q_i[1][11] ), .Z(\_cse_44[12] ) );
  GTECH_NOT I_69 ( .A(\imd_val_q_i[1][10] ), .Z(\_cse_44[11] ) );
  GTECH_NOT I_70 ( .A(\imd_val_q_i[1][9] ), .Z(\_cse_44[10] ) );
  GTECH_NOT I_71 ( .A(\imd_val_q_i[1][8] ), .Z(\_cse_44[9] ) );
  GTECH_NOT I_72 ( .A(\imd_val_q_i[1][7] ), .Z(\_cse_44[8] ) );
  GTECH_NOT I_73 ( .A(\imd_val_q_i[1][6] ), .Z(\_cse_44[7] ) );
  GTECH_NOT I_74 ( .A(\imd_val_q_i[1][5] ), .Z(\_cse_44[6] ) );
  GTECH_NOT I_75 ( .A(\imd_val_q_i[1][4] ), .Z(\_cse_44[5] ) );
  GTECH_NOT I_76 ( .A(\imd_val_q_i[1][3] ), .Z(\_cse_44[4] ) );
  GTECH_NOT I_77 ( .A(\imd_val_q_i[1][2] ), .Z(\_cse_44[3] ) );
  GTECH_NOT I_78 ( .A(\imd_val_q_i[1][1] ), .Z(\_cse_44[2] ) );
  GTECH_NOT I_79 ( .A(\imd_val_q_i[1][0] ), .Z(\_cse_44[1] ) );
  GTECH_NOT I_80 ( .A(md_state_q[2]), .Z(N219) );
  GTECH_NOT I_81 ( .A(md_state_q[1]), .Z(N220) );
  GTECH_NOT I_82 ( .A(md_state_q[0]), .Z(N221) );
  GTECH_NOT I_83 ( .A(N225), .Z(N226) );
  GTECH_NOT I_84 ( .A(N228), .Z(N229) );
  GTECH_NOT I_85 ( .A(N231), .Z(N232) );
  GTECH_NOT I_86 ( .A(N234), .Z(N235) );
  GTECH_NOT I_87 ( .A(N237), .Z(N238) );
  GTECH_NOT I_88 ( .A(N240), .Z(N241) );
  GTECH_NOT I_89 ( .A(equal_to_zero_i), .Z(N244) );
  GTECH_NOT I_90 ( .A(div_sign_a), .Z(N278) );
  GTECH_NOT I_91 ( .A(op_a_i[31]), .Z(N311) );
  GTECH_NOT I_92 ( .A(op_a_i[30]), .Z(N312) );
  GTECH_NOT I_93 ( .A(op_a_i[29]), .Z(N313) );
  GTECH_NOT I_94 ( .A(op_a_i[28]), .Z(N314) );
  GTECH_NOT I_95 ( .A(op_a_i[27]), .Z(N315) );
  GTECH_NOT I_96 ( .A(op_a_i[26]), .Z(N316) );
  GTECH_NOT I_97 ( .A(op_a_i[25]), .Z(N317) );
  GTECH_NOT I_98 ( .A(op_a_i[24]), .Z(N318) );
  GTECH_NOT I_99 ( .A(op_a_i[23]), .Z(N319) );
  GTECH_NOT I_100 ( .A(op_a_i[22]), .Z(N320) );
  GTECH_NOT I_101 ( .A(op_a_i[21]), .Z(N321) );
  GTECH_NOT I_102 ( .A(op_a_i[20]), .Z(N322) );
  GTECH_NOT I_103 ( .A(op_a_i[19]), .Z(N323) );
  GTECH_NOT I_104 ( .A(op_a_i[18]), .Z(N324) );
  GTECH_NOT I_105 ( .A(op_a_i[17]), .Z(N325) );
  GTECH_NOT I_106 ( .A(op_a_i[16]), .Z(N326) );
  GTECH_NOT I_107 ( .A(op_a_i[15]), .Z(N327) );
  GTECH_NOT I_108 ( .A(op_a_i[14]), .Z(N328) );
  GTECH_NOT I_109 ( .A(op_a_i[13]), .Z(N329) );
  GTECH_NOT I_110 ( .A(op_a_i[12]), .Z(N330) );
  GTECH_NOT I_111 ( .A(op_a_i[11]), .Z(N331) );
  GTECH_NOT I_112 ( .A(op_a_i[10]), .Z(N332) );
  GTECH_NOT I_113 ( .A(op_a_i[9]), .Z(N333) );
  GTECH_NOT I_114 ( .A(op_a_i[8]), .Z(N334) );
  GTECH_NOT I_115 ( .A(op_a_i[7]), .Z(N335) );
  GTECH_NOT I_116 ( .A(op_a_i[6]), .Z(N336) );
  GTECH_NOT I_117 ( .A(op_a_i[5]), .Z(N337) );
  GTECH_NOT I_118 ( .A(op_a_i[4]), .Z(N338) );
  GTECH_NOT I_119 ( .A(op_a_i[3]), .Z(N339) );
  GTECH_NOT I_120 ( .A(op_a_i[2]), .Z(N340) );
  GTECH_NOT I_121 ( .A(op_a_i[1]), .Z(N341) );
  GTECH_NOT I_122 ( .A(op_a_i[0]), .Z(N342) );
  GTECH_NOT I_123 ( .A(div_sign_b), .Z(N343) );
  GTECH_OR2 C2635 ( .A(div_sign_a), .B(N545), .Z(N409) );
  GTECH_NOT I_124 ( .A(N409), .Z(N410) );
  GTECH_NOT I_125 ( .A(div_change_sign), .Z(N411) );
  GTECH_NOT I_126 ( .A(\imd_val_q_i[0][31] ), .Z(N480) );
  GTECH_NOT I_127 ( .A(\imd_val_q_i[0][30] ), .Z(N481) );
  GTECH_NOT I_128 ( .A(\imd_val_q_i[0][29] ), .Z(N482) );
  GTECH_NOT I_129 ( .A(\imd_val_q_i[0][28] ), .Z(N483) );
  GTECH_NOT I_130 ( .A(\imd_val_q_i[0][27] ), .Z(N484) );
  GTECH_NOT I_131 ( .A(\imd_val_q_i[0][26] ), .Z(N485) );
  GTECH_NOT I_132 ( .A(\imd_val_q_i[0][25] ), .Z(N486) );
  GTECH_NOT I_133 ( .A(\imd_val_q_i[0][24] ), .Z(N487) );
  GTECH_NOT I_134 ( .A(\imd_val_q_i[0][23] ), .Z(N488) );
  GTECH_NOT I_135 ( .A(\imd_val_q_i[0][22] ), .Z(N489) );
  GTECH_NOT I_136 ( .A(\imd_val_q_i[0][21] ), .Z(N490) );
  GTECH_NOT I_137 ( .A(\imd_val_q_i[0][20] ), .Z(N491) );
  GTECH_NOT I_138 ( .A(\imd_val_q_i[0][19] ), .Z(N492) );
  GTECH_NOT I_139 ( .A(\imd_val_q_i[0][18] ), .Z(N493) );
  GTECH_NOT I_140 ( .A(\imd_val_q_i[0][17] ), .Z(N494) );
  GTECH_NOT I_141 ( .A(\imd_val_q_i[0][16] ), .Z(N495) );
  GTECH_NOT I_142 ( .A(\imd_val_q_i[0][15] ), .Z(N496) );
  GTECH_NOT I_143 ( .A(\imd_val_q_i[0][14] ), .Z(N497) );
  GTECH_NOT I_144 ( .A(\imd_val_q_i[0][13] ), .Z(N498) );
  GTECH_NOT I_145 ( .A(\imd_val_q_i[0][12] ), .Z(N499) );
  GTECH_NOT I_146 ( .A(\imd_val_q_i[0][11] ), .Z(N500) );
  GTECH_NOT I_147 ( .A(\imd_val_q_i[0][10] ), .Z(N501) );
  GTECH_NOT I_148 ( .A(\imd_val_q_i[0][9] ), .Z(N502) );
  GTECH_NOT I_149 ( .A(\imd_val_q_i[0][8] ), .Z(N503) );
  GTECH_NOT I_150 ( .A(\imd_val_q_i[0][7] ), .Z(N504) );
  GTECH_NOT I_151 ( .A(\imd_val_q_i[0][6] ), .Z(N505) );
  GTECH_NOT I_152 ( .A(\imd_val_q_i[0][5] ), .Z(N506) );
  GTECH_NOT I_153 ( .A(\imd_val_q_i[0][4] ), .Z(N507) );
  GTECH_NOT I_154 ( .A(\imd_val_q_i[0][3] ), .Z(N508) );
  GTECH_NOT I_155 ( .A(\imd_val_q_i[0][2] ), .Z(N509) );
  GTECH_NOT I_156 ( .A(\imd_val_q_i[0][1] ), .Z(N510) );
  GTECH_NOT I_157 ( .A(\imd_val_q_i[0][0] ), .Z(N511) );
  GTECH_AND2 C2672 ( .A(div_sign_a), .B(N544), .Z(N512) );
  GTECH_OR2 C2673 ( .A(mult_valid), .B(div_valid), .Z(valid_o) );
  GTECH_AND2 C2674 ( .A(N226), .B(imd_val_we_o[1]), .Z(N513) );
  GTECH_AND2 C2675 ( .A(N229), .B(imd_val_we_o[1]), .Z(N514) );
  GTECH_OR2 C2676 ( .A(N513), .B(N514), .Z(N515) );
  GTECH_AND2 C2677 ( .A(N232), .B(imd_val_we_o[1]), .Z(N516) );
  GTECH_OR2 C2678 ( .A(N515), .B(N516), .Z(N517) );
  GTECH_AND2 C2679 ( .A(N235), .B(imd_val_we_o[1]), .Z(N518) );
  GTECH_OR2 C2680 ( .A(N517), .B(N518), .Z(N519) );
  GTECH_AND2 C2681 ( .A(N238), .B(imd_val_we_o[1]), .Z(N520) );
  GTECH_OR2 C2682 ( .A(N519), .B(N520), .Z(N521) );
  GTECH_AND2 C2683 ( .A(N241), .B(imd_val_we_o[1]), .Z(N522) );
  GTECH_OR2 C2684 ( .A(N521), .B(N522), .Z(N523) );
  GTECH_AND2 C2685 ( .A(N243), .B(imd_val_we_o[1]), .Z(N524) );
  GTECH_OR2 C2686 ( .A(N523), .B(N524), .Z(N525) );
  GTECH_NOT I_158 ( .A(N525), .Z(N526) );
  GTECH_AND2 C2688 ( .A(imd_val_we_o[1]), .B(N526), .Z(N527) );
  GTECH_AND2 C2689 ( .A(N223), .B(imd_val_we_o[1]), .Z(N528) );
  GTECH_OR2 C2690 ( .A(N528), .B(N514), .Z(N529) );
  GTECH_OR2 C2691 ( .A(N529), .B(N516), .Z(N530) );
  GTECH_OR2 C2692 ( .A(N530), .B(N518), .Z(N531) );
  GTECH_OR2 C2693 ( .A(N531), .B(N520), .Z(N532) );
  GTECH_OR2 C2694 ( .A(N532), .B(N522), .Z(N533) );
  GTECH_OR2 C2695 ( .A(N533), .B(N524), .Z(N534) );
  GTECH_NOT I_159 ( .A(N534), .Z(N535) );
  GTECH_AND2 C2697 ( .A(imd_val_we_o[1]), .B(N535), .Z(N536) );
  GTECH_OR2 C2698 ( .A(N529), .B(N518), .Z(N537) );
  GTECH_OR2 C2699 ( .A(N537), .B(N520), .Z(N538) );
  GTECH_OR2 C2700 ( .A(N538), .B(N522), .Z(N539) );
  GTECH_OR2 C2701 ( .A(N539), .B(N524), .Z(N540) );
  GTECH_NOT I_160 ( .A(N540), .Z(N541) );
  GTECH_AND2 C2703 ( .A(imd_val_we_o[1]), .B(N541), .Z(N542) );
endmodule


module IntroProject ( clk_i, rst_ni, mult_en_i, div_en_i, mult_sel_i, 
        div_sel_i, operator_i, signed_mode_i, op_a_i, op_b_i, alu_adder_ext_i, 
        alu_adder_i, equal_to_zero_i, alu_operand_a_o, alu_operand_b_o, 
    .imd_val_q_i({\imd_val_q_i[0][33] , \imd_val_q_i[0][32] , 
        \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] , 
        \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] , 
        \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] , 
        \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] , 
        \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] , 
        \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] , 
        \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] , 
        \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] , 
        \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] , 
        \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] , 
        \imd_val_q_i[0][1] , \imd_val_q_i[0][0] , \imd_val_q_i[1][33] , 
        \imd_val_q_i[1][32] , \imd_val_q_i[1][31] , \imd_val_q_i[1][30] , 
        \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , \imd_val_q_i[1][27] , 
        \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , \imd_val_q_i[1][24] , 
        \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , \imd_val_q_i[1][21] , 
        \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , \imd_val_q_i[1][18] , 
        \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , \imd_val_q_i[1][15] , 
        \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , \imd_val_q_i[1][12] , 
        \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , \imd_val_q_i[1][9] , 
        \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , \imd_val_q_i[1][6] , 
        \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , \imd_val_q_i[1][3] , 
        \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , \imd_val_q_i[1][0] }), 
    .imd_val_d_o({\imd_val_d_o[0][33] , \imd_val_d_o[0][32] , 
        \imd_val_d_o[0][31] , \imd_val_d_o[0][30] , \imd_val_d_o[0][29] , 
        \imd_val_d_o[0][28] , \imd_val_d_o[0][27] , \imd_val_d_o[0][26] , 
        \imd_val_d_o[0][25] , \imd_val_d_o[0][24] , \imd_val_d_o[0][23] , 
        \imd_val_d_o[0][22] , \imd_val_d_o[0][21] , \imd_val_d_o[0][20] , 
        \imd_val_d_o[0][19] , \imd_val_d_o[0][18] , \imd_val_d_o[0][17] , 
        \imd_val_d_o[0][16] , \imd_val_d_o[0][15] , \imd_val_d_o[0][14] , 
        \imd_val_d_o[0][13] , \imd_val_d_o[0][12] , \imd_val_d_o[0][11] , 
        \imd_val_d_o[0][10] , \imd_val_d_o[0][9] , \imd_val_d_o[0][8] , 
        \imd_val_d_o[0][7] , \imd_val_d_o[0][6] , \imd_val_d_o[0][5] , 
        \imd_val_d_o[0][4] , \imd_val_d_o[0][3] , \imd_val_d_o[0][2] , 
        \imd_val_d_o[0][1] , \imd_val_d_o[0][0] , \imd_val_d_o[1][33] , 
        \imd_val_d_o[1][32] , \imd_val_d_o[1][31] , \imd_val_d_o[1][30] , 
        \imd_val_d_o[1][29] , \imd_val_d_o[1][28] , \imd_val_d_o[1][27] , 
        \imd_val_d_o[1][26] , \imd_val_d_o[1][25] , \imd_val_d_o[1][24] , 
        \imd_val_d_o[1][23] , \imd_val_d_o[1][22] , \imd_val_d_o[1][21] , 
        \imd_val_d_o[1][20] , \imd_val_d_o[1][19] , \imd_val_d_o[1][18] , 
        \imd_val_d_o[1][17] , \imd_val_d_o[1][16] , \imd_val_d_o[1][15] , 
        \imd_val_d_o[1][14] , \imd_val_d_o[1][13] , \imd_val_d_o[1][12] , 
        \imd_val_d_o[1][11] , \imd_val_d_o[1][10] , \imd_val_d_o[1][9] , 
        \imd_val_d_o[1][8] , \imd_val_d_o[1][7] , \imd_val_d_o[1][6] , 
        \imd_val_d_o[1][5] , \imd_val_d_o[1][4] , \imd_val_d_o[1][3] , 
        \imd_val_d_o[1][2] , \imd_val_d_o[1][1] , \imd_val_d_o[1][0] }), 
        imd_val_we_o, multdiv_result_o, valid_o );
  input [1:0] operator_i;
  input [1:0] signed_mode_i;
  input [31:0] op_a_i;
  input [31:0] op_b_i;
  input [33:0] alu_adder_ext_i;
  input [31:0] alu_adder_i;
  output [32:0] alu_operand_a_o;
  output [32:0] alu_operand_b_o;
  output [1:0] imd_val_we_o;
  output [31:0] multdiv_result_o;
  input clk_i, rst_ni, mult_en_i, div_en_i, mult_sel_i, div_sel_i,
         equal_to_zero_i, \imd_val_q_i[0][33] , \imd_val_q_i[0][32] ,
         \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , \imd_val_q_i[0][29] ,
         \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , \imd_val_q_i[0][26] ,
         \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , \imd_val_q_i[0][23] ,
         \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , \imd_val_q_i[0][20] ,
         \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , \imd_val_q_i[0][17] ,
         \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , \imd_val_q_i[0][14] ,
         \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , \imd_val_q_i[0][11] ,
         \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , \imd_val_q_i[0][8] ,
         \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , \imd_val_q_i[0][5] ,
         \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , \imd_val_q_i[0][2] ,
         \imd_val_q_i[0][1] , \imd_val_q_i[0][0] , \imd_val_q_i[1][33] ,
         \imd_val_q_i[1][32] , \imd_val_q_i[1][31] , \imd_val_q_i[1][30] ,
         \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , \imd_val_q_i[1][27] ,
         \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , \imd_val_q_i[1][24] ,
         \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , \imd_val_q_i[1][21] ,
         \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , \imd_val_q_i[1][18] ,
         \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , \imd_val_q_i[1][15] ,
         \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , \imd_val_q_i[1][12] ,
         \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , \imd_val_q_i[1][9] ,
         \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , \imd_val_q_i[1][6] ,
         \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , \imd_val_q_i[1][3] ,
         \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , \imd_val_q_i[1][0] ;
  output \imd_val_d_o[0][33] , \imd_val_d_o[0][32] , \imd_val_d_o[0][31] ,
         \imd_val_d_o[0][30] , \imd_val_d_o[0][29] , \imd_val_d_o[0][28] ,
         \imd_val_d_o[0][27] , \imd_val_d_o[0][26] , \imd_val_d_o[0][25] ,
         \imd_val_d_o[0][24] , \imd_val_d_o[0][23] , \imd_val_d_o[0][22] ,
         \imd_val_d_o[0][21] , \imd_val_d_o[0][20] , \imd_val_d_o[0][19] ,
         \imd_val_d_o[0][18] , \imd_val_d_o[0][17] , \imd_val_d_o[0][16] ,
         \imd_val_d_o[0][15] , \imd_val_d_o[0][14] , \imd_val_d_o[0][13] ,
         \imd_val_d_o[0][12] , \imd_val_d_o[0][11] , \imd_val_d_o[0][10] ,
         \imd_val_d_o[0][9] , \imd_val_d_o[0][8] , \imd_val_d_o[0][7] ,
         \imd_val_d_o[0][6] , \imd_val_d_o[0][5] , \imd_val_d_o[0][4] ,
         \imd_val_d_o[0][3] , \imd_val_d_o[0][2] , \imd_val_d_o[0][1] ,
         \imd_val_d_o[0][0] , \imd_val_d_o[1][33] , \imd_val_d_o[1][32] ,
         \imd_val_d_o[1][31] , \imd_val_d_o[1][30] , \imd_val_d_o[1][29] ,
         \imd_val_d_o[1][28] , \imd_val_d_o[1][27] , \imd_val_d_o[1][26] ,
         \imd_val_d_o[1][25] , \imd_val_d_o[1][24] , \imd_val_d_o[1][23] ,
         \imd_val_d_o[1][22] , \imd_val_d_o[1][21] , \imd_val_d_o[1][20] ,
         \imd_val_d_o[1][19] , \imd_val_d_o[1][18] , \imd_val_d_o[1][17] ,
         \imd_val_d_o[1][16] , \imd_val_d_o[1][15] , \imd_val_d_o[1][14] ,
         \imd_val_d_o[1][13] , \imd_val_d_o[1][12] , \imd_val_d_o[1][11] ,
         \imd_val_d_o[1][10] , \imd_val_d_o[1][9] , \imd_val_d_o[1][8] ,
         \imd_val_d_o[1][7] , \imd_val_d_o[1][6] , \imd_val_d_o[1][5] ,
         \imd_val_d_o[1][4] , \imd_val_d_o[1][3] , \imd_val_d_o[1][2] ,
         \imd_val_d_o[1][1] , \imd_val_d_o[1][0] , valid_o;


  cve2_multdiv_fast cve2_multdiv_fast_inst ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .mult_en_i(mult_en_i), .div_en_i(div_en_i), .mult_sel_i(mult_sel_i), 
        .div_sel_i(div_sel_i), .operator_i(operator_i), .signed_mode_i(
        signed_mode_i), .op_a_i(op_a_i), .op_b_i(op_b_i), .alu_adder_ext_i(
        alu_adder_ext_i), .alu_adder_i(alu_adder_i), .equal_to_zero_i(
        equal_to_zero_i), .alu_operand_a_o(alu_operand_a_o), .alu_operand_b_o(
        alu_operand_b_o), .imd_val_q_i({\imd_val_q_i[0][33] , 
        \imd_val_q_i[0][32] , \imd_val_q_i[0][31] , \imd_val_q_i[0][30] , 
        \imd_val_q_i[0][29] , \imd_val_q_i[0][28] , \imd_val_q_i[0][27] , 
        \imd_val_q_i[0][26] , \imd_val_q_i[0][25] , \imd_val_q_i[0][24] , 
        \imd_val_q_i[0][23] , \imd_val_q_i[0][22] , \imd_val_q_i[0][21] , 
        \imd_val_q_i[0][20] , \imd_val_q_i[0][19] , \imd_val_q_i[0][18] , 
        \imd_val_q_i[0][17] , \imd_val_q_i[0][16] , \imd_val_q_i[0][15] , 
        \imd_val_q_i[0][14] , \imd_val_q_i[0][13] , \imd_val_q_i[0][12] , 
        \imd_val_q_i[0][11] , \imd_val_q_i[0][10] , \imd_val_q_i[0][9] , 
        \imd_val_q_i[0][8] , \imd_val_q_i[0][7] , \imd_val_q_i[0][6] , 
        \imd_val_q_i[0][5] , \imd_val_q_i[0][4] , \imd_val_q_i[0][3] , 
        \imd_val_q_i[0][2] , \imd_val_q_i[0][1] , \imd_val_q_i[0][0] , 
        \imd_val_q_i[1][33] , \imd_val_q_i[1][32] , \imd_val_q_i[1][31] , 
        \imd_val_q_i[1][30] , \imd_val_q_i[1][29] , \imd_val_q_i[1][28] , 
        \imd_val_q_i[1][27] , \imd_val_q_i[1][26] , \imd_val_q_i[1][25] , 
        \imd_val_q_i[1][24] , \imd_val_q_i[1][23] , \imd_val_q_i[1][22] , 
        \imd_val_q_i[1][21] , \imd_val_q_i[1][20] , \imd_val_q_i[1][19] , 
        \imd_val_q_i[1][18] , \imd_val_q_i[1][17] , \imd_val_q_i[1][16] , 
        \imd_val_q_i[1][15] , \imd_val_q_i[1][14] , \imd_val_q_i[1][13] , 
        \imd_val_q_i[1][12] , \imd_val_q_i[1][11] , \imd_val_q_i[1][10] , 
        \imd_val_q_i[1][9] , \imd_val_q_i[1][8] , \imd_val_q_i[1][7] , 
        \imd_val_q_i[1][6] , \imd_val_q_i[1][5] , \imd_val_q_i[1][4] , 
        \imd_val_q_i[1][3] , \imd_val_q_i[1][2] , \imd_val_q_i[1][1] , 
        \imd_val_q_i[1][0] }), .imd_val_d_o({\imd_val_d_o[0][33] , 
        \imd_val_d_o[0][32] , \imd_val_d_o[0][31] , \imd_val_d_o[0][30] , 
        \imd_val_d_o[0][29] , \imd_val_d_o[0][28] , \imd_val_d_o[0][27] , 
        \imd_val_d_o[0][26] , \imd_val_d_o[0][25] , \imd_val_d_o[0][24] , 
        \imd_val_d_o[0][23] , \imd_val_d_o[0][22] , \imd_val_d_o[0][21] , 
        \imd_val_d_o[0][20] , \imd_val_d_o[0][19] , \imd_val_d_o[0][18] , 
        \imd_val_d_o[0][17] , \imd_val_d_o[0][16] , \imd_val_d_o[0][15] , 
        \imd_val_d_o[0][14] , \imd_val_d_o[0][13] , \imd_val_d_o[0][12] , 
        \imd_val_d_o[0][11] , \imd_val_d_o[0][10] , \imd_val_d_o[0][9] , 
        \imd_val_d_o[0][8] , \imd_val_d_o[0][7] , \imd_val_d_o[0][6] , 
        \imd_val_d_o[0][5] , \imd_val_d_o[0][4] , \imd_val_d_o[0][3] , 
        \imd_val_d_o[0][2] , \imd_val_d_o[0][1] , \imd_val_d_o[0][0] , 
        \imd_val_d_o[1][33] , \imd_val_d_o[1][32] , \imd_val_d_o[1][31] , 
        \imd_val_d_o[1][30] , \imd_val_d_o[1][29] , \imd_val_d_o[1][28] , 
        \imd_val_d_o[1][27] , \imd_val_d_o[1][26] , \imd_val_d_o[1][25] , 
        \imd_val_d_o[1][24] , \imd_val_d_o[1][23] , \imd_val_d_o[1][22] , 
        \imd_val_d_o[1][21] , \imd_val_d_o[1][20] , \imd_val_d_o[1][19] , 
        \imd_val_d_o[1][18] , \imd_val_d_o[1][17] , \imd_val_d_o[1][16] , 
        \imd_val_d_o[1][15] , \imd_val_d_o[1][14] , \imd_val_d_o[1][13] , 
        \imd_val_d_o[1][12] , \imd_val_d_o[1][11] , \imd_val_d_o[1][10] , 
        \imd_val_d_o[1][9] , \imd_val_d_o[1][8] , \imd_val_d_o[1][7] , 
        \imd_val_d_o[1][6] , \imd_val_d_o[1][5] , \imd_val_d_o[1][4] , 
        \imd_val_d_o[1][3] , \imd_val_d_o[1][2] , \imd_val_d_o[1][1] , 
        \imd_val_d_o[1][0] }), .imd_val_we_o(imd_val_we_o), .multdiv_result_o(
        multdiv_result_o), .valid_o(valid_o) );
endmodule

