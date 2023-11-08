
module rcon ( clk, reset, start, nextKey, rcon_out );
output [7:0] rcon_out;
input  clk, reset, start, nextKey;
    wire \rcnt[3] , \rcnt[2] , \rcnt[1] , \rcnt[0] , n3, n4, n5, n6, n7, n8, 
        n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, 
        n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, 
        n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
        n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;
    OAI220 U3 ( .A(n7), .B(n48), .C(n8), .D(n9), .Q(n60) );
    OAI210 U4 ( .A(n10), .B(n47), .C(n11), .Q(n59) );
    OAI2110 U5 ( .A(n12), .B(n13), .C(n14), .D(n15), .Q(n58) );
    OAI2110 U6 ( .A(n16), .B(n12), .C(n17), .D(n18), .Q(n57) );
    OAI210 U7 ( .A(n12), .B(n19), .C(n20), .Q(n56) );
    OAI210 U8 ( .A(n7), .B(n46), .C(n21), .Q(n55) );
    OAI210 U9 ( .A(n16), .B(n12), .C(n22), .Q(n54) );
    NAND30 U10 ( .A(n23), .B(n24), .C(n25), .Q(n53) );
    OAI220 U11 ( .A(n26), .B(n12), .C(n3), .D(n10), .Q(n52) );
    OAI220 U12 ( .A(n27), .B(n12), .C(n5), .D(n10), .Q(n51) );
    OAI210 U13 ( .A(n6), .B(n10), .C(n28), .Q(n50) );
    NOR20 U14 ( .A(n5), .B(n30), .Q(n29) );
    AOI220 U15 ( .A(\rcnt[0] ), .B(n3), .C(n4), .D(\rcnt[3] ), .Q(n31) );
    IMUX20 U16 ( .A(\rcnt[3] ), .B(n3), .Q(n26), .S(n29) );
    AOI220 U17 ( .A(\rcnt[0] ), .B(n6), .C(n4), .D(\rcnt[1] ), .Q(n32) );
    IMUX20 U18 ( .A(n5), .B(\rcnt[2] ), .Q(n27), .S(n30) );
    CLKIN0 U19 ( .A(nextKey), .Q(n33) );
    NOR20 U20 ( .A(n33), .B(start), .Q(n34) );
    NAND20 U21 ( .A(\rcnt[1] ), .B(\rcnt[0] ), .Q(n30) );
    NAND20 U22 ( .A(n34), .B(n35), .Q(n28) );
    NAND20 U23 ( .A(n24), .B(n12), .Q(n10) );
    NOR30 U24 ( .A(n37), .B(n12), .C(n35), .Q(n36) );
    NOR20 U25 ( .A(n39), .B(\rcnt[0] ), .Q(n38) );
    NAND30 U26 ( .A(n32), .B(n37), .C(n38), .Q(n13) );
    NOR40 U27 ( .A(n35), .B(n39), .C(n4), .D(n26), .Q(n40) );
    IMUX20 U28 ( .A(n12), .B(n10), .Q(n49), .S(\rcnt[0] ) );
    NAND30 U29 ( .A(n31), .B(n3), .C(n34), .Q(n8) );
    NAND20 U30 ( .A(\rcnt[1] ), .B(\rcnt[2] ), .Q(n9) );
    NOR20 U31 ( .A(n28), .B(n37), .Q(n41) );
    AOI220 U32 ( .A(n41), .B(n38), .C(rcon_out[3]), .D(n42), .Q(n20) );
    AOI220 U33 ( .A(n38), .B(n36), .C(rcon_out[1]), .D(n42), .Q(n22) );
    CLKIN0 U34 ( .A(n34), .Q(n12) );
    CLKIN0 U35 ( .A(n40), .Q(n19) );
    CLKIN0 U36 ( .A(n10), .Q(n42) );
    NAND20 U37 ( .A(start), .B(n33), .Q(n24) );
    NOR40 U38 ( .A(n37), .B(n28), .C(n4), .D(n27), .Q(n43) );
    NAND30 U39 ( .A(n39), .B(n4), .C(n36), .Q(n15) );
    NAND20 U40 ( .A(rcon_out[5]), .B(n42), .Q(n14) );
    NAND20 U41 ( .A(n13), .B(n19), .Q(n44) );
    NAND30 U42 ( .A(\rcnt[0] ), .B(n39), .C(n36), .Q(n18) );
    NAND20 U43 ( .A(rcon_out[4]), .B(n42), .Q(n17) );
    NOR40 U44 ( .A(n12), .B(n31), .C(\rcnt[2] ), .D(\rcnt[1] ), .Q(n45) );
    NAND30 U45 ( .A(n36), .B(\rcnt[0] ), .C(n27), .Q(n23) );
    IMUX20 U46 ( .A(n33), .B(nextKey), .Q(n7), .S(start) );
    CLKIN0 U47 ( .A(n27), .Q(n39) );
    CLKIN0 U48 ( .A(n26), .Q(n37) );
    IMUX20 U49 ( .A(rcon_out[0]), .B(n40), .Q(n25), .S(n34) );
    CLKIN0 U50 ( .A(n32), .Q(n35) );
    CLKIN0 U51 ( .A(n45), .Q(n21) );
    CLKIN0 U52 ( .A(n43), .Q(n11) );
    CLKIN0 U53 ( .A(n44), .Q(n16) );
    DFC1 \rcnt_reg[0]  ( .C(clk), .D(n49), .Q(\rcnt[0] ), .QN(n4), .RN(reset)
         );
    DFC1 \rcnt_reg[1]  ( .C(clk), .D(n50), .Q(\rcnt[1] ), .QN(n6), .RN(reset)
         );
    DFC1 \rcnt_reg[2]  ( .C(clk), .D(n51), .Q(\rcnt[2] ), .QN(n5), .RN(reset)
         );
    DFC1 \rcnt_reg[3]  ( .C(clk), .D(n52), .Q(\rcnt[3] ), .QN(n3), .RN(reset)
         );
    DFC1 \rcon_out_reg[0]  ( .C(clk), .D(n53), .Q(rcon_out[0]), .RN(reset) );
    DFC1 \rcon_out_reg[1]  ( .C(clk), .D(n54), .Q(rcon_out[1]), .RN(reset) );
    DFC1 \rcon_out_reg[2]  ( .C(clk), .D(n55), .Q(rcon_out[2]), .QN(n46), .RN(
        reset) );
    DFC1 \rcon_out_reg[3]  ( .C(clk), .D(n56), .Q(rcon_out[3]), .RN(reset) );
    DFC1 \rcon_out_reg[4]  ( .C(clk), .D(n57), .Q(rcon_out[4]), .RN(reset) );
    DFC1 \rcon_out_reg[5]  ( .C(clk), .D(n58), .Q(rcon_out[5]), .RN(reset) );
    DFC1 \rcon_out_reg[6]  ( .C(clk), .D(n59), .Q(rcon_out[6]), .QN(n47), .RN(
        reset) );
    DFC1 \rcon_out_reg[7]  ( .C(clk), .D(n60), .Q(rcon_out[7]), .QN(n48), .RN(
        reset) );
endmodule


module rcon_inv ( clk, reset, selEncDec, nextKey, key_gen, rcon_out );
output [7:0] rcon_out;
input  clk, reset, selEncDec, nextKey, key_gen;
    wire \rcnt[3] , \rcnt[2] , \rcnt[1] , \rcnt[0] , n3, n4, n5, n6, n7, n8, 
        n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, 
        n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, 
        n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
        n51, n52, n53, n54, n55, n56, n57, n58, n59;
    OAI210 U3 ( .A(n7), .B(n47), .C(n8), .Q(n59) );
    OAI210 U4 ( .A(n7), .B(n46), .C(n9), .Q(n58) );
    OAI2110 U5 ( .A(n10), .B(n45), .C(n11), .D(n12), .Q(n57) );
    OAI2110 U6 ( .A(n10), .B(n44), .C(n12), .D(n13), .Q(n56) );
    OAI2110 U7 ( .A(\rcnt[0] ), .B(n14), .C(n15), .D(n16), .Q(n55) );
    OAI2110 U8 ( .A(n3), .B(n14), .C(n17), .D(n12), .Q(n54) );
    OAI2110 U9 ( .A(n10), .B(n43), .C(n12), .D(n18), .Q(n53) );
    OAI2110 U10 ( .A(n19), .B(n42), .C(n20), .D(n16), .Q(n52) );
    NAND20 U11 ( .A(n21), .B(n22), .Q(n51) );
    OAI220 U12 ( .A(n23), .B(n24), .C(n5), .D(n19), .Q(n50) );
    OAI220 U13 ( .A(n25), .B(n24), .C(n4), .D(n19), .Q(n49) );
    NAND20 U14 ( .A(n26), .B(n22), .Q(n48) );
    NOR20 U15 ( .A(\rcnt[1] ), .B(\rcnt[0] ), .Q(n27) );
    NOR40 U16 ( .A(n29), .B(n30), .C(n31), .D(n32), .Q(n28) );
    OAI220 U17 ( .A(\rcnt[0] ), .B(n4), .C(n3), .D(\rcnt[1] ), .Q(n25) );
    IMUX20 U18 ( .A(n5), .B(\rcnt[2] ), .Q(n32), .S(n25) );
    IMUX20 U19 ( .A(n5), .B(\rcnt[2] ), .Q(n33), .S(n27) );
    CLKIN0 U20 ( .A(selEncDec), .Q(n29) );
    CLKIN0 U21 ( .A(nextKey), .Q(n30) );
    OAI220 U22 ( .A(n3), .B(n4), .C(n34), .D(n5), .Q(n31) );
    NOR30 U23 ( .A(n29), .B(key_gen), .C(n30), .Q(n10) );
    NOR30 U24 ( .A(n6), .B(n34), .C(n33), .Q(n35) );
    NOR30 U25 ( .A(n34), .B(\rcnt[3] ), .C(n24), .Q(n36) );
    AOI310 U26 ( .A(n35), .B(n3), .C(n10), .D(n37), .Q(n12) );
    NOR20 U27 ( .A(n37), .B(n10), .Q(n38) );
    NAND40 U28 ( .A(n23), .B(n10), .C(n34), .D(n6), .Q(n14) );
    AOI310 U29 ( .A(\rcnt[0] ), .B(n33), .C(n36), .D(n39), .Q(n13) );
    AOI310 U30 ( .A(n23), .B(n3), .C(n36), .D(n39), .Q(n18) );
    CLKIN0 U31 ( .A(n10), .Q(n24) );
    NAND30 U32 ( .A(n10), .B(\rcnt[0] ), .C(n35), .Q(n16) );
    CLKIN0 U33 ( .A(n16), .Q(n39) );
    NAND20 U34 ( .A(key_gen), .B(selEncDec), .Q(n22) );
    CLKIN0 U35 ( .A(n38), .Q(n19) );
    AOI210 U36 ( .A(n30), .B(n40), .C(n29), .Q(n7) );
    NOR40 U37 ( .A(n6), .B(n24), .C(n32), .D(n31), .Q(n41) );
    NAND40 U38 ( .A(n10), .B(n32), .C(n31), .D(n6), .Q(n9) );
    NAND30 U39 ( .A(n33), .B(n3), .C(n36), .Q(n11) );
    NAND20 U40 ( .A(rcon_out[3]), .B(n38), .Q(n15) );
    NAND20 U41 ( .A(rcon_out[2]), .B(n24), .Q(n17) );
    NAND30 U42 ( .A(n23), .B(\rcnt[0] ), .C(n36), .Q(n20) );
    CLKIN0 U43 ( .A(n33), .Q(n23) );
    IMUX20 U44 ( .A(\rcnt[3] ), .B(n6), .Q(n21), .S(n28) );
    AOI220 U45 ( .A(\rcnt[0] ), .B(n24), .C(n3), .D(n10), .Q(n26) );
    CLKIN0 U46 ( .A(n22), .Q(n37) );
    CLKIN0 U47 ( .A(n41), .Q(n8) );
    CLKIN0 U48 ( .A(key_gen), .Q(n40) );
    CLKIN0 U49 ( .A(n25), .Q(n34) );
    DFC1 \rcnt_reg[0]  ( .C(clk), .D(n48), .Q(\rcnt[0] ), .QN(n3), .RN(reset)
         );
    DFC1 \rcnt_reg[1]  ( .C(clk), .D(n49), .Q(\rcnt[1] ), .QN(n4), .RN(reset)
         );
    DFC1 \rcnt_reg[2]  ( .C(clk), .D(n50), .Q(\rcnt[2] ), .QN(n5), .RN(reset)
         );
    DFC1 \rcnt_reg[3]  ( .C(clk), .D(n51), .Q(\rcnt[3] ), .QN(n6), .RN(reset)
         );
    DFC1 \rcon_out_reg[0]  ( .C(clk), .D(n52), .Q(rcon_out[0]), .QN(n42), .RN(
        reset) );
    DFC1 \rcon_out_reg[1]  ( .C(clk), .D(n53), .Q(rcon_out[1]), .QN(n43), .RN(
        reset) );
    DFC1 \rcon_out_reg[2]  ( .C(clk), .D(n54), .Q(rcon_out[2]), .RN(reset) );
    DFC1 \rcon_out_reg[3]  ( .C(clk), .D(n55), .Q(rcon_out[3]), .RN(reset) );
    DFC1 \rcon_out_reg[4]  ( .C(clk), .D(n56), .Q(rcon_out[4]), .QN(n44), .RN(
        reset) );
    DFC1 \rcon_out_reg[5]  ( .C(clk), .D(n57), .Q(rcon_out[5]), .QN(n45), .RN(
        reset) );
    DFC1 \rcon_out_reg[6]  ( .C(clk), .D(n58), .Q(rcon_out[6]), .QN(n46), .RN(
        reset) );
    DFC1 \rcon_out_reg[7]  ( .C(clk), .D(n59), .Q(rcon_out[7]), .QN(n47), .RN(
        reset) );
endmodule


module keyExpansion ( clk, reset, selEncDec, key_gen, start, nextKey, key_in, 
    key_out, sboxInp, sboxOutp );
input  [127:0] key_in;
output [127:0] key_out;
output [31:0] sboxInp;
input  [31:0] sboxOutp;
input  clk, reset, selEncDec, key_gen, start, nextKey;
    wire \rcon[7] , \rcon[6] , \rcon[5] , \rcon[4] , \rcon[3] , \rcon[2] , 
        \rcon[1] , \rcon[0] , \rcon_inv[7] , \rcon_inv[6] , \rcon_inv[5] , 
        \rcon_inv[4] , \rcon_inv[3] , \rcon_inv[2] , \rcon_inv[1] , 
        \rcon_inv[0] , n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, 
        n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
        n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
        n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, 
        n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
        n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, 
        n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, 
        n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, 
        n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, 
        n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, 
        n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, 
        n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, 
        n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, 
        n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, 
        n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, 
        n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, 
        n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, 
        n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, 
        n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
        n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
        n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
        n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
        n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
        n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
        n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
        n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
        n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
        n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, 
        n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, 
        n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, 
        n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, 
        n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, 
        n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, 
        n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, 
        n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, 
        n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, 
        n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, 
        n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, 
        n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, 
        n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, 
        n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, 
        n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, 
        n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, 
        n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, 
        n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, 
        n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, 
        n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, 
        n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, 
        n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, 
        n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, 
        n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, 
        n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, 
        n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, 
        n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, 
        n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, 
        n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, 
        n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, 
        n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, 
        n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, 
        n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, 
        n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, 
        n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, 
        n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, 
        n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, 
        n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, 
        n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, 
        n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, 
        n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, 
        n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, 
        n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, 
        n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, 
        n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, 
        n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910, n911, 
        n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, 
        n924, n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, 
        n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, 
        n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, 
        n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, 
        n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, 
        n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, 
        n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, 
        n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, 
        n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, 
        n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, 
        n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, 
        n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, 
        n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, 
        n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, 
        n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, 
        n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, 
        n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, 
        n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, 
        n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, 
        n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, 
        n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, 
        n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, 
        n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, 
        n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, 
        n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, 
        n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, 
        n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, 
        n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, 
        n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, 
        n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234;
    rcon r0 ( .clk(clk), .reset(reset), .start(start), .nextKey(nextKey), 
        .rcon_out({\rcon[7] , \rcon[6] , \rcon[5] , \rcon[4] , \rcon[3] , 
        \rcon[2] , \rcon[1] , \rcon[0] }) );
    rcon_inv r0_inv ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .nextKey(nextKey), .key_gen(key_gen), .rcon_out({\rcon_inv[7] , 
        \rcon_inv[6] , \rcon_inv[5] , \rcon_inv[4] , \rcon_inv[3] , 
        \rcon_inv[2] , \rcon_inv[1] , \rcon_inv[0] }) );
    BUF2 U2 ( .A(n117), .Q(n105) );
    BUF2 U3 ( .A(n117), .Q(n106) );
    BUF2 U4 ( .A(n108), .Q(n109) );
    BUF2 U5 ( .A(n117), .Q(n107) );
    BUF2 U6 ( .A(n108), .Q(n110) );
    BUF2 U7 ( .A(n113), .Q(n108) );
    BUF2 U8 ( .A(n116), .Q(n114) );
    BUF2 U9 ( .A(n116), .Q(n113) );
    BUF2 U10 ( .A(n118), .Q(n117) );
    BUF2 U11 ( .A(n117), .Q(n115) );
    BUF2 U12 ( .A(n110), .Q(n111) );
    BUF2 U13 ( .A(n110), .Q(n112) );
    BUF2 U14 ( .A(n208), .Q(n118) );
    BUF2 U15 ( .A(n117), .Q(n116) );
    INV3 U16 ( .A(n101), .Q(n88) );
    INV3 U17 ( .A(n98), .Q(n91) );
    INV3 U18 ( .A(n102), .Q(n92) );
    INV3 U19 ( .A(n99), .Q(n97) );
    INV3 U20 ( .A(n102), .Q(n93) );
    INV3 U21 ( .A(n99), .Q(n96) );
    INV3 U22 ( .A(n102), .Q(n94) );
    INV3 U23 ( .A(n99), .Q(n95) );
    INV3 U24 ( .A(n98), .Q(n90) );
    INV3 U25 ( .A(n98), .Q(n89) );
    BUF2 U26 ( .A(n100), .Q(n98) );
    BUF2 U27 ( .A(n103), .Q(n101) );
    BUF2 U28 ( .A(n99), .Q(n103) );
    BUF2 U29 ( .A(n104), .Q(n100) );
    BUF2 U30 ( .A(n103), .Q(n102) );
    INV3 U31 ( .A(n552), .Q(n104) );
    BUF2 U32 ( .A(n100), .Q(n99) );
    NOR22 U33 ( .A(n551), .B(key_gen), .Q(n550) );
    NOR22 U34 ( .A(n101), .B(n458), .Q(n457) );
    INV3 U35 ( .A(n553), .Q(n458) );
    NAND33 U36 ( .A(n548), .B(n547), .C(nextKey), .Q(n553) );
    CLKIN2 U37 ( .A(n1059), .Q(n87) );
    INV3 U38 ( .A(n135), .Q(n1059) );
    NAND33 U39 ( .A(n548), .B(n549), .C(start), .Q(n135) );
    NAND20 U40 ( .A(n119), .B(n120), .Q(sboxInp[31]) );
    NAND20 U41 ( .A(n121), .B(n122), .Q(sboxInp[30]) );
    NAND20 U42 ( .A(n123), .B(n124), .Q(sboxInp[29]) );
    NAND20 U43 ( .A(n125), .B(n126), .Q(sboxInp[28]) );
    NAND20 U44 ( .A(n127), .B(n128), .Q(sboxInp[27]) );
    NAND20 U45 ( .A(n129), .B(n130), .Q(sboxInp[26]) );
    NAND20 U46 ( .A(n131), .B(n132), .Q(sboxInp[25]) );
    NAND20 U47 ( .A(n133), .B(n134), .Q(sboxInp[24]) );
    OAI2110 U48 ( .A(n87), .B(n136), .C(n137), .D(n138), .Q(n1107) );
    OAI2110 U49 ( .A(n135), .B(n139), .C(n140), .D(n141), .Q(n1108) );
    OAI2110 U50 ( .A(n87), .B(n142), .C(n143), .D(n144), .Q(n1109) );
    OAI2110 U51 ( .A(n87), .B(n145), .C(n146), .D(n147), .Q(n1110) );
    OAI2110 U52 ( .A(n87), .B(n148), .C(n149), .D(n150), .Q(n1111) );
    OAI2110 U53 ( .A(n87), .B(n151), .C(n152), .D(n153), .Q(n1112) );
    OAI2110 U54 ( .A(n87), .B(n154), .C(n155), .D(n156), .Q(n1113) );
    OAI2110 U55 ( .A(n87), .B(n157), .C(n158), .D(n159), .Q(n1114) );
    OAI2110 U56 ( .A(n87), .B(n160), .C(n161), .D(n162), .Q(n1115) );
    OAI2110 U57 ( .A(n87), .B(n163), .C(n164), .D(n165), .Q(n1116) );
    OAI2110 U58 ( .A(n87), .B(n166), .C(n167), .D(n168), .Q(n1117) );
    OAI2110 U59 ( .A(n87), .B(n169), .C(n170), .D(n171), .Q(n1118) );
    OAI2110 U60 ( .A(n87), .B(n172), .C(n173), .D(n174), .Q(n1119) );
    OAI2110 U61 ( .A(n87), .B(n175), .C(n176), .D(n177), .Q(n1120) );
    OAI2110 U62 ( .A(n87), .B(n178), .C(n179), .D(n180), .Q(n1121) );
    OAI2110 U63 ( .A(n87), .B(n181), .C(n182), .D(n183), .Q(n1122) );
    OAI2110 U64 ( .A(n87), .B(n184), .C(n185), .D(n186), .Q(n1123) );
    OAI2110 U65 ( .A(n87), .B(n187), .C(n188), .D(n189), .Q(n1124) );
    OAI2110 U66 ( .A(n87), .B(n190), .C(n191), .D(n192), .Q(n1125) );
    OAI2110 U67 ( .A(n87), .B(n193), .C(n194), .D(n195), .Q(n1126) );
    OAI2110 U68 ( .A(n87), .B(n196), .C(n197), .D(n198), .Q(n1127) );
    OAI2110 U69 ( .A(n87), .B(n199), .C(n200), .D(n201), .Q(n1128) );
    OAI2110 U70 ( .A(n87), .B(n202), .C(n203), .D(n204), .Q(n1129) );
    OAI2110 U71 ( .A(n87), .B(n205), .C(n206), .D(n207), .Q(n1130) );
    OAI2110 U72 ( .A(n107), .B(n36), .C(n209), .D(n210), .Q(n1131) );
    OAI2110 U73 ( .A(n105), .B(n33), .C(n211), .D(n212), .Q(n1132) );
    OAI2110 U74 ( .A(n105), .B(n30), .C(n213), .D(n214), .Q(n1133) );
    OAI2110 U75 ( .A(n107), .B(n27), .C(n215), .D(n216), .Q(n1134) );
    OAI2110 U76 ( .A(n105), .B(n24), .C(n217), .D(n218), .Q(n1135) );
    OAI2110 U77 ( .A(n105), .B(n21), .C(n219), .D(n220), .Q(n1136) );
    OAI2110 U78 ( .A(n105), .B(n18), .C(n221), .D(n222), .Q(n1137) );
    OAI2110 U79 ( .A(n15), .B(n107), .C(n223), .D(n224), .Q(n1138) );
    OAI2110 U80 ( .A(n87), .B(n225), .C(n226), .D(n227), .Q(n1139) );
    OAI2110 U81 ( .A(n87), .B(n228), .C(n229), .D(n230), .Q(n1140) );
    OAI2110 U82 ( .A(n87), .B(n231), .C(n232), .D(n233), .Q(n1141) );
    OAI2110 U83 ( .A(n87), .B(n234), .C(n235), .D(n236), .Q(n1142) );
    OAI2110 U84 ( .A(n87), .B(n237), .C(n238), .D(n239), .Q(n1143) );
    OAI2110 U85 ( .A(n87), .B(n240), .C(n241), .D(n242), .Q(n1144) );
    OAI2110 U86 ( .A(n87), .B(n243), .C(n244), .D(n245), .Q(n1145) );
    OAI2110 U87 ( .A(n87), .B(n246), .C(n247), .D(n248), .Q(n1146) );
    OAI2110 U88 ( .A(n87), .B(n249), .C(n250), .D(n251), .Q(n1147) );
    OAI2110 U89 ( .A(n87), .B(n252), .C(n253), .D(n254), .Q(n1148) );
    OAI2110 U90 ( .A(n87), .B(n255), .C(n256), .D(n257), .Q(n1149) );
    OAI2110 U91 ( .A(n87), .B(n258), .C(n259), .D(n260), .Q(n1150) );
    OAI2110 U92 ( .A(n87), .B(n261), .C(n262), .D(n263), .Q(n1151) );
    OAI2110 U93 ( .A(n87), .B(n264), .C(n265), .D(n266), .Q(n1152) );
    OAI2110 U94 ( .A(n87), .B(n267), .C(n268), .D(n269), .Q(n1153) );
    OAI2110 U95 ( .A(n87), .B(n270), .C(n271), .D(n272), .Q(n1154) );
    OAI2110 U96 ( .A(n87), .B(n273), .C(n274), .D(n275), .Q(n1155) );
    OAI2110 U97 ( .A(n87), .B(n276), .C(n277), .D(n278), .Q(n1156) );
    OAI2110 U98 ( .A(n87), .B(n279), .C(n280), .D(n281), .Q(n1157) );
    OAI2110 U99 ( .A(n87), .B(n282), .C(n283), .D(n284), .Q(n1158) );
    OAI2110 U100 ( .A(n87), .B(n285), .C(n286), .D(n287), .Q(n1159) );
    OAI2110 U101 ( .A(n87), .B(n288), .C(n289), .D(n290), .Q(n1160) );
    OAI2110 U102 ( .A(n87), .B(n291), .C(n292), .D(n293), .Q(n1161) );
    OAI2110 U103 ( .A(n87), .B(n294), .C(n295), .D(n296), .Q(n1162) );
    NAND30 U104 ( .A(n297), .B(n298), .C(n299), .Q(n1163) );
    NAND30 U105 ( .A(n300), .B(n301), .C(n302), .Q(n1164) );
    NAND30 U106 ( .A(n303), .B(n304), .C(n305), .Q(n1165) );
    NAND30 U107 ( .A(n306), .B(n307), .C(n308), .Q(n1166) );
    NAND30 U108 ( .A(n309), .B(n310), .C(n311), .Q(n1167) );
    NAND30 U109 ( .A(n312), .B(n313), .C(n314), .Q(n1168) );
    NAND30 U110 ( .A(n315), .B(n316), .C(n317), .Q(n1169) );
    NAND30 U111 ( .A(n318), .B(n319), .C(n320), .Q(n1170) );
    OAI210 U112 ( .A(n135), .B(n321), .C(n322), .Q(n1171) );
    OAI210 U113 ( .A(n135), .B(n323), .C(n324), .Q(n1172) );
    OAI210 U114 ( .A(n135), .B(n325), .C(n326), .Q(n1173) );
    OAI210 U115 ( .A(n135), .B(n327), .C(n328), .Q(n1174) );
    OAI210 U116 ( .A(n135), .B(n329), .C(n330), .Q(n1175) );
    OAI210 U117 ( .A(n135), .B(n331), .C(n332), .Q(n1176) );
    OAI210 U118 ( .A(n135), .B(n333), .C(n334), .Q(n1177) );
    OAI210 U119 ( .A(n135), .B(n335), .C(n336), .Q(n1178) );
    OAI210 U120 ( .A(n135), .B(n337), .C(n338), .Q(n1179) );
    OAI210 U121 ( .A(n135), .B(n339), .C(n340), .Q(n1180) );
    OAI210 U122 ( .A(n135), .B(n341), .C(n342), .Q(n1181) );
    OAI210 U123 ( .A(n135), .B(n343), .C(n344), .Q(n1182) );
    OAI210 U124 ( .A(n135), .B(n345), .C(n346), .Q(n1183) );
    OAI210 U125 ( .A(n135), .B(n347), .C(n348), .Q(n1184) );
    OAI210 U126 ( .A(n135), .B(n349), .C(n350), .Q(n1185) );
    OAI210 U127 ( .A(n135), .B(n351), .C(n352), .Q(n1186) );
    OAI210 U128 ( .A(n135), .B(n353), .C(n354), .Q(n1187) );
    OAI210 U129 ( .A(n135), .B(n355), .C(n356), .Q(n1188) );
    OAI210 U130 ( .A(n135), .B(n357), .C(n358), .Q(n1189) );
    OAI210 U131 ( .A(n135), .B(n359), .C(n360), .Q(n1190) );
    OAI210 U132 ( .A(n135), .B(n361), .C(n362), .Q(n1191) );
    OAI210 U133 ( .A(n135), .B(n363), .C(n364), .Q(n1192) );
    OAI210 U134 ( .A(n135), .B(n365), .C(n366), .Q(n1193) );
    OAI210 U135 ( .A(n135), .B(n367), .C(n368), .Q(n1194) );
    NAND30 U136 ( .A(n369), .B(n370), .C(n371), .Q(n1195) );
    NAND30 U137 ( .A(n372), .B(n373), .C(n374), .Q(n1196) );
    NAND30 U138 ( .A(n375), .B(n376), .C(n377), .Q(n1197) );
    NAND30 U139 ( .A(n378), .B(n379), .C(n380), .Q(n1198) );
    NAND30 U140 ( .A(n381), .B(n382), .C(n383), .Q(n1199) );
    NAND30 U141 ( .A(n384), .B(n385), .C(n386), .Q(n1200) );
    NAND30 U142 ( .A(n387), .B(n388), .C(n389), .Q(n1201) );
    NAND30 U143 ( .A(n390), .B(n391), .C(n392), .Q(n1202) );
    OAI210 U144 ( .A(n135), .B(n393), .C(n394), .Q(n1203) );
    OAI210 U145 ( .A(n135), .B(n395), .C(n396), .Q(n1204) );
    OAI210 U146 ( .A(n135), .B(n397), .C(n398), .Q(n1205) );
    OAI210 U147 ( .A(n135), .B(n399), .C(n400), .Q(n1206) );
    OAI210 U148 ( .A(n135), .B(n401), .C(n402), .Q(n1207) );
    OAI210 U149 ( .A(n135), .B(n403), .C(n404), .Q(n1208) );
    OAI210 U150 ( .A(n135), .B(n405), .C(n406), .Q(n1209) );
    OAI210 U151 ( .A(n135), .B(n407), .C(n408), .Q(n1210) );
    OAI210 U152 ( .A(n135), .B(n409), .C(n410), .Q(n1211) );
    OAI210 U153 ( .A(n135), .B(n411), .C(n412), .Q(n1212) );
    OAI210 U154 ( .A(n135), .B(n413), .C(n414), .Q(n1213) );
    OAI210 U155 ( .A(n135), .B(n415), .C(n416), .Q(n1214) );
    OAI210 U156 ( .A(n135), .B(n417), .C(n418), .Q(n1215) );
    OAI210 U157 ( .A(n135), .B(n419), .C(n420), .Q(n1216) );
    OAI210 U158 ( .A(n135), .B(n421), .C(n422), .Q(n1217) );
    OAI210 U159 ( .A(n135), .B(n423), .C(n424), .Q(n1218) );
    OAI210 U160 ( .A(n135), .B(n425), .C(n426), .Q(n1219) );
    OAI210 U161 ( .A(n135), .B(n427), .C(n428), .Q(n1220) );
    OAI210 U162 ( .A(n135), .B(n429), .C(n430), .Q(n1221) );
    OAI210 U163 ( .A(n135), .B(n431), .C(n432), .Q(n1222) );
    OAI210 U164 ( .A(n135), .B(n433), .C(n434), .Q(n1223) );
    OAI210 U165 ( .A(n135), .B(n435), .C(n436), .Q(n1224) );
    OAI210 U166 ( .A(n135), .B(n437), .C(n438), .Q(n1225) );
    OAI210 U167 ( .A(n135), .B(n439), .C(n440), .Q(n1226) );
    OAI210 U168 ( .A(n135), .B(n441), .C(n442), .Q(n1227) );
    OAI210 U169 ( .A(n135), .B(n443), .C(n444), .Q(n1228) );
    OAI210 U170 ( .A(n135), .B(n445), .C(n446), .Q(n1229) );
    OAI210 U171 ( .A(n135), .B(n447), .C(n448), .Q(n1230) );
    OAI210 U172 ( .A(n135), .B(n449), .C(n450), .Q(n1231) );
    OAI210 U173 ( .A(n135), .B(n451), .C(n452), .Q(n1232) );
    OAI210 U174 ( .A(n135), .B(n453), .C(n454), .Q(n1233) );
    OAI210 U175 ( .A(n135), .B(n455), .C(n456), .Q(n1234) );
    NOR20 U176 ( .A(n460), .B(n461), .Q(n459) );
    NOR20 U177 ( .A(n463), .B(n464), .Q(n462) );
    NOR20 U178 ( .A(n466), .B(n467), .Q(n465) );
    NOR20 U179 ( .A(n469), .B(n470), .Q(n468) );
    NOR20 U180 ( .A(n472), .B(n473), .Q(n471) );
    NOR20 U181 ( .A(n475), .B(n476), .Q(n474) );
    NOR20 U182 ( .A(n478), .B(n479), .Q(n477) );
    NOR20 U183 ( .A(n481), .B(n482), .Q(n480) );
    IMUX20 U184 ( .A(sboxOutp[17]), .B(n484), .Q(n483), .S(key_out[105]) );
    IMUX20 U185 ( .A(sboxOutp[16]), .B(n486), .Q(n485), .S(key_out[104]) );
    IMUX20 U186 ( .A(sboxOutp[31]), .B(n488), .Q(n487), .S(key_out[103]) );
    IMUX20 U187 ( .A(sboxOutp[30]), .B(n490), .Q(n489), .S(key_out[102]) );
    IMUX20 U188 ( .A(sboxOutp[29]), .B(n492), .Q(n491), .S(key_out[101]) );
    IMUX20 U189 ( .A(sboxOutp[28]), .B(n494), .Q(n493), .S(key_out[100]) );
    IMUX20 U190 ( .A(sboxOutp[27]), .B(n496), .Q(n495), .S(key_out[99]) );
    IMUX20 U191 ( .A(n498), .B(\rcon[7] ), .Q(n497), .S(sboxOutp[7]) );
    IMUX20 U192 ( .A(n500), .B(\rcon[6] ), .Q(n499), .S(sboxOutp[6]) );
    IMUX20 U193 ( .A(sboxOutp[26]), .B(n502), .Q(n501), .S(key_out[98]) );
    IMUX20 U194 ( .A(n504), .B(\rcon[5] ), .Q(n503), .S(sboxOutp[5]) );
    IMUX20 U195 ( .A(n506), .B(\rcon[4] ), .Q(n505), .S(sboxOutp[4]) );
    IMUX20 U196 ( .A(n508), .B(\rcon[3] ), .Q(n507), .S(sboxOutp[3]) );
    IMUX20 U197 ( .A(n510), .B(\rcon[2] ), .Q(n509), .S(sboxOutp[2]) );
    IMUX20 U198 ( .A(n512), .B(\rcon[1] ), .Q(n511), .S(sboxOutp[1]) );
    IMUX20 U199 ( .A(n514), .B(\rcon[0] ), .Q(n513), .S(sboxOutp[0]) );
    IMUX20 U200 ( .A(sboxOutp[15]), .B(n516), .Q(n515), .S(key_out[119]) );
    IMUX20 U201 ( .A(sboxOutp[14]), .B(n518), .Q(n517), .S(key_out[118]) );
    IMUX20 U202 ( .A(sboxOutp[13]), .B(n520), .Q(n519), .S(key_out[117]) );
    IMUX20 U203 ( .A(sboxOutp[12]), .B(n522), .Q(n521), .S(key_out[116]) );
    IMUX20 U204 ( .A(sboxOutp[25]), .B(n524), .Q(n523), .S(key_out[97]) );
    IMUX20 U205 ( .A(sboxOutp[11]), .B(n526), .Q(n525), .S(key_out[115]) );
    IMUX20 U206 ( .A(sboxOutp[10]), .B(n528), .Q(n527), .S(key_out[114]) );
    IMUX20 U207 ( .A(sboxOutp[9]), .B(n530), .Q(n529), .S(key_out[113]) );
    IMUX20 U208 ( .A(sboxOutp[8]), .B(n532), .Q(n531), .S(key_out[112]) );
    IMUX20 U209 ( .A(sboxOutp[23]), .B(n534), .Q(n533), .S(key_out[111]) );
    IMUX20 U210 ( .A(sboxOutp[22]), .B(n536), .Q(n535), .S(key_out[110]) );
    IMUX20 U211 ( .A(sboxOutp[21]), .B(n538), .Q(n537), .S(key_out[109]) );
    IMUX20 U212 ( .A(sboxOutp[20]), .B(n540), .Q(n539), .S(key_out[108]) );
    IMUX20 U213 ( .A(sboxOutp[19]), .B(n542), .Q(n541), .S(key_out[107]) );
    IMUX20 U214 ( .A(sboxOutp[18]), .B(n544), .Q(n543), .S(key_out[106]) );
    IMUX20 U215 ( .A(sboxOutp[24]), .B(n546), .Q(n545), .S(key_out[96]) );
    CLKIN0 U216 ( .A(start), .Q(n547) );
    CLKIN0 U217 ( .A(key_in[9]), .Q(n163) );
    NAND30 U218 ( .A(nextKey), .B(n547), .C(n550), .Q(n552) );
    CLKIN0 U219 ( .A(sboxOutp[17]), .Q(n484) );
    CLKIN0 U220 ( .A(key_in[8]), .Q(n160) );
    CLKIN0 U221 ( .A(sboxOutp[16]), .Q(n486) );
    CLKIN0 U222 ( .A(key_in[7]), .Q(n157) );
    CLKIN0 U223 ( .A(sboxOutp[31]), .Q(n488) );
    CLKIN0 U224 ( .A(key_in[6]), .Q(n154) );
    CLKIN0 U225 ( .A(sboxOutp[30]), .Q(n490) );
    CLKIN0 U226 ( .A(key_in[5]), .Q(n151) );
    CLKIN0 U227 ( .A(sboxOutp[29]), .Q(n492) );
    CLKIN0 U228 ( .A(key_in[4]), .Q(n148) );
    CLKIN0 U229 ( .A(sboxOutp[28]), .Q(n494) );
    CLKIN0 U230 ( .A(key_in[3]), .Q(n145) );
    CLKIN0 U231 ( .A(sboxOutp[27]), .Q(n496) );
    NAND20 U232 ( .A(key_out[63]), .B(n15), .Q(n554) );
    NOR20 U233 ( .A(n15), .B(key_out[63]), .Q(n461) );
    NAND20 U234 ( .A(n457), .B(n87), .Q(n208) );
    NAND20 U235 ( .A(key_out[62]), .B(n18), .Q(n555) );
    NOR20 U236 ( .A(n18), .B(key_out[62]), .Q(n464) );
    CLKIN0 U237 ( .A(key_in[2]), .Q(n142) );
    CLKIN0 U238 ( .A(sboxOutp[26]), .Q(n502) );
    NAND20 U239 ( .A(key_out[61]), .B(n21), .Q(n556) );
    NOR20 U240 ( .A(n21), .B(key_out[61]), .Q(n467) );
    NAND20 U241 ( .A(key_out[60]), .B(n24), .Q(n557) );
    NOR20 U242 ( .A(n24), .B(key_out[60]), .Q(n470) );
    NAND20 U243 ( .A(key_out[59]), .B(n27), .Q(n558) );
    NOR20 U244 ( .A(n27), .B(key_out[59]), .Q(n473) );
    NAND20 U245 ( .A(key_out[58]), .B(n30), .Q(n559) );
    NOR20 U246 ( .A(n30), .B(key_out[58]), .Q(n476) );
    NAND20 U247 ( .A(key_out[57]), .B(n33), .Q(n560) );
    NOR20 U248 ( .A(n33), .B(key_out[57]), .Q(n479) );
    NAND20 U249 ( .A(key_out[56]), .B(n36), .Q(n561) );
    NOR20 U250 ( .A(n36), .B(key_out[56]), .Q(n482) );
    CLKIN0 U251 ( .A(key_in[23]), .Q(n205) );
    CLKIN0 U252 ( .A(sboxOutp[15]), .Q(n516) );
    CLKIN0 U253 ( .A(key_in[22]), .Q(n202) );
    CLKIN0 U254 ( .A(sboxOutp[14]), .Q(n518) );
    CLKIN0 U255 ( .A(key_in[21]), .Q(n199) );
    CLKIN0 U256 ( .A(sboxOutp[13]), .Q(n520) );
    CLKIN0 U257 ( .A(key_in[20]), .Q(n196) );
    CLKIN0 U258 ( .A(sboxOutp[12]), .Q(n522) );
    CLKIN0 U259 ( .A(key_in[1]), .Q(n139) );
    CLKIN0 U260 ( .A(sboxOutp[25]), .Q(n524) );
    CLKIN0 U261 ( .A(key_in[19]), .Q(n193) );
    CLKIN0 U262 ( .A(sboxOutp[11]), .Q(n526) );
    CLKIN0 U263 ( .A(key_in[18]), .Q(n190) );
    CLKIN0 U264 ( .A(sboxOutp[10]), .Q(n528) );
    CLKIN0 U265 ( .A(key_in[17]), .Q(n187) );
    CLKIN0 U266 ( .A(sboxOutp[9]), .Q(n530) );
    CLKIN0 U267 ( .A(key_in[16]), .Q(n184) );
    CLKIN0 U268 ( .A(sboxOutp[8]), .Q(n532) );
    CLKIN0 U269 ( .A(key_in[15]), .Q(n181) );
    CLKIN0 U270 ( .A(sboxOutp[23]), .Q(n534) );
    CLKIN0 U271 ( .A(key_in[14]), .Q(n178) );
    CLKIN0 U272 ( .A(sboxOutp[22]), .Q(n536) );
    CLKIN0 U273 ( .A(key_in[13]), .Q(n175) );
    CLKIN0 U274 ( .A(sboxOutp[21]), .Q(n538) );
    CLKIN0 U275 ( .A(key_in[12]), .Q(n172) );
    CLKIN0 U276 ( .A(sboxOutp[20]), .Q(n540) );
    CLKIN0 U277 ( .A(key_in[11]), .Q(n169) );
    CLKIN0 U278 ( .A(sboxOutp[19]), .Q(n542) );
    CLKIN0 U279 ( .A(key_in[10]), .Q(n166) );
    CLKIN0 U280 ( .A(sboxOutp[18]), .Q(n544) );
    CLKIN0 U281 ( .A(key_in[0]), .Q(n136) );
    CLKIN0 U282 ( .A(sboxOutp[24]), .Q(n546) );
    CLKIN0 U283 ( .A(key_in[41]), .Q(n252) );
    CLKIN0 U284 ( .A(key_in[40]), .Q(n249) );
    CLKIN0 U285 ( .A(key_in[39]), .Q(n246) );
    CLKIN0 U286 ( .A(key_in[38]), .Q(n243) );
    CLKIN0 U287 ( .A(key_in[37]), .Q(n240) );
    CLKIN0 U288 ( .A(key_in[36]), .Q(n237) );
    CLKIN0 U289 ( .A(key_in[35]), .Q(n234) );
    CLKIN0 U290 ( .A(key_in[34]), .Q(n231) );
    CLKIN0 U291 ( .A(key_in[55]), .Q(n294) );
    CLKIN0 U292 ( .A(key_in[54]), .Q(n291) );
    CLKIN0 U293 ( .A(key_in[53]), .Q(n288) );
    CLKIN0 U294 ( .A(key_in[52]), .Q(n285) );
    CLKIN0 U295 ( .A(key_in[33]), .Q(n228) );
    CLKIN0 U296 ( .A(key_in[51]), .Q(n282) );
    CLKIN0 U297 ( .A(key_in[50]), .Q(n279) );
    CLKIN0 U298 ( .A(key_in[49]), .Q(n276) );
    CLKIN0 U299 ( .A(key_in[48]), .Q(n273) );
    CLKIN0 U300 ( .A(key_in[47]), .Q(n270) );
    CLKIN0 U301 ( .A(key_in[46]), .Q(n267) );
    CLKIN0 U302 ( .A(key_in[45]), .Q(n264) );
    CLKIN0 U303 ( .A(key_in[44]), .Q(n261) );
    CLKIN0 U304 ( .A(key_in[43]), .Q(n258) );
    CLKIN0 U305 ( .A(key_in[42]), .Q(n255) );
    CLKIN0 U306 ( .A(key_in[32]), .Q(n225) );
    CLKIN0 U307 ( .A(key_in[73]), .Q(n339) );
    CLKIN0 U308 ( .A(key_in[72]), .Q(n337) );
    CLKIN0 U309 ( .A(key_in[71]), .Q(n335) );
    CLKIN0 U310 ( .A(key_in[70]), .Q(n333) );
    CLKIN0 U311 ( .A(key_in[69]), .Q(n331) );
    CLKIN0 U312 ( .A(key_in[68]), .Q(n329) );
    CLKIN0 U313 ( .A(key_in[67]), .Q(n327) );
    CLKIN0 U314 ( .A(key_in[66]), .Q(n325) );
    CLKIN0 U315 ( .A(key_in[87]), .Q(n367) );
    CLKIN0 U316 ( .A(key_in[86]), .Q(n365) );
    CLKIN0 U317 ( .A(key_in[85]), .Q(n363) );
    CLKIN0 U318 ( .A(key_in[84]), .Q(n361) );
    CLKIN0 U319 ( .A(key_in[65]), .Q(n323) );
    CLKIN0 U320 ( .A(key_in[83]), .Q(n359) );
    CLKIN0 U321 ( .A(key_in[82]), .Q(n357) );
    CLKIN0 U322 ( .A(key_in[81]), .Q(n355) );
    CLKIN0 U323 ( .A(key_in[80]), .Q(n353) );
    CLKIN0 U324 ( .A(key_in[79]), .Q(n351) );
    CLKIN0 U325 ( .A(key_in[78]), .Q(n349) );
    CLKIN0 U326 ( .A(key_in[77]), .Q(n347) );
    CLKIN0 U327 ( .A(key_in[76]), .Q(n345) );
    CLKIN0 U328 ( .A(key_in[75]), .Q(n343) );
    CLKIN0 U329 ( .A(key_in[74]), .Q(n341) );
    CLKIN0 U330 ( .A(key_in[64]), .Q(n321) );
    CLKIN0 U331 ( .A(key_in[105]), .Q(n411) );
    CLKIN0 U332 ( .A(key_in[104]), .Q(n409) );
    CLKIN0 U333 ( .A(key_in[103]), .Q(n407) );
    CLKIN0 U334 ( .A(key_in[102]), .Q(n405) );
    CLKIN0 U335 ( .A(key_in[101]), .Q(n403) );
    CLKIN0 U336 ( .A(key_in[100]), .Q(n401) );
    CLKIN0 U337 ( .A(key_in[99]), .Q(n399) );
    CLKIN0 U338 ( .A(key_in[127]), .Q(n455) );
    CLKIN0 U339 ( .A(key_in[126]), .Q(n453) );
    CLKIN0 U340 ( .A(key_in[98]), .Q(n397) );
    CLKIN0 U341 ( .A(key_in[125]), .Q(n451) );
    CLKIN0 U342 ( .A(key_in[124]), .Q(n449) );
    CLKIN0 U343 ( .A(key_in[123]), .Q(n447) );
    CLKIN0 U344 ( .A(key_in[122]), .Q(n445) );
    CLKIN0 U345 ( .A(key_in[121]), .Q(n443) );
    CLKIN0 U346 ( .A(key_in[120]), .Q(n441) );
    CLKIN0 U347 ( .A(key_in[119]), .Q(n439) );
    CLKIN0 U348 ( .A(key_in[118]), .Q(n437) );
    CLKIN0 U349 ( .A(key_in[117]), .Q(n435) );
    CLKIN0 U350 ( .A(key_in[116]), .Q(n433) );
    CLKIN0 U351 ( .A(key_in[97]), .Q(n395) );
    CLKIN0 U352 ( .A(key_in[115]), .Q(n431) );
    CLKIN0 U353 ( .A(key_in[114]), .Q(n429) );
    CLKIN0 U354 ( .A(key_in[113]), .Q(n427) );
    CLKIN0 U355 ( .A(key_in[112]), .Q(n425) );
    CLKIN0 U356 ( .A(key_in[111]), .Q(n423) );
    CLKIN0 U357 ( .A(key_in[110]), .Q(n421) );
    CLKIN0 U358 ( .A(key_in[109]), .Q(n419) );
    CLKIN0 U359 ( .A(key_in[108]), .Q(n417) );
    CLKIN0 U360 ( .A(key_in[107]), .Q(n415) );
    CLKIN0 U361 ( .A(key_in[106]), .Q(n413) );
    CLKIN0 U362 ( .A(key_in[96]), .Q(n393) );
    IMUX20 U363 ( .A(n563), .B(n564), .Q(n562), .S(key_out[9]) );
    IMUX20 U364 ( .A(n566), .B(n567), .Q(n565), .S(key_out[8]) );
    IMUX20 U365 ( .A(n569), .B(n570), .Q(n568), .S(key_out[7]) );
    IMUX20 U366 ( .A(n572), .B(n573), .Q(n571), .S(key_out[6]) );
    IMUX20 U367 ( .A(n575), .B(n576), .Q(n574), .S(key_out[5]) );
    IMUX20 U368 ( .A(n578), .B(n579), .Q(n577), .S(key_out[4]) );
    IMUX20 U369 ( .A(n581), .B(n582), .Q(n580), .S(key_out[3]) );
    XNR20 U370 ( .A(key_out[63]), .B(n15), .Q(n583) );
    IMUX20 U371 ( .A(n17), .B(key_out[127]), .Q(n584), .S(n585) );
    XNR20 U372 ( .A(key_out[62]), .B(n18), .Q(n586) );
    IMUX20 U373 ( .A(n20), .B(key_out[126]), .Q(n587), .S(n588) );
    IMUX20 U374 ( .A(n590), .B(n591), .Q(n589), .S(key_out[2]) );
    XNR20 U375 ( .A(key_out[61]), .B(n21), .Q(n592) );
    IMUX20 U376 ( .A(n23), .B(key_out[125]), .Q(n593), .S(n594) );
    XNR20 U377 ( .A(key_out[60]), .B(n24), .Q(n595) );
    IMUX20 U378 ( .A(n26), .B(key_out[124]), .Q(n596), .S(n597) );
    XNR20 U379 ( .A(key_out[59]), .B(n27), .Q(n598) );
    IMUX20 U380 ( .A(n29), .B(key_out[123]), .Q(n599), .S(n600) );
    XNR20 U381 ( .A(key_out[58]), .B(n30), .Q(n601) );
    IMUX20 U382 ( .A(n32), .B(key_out[122]), .Q(n602), .S(n603) );
    XNR20 U383 ( .A(key_out[57]), .B(n33), .Q(n604) );
    IMUX20 U384 ( .A(n35), .B(key_out[121]), .Q(n605), .S(n606) );
    XNR20 U385 ( .A(key_out[56]), .B(n36), .Q(n607) );
    IMUX20 U386 ( .A(n38), .B(key_out[120]), .Q(n608), .S(n609) );
    IMUX20 U387 ( .A(n611), .B(n612), .Q(n610), .S(key_out[23]) );
    IMUX20 U388 ( .A(n614), .B(n615), .Q(n613), .S(key_out[22]) );
    IMUX20 U389 ( .A(n617), .B(n618), .Q(n616), .S(key_out[21]) );
    IMUX20 U390 ( .A(n620), .B(n621), .Q(n619), .S(key_out[20]) );
    IMUX20 U391 ( .A(n623), .B(n624), .Q(n622), .S(key_out[1]) );
    IMUX20 U392 ( .A(n626), .B(n627), .Q(n625), .S(key_out[19]) );
    IMUX20 U393 ( .A(n629), .B(n630), .Q(n628), .S(key_out[18]) );
    IMUX20 U394 ( .A(n632), .B(n633), .Q(n631), .S(key_out[17]) );
    IMUX20 U395 ( .A(n635), .B(n636), .Q(n634), .S(key_out[16]) );
    IMUX20 U396 ( .A(n638), .B(n639), .Q(n637), .S(key_out[15]) );
    IMUX20 U397 ( .A(n641), .B(n642), .Q(n640), .S(key_out[14]) );
    IMUX20 U398 ( .A(n644), .B(n645), .Q(n643), .S(key_out[13]) );
    IMUX20 U399 ( .A(n647), .B(n648), .Q(n646), .S(key_out[12]) );
    IMUX20 U400 ( .A(n650), .B(n651), .Q(n649), .S(key_out[11]) );
    IMUX20 U401 ( .A(n653), .B(n654), .Q(n652), .S(key_out[10]) );
    IMUX20 U402 ( .A(n656), .B(n657), .Q(n655), .S(key_out[0]) );
    XNR20 U403 ( .A(n659), .B(key_out[63]), .Q(n658) );
    XNR20 U404 ( .A(n661), .B(key_out[62]), .Q(n660) );
    XNR20 U405 ( .A(n663), .B(key_out[61]), .Q(n662) );
    XNR20 U406 ( .A(n665), .B(key_out[60]), .Q(n664) );
    XNR20 U407 ( .A(n667), .B(key_out[59]), .Q(n666) );
    XNR20 U408 ( .A(n669), .B(key_out[58]), .Q(n668) );
    XNR20 U409 ( .A(n671), .B(key_out[57]), .Q(n670) );
    XNR20 U410 ( .A(n673), .B(key_out[56]), .Q(n672) );
    XNR20 U411 ( .A(n674), .B(key_out[9]), .Q(sboxInp[9]) );
    XNR20 U412 ( .A(n675), .B(key_out[8]), .Q(sboxInp[8]) );
    XNR20 U413 ( .A(n676), .B(key_out[23]), .Q(sboxInp[7]) );
    XNR20 U414 ( .A(n677), .B(key_out[22]), .Q(sboxInp[6]) );
    XNR20 U415 ( .A(n678), .B(key_out[21]), .Q(sboxInp[5]) );
    XNR20 U416 ( .A(n679), .B(key_out[20]), .Q(sboxInp[4]) );
    XNR20 U417 ( .A(n680), .B(key_out[19]), .Q(sboxInp[3]) );
    XNR20 U418 ( .A(n681), .B(key_out[18]), .Q(sboxInp[2]) );
    XNR20 U419 ( .A(n682), .B(key_out[7]), .Q(sboxInp[23]) );
    XNR20 U420 ( .A(n683), .B(key_out[6]), .Q(sboxInp[22]) );
    XNR20 U421 ( .A(n684), .B(key_out[5]), .Q(sboxInp[21]) );
    XNR20 U422 ( .A(n685), .B(key_out[4]), .Q(sboxInp[20]) );
    XNR20 U423 ( .A(n686), .B(key_out[17]), .Q(sboxInp[1]) );
    XNR20 U424 ( .A(n687), .B(key_out[3]), .Q(sboxInp[19]) );
    XNR20 U425 ( .A(n688), .B(key_out[2]), .Q(sboxInp[18]) );
    XNR20 U426 ( .A(n689), .B(key_out[1]), .Q(sboxInp[17]) );
    XNR20 U427 ( .A(n690), .B(key_out[0]), .Q(sboxInp[16]) );
    XNR20 U428 ( .A(n691), .B(key_out[15]), .Q(sboxInp[15]) );
    XNR20 U429 ( .A(n692), .B(key_out[14]), .Q(sboxInp[14]) );
    XNR20 U430 ( .A(n693), .B(key_out[13]), .Q(sboxInp[13]) );
    XNR20 U431 ( .A(n694), .B(key_out[12]), .Q(sboxInp[12]) );
    XNR20 U432 ( .A(n695), .B(key_out[11]), .Q(sboxInp[11]) );
    XNR20 U433 ( .A(n696), .B(key_out[10]), .Q(sboxInp[10]) );
    XNR20 U434 ( .A(n697), .B(key_out[16]), .Q(sboxInp[0]) );
    NOR20 U435 ( .A(n89), .B(n39), .Q(n698) );
    OAI210 U436 ( .A(key_out[41]), .B(n96), .C(n115), .Q(n699) );
    NOR20 U437 ( .A(n90), .B(n40), .Q(n700) );
    OAI210 U438 ( .A(key_out[40]), .B(n96), .C(n115), .Q(n701) );
    NOR20 U439 ( .A(n90), .B(n41), .Q(n702) );
    OAI210 U440 ( .A(key_out[39]), .B(n88), .C(n114), .Q(n703) );
    NOR20 U441 ( .A(n89), .B(n42), .Q(n704) );
    OAI210 U442 ( .A(key_out[38]), .B(n88), .C(n114), .Q(n705) );
    NOR20 U443 ( .A(n89), .B(n43), .Q(n706) );
    OAI210 U444 ( .A(key_out[37]), .B(n88), .C(n114), .Q(n707) );
    NOR20 U445 ( .A(n90), .B(n44), .Q(n708) );
    OAI210 U446 ( .A(key_out[36]), .B(n88), .C(n114), .Q(n709) );
    NOR20 U447 ( .A(n89), .B(n45), .Q(n710) );
    OAI210 U448 ( .A(key_out[35]), .B(n88), .C(n114), .Q(n711) );
    IMUX20 U449 ( .A(n459), .B(n583), .Q(n585), .S(key_out[95]) );
    IMUX20 U450 ( .A(n462), .B(n586), .Q(n588), .S(key_out[94]) );
    NOR20 U451 ( .A(n89), .B(n46), .Q(n712) );
    OAI210 U452 ( .A(key_out[34]), .B(n95), .C(n114), .Q(n713) );
    IMUX20 U453 ( .A(n465), .B(n592), .Q(n594), .S(key_out[93]) );
    IMUX20 U454 ( .A(n468), .B(n595), .Q(n597), .S(key_out[92]) );
    IMUX20 U455 ( .A(n471), .B(n598), .Q(n600), .S(key_out[91]) );
    IMUX20 U456 ( .A(n474), .B(n601), .Q(n603), .S(key_out[90]) );
    IMUX20 U457 ( .A(n477), .B(n604), .Q(n606), .S(key_out[89]) );
    IMUX20 U458 ( .A(n480), .B(n607), .Q(n609), .S(key_out[88]) );
    NOR20 U459 ( .A(n95), .B(n47), .Q(n714) );
    OAI210 U460 ( .A(key_out[55]), .B(n88), .C(n113), .Q(n715) );
    NOR20 U461 ( .A(n95), .B(n48), .Q(n716) );
    OAI210 U462 ( .A(key_out[54]), .B(n95), .C(n113), .Q(n717) );
    NOR20 U463 ( .A(n95), .B(n49), .Q(n718) );
    OAI210 U464 ( .A(key_out[53]), .B(n89), .C(n113), .Q(n719) );
    NOR20 U465 ( .A(n94), .B(n50), .Q(n720) );
    OAI210 U466 ( .A(key_out[52]), .B(n89), .C(n113), .Q(n721) );
    NOR20 U467 ( .A(n94), .B(n51), .Q(n722) );
    OAI210 U468 ( .A(key_out[33]), .B(n89), .C(n113), .Q(n723) );
    NOR20 U469 ( .A(n96), .B(n52), .Q(n724) );
    OAI210 U470 ( .A(key_out[51]), .B(n89), .C(n113), .Q(n725) );
    NOR20 U471 ( .A(n96), .B(n53), .Q(n726) );
    OAI210 U472 ( .A(key_out[50]), .B(n89), .C(n112), .Q(n727) );
    NOR20 U473 ( .A(n96), .B(n54), .Q(n728) );
    OAI210 U474 ( .A(key_out[49]), .B(n90), .C(n112), .Q(n729) );
    NOR20 U475 ( .A(n93), .B(n55), .Q(n730) );
    OAI210 U476 ( .A(key_out[48]), .B(n90), .C(n112), .Q(n731) );
    NOR20 U477 ( .A(n93), .B(n56), .Q(n732) );
    OAI210 U478 ( .A(key_out[47]), .B(n90), .C(n112), .Q(n733) );
    NOR20 U479 ( .A(n97), .B(n57), .Q(n734) );
    OAI210 U480 ( .A(key_out[46]), .B(n90), .C(n112), .Q(n735) );
    NOR20 U481 ( .A(n97), .B(n58), .Q(n736) );
    OAI210 U482 ( .A(key_out[45]), .B(n90), .C(n112), .Q(n737) );
    NOR20 U483 ( .A(n97), .B(n59), .Q(n738) );
    OAI210 U484 ( .A(key_out[44]), .B(n91), .C(n111), .Q(n739) );
    NOR20 U485 ( .A(n92), .B(n60), .Q(n740) );
    OAI210 U486 ( .A(key_out[43]), .B(n91), .C(n111), .Q(n741) );
    NOR20 U487 ( .A(n92), .B(n61), .Q(n742) );
    OAI210 U488 ( .A(key_out[42]), .B(n91), .C(n111), .Q(n743) );
    NOR20 U489 ( .A(n97), .B(n62), .Q(n744) );
    OAI210 U490 ( .A(key_out[32]), .B(n91), .C(n111), .Q(n745) );
    NOR20 U491 ( .A(n97), .B(n63), .Q(n746) );
    OAI210 U492 ( .A(key_out[73]), .B(n96), .C(n111), .Q(n747) );
    NOR20 U493 ( .A(n749), .B(n553), .Q(n748) );
    NOR20 U494 ( .A(n97), .B(n64), .Q(n750) );
    OAI210 U495 ( .A(key_out[72]), .B(n88), .C(n111), .Q(n751) );
    NOR20 U496 ( .A(n753), .B(n553), .Q(n752) );
    NOR20 U497 ( .A(n96), .B(n65), .Q(n754) );
    OAI210 U498 ( .A(key_out[71]), .B(n88), .C(n110), .Q(n755) );
    NOR20 U499 ( .A(n757), .B(n553), .Q(n756) );
    NOR20 U500 ( .A(n96), .B(n66), .Q(n758) );
    OAI210 U501 ( .A(key_out[70]), .B(n88), .C(n110), .Q(n759) );
    NOR20 U502 ( .A(n761), .B(n553), .Q(n760) );
    NOR20 U503 ( .A(n95), .B(n67), .Q(n762) );
    OAI210 U504 ( .A(key_out[69]), .B(n96), .C(n110), .Q(n763) );
    NOR20 U505 ( .A(n765), .B(n553), .Q(n764) );
    NOR20 U506 ( .A(n94), .B(n68), .Q(n766) );
    OAI210 U507 ( .A(key_out[68]), .B(n96), .C(n110), .Q(n767) );
    NOR20 U508 ( .A(n769), .B(n553), .Q(n768) );
    NOR20 U509 ( .A(n94), .B(n69), .Q(n770) );
    OAI210 U510 ( .A(key_out[67]), .B(n97), .C(n110), .Q(n771) );
    NOR20 U511 ( .A(n773), .B(n553), .Q(n772) );
    NOR20 U512 ( .A(n96), .B(n16), .Q(n774) );
    OAI210 U513 ( .A(key_out[95]), .B(n97), .C(n110), .Q(n775) );
    NOR20 U514 ( .A(n93), .B(n19), .Q(n776) );
    OAI210 U515 ( .A(key_out[94]), .B(n97), .C(n107), .Q(n777) );
    NOR20 U516 ( .A(n97), .B(n70), .Q(n778) );
    OAI210 U517 ( .A(key_out[66]), .B(n97), .C(n107), .Q(n779) );
    NOR20 U518 ( .A(n781), .B(n553), .Q(n780) );
    NOR20 U519 ( .A(n92), .B(n22), .Q(n782) );
    OAI210 U520 ( .A(key_out[93]), .B(n97), .C(n107), .Q(n783) );
    NOR20 U521 ( .A(n97), .B(n25), .Q(n784) );
    OAI210 U522 ( .A(key_out[92]), .B(n97), .C(n107), .Q(n785) );
    NOR20 U523 ( .A(n89), .B(n28), .Q(n786) );
    OAI210 U524 ( .A(key_out[91]), .B(n97), .C(n107), .Q(n787) );
    NOR20 U525 ( .A(n95), .B(n31), .Q(n788) );
    OAI210 U526 ( .A(key_out[90]), .B(n89), .C(n107), .Q(n789) );
    NOR20 U527 ( .A(n97), .B(n34), .Q(n790) );
    OAI210 U528 ( .A(key_out[89]), .B(n89), .C(n109), .Q(n791) );
    NOR20 U529 ( .A(n89), .B(n37), .Q(n792) );
    OAI210 U530 ( .A(key_out[88]), .B(n89), .C(n116), .Q(n793) );
    NOR20 U531 ( .A(n89), .B(n71), .Q(n794) );
    OAI210 U532 ( .A(key_out[87]), .B(n89), .C(n116), .Q(n795) );
    NOR20 U533 ( .A(n797), .B(n553), .Q(n796) );
    NOR20 U534 ( .A(n89), .B(n72), .Q(n798) );
    OAI210 U535 ( .A(key_out[86]), .B(n89), .C(n109), .Q(n799) );
    NOR20 U536 ( .A(n801), .B(n553), .Q(n800) );
    NOR20 U537 ( .A(n91), .B(n73), .Q(n802) );
    OAI210 U538 ( .A(key_out[85]), .B(n89), .C(n109), .Q(n803) );
    NOR20 U539 ( .A(n805), .B(n553), .Q(n804) );
    NOR20 U540 ( .A(n91), .B(n74), .Q(n806) );
    OAI210 U541 ( .A(key_out[84]), .B(n89), .C(n109), .Q(n807) );
    NOR20 U542 ( .A(n809), .B(n553), .Q(n808) );
    NOR20 U543 ( .A(n95), .B(n75), .Q(n810) );
    OAI210 U544 ( .A(key_out[65]), .B(n96), .C(n112), .Q(n811) );
    NOR20 U545 ( .A(n813), .B(n553), .Q(n812) );
    NOR20 U546 ( .A(n89), .B(n76), .Q(n814) );
    OAI210 U547 ( .A(key_out[83]), .B(n96), .C(n112), .Q(n815) );
    NOR20 U548 ( .A(n817), .B(n553), .Q(n816) );
    NOR20 U549 ( .A(n95), .B(n77), .Q(n818) );
    OAI210 U550 ( .A(key_out[82]), .B(n96), .C(n112), .Q(n819) );
    NOR20 U551 ( .A(n821), .B(n553), .Q(n820) );
    NOR20 U552 ( .A(n92), .B(n78), .Q(n822) );
    OAI210 U553 ( .A(key_out[81]), .B(n96), .C(n112), .Q(n823) );
    NOR20 U554 ( .A(n825), .B(n553), .Q(n824) );
    NOR20 U555 ( .A(n93), .B(n79), .Q(n826) );
    OAI210 U556 ( .A(key_out[80]), .B(n96), .C(n112), .Q(n827) );
    NOR20 U557 ( .A(n829), .B(n553), .Q(n828) );
    NOR20 U558 ( .A(n92), .B(n80), .Q(n830) );
    OAI210 U559 ( .A(key_out[79]), .B(n96), .C(n112), .Q(n831) );
    NOR20 U560 ( .A(n833), .B(n553), .Q(n832) );
    NOR20 U561 ( .A(n97), .B(n81), .Q(n834) );
    OAI210 U562 ( .A(key_out[78]), .B(n96), .C(n106), .Q(n835) );
    NOR20 U563 ( .A(n837), .B(n553), .Q(n836) );
    NOR20 U564 ( .A(n95), .B(n82), .Q(n838) );
    OAI210 U565 ( .A(key_out[77]), .B(n96), .C(n106), .Q(n839) );
    NOR20 U566 ( .A(n841), .B(n553), .Q(n840) );
    NOR20 U567 ( .A(n95), .B(n83), .Q(n842) );
    OAI210 U568 ( .A(key_out[76]), .B(n88), .C(n106), .Q(n843) );
    NOR20 U569 ( .A(n845), .B(n553), .Q(n844) );
    NOR20 U570 ( .A(n91), .B(n84), .Q(n846) );
    OAI210 U571 ( .A(key_out[75]), .B(n89), .C(n106), .Q(n847) );
    NOR20 U572 ( .A(n849), .B(n553), .Q(n848) );
    NOR20 U573 ( .A(n91), .B(n85), .Q(n850) );
    OAI210 U574 ( .A(key_out[74]), .B(n89), .C(n106), .Q(n851) );
    NOR20 U575 ( .A(n853), .B(n553), .Q(n852) );
    NOR20 U576 ( .A(n91), .B(n86), .Q(n854) );
    OAI210 U577 ( .A(key_out[64]), .B(n89), .C(n106), .Q(n855) );
    NOR20 U578 ( .A(n857), .B(n553), .Q(n856) );
    AOI210 U579 ( .A(n101), .B(key_out[105]), .C(n859), .Q(n858) );
    OAI2110 U580 ( .A(key_out[105]), .B(n93), .C(n861), .D(n110), .Q(n860) );
    AOI210 U581 ( .A(n101), .B(key_out[104]), .C(n863), .Q(n862) );
    OAI2110 U582 ( .A(key_out[104]), .B(n94), .C(n865), .D(n110), .Q(n864) );
    AOI210 U583 ( .A(n101), .B(key_out[103]), .C(n867), .Q(n866) );
    OAI2110 U584 ( .A(key_out[103]), .B(n94), .C(n869), .D(n110), .Q(n868) );
    AOI210 U585 ( .A(n101), .B(key_out[102]), .C(n871), .Q(n870) );
    OAI2110 U586 ( .A(key_out[102]), .B(n92), .C(n873), .D(n110), .Q(n872) );
    AOI210 U587 ( .A(n101), .B(key_out[101]), .C(n875), .Q(n874) );
    OAI2110 U588 ( .A(key_out[101]), .B(n94), .C(n877), .D(n105), .Q(n876) );
    AOI210 U589 ( .A(n98), .B(key_out[100]), .C(n879), .Q(n878) );
    OAI2110 U590 ( .A(key_out[100]), .B(n92), .C(n881), .D(n105), .Q(n880) );
    AOI210 U591 ( .A(n98), .B(key_out[99]), .C(n883), .Q(n882) );
    OAI2110 U592 ( .A(key_out[99]), .B(n92), .C(n885), .D(n105), .Q(n884) );
    NOR20 U593 ( .A(n97), .B(n17), .Q(n886) );
    OAI210 U594 ( .A(key_out[127]), .B(n97), .C(n106), .Q(n887) );
    NOR20 U595 ( .A(n93), .B(n20), .Q(n888) );
    OAI210 U596 ( .A(key_out[126]), .B(n97), .C(n106), .Q(n889) );
    AOI210 U597 ( .A(n98), .B(key_out[98]), .C(n891), .Q(n890) );
    OAI2110 U598 ( .A(key_out[98]), .B(n93), .C(n893), .D(n105), .Q(n892) );
    NOR20 U599 ( .A(n96), .B(n23), .Q(n894) );
    OAI210 U600 ( .A(key_out[125]), .B(n97), .C(n106), .Q(n895) );
    NOR20 U601 ( .A(n94), .B(n26), .Q(n896) );
    OAI210 U602 ( .A(key_out[124]), .B(n96), .C(n106), .Q(n897) );
    NOR20 U603 ( .A(n95), .B(n29), .Q(n898) );
    OAI210 U604 ( .A(key_out[123]), .B(n91), .C(n107), .Q(n899) );
    NOR20 U605 ( .A(n96), .B(n32), .Q(n900) );
    OAI210 U606 ( .A(key_out[122]), .B(n88), .C(n107), .Q(n901) );
    NOR20 U607 ( .A(n96), .B(n35), .Q(n902) );
    OAI210 U608 ( .A(key_out[121]), .B(n88), .C(n107), .Q(n903) );
    NOR20 U609 ( .A(n96), .B(n38), .Q(n904) );
    OAI210 U610 ( .A(key_out[120]), .B(n96), .C(n106), .Q(n905) );
    AOI210 U611 ( .A(n98), .B(key_out[119]), .C(n907), .Q(n906) );
    OAI2110 U612 ( .A(key_out[119]), .B(n92), .C(n909), .D(n105), .Q(n908) );
    AOI210 U613 ( .A(n98), .B(key_out[118]), .C(n911), .Q(n910) );
    OAI2110 U614 ( .A(key_out[118]), .B(n97), .C(n913), .D(n112), .Q(n912) );
    AOI210 U615 ( .A(n98), .B(key_out[117]), .C(n915), .Q(n914) );
    OAI2110 U616 ( .A(key_out[117]), .B(n97), .C(n917), .D(n112), .Q(n916) );
    AOI210 U617 ( .A(n98), .B(key_out[116]), .C(n919), .Q(n918) );
    OAI2110 U618 ( .A(key_out[116]), .B(n92), .C(n921), .D(n112), .Q(n920) );
    AOI210 U619 ( .A(n98), .B(key_out[97]), .C(n923), .Q(n922) );
    OAI2110 U620 ( .A(key_out[97]), .B(n94), .C(n925), .D(n112), .Q(n924) );
    AOI210 U621 ( .A(n98), .B(key_out[115]), .C(n927), .Q(n926) );
    OAI2110 U622 ( .A(key_out[115]), .B(n97), .C(n929), .D(n112), .Q(n928) );
    AOI210 U623 ( .A(n98), .B(key_out[114]), .C(n931), .Q(n930) );
    OAI2110 U624 ( .A(key_out[114]), .B(n93), .C(n933), .D(n106), .Q(n932) );
    AOI210 U625 ( .A(n98), .B(key_out[113]), .C(n935), .Q(n934) );
    OAI2110 U626 ( .A(key_out[113]), .B(n93), .C(n937), .D(n107), .Q(n936) );
    AOI210 U627 ( .A(n101), .B(key_out[112]), .C(n939), .Q(n938) );
    OAI2110 U628 ( .A(key_out[112]), .B(n93), .C(n941), .D(n107), .Q(n940) );
    AOI210 U629 ( .A(n98), .B(key_out[111]), .C(n943), .Q(n942) );
    OAI2110 U630 ( .A(key_out[111]), .B(n92), .C(n945), .D(n108), .Q(n944) );
    AOI210 U631 ( .A(n98), .B(key_out[110]), .C(n947), .Q(n946) );
    OAI2110 U632 ( .A(key_out[110]), .B(n92), .C(n949), .D(n108), .Q(n948) );
    AOI210 U633 ( .A(n98), .B(key_out[109]), .C(n951), .Q(n950) );
    OAI2110 U634 ( .A(key_out[109]), .B(n92), .C(n953), .D(n107), .Q(n952) );
    AOI210 U635 ( .A(n98), .B(key_out[108]), .C(n955), .Q(n954) );
    OAI2110 U636 ( .A(key_out[108]), .B(n92), .C(n957), .D(n108), .Q(n956) );
    AOI210 U637 ( .A(n102), .B(key_out[107]), .C(n959), .Q(n958) );
    OAI2110 U638 ( .A(key_out[107]), .B(n92), .C(n961), .D(n108), .Q(n960) );
    AOI210 U639 ( .A(n102), .B(key_out[106]), .C(n963), .Q(n962) );
    OAI2110 U640 ( .A(key_out[106]), .B(n94), .C(n965), .D(n107), .Q(n964) );
    AOI210 U641 ( .A(n98), .B(key_out[96]), .C(n967), .Q(n966) );
    OAI2110 U642 ( .A(key_out[96]), .B(n97), .C(n969), .D(n106), .Q(n968) );
    NOR20 U643 ( .A(n457), .B(n484), .Q(n970) );
    OAI210 U644 ( .A(sboxOutp[17]), .B(n457), .C(n116), .Q(n971) );
    NOR20 U645 ( .A(n457), .B(n486), .Q(n972) );
    OAI210 U646 ( .A(sboxOutp[16]), .B(n457), .C(n115), .Q(n973) );
    NOR20 U647 ( .A(n457), .B(n488), .Q(n974) );
    OAI210 U648 ( .A(sboxOutp[31]), .B(n457), .C(n115), .Q(n975) );
    NOR20 U649 ( .A(n457), .B(n490), .Q(n976) );
    OAI210 U650 ( .A(sboxOutp[30]), .B(n457), .C(n115), .Q(n977) );
    NOR20 U651 ( .A(n457), .B(n492), .Q(n978) );
    OAI210 U652 ( .A(sboxOutp[29]), .B(n457), .C(n109), .Q(n979) );
    NOR20 U653 ( .A(n457), .B(n494), .Q(n980) );
    OAI210 U654 ( .A(sboxOutp[28]), .B(n457), .C(n107), .Q(n981) );
    NOR20 U655 ( .A(n457), .B(n496), .Q(n982) );
    OAI210 U656 ( .A(sboxOutp[27]), .B(n457), .C(n107), .Q(n983) );
    OAI210 U657 ( .A(n985), .B(n95), .C(n986), .Q(n984) );
    OAI2110 U658 ( .A(n553), .B(n497), .C(n988), .D(n108), .Q(n987) );
    OAI210 U659 ( .A(n990), .B(n95), .C(n991), .Q(n989) );
    OAI2110 U660 ( .A(n553), .B(n499), .C(n993), .D(n107), .Q(n992) );
    NOR20 U661 ( .A(n457), .B(n502), .Q(n994) );
    OAI210 U662 ( .A(sboxOutp[26]), .B(n457), .C(n107), .Q(n995) );
    OAI210 U663 ( .A(n997), .B(n95), .C(n998), .Q(n996) );
    OAI2110 U664 ( .A(n553), .B(n503), .C(n1000), .D(n107), .Q(n999) );
    OAI210 U665 ( .A(n1002), .B(n95), .C(n1003), .Q(n1001) );
    OAI2110 U666 ( .A(n553), .B(n505), .C(n1005), .D(n107), .Q(n1004) );
    OAI210 U667 ( .A(n1007), .B(n95), .C(n1008), .Q(n1006) );
    OAI2110 U668 ( .A(n553), .B(n507), .C(n1010), .D(n106), .Q(n1009) );
    OAI210 U669 ( .A(n1012), .B(n95), .C(n1013), .Q(n1011) );
    OAI2110 U670 ( .A(n553), .B(n509), .C(n1015), .D(n106), .Q(n1014) );
    OAI210 U671 ( .A(n1017), .B(n95), .C(n1018), .Q(n1016) );
    OAI2110 U672 ( .A(n553), .B(n511), .C(n1020), .D(n106), .Q(n1019) );
    OAI210 U673 ( .A(n1022), .B(n95), .C(n1023), .Q(n1021) );
    OAI2110 U674 ( .A(n553), .B(n513), .C(n1025), .D(n110), .Q(n1024) );
    NOR20 U675 ( .A(n457), .B(n516), .Q(n1026) );
    OAI210 U676 ( .A(sboxOutp[15]), .B(n457), .C(n107), .Q(n1027) );
    NOR20 U677 ( .A(n457), .B(n518), .Q(n1028) );
    OAI210 U678 ( .A(sboxOutp[14]), .B(n457), .C(n107), .Q(n1029) );
    NOR20 U679 ( .A(n457), .B(n520), .Q(n1030) );
    OAI210 U680 ( .A(sboxOutp[13]), .B(n457), .C(n107), .Q(n1031) );
    NOR20 U681 ( .A(n457), .B(n522), .Q(n1032) );
    OAI210 U682 ( .A(sboxOutp[12]), .B(n457), .C(n107), .Q(n1033) );
    NOR20 U683 ( .A(n457), .B(n524), .Q(n1034) );
    OAI210 U684 ( .A(sboxOutp[25]), .B(n457), .C(n107), .Q(n1035) );
    NOR20 U685 ( .A(n457), .B(n526), .Q(n1036) );
    OAI210 U686 ( .A(sboxOutp[11]), .B(n457), .C(n107), .Q(n1037) );
    NOR20 U687 ( .A(n457), .B(n528), .Q(n1038) );
    OAI210 U688 ( .A(sboxOutp[10]), .B(n457), .C(n106), .Q(n1039) );
    NOR20 U689 ( .A(n457), .B(n530), .Q(n1040) );
    OAI210 U690 ( .A(sboxOutp[9]), .B(n457), .C(n109), .Q(n1041) );
    NOR20 U691 ( .A(n457), .B(n532), .Q(n1042) );
    OAI210 U692 ( .A(sboxOutp[8]), .B(n457), .C(n109), .Q(n1043) );
    NOR20 U693 ( .A(n457), .B(n534), .Q(n1044) );
    OAI210 U694 ( .A(sboxOutp[23]), .B(n457), .C(n109), .Q(n1045) );
    NOR20 U695 ( .A(n457), .B(n536), .Q(n1046) );
    OAI210 U696 ( .A(sboxOutp[22]), .B(n457), .C(n109), .Q(n1047) );
    NOR20 U697 ( .A(n457), .B(n538), .Q(n1048) );
    OAI210 U698 ( .A(sboxOutp[21]), .B(n457), .C(n109), .Q(n1049) );
    NOR20 U699 ( .A(n457), .B(n540), .Q(n1050) );
    OAI210 U700 ( .A(sboxOutp[20]), .B(n457), .C(n109), .Q(n1051) );
    NOR20 U701 ( .A(n457), .B(n542), .Q(n1052) );
    OAI210 U702 ( .A(sboxOutp[19]), .B(n457), .C(n109), .Q(n1053) );
    NOR20 U703 ( .A(n457), .B(n544), .Q(n1054) );
    OAI210 U704 ( .A(sboxOutp[18]), .B(n457), .C(n115), .Q(n1055) );
    NOR20 U705 ( .A(n457), .B(n546), .Q(n1056) );
    OAI210 U706 ( .A(sboxOutp[24]), .B(n457), .C(n116), .Q(n1057) );
    OAI220 U707 ( .A(n89), .B(n120), .C(n88), .D(n554), .Q(n1058) );
    AOI210 U708 ( .A(key_in[31]), .B(n1059), .C(n1058), .Q(n224) );
    OAI220 U709 ( .A(n89), .B(n122), .C(n88), .D(n555), .Q(n1060) );
    AOI210 U710 ( .A(key_in[30]), .B(n1059), .C(n1060), .Q(n222) );
    OAI220 U711 ( .A(n90), .B(n124), .C(n92), .D(n556), .Q(n1061) );
    AOI210 U712 ( .A(key_in[29]), .B(n1059), .C(n1061), .Q(n220) );
    OAI220 U713 ( .A(n90), .B(n126), .C(n92), .D(n557), .Q(n1062) );
    AOI210 U714 ( .A(key_in[28]), .B(n1059), .C(n1062), .Q(n218) );
    OAI220 U715 ( .A(n89), .B(n128), .C(n92), .D(n558), .Q(n1063) );
    AOI210 U716 ( .A(key_in[27]), .B(n1059), .C(n1063), .Q(n216) );
    OAI220 U717 ( .A(n89), .B(n130), .C(n92), .D(n559), .Q(n1064) );
    AOI210 U718 ( .A(key_in[26]), .B(n1059), .C(n1064), .Q(n214) );
    OAI220 U719 ( .A(n89), .B(n132), .C(n88), .D(n560), .Q(n1065) );
    AOI210 U720 ( .A(key_in[25]), .B(n1059), .C(n1065), .Q(n212) );
    OAI220 U721 ( .A(n89), .B(n134), .C(n92), .D(n561), .Q(n1066) );
    AOI210 U722 ( .A(key_in[24]), .B(n1059), .C(n1066), .Q(n210) );
    NAND20 U723 ( .A(n458), .B(n513), .Q(n1023) );
    CLKIN0 U724 ( .A(n1023), .Q(n1067) );
    NAND20 U725 ( .A(n458), .B(n511), .Q(n1018) );
    CLKIN0 U726 ( .A(n1018), .Q(n1068) );
    NAND20 U727 ( .A(n458), .B(n509), .Q(n1013) );
    CLKIN0 U728 ( .A(n1013), .Q(n1069) );
    NAND20 U729 ( .A(n458), .B(n507), .Q(n1008) );
    CLKIN0 U730 ( .A(n1008), .Q(n1070) );
    NAND20 U731 ( .A(n458), .B(n505), .Q(n1003) );
    CLKIN0 U732 ( .A(n1003), .Q(n1071) );
    NAND20 U733 ( .A(n458), .B(n503), .Q(n998) );
    CLKIN0 U734 ( .A(n998), .Q(n1072) );
    NAND20 U735 ( .A(n458), .B(n499), .Q(n991) );
    CLKIN0 U736 ( .A(n991), .Q(n1073) );
    NAND20 U737 ( .A(n458), .B(n497), .Q(n986) );
    CLKIN0 U738 ( .A(n986), .Q(n1074) );
    CLKIN0 U739 ( .A(n461), .Q(n120) );
    CLKIN0 U740 ( .A(n464), .Q(n122) );
    CLKIN0 U741 ( .A(n467), .Q(n124) );
    CLKIN0 U742 ( .A(n470), .Q(n126) );
    CLKIN0 U743 ( .A(n473), .Q(n128) );
    CLKIN0 U744 ( .A(n476), .Q(n130) );
    CLKIN0 U745 ( .A(n479), .Q(n132) );
    CLKIN0 U746 ( .A(n482), .Q(n134) );
    NOR20 U747 ( .A(n553), .B(n545), .Q(n967) );
    NOR20 U748 ( .A(n553), .B(n523), .Q(n923) );
    NOR20 U749 ( .A(n553), .B(n501), .Q(n891) );
    NOR20 U750 ( .A(n553), .B(n495), .Q(n883) );
    NOR20 U751 ( .A(n553), .B(n493), .Q(n879) );
    NOR20 U752 ( .A(n553), .B(n491), .Q(n875) );
    NOR20 U753 ( .A(n553), .B(n489), .Q(n871) );
    NOR20 U754 ( .A(n553), .B(n487), .Q(n867) );
    NOR20 U755 ( .A(n553), .B(n485), .Q(n863) );
    NOR20 U756 ( .A(n553), .B(n483), .Q(n859) );
    NOR20 U757 ( .A(n553), .B(n543), .Q(n963) );
    NOR20 U758 ( .A(n553), .B(n541), .Q(n959) );
    NOR20 U759 ( .A(n553), .B(n539), .Q(n955) );
    NOR20 U760 ( .A(n553), .B(n537), .Q(n951) );
    NOR20 U761 ( .A(n553), .B(n535), .Q(n947) );
    NOR20 U762 ( .A(n553), .B(n533), .Q(n943) );
    NOR20 U763 ( .A(n553), .B(n531), .Q(n939) );
    NOR20 U764 ( .A(n553), .B(n529), .Q(n935) );
    NOR20 U765 ( .A(n553), .B(n527), .Q(n931) );
    NOR20 U766 ( .A(n553), .B(n525), .Q(n927) );
    NOR20 U767 ( .A(n553), .B(n521), .Q(n919) );
    NOR20 U768 ( .A(n553), .B(n519), .Q(n915) );
    NOR20 U769 ( .A(n553), .B(n517), .Q(n911) );
    NOR20 U770 ( .A(n553), .B(n515), .Q(n907) );
    NOR20 U771 ( .A(n513), .B(n553), .Q(n1075) );
    NOR20 U772 ( .A(n511), .B(n553), .Q(n1076) );
    NOR20 U773 ( .A(n509), .B(n553), .Q(n1077) );
    NOR20 U774 ( .A(n507), .B(n553), .Q(n1078) );
    NOR20 U775 ( .A(n505), .B(n553), .Q(n1079) );
    NOR20 U776 ( .A(n503), .B(n553), .Q(n1080) );
    NOR20 U777 ( .A(n499), .B(n553), .Q(n1081) );
    NOR20 U778 ( .A(n497), .B(n553), .Q(n1082) );
    NAND20 U779 ( .A(key_in[63]), .B(n1059), .Q(n319) );
    NAND20 U780 ( .A(key_in[62]), .B(n1059), .Q(n316) );
    NAND20 U781 ( .A(key_in[61]), .B(n1059), .Q(n313) );
    NAND20 U782 ( .A(key_in[60]), .B(n1059), .Q(n310) );
    NAND20 U783 ( .A(key_in[59]), .B(n1059), .Q(n307) );
    NAND20 U784 ( .A(key_in[58]), .B(n1059), .Q(n304) );
    NAND20 U785 ( .A(key_in[57]), .B(n1059), .Q(n301) );
    NAND20 U786 ( .A(key_in[56]), .B(n1059), .Q(n298) );
    NAND20 U787 ( .A(n483), .B(n458), .Q(n861) );
    NAND20 U788 ( .A(n485), .B(n458), .Q(n865) );
    NAND20 U789 ( .A(n487), .B(n458), .Q(n869) );
    NAND20 U790 ( .A(n489), .B(n458), .Q(n873) );
    NAND20 U791 ( .A(n491), .B(n458), .Q(n877) );
    NAND20 U792 ( .A(n493), .B(n458), .Q(n881) );
    NAND20 U793 ( .A(n495), .B(n458), .Q(n885) );
    NAND20 U794 ( .A(key_in[95]), .B(n1059), .Q(n391) );
    NAND20 U795 ( .A(key_in[94]), .B(n1059), .Q(n388) );
    NAND20 U796 ( .A(n501), .B(n458), .Q(n893) );
    NAND20 U797 ( .A(key_in[93]), .B(n1059), .Q(n385) );
    NAND20 U798 ( .A(key_in[92]), .B(n1059), .Q(n382) );
    NAND20 U799 ( .A(key_in[91]), .B(n1059), .Q(n379) );
    NAND20 U800 ( .A(key_in[90]), .B(n1059), .Q(n376) );
    NAND20 U801 ( .A(key_in[89]), .B(n1059), .Q(n373) );
    NAND20 U802 ( .A(key_in[88]), .B(n1059), .Q(n370) );
    NAND20 U803 ( .A(n515), .B(n458), .Q(n909) );
    NAND20 U804 ( .A(n517), .B(n458), .Q(n913) );
    NAND20 U805 ( .A(n519), .B(n458), .Q(n917) );
    NAND20 U806 ( .A(n521), .B(n458), .Q(n921) );
    NAND20 U807 ( .A(n523), .B(n458), .Q(n925) );
    NAND20 U808 ( .A(n525), .B(n458), .Q(n929) );
    NAND20 U809 ( .A(n527), .B(n458), .Q(n933) );
    NAND20 U810 ( .A(n529), .B(n458), .Q(n937) );
    NAND20 U811 ( .A(n531), .B(n458), .Q(n941) );
    NAND20 U812 ( .A(n533), .B(n458), .Q(n945) );
    NAND20 U813 ( .A(n535), .B(n458), .Q(n949) );
    NAND20 U814 ( .A(n537), .B(n458), .Q(n953) );
    NAND20 U815 ( .A(n539), .B(n458), .Q(n957) );
    NAND20 U816 ( .A(n541), .B(n458), .Q(n961) );
    NAND20 U817 ( .A(n543), .B(n458), .Q(n965) );
    NAND20 U818 ( .A(n545), .B(n458), .Q(n969) );
    NAND20 U819 ( .A(n985), .B(n102), .Q(n988) );
    NAND20 U820 ( .A(n990), .B(n102), .Q(n993) );
    NAND20 U821 ( .A(n997), .B(n102), .Q(n1000) );
    NAND20 U822 ( .A(n1002), .B(n102), .Q(n1005) );
    NAND20 U823 ( .A(n1007), .B(n102), .Q(n1010) );
    NAND20 U824 ( .A(n1012), .B(n101), .Q(n1015) );
    NAND20 U825 ( .A(n1017), .B(n101), .Q(n1020) );
    NAND20 U826 ( .A(n1022), .B(n102), .Q(n1025) );
    NAND20 U827 ( .A(key_out[41]), .B(n550), .Q(n674) );
    NAND20 U828 ( .A(key_out[40]), .B(n550), .Q(n675) );
    NAND20 U829 ( .A(key_out[55]), .B(n550), .Q(n676) );
    NAND20 U830 ( .A(key_out[54]), .B(n550), .Q(n677) );
    NAND20 U831 ( .A(key_out[53]), .B(n550), .Q(n678) );
    NAND20 U832 ( .A(key_out[52]), .B(n550), .Q(n679) );
    NAND20 U833 ( .A(key_out[51]), .B(n550), .Q(n680) );
    NAND20 U834 ( .A(key_out[50]), .B(n550), .Q(n681) );
    NAND20 U835 ( .A(key_out[39]), .B(n550), .Q(n682) );
    NAND20 U836 ( .A(key_out[38]), .B(n550), .Q(n683) );
    NAND20 U837 ( .A(key_out[37]), .B(n550), .Q(n684) );
    NAND20 U838 ( .A(key_out[36]), .B(n550), .Q(n685) );
    NAND20 U839 ( .A(key_out[49]), .B(n550), .Q(n686) );
    NAND20 U840 ( .A(key_out[35]), .B(n550), .Q(n687) );
    NAND20 U841 ( .A(key_out[34]), .B(n550), .Q(n688) );
    NAND20 U842 ( .A(key_out[33]), .B(n550), .Q(n689) );
    NAND20 U843 ( .A(key_out[32]), .B(n550), .Q(n690) );
    NAND20 U844 ( .A(key_out[47]), .B(n550), .Q(n691) );
    NAND20 U845 ( .A(key_out[46]), .B(n550), .Q(n692) );
    NAND20 U846 ( .A(key_out[45]), .B(n550), .Q(n693) );
    NAND20 U847 ( .A(key_out[44]), .B(n550), .Q(n694) );
    NAND20 U848 ( .A(key_out[43]), .B(n550), .Q(n695) );
    NAND20 U849 ( .A(key_out[42]), .B(n550), .Q(n696) );
    NAND20 U850 ( .A(key_out[48]), .B(n550), .Q(n697) );
    XNR20 U851 ( .A(key_gen), .B(selEncDec), .Q(n548) );
    AOI220 U852 ( .A(n39), .B(n63), .C(key_out[41]), .D(key_out[73]), .Q(n564)
         );
    CLKIN0 U853 ( .A(n483), .Q(n749) );
    AOI220 U854 ( .A(n40), .B(n64), .C(key_out[40]), .D(key_out[72]), .Q(n567)
         );
    CLKIN0 U855 ( .A(n485), .Q(n753) );
    AOI220 U856 ( .A(n41), .B(n65), .C(key_out[39]), .D(key_out[71]), .Q(n570)
         );
    CLKIN0 U857 ( .A(n487), .Q(n757) );
    AOI220 U858 ( .A(n42), .B(n66), .C(key_out[38]), .D(key_out[70]), .Q(n573)
         );
    CLKIN0 U859 ( .A(n489), .Q(n761) );
    AOI220 U860 ( .A(n43), .B(n67), .C(key_out[37]), .D(key_out[69]), .Q(n576)
         );
    CLKIN0 U861 ( .A(n491), .Q(n765) );
    AOI220 U862 ( .A(n44), .B(n68), .C(key_out[36]), .D(key_out[68]), .Q(n579)
         );
    CLKIN0 U863 ( .A(n493), .Q(n769) );
    AOI220 U864 ( .A(n45), .B(n69), .C(key_out[35]), .D(key_out[67]), .Q(n582)
         );
    CLKIN0 U865 ( .A(n495), .Q(n773) );
    AOI220 U866 ( .A(n46), .B(n70), .C(key_out[34]), .D(key_out[66]), .Q(n591)
         );
    CLKIN0 U867 ( .A(n501), .Q(n781) );
    AOI220 U868 ( .A(n47), .B(n71), .C(key_out[55]), .D(key_out[87]), .Q(n612)
         );
    CLKIN0 U869 ( .A(n515), .Q(n797) );
    AOI220 U870 ( .A(n48), .B(n72), .C(key_out[54]), .D(key_out[86]), .Q(n615)
         );
    CLKIN0 U871 ( .A(n517), .Q(n801) );
    AOI220 U872 ( .A(n49), .B(n73), .C(key_out[53]), .D(key_out[85]), .Q(n618)
         );
    CLKIN0 U873 ( .A(n519), .Q(n805) );
    AOI220 U874 ( .A(n50), .B(n74), .C(key_out[52]), .D(key_out[84]), .Q(n621)
         );
    CLKIN0 U875 ( .A(n521), .Q(n809) );
    AOI220 U876 ( .A(n51), .B(n75), .C(key_out[33]), .D(key_out[65]), .Q(n624)
         );
    CLKIN0 U877 ( .A(n523), .Q(n813) );
    AOI220 U878 ( .A(n52), .B(n76), .C(key_out[51]), .D(key_out[83]), .Q(n627)
         );
    CLKIN0 U879 ( .A(n525), .Q(n817) );
    AOI220 U880 ( .A(n53), .B(n77), .C(key_out[50]), .D(key_out[82]), .Q(n630)
         );
    CLKIN0 U881 ( .A(n527), .Q(n821) );
    AOI220 U882 ( .A(n54), .B(n78), .C(key_out[49]), .D(key_out[81]), .Q(n633)
         );
    CLKIN0 U883 ( .A(n529), .Q(n825) );
    AOI220 U884 ( .A(n55), .B(n79), .C(key_out[48]), .D(key_out[80]), .Q(n636)
         );
    CLKIN0 U885 ( .A(n531), .Q(n829) );
    AOI220 U886 ( .A(n56), .B(n80), .C(key_out[47]), .D(key_out[79]), .Q(n639)
         );
    CLKIN0 U887 ( .A(n533), .Q(n833) );
    AOI220 U888 ( .A(n57), .B(n81), .C(key_out[46]), .D(key_out[78]), .Q(n642)
         );
    CLKIN0 U889 ( .A(n535), .Q(n837) );
    AOI220 U890 ( .A(n58), .B(n82), .C(key_out[45]), .D(key_out[77]), .Q(n645)
         );
    CLKIN0 U891 ( .A(n537), .Q(n841) );
    AOI220 U892 ( .A(n59), .B(n83), .C(key_out[44]), .D(key_out[76]), .Q(n648)
         );
    CLKIN0 U893 ( .A(n539), .Q(n845) );
    AOI220 U894 ( .A(n60), .B(n84), .C(key_out[43]), .D(key_out[75]), .Q(n651)
         );
    CLKIN0 U895 ( .A(n541), .Q(n849) );
    AOI220 U896 ( .A(n61), .B(n85), .C(key_out[42]), .D(key_out[74]), .Q(n654)
         );
    CLKIN0 U897 ( .A(n543), .Q(n853) );
    AOI220 U898 ( .A(n62), .B(n86), .C(key_out[32]), .D(key_out[64]), .Q(n657)
         );
    CLKIN0 U899 ( .A(n545), .Q(n857) );
    AOI220 U900 ( .A(key_out[95]), .B(n17), .C(n16), .D(key_out[127]), .Q(n659
        ) );
    AOI220 U901 ( .A(key_out[94]), .B(n20), .C(n19), .D(key_out[126]), .Q(n661
        ) );
    AOI220 U902 ( .A(key_out[93]), .B(n23), .C(n22), .D(key_out[125]), .Q(n663
        ) );
    AOI220 U903 ( .A(key_out[92]), .B(n26), .C(n25), .D(key_out[124]), .Q(n665
        ) );
    AOI220 U904 ( .A(key_out[91]), .B(n29), .C(n28), .D(key_out[123]), .Q(n667
        ) );
    AOI220 U905 ( .A(key_out[90]), .B(n32), .C(n31), .D(key_out[122]), .Q(n669
        ) );
    AOI220 U906 ( .A(key_out[89]), .B(n35), .C(n34), .D(key_out[121]), .Q(n671
        ) );
    AOI220 U907 ( .A(key_out[88]), .B(n38), .C(n37), .D(key_out[120]), .Q(n673
        ) );
    XNR20 U908 ( .A(sboxOutp[7]), .B(\rcon_inv[7] ), .Q(n985) );
    XNR20 U909 ( .A(sboxOutp[6]), .B(\rcon_inv[6] ), .Q(n990) );
    XNR20 U910 ( .A(sboxOutp[5]), .B(\rcon_inv[5] ), .Q(n997) );
    XNR20 U911 ( .A(sboxOutp[4]), .B(\rcon_inv[4] ), .Q(n1002) );
    XNR20 U912 ( .A(sboxOutp[3]), .B(\rcon_inv[3] ), .Q(n1007) );
    XNR20 U913 ( .A(sboxOutp[2]), .B(\rcon_inv[2] ), .Q(n1012) );
    XNR20 U914 ( .A(sboxOutp[1]), .B(\rcon_inv[1] ), .Q(n1017) );
    XNR20 U915 ( .A(sboxOutp[0]), .B(\rcon_inv[0] ), .Q(n1022) );
    IMUX20 U916 ( .A(n698), .B(n699), .Q(n164), .S(key_out[9]) );
    IMUX20 U917 ( .A(n859), .B(n748), .Q(n165), .S(n562) );
    IMUX20 U918 ( .A(n700), .B(n701), .Q(n161), .S(key_out[8]) );
    IMUX20 U919 ( .A(n863), .B(n752), .Q(n162), .S(n565) );
    IMUX20 U920 ( .A(n702), .B(n703), .Q(n158), .S(key_out[7]) );
    IMUX20 U921 ( .A(n867), .B(n756), .Q(n159), .S(n568) );
    IMUX20 U922 ( .A(n704), .B(n705), .Q(n155), .S(key_out[6]) );
    IMUX20 U923 ( .A(n871), .B(n760), .Q(n156), .S(n571) );
    IMUX20 U924 ( .A(n706), .B(n707), .Q(n152), .S(key_out[5]) );
    IMUX20 U925 ( .A(n875), .B(n764), .Q(n153), .S(n574) );
    IMUX20 U926 ( .A(n708), .B(n709), .Q(n149), .S(key_out[4]) );
    IMUX20 U927 ( .A(n879), .B(n768), .Q(n150), .S(n577) );
    IMUX20 U928 ( .A(n710), .B(n711), .Q(n146), .S(key_out[3]) );
    IMUX20 U929 ( .A(n883), .B(n772), .Q(n147), .S(n580) );
    IMUX20 U930 ( .A(n1074), .B(n1082), .Q(n223), .S(n584) );
    IMUX20 U931 ( .A(n1073), .B(n1081), .Q(n221), .S(n587) );
    IMUX20 U932 ( .A(n712), .B(n713), .Q(n143), .S(key_out[2]) );
    IMUX20 U933 ( .A(n891), .B(n780), .Q(n144), .S(n589) );
    IMUX20 U934 ( .A(n1072), .B(n1080), .Q(n219), .S(n593) );
    IMUX20 U935 ( .A(n1071), .B(n1079), .Q(n217), .S(n596) );
    IMUX20 U936 ( .A(n1070), .B(n1078), .Q(n215), .S(n599) );
    IMUX20 U937 ( .A(n1069), .B(n1077), .Q(n213), .S(n602) );
    IMUX20 U938 ( .A(n1068), .B(n1076), .Q(n211), .S(n605) );
    IMUX20 U939 ( .A(n1067), .B(n1075), .Q(n209), .S(n608) );
    IMUX20 U940 ( .A(n714), .B(n715), .Q(n206), .S(key_out[23]) );
    IMUX20 U941 ( .A(n907), .B(n796), .Q(n207), .S(n610) );
    IMUX20 U942 ( .A(n716), .B(n717), .Q(n203), .S(key_out[22]) );
    IMUX20 U943 ( .A(n911), .B(n800), .Q(n204), .S(n613) );
    IMUX20 U944 ( .A(n718), .B(n719), .Q(n200), .S(key_out[21]) );
    IMUX20 U945 ( .A(n915), .B(n804), .Q(n201), .S(n616) );
    IMUX20 U946 ( .A(n720), .B(n721), .Q(n197), .S(key_out[20]) );
    IMUX20 U947 ( .A(n919), .B(n808), .Q(n198), .S(n619) );
    IMUX20 U948 ( .A(n722), .B(n723), .Q(n140), .S(key_out[1]) );
    IMUX20 U949 ( .A(n923), .B(n812), .Q(n141), .S(n622) );
    IMUX20 U950 ( .A(n724), .B(n725), .Q(n194), .S(key_out[19]) );
    IMUX20 U951 ( .A(n927), .B(n816), .Q(n195), .S(n625) );
    IMUX20 U952 ( .A(n726), .B(n727), .Q(n191), .S(key_out[18]) );
    IMUX20 U953 ( .A(n931), .B(n820), .Q(n192), .S(n628) );
    IMUX20 U954 ( .A(n728), .B(n729), .Q(n188), .S(key_out[17]) );
    IMUX20 U955 ( .A(n935), .B(n824), .Q(n189), .S(n631) );
    IMUX20 U956 ( .A(n730), .B(n731), .Q(n185), .S(key_out[16]) );
    IMUX20 U957 ( .A(n939), .B(n828), .Q(n186), .S(n634) );
    IMUX20 U958 ( .A(n732), .B(n733), .Q(n182), .S(key_out[15]) );
    IMUX20 U959 ( .A(n943), .B(n832), .Q(n183), .S(n637) );
    IMUX20 U960 ( .A(n734), .B(n735), .Q(n179), .S(key_out[14]) );
    IMUX20 U961 ( .A(n947), .B(n836), .Q(n180), .S(n640) );
    IMUX20 U962 ( .A(n736), .B(n737), .Q(n176), .S(key_out[13]) );
    IMUX20 U963 ( .A(n951), .B(n840), .Q(n177), .S(n643) );
    IMUX20 U964 ( .A(n738), .B(n739), .Q(n173), .S(key_out[12]) );
    IMUX20 U965 ( .A(n955), .B(n844), .Q(n174), .S(n646) );
    IMUX20 U966 ( .A(n740), .B(n741), .Q(n170), .S(key_out[11]) );
    IMUX20 U967 ( .A(n959), .B(n848), .Q(n171), .S(n649) );
    IMUX20 U968 ( .A(n742), .B(n743), .Q(n167), .S(key_out[10]) );
    IMUX20 U969 ( .A(n963), .B(n852), .Q(n168), .S(n652) );
    IMUX20 U970 ( .A(n744), .B(n745), .Q(n137), .S(key_out[0]) );
    IMUX20 U971 ( .A(n967), .B(n856), .Q(n138), .S(n655) );
    IMUX20 U972 ( .A(n746), .B(n747), .Q(n253), .S(key_out[41]) );
    IMUX20 U973 ( .A(n859), .B(n748), .Q(n254), .S(n564) );
    IMUX20 U974 ( .A(n750), .B(n751), .Q(n250), .S(key_out[40]) );
    IMUX20 U975 ( .A(n863), .B(n752), .Q(n251), .S(n567) );
    IMUX20 U976 ( .A(n754), .B(n755), .Q(n247), .S(key_out[39]) );
    IMUX20 U977 ( .A(n867), .B(n756), .Q(n248), .S(n570) );
    IMUX20 U978 ( .A(n758), .B(n759), .Q(n244), .S(key_out[38]) );
    IMUX20 U979 ( .A(n871), .B(n760), .Q(n245), .S(n573) );
    IMUX20 U980 ( .A(n762), .B(n763), .Q(n241), .S(key_out[37]) );
    IMUX20 U981 ( .A(n875), .B(n764), .Q(n242), .S(n576) );
    IMUX20 U982 ( .A(n766), .B(n767), .Q(n238), .S(key_out[36]) );
    IMUX20 U983 ( .A(n879), .B(n768), .Q(n239), .S(n579) );
    IMUX20 U984 ( .A(n770), .B(n771), .Q(n235), .S(key_out[35]) );
    IMUX20 U985 ( .A(n883), .B(n772), .Q(n236), .S(n582) );
    IMUX20 U986 ( .A(n1074), .B(n1082), .Q(n318), .S(n658) );
    IMUX20 U987 ( .A(n774), .B(n775), .Q(n320), .S(key_out[63]) );
    IMUX20 U988 ( .A(n1073), .B(n1081), .Q(n315), .S(n660) );
    IMUX20 U989 ( .A(n776), .B(n777), .Q(n317), .S(key_out[62]) );
    IMUX20 U990 ( .A(n778), .B(n779), .Q(n232), .S(key_out[34]) );
    IMUX20 U991 ( .A(n891), .B(n780), .Q(n233), .S(n591) );
    IMUX20 U992 ( .A(n1072), .B(n1080), .Q(n312), .S(n662) );
    IMUX20 U993 ( .A(n782), .B(n783), .Q(n314), .S(key_out[61]) );
    IMUX20 U994 ( .A(n1071), .B(n1079), .Q(n309), .S(n664) );
    IMUX20 U995 ( .A(n784), .B(n785), .Q(n311), .S(key_out[60]) );
    IMUX20 U996 ( .A(n1070), .B(n1078), .Q(n306), .S(n666) );
    IMUX20 U997 ( .A(n786), .B(n787), .Q(n308), .S(key_out[59]) );
    IMUX20 U998 ( .A(n1069), .B(n1077), .Q(n303), .S(n668) );
    IMUX20 U999 ( .A(n788), .B(n789), .Q(n305), .S(key_out[58]) );
    IMUX20 U1000 ( .A(n1068), .B(n1076), .Q(n300), .S(n670) );
    IMUX20 U1001 ( .A(n790), .B(n791), .Q(n302), .S(key_out[57]) );
    IMUX20 U1002 ( .A(n1067), .B(n1075), .Q(n297), .S(n672) );
    IMUX20 U1003 ( .A(n792), .B(n793), .Q(n299), .S(key_out[56]) );
    IMUX20 U1004 ( .A(n794), .B(n795), .Q(n295), .S(key_out[55]) );
    IMUX20 U1005 ( .A(n907), .B(n796), .Q(n296), .S(n612) );
    IMUX20 U1006 ( .A(n798), .B(n799), .Q(n292), .S(key_out[54]) );
    IMUX20 U1007 ( .A(n911), .B(n800), .Q(n293), .S(n615) );
    IMUX20 U1008 ( .A(n802), .B(n803), .Q(n289), .S(key_out[53]) );
    IMUX20 U1009 ( .A(n915), .B(n804), .Q(n290), .S(n618) );
    IMUX20 U1010 ( .A(n806), .B(n807), .Q(n286), .S(key_out[52]) );
    IMUX20 U1011 ( .A(n919), .B(n808), .Q(n287), .S(n621) );
    IMUX20 U1012 ( .A(n810), .B(n811), .Q(n229), .S(key_out[33]) );
    IMUX20 U1013 ( .A(n923), .B(n812), .Q(n230), .S(n624) );
    IMUX20 U1014 ( .A(n814), .B(n815), .Q(n283), .S(key_out[51]) );
    IMUX20 U1015 ( .A(n927), .B(n816), .Q(n284), .S(n627) );
    IMUX20 U1016 ( .A(n818), .B(n819), .Q(n280), .S(key_out[50]) );
    IMUX20 U1017 ( .A(n931), .B(n820), .Q(n281), .S(n630) );
    IMUX20 U1018 ( .A(n822), .B(n823), .Q(n277), .S(key_out[49]) );
    IMUX20 U1019 ( .A(n935), .B(n824), .Q(n278), .S(n633) );
    IMUX20 U1020 ( .A(n826), .B(n827), .Q(n274), .S(key_out[48]) );
    IMUX20 U1021 ( .A(n939), .B(n828), .Q(n275), .S(n636) );
    IMUX20 U1022 ( .A(n830), .B(n831), .Q(n271), .S(key_out[47]) );
    IMUX20 U1023 ( .A(n943), .B(n832), .Q(n272), .S(n639) );
    IMUX20 U1024 ( .A(n834), .B(n835), .Q(n268), .S(key_out[46]) );
    IMUX20 U1025 ( .A(n947), .B(n836), .Q(n269), .S(n642) );
    IMUX20 U1026 ( .A(n838), .B(n839), .Q(n265), .S(key_out[45]) );
    IMUX20 U1027 ( .A(n951), .B(n840), .Q(n266), .S(n645) );
    IMUX20 U1028 ( .A(n842), .B(n843), .Q(n262), .S(key_out[44]) );
    IMUX20 U1029 ( .A(n955), .B(n844), .Q(n263), .S(n648) );
    IMUX20 U1030 ( .A(n846), .B(n847), .Q(n259), .S(key_out[43]) );
    IMUX20 U1031 ( .A(n959), .B(n848), .Q(n260), .S(n651) );
    IMUX20 U1032 ( .A(n850), .B(n851), .Q(n256), .S(key_out[42]) );
    IMUX20 U1033 ( .A(n963), .B(n852), .Q(n257), .S(n654) );
    IMUX20 U1034 ( .A(n854), .B(n855), .Q(n226), .S(key_out[32]) );
    IMUX20 U1035 ( .A(n967), .B(n856), .Q(n227), .S(n657) );
    IMUX20 U1036 ( .A(n860), .B(n1083), .Q(n340), .S(n63) );
    IMUX20 U1037 ( .A(n864), .B(n1084), .Q(n338), .S(n64) );
    IMUX20 U1038 ( .A(n868), .B(n1085), .Q(n336), .S(n65) );
    IMUX20 U1039 ( .A(n872), .B(n1086), .Q(n334), .S(n66) );
    IMUX20 U1040 ( .A(n876), .B(n1087), .Q(n332), .S(n67) );
    IMUX20 U1041 ( .A(n880), .B(n1088), .Q(n330), .S(n68) );
    IMUX20 U1042 ( .A(n884), .B(n1089), .Q(n328), .S(n69) );
    IMUX20 U1043 ( .A(n1082), .B(n1074), .Q(n390), .S(n659) );
    IMUX20 U1044 ( .A(n886), .B(n887), .Q(n392), .S(key_out[95]) );
    IMUX20 U1045 ( .A(n1081), .B(n1073), .Q(n387), .S(n661) );
    IMUX20 U1046 ( .A(n888), .B(n889), .Q(n389), .S(key_out[94]) );
    IMUX20 U1047 ( .A(n892), .B(n1090), .Q(n326), .S(n70) );
    IMUX20 U1048 ( .A(n1080), .B(n1072), .Q(n384), .S(n663) );
    IMUX20 U1049 ( .A(n894), .B(n895), .Q(n386), .S(key_out[93]) );
    IMUX20 U1050 ( .A(n1079), .B(n1071), .Q(n381), .S(n665) );
    IMUX20 U1051 ( .A(n896), .B(n897), .Q(n383), .S(key_out[92]) );
    IMUX20 U1052 ( .A(n1078), .B(n1070), .Q(n378), .S(n667) );
    IMUX20 U1053 ( .A(n898), .B(n899), .Q(n380), .S(key_out[91]) );
    IMUX20 U1054 ( .A(n1077), .B(n1069), .Q(n375), .S(n669) );
    IMUX20 U1055 ( .A(n900), .B(n901), .Q(n377), .S(key_out[90]) );
    IMUX20 U1056 ( .A(n1076), .B(n1068), .Q(n372), .S(n671) );
    IMUX20 U1057 ( .A(n902), .B(n903), .Q(n374), .S(key_out[89]) );
    IMUX20 U1058 ( .A(n1075), .B(n1067), .Q(n369), .S(n673) );
    IMUX20 U1059 ( .A(n904), .B(n905), .Q(n371), .S(key_out[88]) );
    IMUX20 U1060 ( .A(n908), .B(n1091), .Q(n368), .S(n71) );
    IMUX20 U1061 ( .A(n912), .B(n1092), .Q(n366), .S(n72) );
    IMUX20 U1062 ( .A(n916), .B(n1093), .Q(n364), .S(n73) );
    IMUX20 U1063 ( .A(n920), .B(n1094), .Q(n362), .S(n74) );
    IMUX20 U1064 ( .A(n924), .B(n1095), .Q(n324), .S(n75) );
    IMUX20 U1065 ( .A(n928), .B(n1096), .Q(n360), .S(n76) );
    IMUX20 U1066 ( .A(n932), .B(n1097), .Q(n358), .S(n77) );
    IMUX20 U1067 ( .A(n936), .B(n1098), .Q(n356), .S(n78) );
    IMUX20 U1068 ( .A(n940), .B(n1099), .Q(n354), .S(n79) );
    IMUX20 U1069 ( .A(n944), .B(n1100), .Q(n352), .S(n80) );
    IMUX20 U1070 ( .A(n948), .B(n1101), .Q(n350), .S(n81) );
    IMUX20 U1071 ( .A(n952), .B(n1102), .Q(n348), .S(n82) );
    IMUX20 U1072 ( .A(n956), .B(n1103), .Q(n346), .S(n83) );
    IMUX20 U1073 ( .A(n960), .B(n1104), .Q(n344), .S(n84) );
    IMUX20 U1074 ( .A(n964), .B(n1105), .Q(n342), .S(n85) );
    IMUX20 U1075 ( .A(n968), .B(n1106), .Q(n322), .S(n86) );
    IMUX20 U1076 ( .A(n970), .B(n971), .Q(n412), .S(key_out[105]) );
    IMUX20 U1077 ( .A(n972), .B(n973), .Q(n410), .S(key_out[104]) );
    IMUX20 U1078 ( .A(n974), .B(n975), .Q(n408), .S(key_out[103]) );
    IMUX20 U1079 ( .A(n976), .B(n977), .Q(n406), .S(key_out[102]) );
    IMUX20 U1080 ( .A(n978), .B(n979), .Q(n404), .S(key_out[101]) );
    IMUX20 U1081 ( .A(n980), .B(n981), .Q(n402), .S(key_out[100]) );
    IMUX20 U1082 ( .A(n982), .B(n983), .Q(n400), .S(key_out[99]) );
    IMUX20 U1083 ( .A(n984), .B(n987), .Q(n456), .S(key_out[127]) );
    IMUX20 U1084 ( .A(n989), .B(n992), .Q(n454), .S(key_out[126]) );
    IMUX20 U1085 ( .A(n994), .B(n995), .Q(n398), .S(key_out[98]) );
    IMUX20 U1086 ( .A(n996), .B(n999), .Q(n452), .S(key_out[125]) );
    IMUX20 U1087 ( .A(n1001), .B(n1004), .Q(n450), .S(key_out[124]) );
    IMUX20 U1088 ( .A(n1006), .B(n1009), .Q(n448), .S(key_out[123]) );
    IMUX20 U1089 ( .A(n1011), .B(n1014), .Q(n446), .S(key_out[122]) );
    IMUX20 U1090 ( .A(n1016), .B(n1019), .Q(n444), .S(key_out[121]) );
    IMUX20 U1091 ( .A(n1021), .B(n1024), .Q(n442), .S(key_out[120]) );
    IMUX20 U1092 ( .A(n1026), .B(n1027), .Q(n440), .S(key_out[119]) );
    IMUX20 U1093 ( .A(n1028), .B(n1029), .Q(n438), .S(key_out[118]) );
    IMUX20 U1094 ( .A(n1030), .B(n1031), .Q(n436), .S(key_out[117]) );
    IMUX20 U1095 ( .A(n1032), .B(n1033), .Q(n434), .S(key_out[116]) );
    IMUX20 U1096 ( .A(n1034), .B(n1035), .Q(n396), .S(key_out[97]) );
    IMUX20 U1097 ( .A(n1036), .B(n1037), .Q(n432), .S(key_out[115]) );
    IMUX20 U1098 ( .A(n1038), .B(n1039), .Q(n430), .S(key_out[114]) );
    IMUX20 U1099 ( .A(n1040), .B(n1041), .Q(n428), .S(key_out[113]) );
    IMUX20 U1100 ( .A(n1042), .B(n1043), .Q(n426), .S(key_out[112]) );
    IMUX20 U1101 ( .A(n1044), .B(n1045), .Q(n424), .S(key_out[111]) );
    IMUX20 U1102 ( .A(n1046), .B(n1047), .Q(n422), .S(key_out[110]) );
    IMUX20 U1103 ( .A(n1048), .B(n1049), .Q(n420), .S(key_out[109]) );
    IMUX20 U1104 ( .A(n1050), .B(n1051), .Q(n418), .S(key_out[108]) );
    IMUX20 U1105 ( .A(n1052), .B(n1053), .Q(n416), .S(key_out[107]) );
    IMUX20 U1106 ( .A(n1054), .B(n1055), .Q(n414), .S(key_out[106]) );
    IMUX20 U1107 ( .A(n1056), .B(n1057), .Q(n394), .S(key_out[96]) );
    IMUX20 U1108 ( .A(key_out[31]), .B(n460), .Q(n119), .S(n550) );
    IMUX20 U1109 ( .A(key_out[30]), .B(n463), .Q(n121), .S(n550) );
    IMUX20 U1110 ( .A(key_out[29]), .B(n466), .Q(n123), .S(n550) );
    IMUX20 U1111 ( .A(key_out[28]), .B(n469), .Q(n125), .S(n550) );
    IMUX20 U1112 ( .A(key_out[27]), .B(n472), .Q(n127), .S(n550) );
    IMUX20 U1113 ( .A(key_out[26]), .B(n475), .Q(n129), .S(n550) );
    IMUX20 U1114 ( .A(key_out[25]), .B(n478), .Q(n131), .S(n550) );
    IMUX20 U1115 ( .A(key_out[24]), .B(n481), .Q(n133), .S(n550) );
    CLKIN0 U1116 ( .A(selEncDec), .Q(n551) );
    CLKIN0 U1117 ( .A(n554), .Q(n460) );
    CLKIN0 U1118 ( .A(n555), .Q(n463) );
    CLKIN0 U1119 ( .A(n556), .Q(n466) );
    CLKIN0 U1120 ( .A(n557), .Q(n469) );
    CLKIN0 U1121 ( .A(n558), .Q(n472) );
    CLKIN0 U1122 ( .A(n559), .Q(n475) );
    CLKIN0 U1123 ( .A(n560), .Q(n478) );
    CLKIN0 U1124 ( .A(n561), .Q(n481) );
    CLKIN0 U1125 ( .A(n858), .Q(n1083) );
    CLKIN0 U1126 ( .A(n862), .Q(n1084) );
    CLKIN0 U1127 ( .A(n866), .Q(n1085) );
    CLKIN0 U1128 ( .A(n870), .Q(n1086) );
    CLKIN0 U1129 ( .A(n874), .Q(n1087) );
    CLKIN0 U1130 ( .A(n878), .Q(n1088) );
    CLKIN0 U1131 ( .A(n882), .Q(n1089) );
    CLKIN0 U1132 ( .A(n890), .Q(n1090) );
    CLKIN0 U1133 ( .A(n906), .Q(n1091) );
    CLKIN0 U1134 ( .A(n910), .Q(n1092) );
    CLKIN0 U1135 ( .A(n914), .Q(n1093) );
    CLKIN0 U1136 ( .A(n918), .Q(n1094) );
    CLKIN0 U1137 ( .A(n922), .Q(n1095) );
    CLKIN0 U1138 ( .A(n926), .Q(n1096) );
    CLKIN0 U1139 ( .A(n930), .Q(n1097) );
    CLKIN0 U1140 ( .A(n934), .Q(n1098) );
    CLKIN0 U1141 ( .A(n938), .Q(n1099) );
    CLKIN0 U1142 ( .A(n942), .Q(n1100) );
    CLKIN0 U1143 ( .A(n946), .Q(n1101) );
    CLKIN0 U1144 ( .A(n950), .Q(n1102) );
    CLKIN0 U1145 ( .A(n954), .Q(n1103) );
    CLKIN0 U1146 ( .A(n958), .Q(n1104) );
    CLKIN0 U1147 ( .A(n962), .Q(n1105) );
    CLKIN0 U1148 ( .A(n966), .Q(n1106) );
    CLKIN0 U1149 ( .A(n564), .Q(n563) );
    CLKIN0 U1150 ( .A(n567), .Q(n566) );
    CLKIN0 U1151 ( .A(n570), .Q(n569) );
    CLKIN0 U1152 ( .A(n573), .Q(n572) );
    CLKIN0 U1153 ( .A(n576), .Q(n575) );
    CLKIN0 U1154 ( .A(n579), .Q(n578) );
    CLKIN0 U1155 ( .A(n582), .Q(n581) );
    CLKIN0 U1156 ( .A(\rcon[7] ), .Q(n498) );
    CLKIN0 U1157 ( .A(\rcon[6] ), .Q(n500) );
    CLKIN0 U1158 ( .A(n591), .Q(n590) );
    CLKIN0 U1159 ( .A(\rcon[5] ), .Q(n504) );
    CLKIN0 U1160 ( .A(\rcon[4] ), .Q(n506) );
    CLKIN0 U1161 ( .A(\rcon[3] ), .Q(n508) );
    CLKIN0 U1162 ( .A(\rcon[2] ), .Q(n510) );
    CLKIN0 U1163 ( .A(\rcon[1] ), .Q(n512) );
    CLKIN0 U1164 ( .A(\rcon[0] ), .Q(n514) );
    CLKIN0 U1165 ( .A(n612), .Q(n611) );
    CLKIN0 U1166 ( .A(n615), .Q(n614) );
    CLKIN0 U1167 ( .A(n618), .Q(n617) );
    CLKIN0 U1168 ( .A(n621), .Q(n620) );
    CLKIN0 U1169 ( .A(n624), .Q(n623) );
    CLKIN0 U1170 ( .A(n627), .Q(n626) );
    CLKIN0 U1171 ( .A(n630), .Q(n629) );
    CLKIN0 U1172 ( .A(n633), .Q(n632) );
    CLKIN0 U1173 ( .A(n636), .Q(n635) );
    CLKIN0 U1174 ( .A(n639), .Q(n638) );
    CLKIN0 U1175 ( .A(n642), .Q(n641) );
    CLKIN0 U1176 ( .A(n645), .Q(n644) );
    CLKIN0 U1177 ( .A(n648), .Q(n647) );
    CLKIN0 U1178 ( .A(n651), .Q(n650) );
    CLKIN0 U1179 ( .A(n654), .Q(n653) );
    CLKIN0 U1180 ( .A(n657), .Q(n656) );
    CLKIN0 U1181 ( .A(nextKey), .Q(n549) );
    DFC1 \w_reg[3][0]  ( .C(clk), .D(n1107), .Q(key_out[0]), .RN(reset) );
    DFC1 \w_reg[3][1]  ( .C(clk), .D(n1108), .Q(key_out[1]), .RN(reset) );
    DFC1 \w_reg[3][2]  ( .C(clk), .D(n1109), .Q(key_out[2]), .RN(reset) );
    DFC1 \w_reg[3][3]  ( .C(clk), .D(n1110), .Q(key_out[3]), .RN(reset) );
    DFC1 \w_reg[3][4]  ( .C(clk), .D(n1111), .Q(key_out[4]), .RN(reset) );
    DFC1 \w_reg[3][5]  ( .C(clk), .D(n1112), .Q(key_out[5]), .RN(reset) );
    DFC1 \w_reg[3][6]  ( .C(clk), .D(n1113), .Q(key_out[6]), .RN(reset) );
    DFC1 \w_reg[3][7]  ( .C(clk), .D(n1114), .Q(key_out[7]), .RN(reset) );
    DFC1 \w_reg[3][8]  ( .C(clk), .D(n1115), .Q(key_out[8]), .RN(reset) );
    DFC1 \w_reg[3][9]  ( .C(clk), .D(n1116), .Q(key_out[9]), .RN(reset) );
    DFC1 \w_reg[3][10]  ( .C(clk), .D(n1117), .Q(key_out[10]), .RN(reset) );
    DFC1 \w_reg[3][11]  ( .C(clk), .D(n1118), .Q(key_out[11]), .RN(reset) );
    DFC1 \w_reg[3][12]  ( .C(clk), .D(n1119), .Q(key_out[12]), .RN(reset) );
    DFC1 \w_reg[3][13]  ( .C(clk), .D(n1120), .Q(key_out[13]), .RN(reset) );
    DFC1 \w_reg[3][14]  ( .C(clk), .D(n1121), .Q(key_out[14]), .RN(reset) );
    DFC1 \w_reg[3][15]  ( .C(clk), .D(n1122), .Q(key_out[15]), .RN(reset) );
    DFC1 \w_reg[3][16]  ( .C(clk), .D(n1123), .Q(key_out[16]), .RN(reset) );
    DFC1 \w_reg[3][17]  ( .C(clk), .D(n1124), .Q(key_out[17]), .RN(reset) );
    DFC1 \w_reg[3][18]  ( .C(clk), .D(n1125), .Q(key_out[18]), .RN(reset) );
    DFC1 \w_reg[3][19]  ( .C(clk), .D(n1126), .Q(key_out[19]), .RN(reset) );
    DFC1 \w_reg[3][20]  ( .C(clk), .D(n1127), .Q(key_out[20]), .RN(reset) );
    DFC1 \w_reg[3][21]  ( .C(clk), .D(n1128), .Q(key_out[21]), .RN(reset) );
    DFC1 \w_reg[3][22]  ( .C(clk), .D(n1129), .Q(key_out[22]), .RN(reset) );
    DFC1 \w_reg[3][23]  ( .C(clk), .D(n1130), .Q(key_out[23]), .RN(reset) );
    DFC1 \w_reg[3][24]  ( .C(clk), .D(n1131), .Q(key_out[24]), .QN(n36), .RN(
        reset) );
    DFC1 \w_reg[3][25]  ( .C(clk), .D(n1132), .Q(key_out[25]), .QN(n33), .RN(
        reset) );
    DFC1 \w_reg[3][26]  ( .C(clk), .D(n1133), .Q(key_out[26]), .QN(n30), .RN(
        reset) );
    DFC1 \w_reg[3][27]  ( .C(clk), .D(n1134), .Q(key_out[27]), .QN(n27), .RN(
        reset) );
    DFC1 \w_reg[3][28]  ( .C(clk), .D(n1135), .Q(key_out[28]), .QN(n24), .RN(
        reset) );
    DFC1 \w_reg[3][29]  ( .C(clk), .D(n1136), .Q(key_out[29]), .QN(n21), .RN(
        reset) );
    DFC1 \w_reg[3][30]  ( .C(clk), .D(n1137), .Q(key_out[30]), .QN(n18), .RN(
        reset) );
    DFC1 \w_reg[3][31]  ( .C(clk), .D(n1138), .Q(key_out[31]), .QN(n15), .RN(
        reset) );
    DFC1 \w_reg[2][0]  ( .C(clk), .D(n1139), .Q(key_out[32]), .QN(n62), .RN(
        reset) );
    DFC1 \w_reg[2][1]  ( .C(clk), .D(n1140), .Q(key_out[33]), .QN(n51), .RN(
        reset) );
    DFC1 \w_reg[2][2]  ( .C(clk), .D(n1141), .Q(key_out[34]), .QN(n46), .RN(
        reset) );
    DFC1 \w_reg[2][3]  ( .C(clk), .D(n1142), .Q(key_out[35]), .QN(n45), .RN(
        reset) );
    DFC1 \w_reg[2][4]  ( .C(clk), .D(n1143), .Q(key_out[36]), .QN(n44), .RN(
        reset) );
    DFC1 \w_reg[2][5]  ( .C(clk), .D(n1144), .Q(key_out[37]), .QN(n43), .RN(
        reset) );
    DFC1 \w_reg[2][6]  ( .C(clk), .D(n1145), .Q(key_out[38]), .QN(n42), .RN(
        reset) );
    DFC1 \w_reg[2][7]  ( .C(clk), .D(n1146), .Q(key_out[39]), .QN(n41), .RN(
        reset) );
    DFC1 \w_reg[2][8]  ( .C(clk), .D(n1147), .Q(key_out[40]), .QN(n40), .RN(
        reset) );
    DFC1 \w_reg[2][9]  ( .C(clk), .D(n1148), .Q(key_out[41]), .QN(n39), .RN(
        reset) );
    DFC1 \w_reg[2][10]  ( .C(clk), .D(n1149), .Q(key_out[42]), .QN(n61), .RN(
        reset) );
    DFC1 \w_reg[2][11]  ( .C(clk), .D(n1150), .Q(key_out[43]), .QN(n60), .RN(
        reset) );
    DFC1 \w_reg[2][12]  ( .C(clk), .D(n1151), .Q(key_out[44]), .QN(n59), .RN(
        reset) );
    DFC1 \w_reg[2][13]  ( .C(clk), .D(n1152), .Q(key_out[45]), .QN(n58), .RN(
        reset) );
    DFC1 \w_reg[2][14]  ( .C(clk), .D(n1153), .Q(key_out[46]), .QN(n57), .RN(
        reset) );
    DFC1 \w_reg[2][15]  ( .C(clk), .D(n1154), .Q(key_out[47]), .QN(n56), .RN(
        reset) );
    DFC1 \w_reg[2][16]  ( .C(clk), .D(n1155), .Q(key_out[48]), .QN(n55), .RN(
        reset) );
    DFC1 \w_reg[2][17]  ( .C(clk), .D(n1156), .Q(key_out[49]), .QN(n54), .RN(
        reset) );
    DFC1 \w_reg[2][18]  ( .C(clk), .D(n1157), .Q(key_out[50]), .QN(n53), .RN(
        reset) );
    DFC1 \w_reg[2][19]  ( .C(clk), .D(n1158), .Q(key_out[51]), .QN(n52), .RN(
        reset) );
    DFC1 \w_reg[2][20]  ( .C(clk), .D(n1159), .Q(key_out[52]), .QN(n50), .RN(
        reset) );
    DFC1 \w_reg[2][21]  ( .C(clk), .D(n1160), .Q(key_out[53]), .QN(n49), .RN(
        reset) );
    DFC1 \w_reg[2][22]  ( .C(clk), .D(n1161), .Q(key_out[54]), .QN(n48), .RN(
        reset) );
    DFC1 \w_reg[2][23]  ( .C(clk), .D(n1162), .Q(key_out[55]), .QN(n47), .RN(
        reset) );
    DFC1 \w_reg[2][24]  ( .C(clk), .D(n1163), .Q(key_out[56]), .RN(reset) );
    DFC1 \w_reg[2][25]  ( .C(clk), .D(n1164), .Q(key_out[57]), .RN(reset) );
    DFC1 \w_reg[2][26]  ( .C(clk), .D(n1165), .Q(key_out[58]), .RN(reset) );
    DFC1 \w_reg[2][27]  ( .C(clk), .D(n1166), .Q(key_out[59]), .RN(reset) );
    DFC1 \w_reg[2][28]  ( .C(clk), .D(n1167), .Q(key_out[60]), .RN(reset) );
    DFC1 \w_reg[2][29]  ( .C(clk), .D(n1168), .Q(key_out[61]), .RN(reset) );
    DFC1 \w_reg[2][30]  ( .C(clk), .D(n1169), .Q(key_out[62]), .RN(reset) );
    DFC1 \w_reg[2][31]  ( .C(clk), .D(n1170), .Q(key_out[63]), .RN(reset) );
    DFC1 \w_reg[1][0]  ( .C(clk), .D(n1171), .Q(key_out[64]), .QN(n86), .RN(
        reset) );
    DFC1 \w_reg[1][1]  ( .C(clk), .D(n1172), .Q(key_out[65]), .QN(n75), .RN(
        reset) );
    DFC1 \w_reg[1][2]  ( .C(clk), .D(n1173), .Q(key_out[66]), .QN(n70), .RN(
        reset) );
    DFC1 \w_reg[1][3]  ( .C(clk), .D(n1174), .Q(key_out[67]), .QN(n69), .RN(
        reset) );
    DFC1 \w_reg[1][4]  ( .C(clk), .D(n1175), .Q(key_out[68]), .QN(n68), .RN(
        reset) );
    DFC1 \w_reg[1][5]  ( .C(clk), .D(n1176), .Q(key_out[69]), .QN(n67), .RN(
        reset) );
    DFC1 \w_reg[1][6]  ( .C(clk), .D(n1177), .Q(key_out[70]), .QN(n66), .RN(
        reset) );
    DFC1 \w_reg[1][7]  ( .C(clk), .D(n1178), .Q(key_out[71]), .QN(n65), .RN(
        reset) );
    DFC1 \w_reg[1][8]  ( .C(clk), .D(n1179), .Q(key_out[72]), .QN(n64), .RN(
        reset) );
    DFC1 \w_reg[1][9]  ( .C(clk), .D(n1180), .Q(key_out[73]), .QN(n63), .RN(
        reset) );
    DFC1 \w_reg[1][10]  ( .C(clk), .D(n1181), .Q(key_out[74]), .QN(n85), .RN(
        reset) );
    DFC1 \w_reg[1][11]  ( .C(clk), .D(n1182), .Q(key_out[75]), .QN(n84), .RN(
        reset) );
    DFC1 \w_reg[1][12]  ( .C(clk), .D(n1183), .Q(key_out[76]), .QN(n83), .RN(
        reset) );
    DFC1 \w_reg[1][13]  ( .C(clk), .D(n1184), .Q(key_out[77]), .QN(n82), .RN(
        reset) );
    DFC1 \w_reg[1][14]  ( .C(clk), .D(n1185), .Q(key_out[78]), .QN(n81), .RN(
        reset) );
    DFC1 \w_reg[1][15]  ( .C(clk), .D(n1186), .Q(key_out[79]), .QN(n80), .RN(
        reset) );
    DFC1 \w_reg[1][16]  ( .C(clk), .D(n1187), .Q(key_out[80]), .QN(n79), .RN(
        reset) );
    DFC1 \w_reg[1][17]  ( .C(clk), .D(n1188), .Q(key_out[81]), .QN(n78), .RN(
        reset) );
    DFC1 \w_reg[1][18]  ( .C(clk), .D(n1189), .Q(key_out[82]), .QN(n77), .RN(
        reset) );
    DFC1 \w_reg[1][19]  ( .C(clk), .D(n1190), .Q(key_out[83]), .QN(n76), .RN(
        reset) );
    DFC1 \w_reg[1][20]  ( .C(clk), .D(n1191), .Q(key_out[84]), .QN(n74), .RN(
        reset) );
    DFC1 \w_reg[1][21]  ( .C(clk), .D(n1192), .Q(key_out[85]), .QN(n73), .RN(
        reset) );
    DFC1 \w_reg[1][22]  ( .C(clk), .D(n1193), .Q(key_out[86]), .QN(n72), .RN(
        reset) );
    DFC1 \w_reg[1][23]  ( .C(clk), .D(n1194), .Q(key_out[87]), .QN(n71), .RN(
        reset) );
    DFC1 \w_reg[1][24]  ( .C(clk), .D(n1195), .Q(key_out[88]), .QN(n37), .RN(
        reset) );
    DFC1 \w_reg[1][25]  ( .C(clk), .D(n1196), .Q(key_out[89]), .QN(n34), .RN(
        reset) );
    DFC1 \w_reg[1][26]  ( .C(clk), .D(n1197), .Q(key_out[90]), .QN(n31), .RN(
        reset) );
    DFC1 \w_reg[1][27]  ( .C(clk), .D(n1198), .Q(key_out[91]), .QN(n28), .RN(
        reset) );
    DFC1 \w_reg[1][28]  ( .C(clk), .D(n1199), .Q(key_out[92]), .QN(n25), .RN(
        reset) );
    DFC1 \w_reg[1][29]  ( .C(clk), .D(n1200), .Q(key_out[93]), .QN(n22), .RN(
        reset) );
    DFC1 \w_reg[1][30]  ( .C(clk), .D(n1201), .Q(key_out[94]), .QN(n19), .RN(
        reset) );
    DFC1 \w_reg[1][31]  ( .C(clk), .D(n1202), .Q(key_out[95]), .QN(n16), .RN(
        reset) );
    DFC1 \w_reg[0][0]  ( .C(clk), .D(n1203), .Q(key_out[96]), .RN(reset) );
    DFC1 \w_reg[0][1]  ( .C(clk), .D(n1204), .Q(key_out[97]), .RN(reset) );
    DFC1 \w_reg[0][2]  ( .C(clk), .D(n1205), .Q(key_out[98]), .RN(reset) );
    DFC1 \w_reg[0][3]  ( .C(clk), .D(n1206), .Q(key_out[99]), .RN(reset) );
    DFC1 \w_reg[0][4]  ( .C(clk), .D(n1207), .Q(key_out[100]), .RN(reset) );
    DFC1 \w_reg[0][5]  ( .C(clk), .D(n1208), .Q(key_out[101]), .RN(reset) );
    DFC1 \w_reg[0][6]  ( .C(clk), .D(n1209), .Q(key_out[102]), .RN(reset) );
    DFC1 \w_reg[0][7]  ( .C(clk), .D(n1210), .Q(key_out[103]), .RN(reset) );
    DFC1 \w_reg[0][8]  ( .C(clk), .D(n1211), .Q(key_out[104]), .RN(reset) );
    DFC1 \w_reg[0][9]  ( .C(clk), .D(n1212), .Q(key_out[105]), .RN(reset) );
    DFC1 \w_reg[0][10]  ( .C(clk), .D(n1213), .Q(key_out[106]), .RN(reset) );
    DFC1 \w_reg[0][11]  ( .C(clk), .D(n1214), .Q(key_out[107]), .RN(reset) );
    DFC1 \w_reg[0][12]  ( .C(clk), .D(n1215), .Q(key_out[108]), .RN(reset) );
    DFC1 \w_reg[0][13]  ( .C(clk), .D(n1216), .Q(key_out[109]), .RN(reset) );
    DFC1 \w_reg[0][14]  ( .C(clk), .D(n1217), .Q(key_out[110]), .RN(reset) );
    DFC1 \w_reg[0][15]  ( .C(clk), .D(n1218), .Q(key_out[111]), .RN(reset) );
    DFC1 \w_reg[0][16]  ( .C(clk), .D(n1219), .Q(key_out[112]), .RN(reset) );
    DFC1 \w_reg[0][17]  ( .C(clk), .D(n1220), .Q(key_out[113]), .RN(reset) );
    DFC1 \w_reg[0][18]  ( .C(clk), .D(n1221), .Q(key_out[114]), .RN(reset) );
    DFC1 \w_reg[0][19]  ( .C(clk), .D(n1222), .Q(key_out[115]), .RN(reset) );
    DFC1 \w_reg[0][20]  ( .C(clk), .D(n1223), .Q(key_out[116]), .RN(reset) );
    DFC1 \w_reg[0][21]  ( .C(clk), .D(n1224), .Q(key_out[117]), .RN(reset) );
    DFC1 \w_reg[0][22]  ( .C(clk), .D(n1225), .Q(key_out[118]), .RN(reset) );
    DFC1 \w_reg[0][23]  ( .C(clk), .D(n1226), .Q(key_out[119]), .RN(reset) );
    DFC1 \w_reg[0][24]  ( .C(clk), .D(n1227), .Q(key_out[120]), .QN(n38), .RN(
        reset) );
    DFC1 \w_reg[0][25]  ( .C(clk), .D(n1228), .Q(key_out[121]), .QN(n35), .RN(
        reset) );
    DFC1 \w_reg[0][26]  ( .C(clk), .D(n1229), .Q(key_out[122]), .QN(n32), .RN(
        reset) );
    DFC1 \w_reg[0][27]  ( .C(clk), .D(n1230), .Q(key_out[123]), .QN(n29), .RN(
        reset) );
    DFC1 \w_reg[0][28]  ( .C(clk), .D(n1231), .Q(key_out[124]), .QN(n26), .RN(
        reset) );
    DFC1 \w_reg[0][29]  ( .C(clk), .D(n1232), .Q(key_out[125]), .QN(n23), .RN(
        reset) );
    DFC1 \w_reg[0][30]  ( .C(clk), .D(n1233), .Q(key_out[126]), .QN(n20), .RN(
        reset) );
    DFC1 \w_reg[0][31]  ( .C(clk), .D(n1234), .Q(key_out[127]), .QN(n17), .RN(
        reset) );
endmodule


module multiplier ( selEncDec, dc0_in, dc1_in, dc2_in, dc3_in, mulRes );
input  [7:0] dc0_in;
input  [7:0] dc1_in;
input  [7:0] dc2_in;
input  [7:0] dc3_in;
output [7:0] mulRes;
input  selEncDec;
    wire n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
        n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
        n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, 
        n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, 
        n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98;
    XOR40 U18 ( .A(n30), .B(n31), .C(n32), .D(n33), .Q(n29) );
    IMUX20 U19 ( .A(n34), .B(n35), .Q(mulRes[7]), .S(selEncDec) );
    IMUX20 U20 ( .A(n36), .B(n37), .Q(mulRes[6]), .S(selEncDec) );
    IMUX20 U21 ( .A(n38), .B(n39), .Q(mulRes[5]), .S(selEncDec) );
    IMUX20 U22 ( .A(n40), .B(n41), .Q(mulRes[4]), .S(selEncDec) );
    IMUX20 U23 ( .A(n42), .B(n43), .Q(mulRes[3]), .S(selEncDec) );
    IMUX20 U24 ( .A(n44), .B(n45), .Q(mulRes[2]), .S(selEncDec) );
    IMUX20 U25 ( .A(n46), .B(n47), .Q(mulRes[1]), .S(selEncDec) );
    IMUX20 U26 ( .A(n48), .B(n49), .Q(mulRes[0]), .S(selEncDec) );
    XOR40 U27 ( .A(dc2_in[5]), .B(dc3_in[4]), .C(dc0_in[5]), .D(dc0_in[6]), 
        .Q(n50) );
    XOR40 U28 ( .A(dc0_in[5]), .B(dc2_in[6]), .C(dc2_in[4]), .D(n52), .Q(n51)
         );
    XOR30 U29 ( .A(n54), .B(dc3_in[3]), .C(n55), .Q(n53) );
    XOR40 U30 ( .A(n57), .B(dc1_in[4]), .C(dc1_in[6]), .D(dc3_in[5]), .Q(n56)
         );
    XOR40 U31 ( .A(n59), .B(n60), .C(n61), .D(n56), .Q(n58) );
    XOR40 U32 ( .A(dc2_in[4]), .B(n63), .C(dc1_in[1]), .D(dc1_in[4]), .Q(n62)
         );
    XOR40 U33 ( .A(n30), .B(n65), .C(n55), .D(n66), .Q(n64) );
    XOR30 U34 ( .A(n52), .B(n68), .C(n69), .Q(n67) );
    XOR40 U35 ( .A(n70), .B(n60), .C(dc1_in[3]), .D(dc2_in[3]), .Q(n31) );
    XOR40 U36 ( .A(dc3_in[7]), .B(dc2_in[5]), .C(dc3_in[3]), .D(n72), .Q(n71)
         );
    XOR40 U37 ( .A(dc0_in[1]), .B(dc1_in[2]), .C(dc1_in[1]), .D(n74), .Q(n73)
         );
    XOR40 U38 ( .A(dc1_in[6]), .B(dc0_in[6]), .C(dc1_in[1]), .D(n76), .Q(n75)
         );
    IMUX20 U39 ( .A(n78), .B(dc2_in[0]), .Q(n77), .S(n32) );
    XNR20 U40 ( .A(dc1_in[6]), .B(dc1_in[7]), .Q(n74) );
    XOR40 U41 ( .A(n50), .B(n79), .C(dc3_in[7]), .D(dc2_in[7]), .Q(n35) );
    XOR40 U42 ( .A(dc2_in[7]), .B(n74), .C(dc0_in[6]), .D(dc3_in[7]), .Q(n34)
         );
    XNR20 U43 ( .A(dc1_in[6]), .B(n57), .Q(n52) );
    IMUX20 U44 ( .A(n80), .B(dc2_in[7]), .Q(n61), .S(dc2_in[3]) );
    XNR20 U45 ( .A(dc1_in[7]), .B(dc1_in[3]), .Q(n55) );
    IMUX20 U46 ( .A(n81), .B(dc0_in[7]), .Q(n66), .S(dc0_in[3]) );
    XNR20 U47 ( .A(dc0_in[4]), .B(n66), .Q(n82) );
    XNR20 U48 ( .A(dc3_in[6]), .B(dc3_in[7]), .Q(n54) );
    XOR40 U49 ( .A(n61), .B(n53), .C(n82), .D(n51), .Q(n37) );
    XOR40 U50 ( .A(n83), .B(n52), .C(dc0_in[5]), .D(dc3_in[6]), .Q(n36) );
    XNR20 U51 ( .A(dc1_in[7]), .B(dc1_in[2]), .Q(n60) );
    IMUX20 U52 ( .A(dc0_in[7]), .B(n81), .Q(n33), .S(dc0_in[2]) );
    XNR20 U53 ( .A(dc0_in[6]), .B(n33), .Q(n68) );
    XNR20 U54 ( .A(dc3_in[2]), .B(n54), .Q(n59) );
    AOI220 U55 ( .A(dc2_in[6]), .B(n80), .C(n83), .D(dc2_in[7]), .Q(n76) );
    XNR20 U56 ( .A(dc2_in[2]), .B(n76), .Q(n84) );
    IMUX20 U57 ( .A(n85), .B(dc2_in[5]), .Q(n69), .S(n84) );
    XOR40 U58 ( .A(n82), .B(n58), .C(n68), .D(n69), .Q(n39) );
    XOR40 U59 ( .A(dc1_in[5]), .B(n86), .C(dc1_in[4]), .D(dc0_in[4]), .Q(n38)
         );
    IMUX20 U60 ( .A(dc2_in[6]), .B(n83), .Q(n72), .S(dc2_in[1]) );
    XNR30 U61 ( .A(dc0_in[5]), .B(dc0_in[6]), .C(dc0_in[1]), .Q(n30) );
    XNR30 U62 ( .A(dc3_in[5]), .B(dc3_in[6]), .C(dc3_in[1]), .Q(n65) );
    XOR40 U63 ( .A(n62), .B(n64), .C(n72), .D(n67), .Q(n41) );
    XOR40 U64 ( .A(n63), .B(n87), .C(n55), .D(n66), .Q(n40) );
    IMUX20 U65 ( .A(dc2_in[7]), .B(n80), .Q(n88), .S(dc2_in[0]) );
    IMUX20 U66 ( .A(dc0_in[7]), .B(n81), .Q(n89), .S(dc0_in[0]) );
    XNR20 U67 ( .A(dc1_in[7]), .B(dc1_in[0]), .Q(n90) );
    IMUX20 U68 ( .A(dc1_in[5]), .B(n57), .Q(n32), .S(n90) );
    XNR20 U69 ( .A(dc3_in[5]), .B(dc3_in[0]), .Q(n70) );
    XOR40 U70 ( .A(n89), .B(n29), .C(n88), .D(n71), .Q(n43) );
    XOR40 U71 ( .A(dc3_in[3]), .B(n91), .C(n60), .D(n33), .Q(n42) );
    IMUX20 U72 ( .A(dc0_in[7]), .B(n81), .Q(n92), .S(dc0_in[6]) );
    XNR30 U73 ( .A(n59), .B(n84), .C(n93), .Q(n45) );
    XOR40 U74 ( .A(dc0_in[1]), .B(n94), .C(dc2_in[2]), .D(dc3_in[2]), .Q(n44)
         );
    AOI220 U75 ( .A(dc2_in[5]), .B(dc2_in[6]), .C(n85), .D(n83), .Q(n95) );
    XNR20 U76 ( .A(dc0_in[5]), .B(n92), .Q(n96) );
    XOR40 U77 ( .A(n75), .B(n97), .C(dc2_in[1]), .D(n65), .Q(n47) );
    XOR40 U78 ( .A(dc3_in[1]), .B(n98), .C(n89), .D(n90), .Q(n46) );
    XOR40 U79 ( .A(n70), .B(n77), .C(n96), .D(n95), .Q(n49) );
    XOR40 U80 ( .A(dc3_in[0]), .B(n90), .C(dc0_in[7]), .D(dc2_in[0]), .Q(n48)
         );
    XOR40 U81 ( .A(dc0_in[4]), .B(n74), .C(dc1_in[4]), .D(dc2_in[4]), .Q(n79)
         );
    IMUX20 U82 ( .A(dc2_in[5]), .B(n85), .Q(n86), .S(dc3_in[5]) );
    XNR20 U83 ( .A(dc1_in[4]), .B(dc2_in[4]), .Q(n87) );
    XNR20 U84 ( .A(dc1_in[3]), .B(dc2_in[3]), .Q(n91) );
    XNR20 U85 ( .A(dc1_in[1]), .B(dc1_in[2]), .Q(n94) );
    XOR40 U86 ( .A(n89), .B(n92), .C(n88), .D(n73), .Q(n93) );
    XNR20 U87 ( .A(dc1_in[1]), .B(dc2_in[1]), .Q(n98) );
    XOR40 U88 ( .A(n89), .B(n32), .C(n95), .D(n96), .Q(n97) );
    CLKIN0 U89 ( .A(dc1_in[5]), .Q(n57) );
    CLKIN0 U90 ( .A(dc2_in[6]), .Q(n83) );
    CLKIN0 U91 ( .A(dc3_in[4]), .Q(n63) );
    CLKIN0 U92 ( .A(dc2_in[7]), .Q(n80) );
    CLKIN0 U93 ( .A(dc0_in[7]), .Q(n81) );
    CLKIN0 U94 ( .A(dc2_in[5]), .Q(n85) );
    CLKIN0 U95 ( .A(dc2_in[0]), .Q(n78) );
endmodule


module dataCell ( clk, reset, selEncDec, control_A, control_B, control_C, 
    key_in, dc1_in, dc2_in, dc3_in, dataHor_in, dataVer_in, dataHor_out, 
    dataVer_out );
input  [7:0] key_in;
input  [7:0] dc1_in;
input  [7:0] dc2_in;
input  [7:0] dc3_in;
input  [7:0] dataHor_in;
input  [7:0] dataVer_in;
output [7:0] dataHor_out;
output [7:0] dataVer_out;
input  clk, reset, selEncDec, control_A, control_B, control_C;
    wire \not_dataVer_out[7] , \not_dataVer_out[6] , \not_dataVer_out[5] , \not_dataVer_out[4] ,
         \not_dataVer_out[3] , \not_dataVer_out[2] , \not_dataVer_out[1] , \not_dataVer_out[0] ,
	 \mulRes[7] , \mulRes[6] , \mulRes[5] , \mulRes[4] , 
         \mulRes[3] , \mulRes[2] , \mulRes[1] , \mulRes[0] , n11, n12, n13, n14, 
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, 
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, 
         n85, n86, n87;

    INV1 \inst_dataVer_out[7] (.A(\not_dataVer_out[7] ), .Q(dataVer_out[7]));
    INV1 \inst_dataVer_out[6] (.A(\not_dataVer_out[6] ), .Q(dataVer_out[6]));
    INV1 \inst_dataVer_out[5] (.A(\not_dataVer_out[5] ), .Q(dataVer_out[5]));
    INV1 \inst_dataVer_out[4] (.A(\not_dataVer_out[4] ), .Q(dataVer_out[4]));
    INV1 \inst_dataVer_out[3] (.A(\not_dataVer_out[3] ), .Q(dataVer_out[3]));
    INV1 \inst_dataVer_out[2] (.A(\not_dataVer_out[2] ), .Q(dataVer_out[2]));
    INV1 \inst_dataVer_out[1] (.A(\not_dataVer_out[1] ), .Q(dataVer_out[1]));
    INV1 \inst_dataVer_out[0] (.A(\not_dataVer_out[0] ), .Q(dataVer_out[0]));

    multiplier m0 ( .selEncDec(selEncDec), .dc0_in({dataHor_out[7] , 
        dataHor_out[6] , dataHor_out[5] , dataHor_out[4] , dataHor_out[3] , 
        dataHor_out[2] , dataHor_out[1] , dataHor_out[0] }), .dc1_in(dc1_in
        ), .dc2_in(dc2_in), .dc3_in(dc3_in), .mulRes({\mulRes[7] , \mulRes[6] , 
        \mulRes[5] , \mulRes[4] , \mulRes[3] , \mulRes[2] , \mulRes[1] , 
        \mulRes[0] }) );
    OAI2110 U2 ( .A(n11), .B(n12), .C(n13), .D(n14), .Q(n80) );
    OAI2110 U3 ( .A(n11), .B(n15), .C(n16), .D(n17), .Q(n81) );
    OAI2110 U4 ( .A(n11), .B(n18), .C(n19), .D(n20), .Q(n82) );
    OAI2110 U5 ( .A(n11), .B(n21), .C(n22), .D(n23), .Q(n83) );
    OAI2110 U6 ( .A(n11), .B(n24), .C(n25), .D(n26), .Q(n84) );
    OAI2110 U7 ( .A(n11), .B(n27), .C(n28), .D(n29), .Q(n85) );
    OAI2110 U8 ( .A(n11), .B(n30), .C(n31), .D(n32), .Q(n86) );
    OAI2110 U9 ( .A(n11), .B(n33), .C(n34), .D(n35), .Q(n87) );
    MUX21 U10 ( .A(dataHor_in[7]), .B(dataVer_in[7]), .Q(n36), .S(n37) );
    MUX21 U11 ( .A(dataHor_in[6]), .B(dataVer_in[6]), .Q(n38), .S(n37) );
    MUX21 U12 ( .A(dataHor_in[5]), .B(dataVer_in[5]), .Q(n39), .S(n37) );
    MUX21 U13 ( .A(dataHor_in[4]), .B(dataVer_in[4]), .Q(n40), .S(n37) );
    MUX21 U14 ( .A(dataHor_in[3]), .B(dataVer_in[3]), .Q(n41), .S(n37) );
    MUX21 U15 ( .A(dataHor_in[2]), .B(dataVer_in[2]), .Q(n42), .S(n37) );
    MUX21 U16 ( .A(dataHor_in[1]), .B(dataVer_in[1]), .Q(n43), .S(n37) );
    MUX21 U17 ( .A(dataHor_in[0]), .B(dataVer_in[0]), .Q(n44), .S(n37) );
    CLKIN0 U18 ( .A(control_B), .Q(n45) );
    CLKIN0 U19 ( .A(control_C), .Q(n46) );
    NOR20 U20 ( .A(n48), .B(n49), .Q(n47) );
    NOR20 U21 ( .A(n45), .B(control_C), .Q(n50) );
    NOR20 U22 ( .A(control_B), .B(control_C), .Q(n51) );
    CLKIN0 U23 ( .A(\mulRes[7] ), .Q(n52) );
    NAND20 U24 ( .A(n47), .B(control_A), .Q(n11) );
    NOR30 U25 ( .A(n45), .B(control_A), .C(n53), .Q(n48) );
    NOR20 U26 ( .A(n55), .B(control_A), .Q(n54) );
    NAND30 U27 ( .A(control_B), .B(control_A), .C(control_C), .Q(n56) );
    CLKIN0 U28 ( .A(\mulRes[6] ), .Q(n57) );
    CLKIN0 U29 ( .A(\mulRes[5] ), .Q(n58) );
    CLKIN0 U30 ( .A(\mulRes[4] ), .Q(n59) );
    CLKIN0 U31 ( .A(\mulRes[3] ), .Q(n60) );
    CLKIN0 U32 ( .A(\mulRes[2] ), .Q(n61) );
    CLKIN0 U33 ( .A(\mulRes[1] ), .Q(n62) );
    CLKIN0 U34 ( .A(\mulRes[0] ), .Q(n63) );
    XNR20 U35 ( .A(n64), .B(key_in[7]), .Q(n33) );
    XNR20 U36 ( .A(n65), .B(key_in[6]), .Q(n30) );
    XNR20 U37 ( .A(n66), .B(key_in[5]), .Q(n27) );
    XNR20 U38 ( .A(n67), .B(key_in[4]), .Q(n24) );
    XNR20 U39 ( .A(n68), .B(key_in[3]), .Q(n21) );
    XNR20 U40 ( .A(n69), .B(key_in[2]), .Q(n18) );
    XNR20 U41 ( .A(n70), .B(key_in[1]), .Q(n15) );
    XNR20 U42 ( .A(n71), .B(key_in[0]), .Q(n12) );
    AOI220 U43 ( .A(dataHor_out[7] ), .B(n50), .C(n51), .D(n36), .Q(n72) );
    AOI220 U44 ( .A(n54), .B(n36), .C(n49), .D(dataHor_out[7] ), .Q(n35) );
    AOI220 U45 ( .A(dataHor_out[6] ), .B(n50), .C(n51), .D(n38), .Q(n73) );
    AOI220 U46 ( .A(n54), .B(n38), .C(dataHor_out[6] ), .D(n49), .Q(n32) );
    AOI220 U47 ( .A(dataHor_out[5] ), .B(n50), .C(n51), .D(n39), .Q(n74) );
    AOI220 U48 ( .A(n54), .B(n39), .C(dataHor_out[5] ), .D(n49), .Q(n29) );
    AOI220 U49 ( .A(dataHor_out[4] ), .B(n50), .C(n51), .D(n40), .Q(n75) );
    AOI220 U50 ( .A(n54), .B(n40), .C(dataHor_out[4] ), .D(n49), .Q(n26) );
    AOI220 U51 ( .A(dataHor_out[3] ), .B(n50), .C(n51), .D(n41), .Q(n76) );
    AOI220 U52 ( .A(n54), .B(n41), .C(dataHor_out[3] ), .D(n49), .Q(n23) );
    AOI220 U53 ( .A(dataHor_out[2] ), .B(n50), .C(n51), .D(n42), .Q(n77) );
    AOI220 U54 ( .A(n54), .B(n42), .C(dataHor_out[2] ), .D(n49), .Q(n20) );
    AOI220 U55 ( .A(dataHor_out[1] ), .B(n50), .C(n51), .D(n43), .Q(n78) );
    AOI220 U56 ( .A(n54), .B(n43), .C(dataHor_out[1] ), .D(n49), .Q(n17) );
    AOI220 U57 ( .A(dataHor_out[0] ), .B(n50), .C(n51), .D(n44), .Q(n79) );
    AOI220 U58 ( .A(n54), .B(n44), .C(dataHor_out[0] ), .D(n49), .Q(n14) );
    NOR20 U59 ( .A(control_A), .B(control_C), .Q(n37) );
    OAI210 U60 ( .A(n46), .B(n52), .C(n72), .Q(n64) );
    NAND20 U61 ( .A(n48), .B(\mulRes[7] ), .Q(n34) );
    OAI210 U62 ( .A(n46), .B(n57), .C(n73), .Q(n65) );
    NAND20 U63 ( .A(\mulRes[6] ), .B(n48), .Q(n31) );
    OAI210 U64 ( .A(n46), .B(n58), .C(n74), .Q(n66) );
    NAND20 U65 ( .A(\mulRes[5] ), .B(n48), .Q(n28) );
    OAI210 U66 ( .A(n46), .B(n59), .C(n75), .Q(n67) );
    NAND20 U67 ( .A(\mulRes[4] ), .B(n48), .Q(n25) );
    OAI210 U68 ( .A(n46), .B(n60), .C(n76), .Q(n68) );
    NAND20 U69 ( .A(\mulRes[3] ), .B(n48), .Q(n22) );
    OAI210 U70 ( .A(n46), .B(n61), .C(n77), .Q(n69) );
    NAND20 U71 ( .A(\mulRes[2] ), .B(n48), .Q(n19) );
    OAI210 U72 ( .A(n46), .B(n62), .C(n78), .Q(n70) );
    NAND20 U73 ( .A(\mulRes[1] ), .B(n48), .Q(n16) );
    OAI210 U74 ( .A(n46), .B(n63), .C(n79), .Q(n71) );
    NAND20 U75 ( .A(\mulRes[0] ), .B(n48), .Q(n13) );
    CLKIN0 U76 ( .A(n47), .Q(n55) );
    CLKIN0 U77 ( .A(selEncDec), .Q(n53) );
    CLKIN0 U78 ( .A(n56), .Q(n49) );
    DFC1 \data_reg_reg[0]  ( .C(clk), .D(n80), .Q(dataHor_out[0] ), .QN(\not_dataVer_out[0] ), .RN(reset) );
    DFC1 \data_reg_reg[1]  ( .C(clk), .D(n81), .Q(dataHor_out[1] ), .QN(\not_dataVer_out[1] ), .RN(reset) );
    DFC1 \data_reg_reg[2]  ( .C(clk), .D(n82), .Q(dataHor_out[2] ), .QN(\not_dataVer_out[2] ), .RN(reset) );
    DFC1 \data_reg_reg[3]  ( .C(clk), .D(n83), .Q(dataHor_out[3] ), .QN(\not_dataVer_out[3] ), .RN(reset) );
    DFC1 \data_reg_reg[4]  ( .C(clk), .D(n84), .Q(dataHor_out[4] ), .QN(\not_dataVer_out[4] ), .RN(reset) );
    DFC3 \data_reg_reg[5]  ( .C(clk), .D(n85), .Q(dataHor_out[5] ), .QN(\not_dataVer_out[5] ), .RN(reset) );
    DFC3 \data_reg_reg[6]  ( .C(clk), .D(n86), .Q(dataHor_out[6] ), .QN(\not_dataVer_out[6] ), .RN(reset) );
    DFC3 \data_reg_reg[7]  ( .C(clk), .D(n87), .Q(dataHor_out[7] ), .QN(\not_dataVer_out[7] ), .RN(reset) );
endmodule




module map ( a_in, aHigh_out, aLow_out );
input  [7:0] a_in;
output [3:0] aHigh_out;
output [3:0] aLow_out;
    wire n1, n2, n3;
    XNR21 U1 ( .A(n3), .B(aLow_out[2]), .Q(aHigh_out[1]) );
    XOR31 U2 ( .A(n1), .B(a_in[3]), .C(n2), .Q(aHigh_out[2]) );
    XNR21 U3 ( .A(a_in[5]), .B(n3), .Q(aHigh_out[0]) );
    INV3 U4 ( .A(n2), .Q(aHigh_out[3]) );
    XNR20 U5 ( .A(a_in[4]), .B(n1), .Q(aLow_out[3]) );
    XNR20 U6 ( .A(a_in[1]), .B(n1), .Q(aLow_out[1]) );
    XOR20 U7 ( .A(aHigh_out[0]), .B(a_in[0]), .Q(aLow_out[0]) );
    CLKIN0 U8 ( .A(a_in[2]), .Q(n1) );
    XOR20 U9 ( .A(a_in[1]), .B(a_in[7]), .Q(aLow_out[2]) );
    XNR20 U10 ( .A(a_in[4]), .B(a_in[6]), .Q(n3) );
    XNR20 U11 ( .A(a_in[5]), .B(a_in[7]), .Q(n2) );
endmodule


module mapInv ( aHigh_in, aLow_in, a_out );
input  [3:0] aHigh_in;
input  [3:0] aLow_in;
output [7:0] a_out;
    wire n1, n2, n3, n4;
    XOR20 U1 ( .A(aHigh_in[3]), .B(a_out[5]), .Q(a_out[7]) );
    XOR40 U2 ( .A(aLow_in[2]), .B(aLow_in[3]), .C(n1), .D(n2), .Q(a_out[6]) );
    XNR20 U3 ( .A(n3), .B(aLow_in[3]), .Q(a_out[4]) );
    XNR30 U4 ( .A(aLow_in[1]), .B(aHigh_in[2]), .C(n4), .Q(a_out[3]) );
    XNR20 U5 ( .A(n4), .B(aHigh_in[3]), .Q(a_out[1]) );
    XNR20 U6 ( .A(n1), .B(aLow_in[0]), .Q(a_out[0]) );
    CLKIN0 U7 ( .A(aHigh_in[0]), .Q(n1) );
    XNR20 U8 ( .A(aHigh_in[0]), .B(aHigh_in[1]), .Q(n4) );
    XNR20 U9 ( .A(aLow_in[2]), .B(n4), .Q(a_out[5]) );
    XNR20 U10 ( .A(aHigh_in[3]), .B(aLow_in[1]), .Q(n2) );
    XNR20 U11 ( .A(n4), .B(n2), .Q(n3) );
    CLKIN0 U12 ( .A(n3), .Q(a_out[2]) );
endmodule


module GF256Inv ( clk, reset, a_in, a_out );
input  [7:0] a_in;
output [7:0] a_out;
input  clk, reset;
    wire \aHigh[3] , \aHigh[2] , \aHigh[1] , \aHigh[0] , \aLow[3] , \aLow[2] , 
        \aLow[1] , \aLow[0] , \net1[3] , \net1[2] , \net1[1] , \net1[0] , 
        \bank1[3] , \bank1[2] , \bank1[1] , \bank1[0] , \bank0[3] , \bank0[2] , 
        \bank0[1] , \bank0[0] , \aHighRes[3] , \aHighRes[2] , \aHighRes[1] , 
        \aHighRes[0] , \bank2[3] , \bank2[2] , \bank2[1] , \bank2[0] , 
        \aLowRes[3] , \aLowRes[2] , \aLowRes[1] , \aLowRes[0] , N151, N152, 
        N153, N154, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
        n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
        n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, 
        n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, 
        n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, 
        n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, 
        n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
        n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
        n110, n111, n112, n113, n114;
    map mapGF16 ( .a_in(a_in), .aHigh_out({\aHigh[3] , \aHigh[2] , 
        \aHigh[1] , \aHigh[0] }), .aLow_out({\aLow[3] , \aLow[2] , \aLow[1] , 
        \aLow[0] }) );
    mapInv mapGF16inv ( .aHigh_in({\aHighRes[3] , \aHighRes[2] , 
        \aHighRes[1] , \aHighRes[0] }), .aLow_in({\aLowRes[3] , \aLowRes[2] , 
        \aLowRes[1] , \aLowRes[0] }), .a_out(a_out) );
    NOR20 U3 ( .A(n14), .B(n15), .Q(n13) );
    NOR20 U4 ( .A(n17), .B(n15), .Q(n16) );
    NOR20 U5 ( .A(n14), .B(n19), .Q(n18) );
    NOR20 U6 ( .A(n21), .B(n19), .Q(n20) );
    NAND20 U7 ( .A(n23), .B(\aLow[3] ), .Q(n22) );
    NOR20 U8 ( .A(n25), .B(n21), .Q(n24) );
    NAND20 U9 ( .A(\aHigh[2] ), .B(\aLow[0] ), .Q(n26) );
    NOR20 U10 ( .A(n28), .B(n5), .Q(n27) );
    NOR20 U11 ( .A(n30), .B(n6), .Q(n29) );
    NOR20 U12 ( .A(n30), .B(n7), .Q(n31) );
    NOR20 U13 ( .A(n33), .B(n34), .Q(n32) );
    NOR20 U14 ( .A(n28), .B(n7), .Q(n35) );
    NOR20 U15 ( .A(n30), .B(n34), .Q(n36) );
    NOR20 U16 ( .A(n28), .B(n11), .Q(n37) );
    NOR20 U17 ( .A(n30), .B(n5), .Q(n38) );
    NOR20 U18 ( .A(n28), .B(n8), .Q(n39) );
    NOR20 U19 ( .A(n30), .B(n9), .Q(n40) );
    NOR20 U20 ( .A(n30), .B(n10), .Q(n41) );
    NOR20 U21 ( .A(n33), .B(n43), .Q(n42) );
    NOR20 U22 ( .A(n28), .B(n10), .Q(n44) );
    NOR20 U23 ( .A(n30), .B(n43), .Q(n45) );
    NOR20 U24 ( .A(n28), .B(n12), .Q(n46) );
    NOR20 U25 ( .A(n30), .B(n8), .Q(n47) );
    IMUX20 U26 ( .A(n48), .B(\aHigh[0] ), .Q(n23), .S(\aHigh[3] ) );
    XNR20 U27 ( .A(\aHigh[2] ), .B(\aHigh[3] ), .Q(n14) );
    IMUX20 U28 ( .A(\aHigh[1] ), .B(n21), .Q(n17), .S(\aHigh[2] ) );
    AOI220 U29 ( .A(\bank2[3] ), .B(n11), .C(n5), .D(\bank2[0] ), .Q(n34) );
    AOI220 U30 ( .A(\bank2[2] ), .B(\bank2[3] ), .C(n6), .D(n5), .Q(n49) );
    AOI220 U31 ( .A(\bank0[3] ), .B(n12), .C(n8), .D(\bank0[0] ), .Q(n43) );
    AOI220 U32 ( .A(\bank0[2] ), .B(\bank0[3] ), .C(n9), .D(n8), .Q(n50) );
    CLKIN0 U33 ( .A(\aLow[3] ), .Q(n15) );
    CLKIN0 U34 ( .A(\aLow[1] ), .Q(n25) );
    CLKIN0 U35 ( .A(\aHigh[1] ), .Q(n21) );
    CLKIN0 U36 ( .A(\aHigh[0] ), .Q(n48) );
    CLKIN0 U37 ( .A(\aLow[2] ), .Q(n19) );
    NAND20 U38 ( .A(\bank1[1] ), .B(n4), .Q(n51) );
    NAND20 U39 ( .A(\bank1[3] ), .B(n2), .Q(n52) );
    NAND20 U40 ( .A(\bank1[2] ), .B(n3), .Q(n53) );
    AOI2110 U41 ( .A(n55), .B(n56), .C(n57), .D(n58), .Q(n54) );
    AOI2110 U42 ( .A(\bank1[1] ), .B(n60), .C(n61), .D(n62), .Q(n59) );
    NAND30 U43 ( .A(\bank1[3] ), .B(\bank1[0] ), .C(\bank1[2] ), .Q(n63) );
    XOR40 U44 ( .A(n20), .B(n64), .C(n65), .D(n66), .Q(\net1[3] ) );
    XOR40 U45 ( .A(n67), .B(n68), .C(n69), .D(n66), .Q(\net1[2] ) );
    XOR40 U46 ( .A(n18), .B(n70), .C(n71), .D(n72), .Q(\net1[1] ) );
    XOR40 U47 ( .A(\aLow[0] ), .B(n73), .C(n74), .D(n75), .Q(\net1[0] ) );
    XOR40 U48 ( .A(n27), .B(n29), .C(n76), .D(n77), .Q(\aLowRes[3] ) );
    XOR40 U49 ( .A(n31), .B(n32), .C(n78), .D(n79), .Q(\aLowRes[2] ) );
    AOI220 U50 ( .A(n6), .B(n7), .C(\bank2[2] ), .D(\bank2[1] ), .Q(n80) );
    XOR40 U51 ( .A(n35), .B(n36), .C(n81), .D(n82), .Q(\aLowRes[1] ) );
    XOR40 U52 ( .A(n37), .B(n38), .C(n83), .D(n84), .Q(\aLowRes[0] ) );
    XOR40 U53 ( .A(n39), .B(n40), .C(n85), .D(n86), .Q(\aHighRes[3] ) );
    XOR40 U54 ( .A(n41), .B(n42), .C(n87), .D(n88), .Q(\aHighRes[2] ) );
    AOI220 U55 ( .A(n9), .B(n10), .C(\bank0[2] ), .D(\bank0[1] ), .Q(n89) );
    XOR40 U56 ( .A(n44), .B(n45), .C(n90), .D(n91), .Q(\aHighRes[1] ) );
    XOR40 U57 ( .A(n46), .B(n47), .C(n92), .D(n93), .Q(\aHighRes[0] ) );
    IMUX20 U58 ( .A(n48), .B(\aHigh[0] ), .Q(N154), .S(\aLow[0] ) );
    AOI220 U59 ( .A(n25), .B(n21), .C(\aLow[1] ), .D(\aHigh[1] ), .Q(N153) );
    IMUX20 U60 ( .A(n19), .B(\aLow[2] ), .Q(N152), .S(\aHigh[2] ) );
    IMUX20 U61 ( .A(n15), .B(\aLow[3] ), .Q(N151), .S(\aHigh[3] ) );
    NOR20 U62 ( .A(\bank1[3] ), .B(\bank1[1] ), .Q(n94) );
    XOR40 U63 ( .A(\aHigh[3] ), .B(\aLow[3] ), .C(n95), .D(n22), .Q(n65) );
    XOR40 U64 ( .A(n13), .B(n24), .C(\aLow[1] ), .D(\aLow[3] ), .Q(n68) );
    XOR30 U65 ( .A(\aHigh[0] ), .B(\aLow[2] ), .C(n16), .Q(n70) );
    XOR40 U66 ( .A(n96), .B(\aLow[2] ), .C(n97), .D(n14), .Q(n73) );
    NOR20 U67 ( .A(\bank1[0] ), .B(\bank1[3] ), .Q(n56) );
    NOR20 U68 ( .A(n99), .B(n100), .Q(n98) );
    OAI310 U69 ( .A(\bank1[1] ), .B(\bank1[2] ), .C(n3), .D(n59), .Q(n101) );
    NOR30 U70 ( .A(n57), .B(n103), .C(n99), .Q(n102) );
    NOR30 U71 ( .A(n61), .B(n103), .C(n105), .Q(n104) );
    OAI2110 U72 ( .A(n1), .B(n63), .C(n54), .D(n104), .Q(n106) );
    OAI2110 U73 ( .A(\bank1[1] ), .B(n63), .C(n59), .D(n102), .Q(n107) );
    CLKIN0 U74 ( .A(n107), .Q(n33) );
    NOR40 U75 ( .A(n100), .B(n105), .C(n58), .D(n101), .Q(n30) );
    NAND40 U76 ( .A(n109), .B(n54), .C(n98), .D(n110), .Q(n108) );
    CLKIN0 U77 ( .A(n108), .Q(n28) );
    NAND20 U78 ( .A(n49), .B(n106), .Q(n78) );
    NAND20 U79 ( .A(n80), .B(n106), .Q(n81) );
    NAND20 U80 ( .A(n49), .B(n107), .Q(n82) );
    NAND20 U81 ( .A(n50), .B(n106), .Q(n87) );
    NAND20 U82 ( .A(n89), .B(n106), .Q(n90) );
    NAND20 U83 ( .A(n50), .B(n107), .Q(n91) );
    NOR20 U84 ( .A(n52), .B(n51), .Q(n103) );
    NOR20 U85 ( .A(n52), .B(\bank1[1] ), .Q(n105) );
    NOR30 U86 ( .A(n2), .B(n51), .C(n3), .Q(n99) );
    NOR30 U87 ( .A(n52), .B(n1), .C(n4), .Q(n100) );
    NOR30 U88 ( .A(\bank1[1] ), .B(\bank1[2] ), .C(n52), .Q(n62) );
    NOR30 U89 ( .A(n2), .B(\bank1[1] ), .C(n53), .Q(n58) );
    NOR30 U90 ( .A(\bank1[1] ), .B(\bank1[0] ), .C(n53), .Q(n57) );
    NOR30 U91 ( .A(n51), .B(\bank1[3] ), .C(n2), .Q(n61) );
    CLKIN0 U92 ( .A(n53), .Q(n60) );
    NAND20 U93 ( .A(\aLow[1] ), .B(\aHigh[2] ), .Q(n95) );
    NAND20 U94 ( .A(\aLow[0] ), .B(\aHigh[3] ), .Q(n64) );
    NAND20 U95 ( .A(\aLow[2] ), .B(n23), .Q(n69) );
    NAND20 U96 ( .A(\aLow[1] ), .B(n23), .Q(n71) );
    NAND20 U97 ( .A(\aHigh[1] ), .B(\aLow[0] ), .Q(n72) );
    NAND20 U98 ( .A(\aLow[1] ), .B(\aHigh[3] ), .Q(n97) );
    NAND20 U99 ( .A(\aHigh[0] ), .B(\aLow[0] ), .Q(n74) );
    NAND20 U100 ( .A(\aLow[2] ), .B(\aHigh[2] ), .Q(n111) );
    NAND20 U101 ( .A(\aHigh[1] ), .B(\aLow[3] ), .Q(n112) );
    NAND20 U102 ( .A(\bank2[1] ), .B(n107), .Q(n76) );
    NAND20 U103 ( .A(n113), .B(n106), .Q(n77) );
    NAND20 U104 ( .A(\bank2[2] ), .B(n108), .Q(n79) );
    NAND20 U105 ( .A(\bank2[2] ), .B(n107), .Q(n83) );
    NAND20 U106 ( .A(\bank2[1] ), .B(n106), .Q(n84) );
    NAND20 U107 ( .A(\bank0[1] ), .B(n107), .Q(n85) );
    NAND20 U108 ( .A(n114), .B(n106), .Q(n86) );
    NAND20 U109 ( .A(\bank0[2] ), .B(n108), .Q(n88) );
    NAND20 U110 ( .A(\bank0[2] ), .B(n107), .Q(n92) );
    NAND20 U111 ( .A(\bank0[1] ), .B(n106), .Q(n93) );
    IMUX20 U112 ( .A(n21), .B(\aHigh[1] ), .Q(n96), .S(\aHigh[3] ) );
    IMUX20 U113 ( .A(\aHigh[0] ), .B(n48), .Q(n66), .S(n96) );
    CLKIN0 U114 ( .A(n34), .Q(n113) );
    CLKIN0 U115 ( .A(n43), .Q(n114) );
    IMUX20 U116 ( .A(n60), .B(n94), .Q(n109), .S(\bank1[0] ) );
    XNR20 U117 ( .A(n111), .B(n112), .Q(n75) );
    CLKIN0 U118 ( .A(n51), .Q(n55) );
    CLKIN0 U119 ( .A(n62), .Q(n110) );
    CLKIN0 U120 ( .A(n26), .Q(n67) );
    DFC3 \bank2_reg[0]  ( .C(clk), .D(N154), .Q(\bank2[0] ), .QN(n11), .RN(
        reset) );
    DFC3 \bank2_reg[1]  ( .C(clk), .D(N153), .Q(\bank2[1] ), .QN(n7), .RN(
        reset) );
    DFC3 \bank2_reg[2]  ( .C(clk), .D(N152), .Q(\bank2[2] ), .QN(n6), .RN(
        reset) );
    DFC3 \bank2_reg[3]  ( .C(clk), .D(N151), .Q(\bank2[3] ), .QN(n5), .RN(
        reset) );
    DFC3 \bank1_reg[0]  ( .C(clk), .D(\net1[0] ), .Q(\bank1[0] ), .QN(n2), 
        .RN(reset) );
    DFC3 \bank1_reg[1]  ( .C(clk), .D(\net1[1] ), .Q(\bank1[1] ), .QN(n1), 
        .RN(reset) );
    DFC3 \bank1_reg[2]  ( .C(clk), .D(\net1[2] ), .Q(\bank1[2] ), .QN(n4), 
        .RN(reset) );
    DFC3 \bank1_reg[3]  ( .C(clk), .D(\net1[3] ), .Q(\bank1[3] ), .QN(n3), 
        .RN(reset) );
    DFC3 \bank0_reg[0]  ( .C(clk), .D(\aHigh[0] ), .Q(\bank0[0] ), .QN(n12), 
        .RN(reset) );
    DFC3 \bank0_reg[1]  ( .C(clk), .D(\aHigh[1] ), .Q(\bank0[1] ), .QN(n10), 
        .RN(reset) );
    DFC3 \bank0_reg[2]  ( .C(clk), .D(\aHigh[2] ), .Q(\bank0[2] ), .QN(n9), 
        .RN(reset) );
    DFC3 \bank0_reg[3]  ( .C(clk), .D(\aHigh[3] ), .Q(\bank0[3] ), .QN(n8), 
        .RN(reset) );
endmodule


module affTrans ( a_in, a_out );
input  [7:0] a_in;
output [7:0] a_out;
    wire n1, n2, n3, n4, n5, n6, n7, n8;
    XOR20 U1 ( .A(a_in[6]), .B(n1), .Q(a_out[6]) );
    XOR20 U2 ( .A(a_in[1]), .B(n1), .Q(a_out[5]) );
    XOR20 U3 ( .A(a_in[5]), .B(n2), .Q(a_out[1]) );
    XOR20 U4 ( .A(a_in[0]), .B(n3), .Q(a_out[0]) );
    XNR20 U5 ( .A(n3), .B(a_in[3]), .Q(a_out[7]) );
    XNR20 U6 ( .A(n4), .B(a_in[4]), .Q(a_out[4]) );
    XNR20 U7 ( .A(n4), .B(a_in[7]), .Q(a_out[3]) );
    XNR20 U8 ( .A(n2), .B(a_in[2]), .Q(a_out[2]) );
    XNR20 U9 ( .A(a_in[4]), .B(a_in[5]), .Q(n5) );
    XNR20 U10 ( .A(a_in[6]), .B(a_in[7]), .Q(n6) );
    XNR20 U11 ( .A(n5), .B(n6), .Q(n3) );
    XNR20 U12 ( .A(a_in[3]), .B(a_in[2]), .Q(n7) );
    XNR20 U13 ( .A(n5), .B(n7), .Q(n1) );
    XNR20 U14 ( .A(a_in[1]), .B(a_in[0]), .Q(n8) );
    XNR20 U15 ( .A(n7), .B(n8), .Q(n4) );
    XNR20 U16 ( .A(n6), .B(n8), .Q(n2) );
endmodule


module affTransInv ( a_in, a_out );
input  [7:0] a_in;
output [7:0] a_out;
    wire n1, n2, n3, n4;
    XOR20 U1 ( .A(a_in[7]), .B(n1), .Q(a_out[2]) );
    XOR20 U2 ( .A(a_in[5]), .B(n2), .Q(a_out[0]) );
    XNR20 U3 ( .A(n1), .B(a_in[6]), .Q(a_out[7]) );
    XNR20 U4 ( .A(n3), .B(a_in[3]), .Q(a_out[6]) );
    XNR20 U5 ( .A(n2), .B(a_in[4]), .Q(a_out[5]) );
    XNR20 U6 ( .A(n4), .B(a_in[1]), .Q(a_out[4]) );
    XNR20 U7 ( .A(n3), .B(a_in[2]), .Q(a_out[3]) );
    XNR20 U8 ( .A(n4), .B(a_in[0]), .Q(a_out[1]) );
    XNR20 U9 ( .A(a_in[4]), .B(a_in[1]), .Q(n1) );
    XNR20 U10 ( .A(a_in[0]), .B(a_in[5]), .Q(n3) );
    XNR20 U11 ( .A(a_in[2]), .B(a_in[7]), .Q(n2) );
    XNR20 U12 ( .A(a_in[6]), .B(a_in[3]), .Q(n4) );
endmodule


module sbox ( clk, reset, selEncDec, a_in, a_out );
input  [7:0] a_in;
output [7:0] a_out;
input  clk, reset, selEncDec;
    wire \GF256_in[7] , \GF256_in[6] , \GF256_in[5] , \GF256_in[4] , 
        \GF256_in[3] , \GF256_in[2] , \GF256_in[1] , \GF256_in[0] , 
        \GF256_out[7] , \GF256_out[6] , \GF256_out[5] , \GF256_out[4] , 
        \GF256_out[3] , \GF256_out[2] , \GF256_out[1] , \GF256_out[0] , 
        \aff_out[7] , \aff_out[6] , \aff_out[5] , \aff_out[4] , \aff_out[3] , 
        \aff_out[2] , \aff_out[1] , \aff_out[0] , \affInv_out[7] , 
        \affInv_out[6] , \affInv_out[5] , \affInv_out[4] , \affInv_out[3] , 
        \affInv_out[2] , \affInv_out[1] , \affInv_out[0] ;
    GF256Inv GF256 ( .clk(clk), .reset(reset), .a_in({\GF256_in[7] , 
        \GF256_in[6] , \GF256_in[5] , \GF256_in[4] , \GF256_in[3] , 
        \GF256_in[2] , \GF256_in[1] , \GF256_in[0] }), .a_out({\GF256_out[7] , 
        \GF256_out[6] , \GF256_out[5] , \GF256_out[4] , \GF256_out[3] , 
        \GF256_out[2] , \GF256_out[1] , \GF256_out[0] }) );
    affTrans aff ( .a_in({\GF256_out[7] , \GF256_out[6] , \GF256_out[5] , 
        \GF256_out[4] , \GF256_out[3] , \GF256_out[2] , \GF256_out[1] , 
        \GF256_out[0] }), .a_out({\aff_out[7] , \aff_out[6] , \aff_out[5] , 
        \aff_out[4] , \aff_out[3] , \aff_out[2] , \aff_out[1] , \aff_out[0] })
         );
    affTransInv affInv ( .a_in(a_in), .a_out({\affInv_out[7] , 
        \affInv_out[6] , \affInv_out[5] , \affInv_out[4] , \affInv_out[3] , 
        \affInv_out[2] , \affInv_out[1] , \affInv_out[0] }) );
    MUX21 U5 ( .A(\aff_out[7] ), .B(\GF256_out[7] ), .Q(a_out[7]), .S(
        selEncDec) );
    MUX21 U6 ( .A(\aff_out[6] ), .B(\GF256_out[6] ), .Q(a_out[6]), .S(
        selEncDec) );
    MUX21 U7 ( .A(\aff_out[5] ), .B(\GF256_out[5] ), .Q(a_out[5]), .S(
        selEncDec) );
    MUX21 U8 ( .A(\aff_out[4] ), .B(\GF256_out[4] ), .Q(a_out[4]), .S(
        selEncDec) );
    MUX21 U9 ( .A(\aff_out[3] ), .B(\GF256_out[3] ), .Q(a_out[3]), .S(
        selEncDec) );
    MUX21 U10 ( .A(\aff_out[2] ), .B(\GF256_out[2] ), .Q(a_out[2]), .S(
        selEncDec) );
    MUX21 U11 ( .A(\aff_out[1] ), .B(\GF256_out[1] ), .Q(a_out[1]), .S(
        selEncDec) );
    MUX21 U12 ( .A(\aff_out[0] ), .B(\GF256_out[0] ), .Q(a_out[0]), .S(
        selEncDec) );
    MUX21 U13 ( .A(a_in[7]), .B(\affInv_out[7] ), .Q(\GF256_in[7] ), .S(
        selEncDec) );
    MUX21 U14 ( .A(a_in[6]), .B(\affInv_out[6] ), .Q(\GF256_in[6] ), .S(
        selEncDec) );
    MUX21 U15 ( .A(a_in[5]), .B(\affInv_out[5] ), .Q(\GF256_in[5] ), .S(
        selEncDec) );
    MUX21 U16 ( .A(a_in[4]), .B(\affInv_out[4] ), .Q(\GF256_in[4] ), .S(
        selEncDec) );
    MUX21 U17 ( .A(a_in[3]), .B(\affInv_out[3] ), .Q(\GF256_in[3] ), .S(
        selEncDec) );
    MUX21 U18 ( .A(a_in[2]), .B(\affInv_out[2] ), .Q(\GF256_in[2] ), .S(
        selEncDec) );
    MUX21 U19 ( .A(a_in[1]), .B(\affInv_out[1] ), .Q(\GF256_in[1] ), .S(
        selEncDec) );
    MUX21 U20 ( .A(a_in[0]), .B(\affInv_out[0] ), .Q(\GF256_in[0] ), .S(
        selEncDec) );
endmodule


module dataUnit ( clk, reset, selEncDec, control_A, control_B, control_C, 
    selectSbox_in, selectBar, key_in, data_in, data_out, sboxInp, sboxOutp );
input  [1:0] selectBar;
input  [127:0] key_in;
input  [31:0] data_in;
output [31:0] data_out;
input  [31:0] sboxInp;
output [31:0] sboxOutp;
input  clk, reset, selEncDec, control_A, control_B, control_C, selectSbox_in;
    wire \dataOutHor01[7] , \dataOutHor01[6] , \dataOutHor01[5] , 
        \dataOutHor01[4] , \dataOutHor01[3] , \dataOutHor01[2] , 
        \dataOutHor01[1] , \dataOutHor01[0] , \dataOutHor11[7] , 
        \dataOutHor11[6] , \dataOutHor11[5] , \dataOutHor11[4] , 
        \dataOutHor11[3] , \dataOutHor11[2] , \dataOutHor11[1] , 
        \dataOutHor11[0] , \barrel0_out[7] , \barrel0_out[6] , 
        \barrel0_out[5] , \barrel0_out[4] , \barrel0_out[3] , \barrel0_out[2] , 
        \barrel0_out[1] , \barrel0_out[0] , \dataOutVer10[7] , 
        \dataOutVer10[6] , \dataOutVer10[5] , \dataOutVer10[4] , 
        \dataOutVer10[3] , \dataOutVer10[2] , \dataOutVer10[1] , 
        \dataOutVer10[0] , \dataOutHor21[7] , \dataOutHor21[6] , 
        \dataOutHor21[5] , \dataOutHor21[4] , \dataOutHor21[3] , 
        \dataOutHor21[2] , \dataOutHor21[1] , \dataOutHor21[0] , 
        \dataOutVer20[7] , \dataOutVer20[6] , \dataOutVer20[5] , 
        \dataOutVer20[4] , \dataOutVer20[3] , \dataOutVer20[2] , 
        \dataOutVer20[1] , \dataOutVer20[0] , \dataOutHor31[7] , 
        \dataOutHor31[6] , \dataOutHor31[5] , \dataOutHor31[4] , 
        \dataOutHor31[3] , \dataOutHor31[2] , \dataOutHor31[1] , 
        \dataOutHor31[0] , \dataOutHor02[7] , \dataOutHor02[6] , 
        \dataOutHor02[5] , \dataOutHor02[4] , \dataOutHor02[3] , 
        \dataOutHor02[2] , \dataOutHor02[1] , \dataOutHor02[0] , 
        \dataOutHor12[7] , \dataOutHor12[6] , \dataOutHor12[5] , 
        \dataOutHor12[4] , \dataOutHor12[3] , \dataOutHor12[2] , 
        \dataOutHor12[1] , \dataOutHor12[0] , \barrel1_out[7] , 
        \barrel1_out[6] , \barrel1_out[5] , \barrel1_out[4] , \barrel1_out[3] , 
        \barrel1_out[2] , \barrel1_out[1] , \barrel1_out[0] , 
        \dataOutVer11[7] , \dataOutVer11[6] , \dataOutVer11[5] , 
        \dataOutVer11[4] , \dataOutVer11[3] , \dataOutVer11[2] , 
        \dataOutVer11[1] , \dataOutVer11[0] , \dataOutHor22[7] , 
        \dataOutHor22[6] , \dataOutHor22[5] , \dataOutHor22[4] , 
        \dataOutHor22[3] , \dataOutHor22[2] , \dataOutHor22[1] , 
        \dataOutHor22[0] , \dataOutVer21[7] , \dataOutVer21[6] , 
        \dataOutVer21[5] , \dataOutVer21[4] , \dataOutVer21[3] , 
        \dataOutVer21[2] , \dataOutVer21[1] , \dataOutVer21[0] , 
        \dataOutHor32[7] , \dataOutHor32[6] , \dataOutHor32[5] , 
        \dataOutHor32[4] , \dataOutHor32[3] , \dataOutHor32[2] , 
        \dataOutHor32[1] , \dataOutHor32[0] , \dataOutHor03[7] , 
        \dataOutHor03[6] , \dataOutHor03[5] , \dataOutHor03[4] , 
        \dataOutHor03[3] , \dataOutHor03[2] , \dataOutHor03[1] , 
        \dataOutHor03[0] , \dataOutHor13[7] , \dataOutHor13[6] , 
        \dataOutHor13[5] , \dataOutHor13[4] , \dataOutHor13[3] , 
        \dataOutHor13[2] , \dataOutHor13[1] , \dataOutHor13[0] , 
        \barrel2_out[7] , \barrel2_out[6] , \barrel2_out[5] , \barrel2_out[4] , 
        \barrel2_out[3] , \barrel2_out[2] , \barrel2_out[1] , \barrel2_out[0] , 
        \dataOutVer12[7] , \dataOutVer12[6] , \dataOutVer12[5] , 
        \dataOutVer12[4] , \dataOutVer12[3] , \dataOutVer12[2] , 
        \dataOutVer12[1] , \dataOutVer12[0] , \dataOutHor23[7] , 
        \dataOutHor23[6] , \dataOutHor23[5] , \dataOutHor23[4] , 
        \dataOutHor23[3] , \dataOutHor23[2] , \dataOutHor23[1] , 
        \dataOutHor23[0] , \dataOutVer22[7] , \dataOutVer22[6] , 
        \dataOutVer22[5] , \dataOutVer22[4] , \dataOutVer22[3] , 
        \dataOutVer22[2] , \dataOutVer22[1] , \dataOutVer22[0] , 
        \dataOutHor33[7] , \dataOutHor33[6] , \dataOutHor33[5] , 
        \dataOutHor33[4] , \dataOutHor33[3] , \dataOutHor33[2] , 
        \dataOutHor33[1] , \dataOutHor33[0] , \barrel3_out[7] , 
        \barrel3_out[6] , \barrel3_out[5] , \barrel3_out[4] , \barrel3_out[3] , 
        \barrel3_out[2] , \barrel3_out[1] , \barrel3_out[0] , 
        \dataOutVer13[7] , \dataOutVer13[6] , \dataOutVer13[5] , 
        \dataOutVer13[4] , \dataOutVer13[3] , \dataOutVer13[2] , 
        \dataOutVer13[1] , \dataOutVer13[0] , \dataOutVer23[7] , 
        \dataOutVer23[6] , \dataOutVer23[5] , \dataOutVer23[4] , 
        \dataOutVer23[3] , \dataOutVer23[2] , \dataOutVer23[1] , 
        \dataOutVer23[0] , \s0_in[7] , \s0_in[6] , \s0_in[5] , \s0_in[4] , 
        \s0_in[3] , \s0_in[2] , \s0_in[1] , \s0_in[0] , \s1_in[7] , \s1_in[6] , 
        \s1_in[5] , \s1_in[4] , \s1_in[3] , \s1_in[2] , \s1_in[1] , \s1_in[0] , 
        \s2_in[7] , \s2_in[6] , \s2_in[5] , \s2_in[4] , \s2_in[3] , \s2_in[2] , 
        \s2_in[1] , \s2_in[0] , \s3_in[7] , \s3_in[6] , \s3_in[5] , \s3_in[4] , 
        \s3_in[3] , \s3_in[2] , \s3_in[1] , \s3_in[0] , sboxCntrl, n39, n40, 
        n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, 
        n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
        n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
        n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
        n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
        n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
        n133, n134, n135, n136, n137, n138, n139, n140, n141, n142;
    dataCell c00 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[127:120]), .dc1_in(data_out[23:16]), .dc2_in(data_out
        [15:8]), .dc3_in(data_out[7:0]), .dataHor_in({\dataOutHor01[7] , 
        \dataOutHor01[6] , \dataOutHor01[5] , \dataOutHor01[4] , 
        \dataOutHor01[3] , \dataOutHor01[2] , \dataOutHor01[1] , 
        \dataOutHor01[0] }), .dataVer_in(sboxOutp[7:0]), .dataHor_out(data_out
        [31:24]) );
    dataCell c10 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[119:112]), .dc1_in(data_out[15:8]), .dc2_in(data_out
        [7:0]), .dc3_in(data_out[31:24]), .dataHor_in({\dataOutHor11[7] , 
        \dataOutHor11[6] , \dataOutHor11[5] , \dataOutHor11[4] , 
        \dataOutHor11[3] , \dataOutHor11[2] , \dataOutHor11[1] , 
        \dataOutHor11[0] }), .dataVer_in({\barrel0_out[7] , \barrel0_out[6] , 
        \barrel0_out[5] , \barrel0_out[4] , \barrel0_out[3] , \barrel0_out[2] , 
        \barrel0_out[1] , \barrel0_out[0] }), .dataHor_out(data_out[23:16]), 
        .dataVer_out({\dataOutVer10[7] , \dataOutVer10[6] , \dataOutVer10[5] , 
        \dataOutVer10[4] , \dataOutVer10[3] , \dataOutVer10[2] , 
        \dataOutVer10[1] , \dataOutVer10[0] }) );
    dataCell c20 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[111:104]), .dc1_in(data_out[7:0]), .dc2_in(data_out
        [31:24]), .dc3_in(data_out[23:16]), .dataHor_in({\dataOutHor21[7] , 
        \dataOutHor21[6] , \dataOutHor21[5] , \dataOutHor21[4] , 
        \dataOutHor21[3] , \dataOutHor21[2] , \dataOutHor21[1] , 
        \dataOutHor21[0] }), .dataVer_in({\dataOutVer10[7] , \dataOutVer10[6] , 
        \dataOutVer10[5] , \dataOutVer10[4] , \dataOutVer10[3] , 
        \dataOutVer10[2] , \dataOutVer10[1] , \dataOutVer10[0] }), 
        .dataHor_out(data_out[15:8]), .dataVer_out({\dataOutVer20[7] , 
        \dataOutVer20[6] , \dataOutVer20[5] , \dataOutVer20[4] , 
        \dataOutVer20[3] , \dataOutVer20[2] , \dataOutVer20[1] , 
        \dataOutVer20[0] }) );
    dataCell c30 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[103:96]), .dc1_in(data_out[31:24]), .dc2_in(data_out
        [23:16]), .dc3_in(data_out[15:8]), .dataHor_in({\dataOutHor31[7] , 
        \dataOutHor31[6] , \dataOutHor31[5] , \dataOutHor31[4] , 
        \dataOutHor31[3] , \dataOutHor31[2] , \dataOutHor31[1] , 
        \dataOutHor31[0] }), .dataVer_in({\dataOutVer20[7] , \dataOutVer20[6] , 
        \dataOutVer20[5] , \dataOutVer20[4] , \dataOutVer20[3] , 
        \dataOutVer20[2] , \dataOutVer20[1] , \dataOutVer20[0] }), 
        .dataHor_out(data_out[7:0]) );
    dataCell c01 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[95:88]), .dc1_in({\dataOutHor11[7] , \dataOutHor11[6] , 
        \dataOutHor11[5] , \dataOutHor11[4] , \dataOutHor11[3] , 
        \dataOutHor11[2] , \dataOutHor11[1] , \dataOutHor11[0] }), .dc2_in({
        \dataOutHor21[7] , \dataOutHor21[6] , \dataOutHor21[5] , 
        \dataOutHor21[4] , \dataOutHor21[3] , \dataOutHor21[2] , 
        \dataOutHor21[1] , \dataOutHor21[0] }), .dc3_in({\dataOutHor31[7] , 
        \dataOutHor31[6] , \dataOutHor31[5] , \dataOutHor31[4] , 
        \dataOutHor31[3] , \dataOutHor31[2] , \dataOutHor31[1] , 
        \dataOutHor31[0] }), .dataHor_in({\dataOutHor02[7] , \dataOutHor02[6] , 
        \dataOutHor02[5] , \dataOutHor02[4] , \dataOutHor02[3] , 
        \dataOutHor02[2] , \dataOutHor02[1] , \dataOutHor02[0] }), 
        .dataVer_in(sboxOutp[15:8]), .dataHor_out({\dataOutHor01[7] , 
        \dataOutHor01[6] , \dataOutHor01[5] , \dataOutHor01[4] , 
        \dataOutHor01[3] , \dataOutHor01[2] , \dataOutHor01[1] , 
        \dataOutHor01[0] }) );
    dataCell c11 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[87:80]), .dc1_in({\dataOutHor21[7] , \dataOutHor21[6] , 
        \dataOutHor21[5] , \dataOutHor21[4] , \dataOutHor21[3] , 
        \dataOutHor21[2] , \dataOutHor21[1] , \dataOutHor21[0] }), .dc2_in({
        \dataOutHor31[7] , \dataOutHor31[6] , \dataOutHor31[5] , 
        \dataOutHor31[4] , \dataOutHor31[3] , \dataOutHor31[2] , 
        \dataOutHor31[1] , \dataOutHor31[0] }), .dc3_in({\dataOutHor01[7] , 
        \dataOutHor01[6] , \dataOutHor01[5] , \dataOutHor01[4] , 
        \dataOutHor01[3] , \dataOutHor01[2] , \dataOutHor01[1] , 
        \dataOutHor01[0] }), .dataHor_in({\dataOutHor12[7] , \dataOutHor12[6] , 
        \dataOutHor12[5] , \dataOutHor12[4] , \dataOutHor12[3] , 
        \dataOutHor12[2] , \dataOutHor12[1] , \dataOutHor12[0] }), 
        .dataVer_in({\barrel1_out[7] , \barrel1_out[6] , \barrel1_out[5] , 
        \barrel1_out[4] , \barrel1_out[3] , \barrel1_out[2] , \barrel1_out[1] , 
        \barrel1_out[0] }), .dataHor_out({\dataOutHor11[7] , \dataOutHor11[6] , 
        \dataOutHor11[5] , \dataOutHor11[4] , \dataOutHor11[3] , 
        \dataOutHor11[2] , \dataOutHor11[1] , \dataOutHor11[0] }), 
        .dataVer_out({\dataOutVer11[7] , \dataOutVer11[6] , \dataOutVer11[5] , 
        \dataOutVer11[4] , \dataOutVer11[3] , \dataOutVer11[2] , 
        \dataOutVer11[1] , \dataOutVer11[0] }) );
    dataCell c21 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[79:72]), .dc1_in({\dataOutHor31[7] , \dataOutHor31[6] , 
        \dataOutHor31[5] , \dataOutHor31[4] , \dataOutHor31[3] , 
        \dataOutHor31[2] , \dataOutHor31[1] , \dataOutHor31[0] }), .dc2_in({
        \dataOutHor01[7] , \dataOutHor01[6] , \dataOutHor01[5] , 
        \dataOutHor01[4] , \dataOutHor01[3] , \dataOutHor01[2] , 
        \dataOutHor01[1] , \dataOutHor01[0] }), .dc3_in({\dataOutHor11[7] , 
        \dataOutHor11[6] , \dataOutHor11[5] , \dataOutHor11[4] , 
        \dataOutHor11[3] , \dataOutHor11[2] , \dataOutHor11[1] , 
        \dataOutHor11[0] }), .dataHor_in({\dataOutHor22[7] , \dataOutHor22[6] , 
        \dataOutHor22[5] , \dataOutHor22[4] , \dataOutHor22[3] , 
        \dataOutHor22[2] , \dataOutHor22[1] , \dataOutHor22[0] }), 
        .dataVer_in({\dataOutVer11[7] , \dataOutVer11[6] , \dataOutVer11[5] , 
        \dataOutVer11[4] , \dataOutVer11[3] , \dataOutVer11[2] , 
        \dataOutVer11[1] , \dataOutVer11[0] }), .dataHor_out({
        \dataOutHor21[7] , \dataOutHor21[6] , \dataOutHor21[5] , 
        \dataOutHor21[4] , \dataOutHor21[3] , \dataOutHor21[2] , 
        \dataOutHor21[1] , \dataOutHor21[0] }), .dataVer_out({
        \dataOutVer21[7] , \dataOutVer21[6] , \dataOutVer21[5] , 
        \dataOutVer21[4] , \dataOutVer21[3] , \dataOutVer21[2] , 
        \dataOutVer21[1] , \dataOutVer21[0] }) );
    dataCell c31 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[71:64]), .dc1_in({\dataOutHor01[7] , \dataOutHor01[6] , 
        \dataOutHor01[5] , \dataOutHor01[4] , \dataOutHor01[3] , 
        \dataOutHor01[2] , \dataOutHor01[1] , \dataOutHor01[0] }), .dc2_in({
        \dataOutHor11[7] , \dataOutHor11[6] , \dataOutHor11[5] , 
        \dataOutHor11[4] , \dataOutHor11[3] , \dataOutHor11[2] , 
        \dataOutHor11[1] , \dataOutHor11[0] }), .dc3_in({\dataOutHor21[7] , 
        \dataOutHor21[6] , \dataOutHor21[5] , \dataOutHor21[4] , 
        \dataOutHor21[3] , \dataOutHor21[2] , \dataOutHor21[1] , 
        \dataOutHor21[0] }), .dataHor_in({\dataOutHor32[7] , \dataOutHor32[6] , 
        \dataOutHor32[5] , \dataOutHor32[4] , \dataOutHor32[3] , 
        \dataOutHor32[2] , \dataOutHor32[1] , \dataOutHor32[0] }), 
        .dataVer_in({\dataOutVer21[7] , \dataOutVer21[6] , \dataOutVer21[5] , 
        \dataOutVer21[4] , \dataOutVer21[3] , \dataOutVer21[2] , 
        \dataOutVer21[1] , \dataOutVer21[0] }), .dataHor_out({
        \dataOutHor31[7] , \dataOutHor31[6] , \dataOutHor31[5] , 
        \dataOutHor31[4] , \dataOutHor31[3] , \dataOutHor31[2] , 
        \dataOutHor31[1] , \dataOutHor31[0] }) );
    dataCell c02 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[63:56]), .dc1_in({\dataOutHor12[7] , \dataOutHor12[6] , 
        \dataOutHor12[5] , \dataOutHor12[4] , \dataOutHor12[3] , 
        \dataOutHor12[2] , \dataOutHor12[1] , \dataOutHor12[0] }), .dc2_in({
        \dataOutHor22[7] , \dataOutHor22[6] , \dataOutHor22[5] , 
        \dataOutHor22[4] , \dataOutHor22[3] , \dataOutHor22[2] , 
        \dataOutHor22[1] , \dataOutHor22[0] }), .dc3_in({\dataOutHor32[7] , 
        \dataOutHor32[6] , \dataOutHor32[5] , \dataOutHor32[4] , 
        \dataOutHor32[3] , \dataOutHor32[2] , \dataOutHor32[1] , 
        \dataOutHor32[0] }), .dataHor_in({\dataOutHor03[7] , \dataOutHor03[6] , 
        \dataOutHor03[5] , \dataOutHor03[4] , \dataOutHor03[3] , 
        \dataOutHor03[2] , \dataOutHor03[1] , \dataOutHor03[0] }), 
        .dataVer_in(sboxOutp[23:16]), .dataHor_out({\dataOutHor02[7] , 
        \dataOutHor02[6] , \dataOutHor02[5] , \dataOutHor02[4] , 
        \dataOutHor02[3] , \dataOutHor02[2] , \dataOutHor02[1] , 
        \dataOutHor02[0] }) );
    dataCell c12 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[55:48]), .dc1_in({\dataOutHor22[7] , \dataOutHor22[6] , 
        \dataOutHor22[5] , \dataOutHor22[4] , \dataOutHor22[3] , 
        \dataOutHor22[2] , \dataOutHor22[1] , \dataOutHor22[0] }), .dc2_in({
        \dataOutHor32[7] , \dataOutHor32[6] , \dataOutHor32[5] , 
        \dataOutHor32[4] , \dataOutHor32[3] , \dataOutHor32[2] , 
        \dataOutHor32[1] , \dataOutHor32[0] }), .dc3_in({\dataOutHor02[7] , 
        \dataOutHor02[6] , \dataOutHor02[5] , \dataOutHor02[4] , 
        \dataOutHor02[3] , \dataOutHor02[2] , \dataOutHor02[1] , 
        \dataOutHor02[0] }), .dataHor_in({\dataOutHor13[7] , \dataOutHor13[6] , 
        \dataOutHor13[5] , \dataOutHor13[4] , \dataOutHor13[3] , 
        \dataOutHor13[2] , \dataOutHor13[1] , \dataOutHor13[0] }), 
        .dataVer_in({\barrel2_out[7] , \barrel2_out[6] , \barrel2_out[5] , 
        \barrel2_out[4] , \barrel2_out[3] , \barrel2_out[2] , \barrel2_out[1] , 
        \barrel2_out[0] }), .dataHor_out({\dataOutHor12[7] , \dataOutHor12[6] , 
        \dataOutHor12[5] , \dataOutHor12[4] , \dataOutHor12[3] , 
        \dataOutHor12[2] , \dataOutHor12[1] , \dataOutHor12[0] }), 
        .dataVer_out({\dataOutVer12[7] , \dataOutVer12[6] , \dataOutVer12[5] , 
        \dataOutVer12[4] , \dataOutVer12[3] , \dataOutVer12[2] , 
        \dataOutVer12[1] , \dataOutVer12[0] }) );
    dataCell c22 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[47:40]), .dc1_in({\dataOutHor32[7] , \dataOutHor32[6] , 
        \dataOutHor32[5] , \dataOutHor32[4] , \dataOutHor32[3] , 
        \dataOutHor32[2] , \dataOutHor32[1] , \dataOutHor32[0] }), .dc2_in({
        \dataOutHor02[7] , \dataOutHor02[6] , \dataOutHor02[5] , 
        \dataOutHor02[4] , \dataOutHor02[3] , \dataOutHor02[2] , 
        \dataOutHor02[1] , \dataOutHor02[0] }), .dc3_in({\dataOutHor12[7] , 
        \dataOutHor12[6] , \dataOutHor12[5] , \dataOutHor12[4] , 
        \dataOutHor12[3] , \dataOutHor12[2] , \dataOutHor12[1] , 
        \dataOutHor12[0] }), .dataHor_in({\dataOutHor23[7] , \dataOutHor23[6] , 
        \dataOutHor23[5] , \dataOutHor23[4] , \dataOutHor23[3] , 
        \dataOutHor23[2] , \dataOutHor23[1] , \dataOutHor23[0] }), 
        .dataVer_in({\dataOutVer12[7] , \dataOutVer12[6] , \dataOutVer12[5] , 
        \dataOutVer12[4] , \dataOutVer12[3] , \dataOutVer12[2] , 
        \dataOutVer12[1] , \dataOutVer12[0] }), .dataHor_out({
        \dataOutHor22[7] , \dataOutHor22[6] , \dataOutHor22[5] , 
        \dataOutHor22[4] , \dataOutHor22[3] , \dataOutHor22[2] , 
        \dataOutHor22[1] , \dataOutHor22[0] }), .dataVer_out({
        \dataOutVer22[7] , \dataOutVer22[6] , \dataOutVer22[5] , 
        \dataOutVer22[4] , \dataOutVer22[3] , \dataOutVer22[2] , 
        \dataOutVer22[1] , \dataOutVer22[0] }) );
    dataCell c32 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[39:32]), .dc1_in({\dataOutHor02[7] , \dataOutHor02[6] , 
        \dataOutHor02[5] , \dataOutHor02[4] , \dataOutHor02[3] , 
        \dataOutHor02[2] , \dataOutHor02[1] , \dataOutHor02[0] }), .dc2_in({
        \dataOutHor12[7] , \dataOutHor12[6] , \dataOutHor12[5] , 
        \dataOutHor12[4] , \dataOutHor12[3] , \dataOutHor12[2] , 
        \dataOutHor12[1] , \dataOutHor12[0] }), .dc3_in({\dataOutHor22[7] , 
        \dataOutHor22[6] , \dataOutHor22[5] , \dataOutHor22[4] , 
        \dataOutHor22[3] , \dataOutHor22[2] , \dataOutHor22[1] , 
        \dataOutHor22[0] }), .dataHor_in({\dataOutHor33[7] , \dataOutHor33[6] , 
        \dataOutHor33[5] , \dataOutHor33[4] , \dataOutHor33[3] , 
        \dataOutHor33[2] , \dataOutHor33[1] , \dataOutHor33[0] }), 
        .dataVer_in({\dataOutVer22[7] , \dataOutVer22[6] , \dataOutVer22[5] , 
        \dataOutVer22[4] , \dataOutVer22[3] , \dataOutVer22[2] , 
        \dataOutVer22[1] , \dataOutVer22[0] }), .dataHor_out({
        \dataOutHor32[7] , \dataOutHor32[6] , \dataOutHor32[5] , 
        \dataOutHor32[4] , \dataOutHor32[3] , \dataOutHor32[2] , 
        \dataOutHor32[1] , \dataOutHor32[0] }) );
    dataCell c03 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[31:24]), .dc1_in({\dataOutHor13[7] , \dataOutHor13[6] , 
        \dataOutHor13[5] , \dataOutHor13[4] , \dataOutHor13[3] , 
        \dataOutHor13[2] , \dataOutHor13[1] , \dataOutHor13[0] }), .dc2_in({
        \dataOutHor23[7] , \dataOutHor23[6] , \dataOutHor23[5] , 
        \dataOutHor23[4] , \dataOutHor23[3] , \dataOutHor23[2] , 
        \dataOutHor23[1] , \dataOutHor23[0] }), .dc3_in({\dataOutHor33[7] , 
        \dataOutHor33[6] , \dataOutHor33[5] , \dataOutHor33[4] , 
        \dataOutHor33[3] , \dataOutHor33[2] , \dataOutHor33[1] , 
        \dataOutHor33[0] }), .dataHor_in(data_in[31:24]), .dataVer_in(sboxOutp
        [31:24]), .dataHor_out({\dataOutHor03[7] , \dataOutHor03[6] , 
        \dataOutHor03[5] , \dataOutHor03[4] , \dataOutHor03[3] , 
        \dataOutHor03[2] , \dataOutHor03[1] , \dataOutHor03[0] }) );
    dataCell c13 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[23:16]), .dc1_in({\dataOutHor23[7] , \dataOutHor23[6] , 
        \dataOutHor23[5] , \dataOutHor23[4] , \dataOutHor23[3] , 
        \dataOutHor23[2] , \dataOutHor23[1] , \dataOutHor23[0] }), .dc2_in({
        \dataOutHor33[7] , \dataOutHor33[6] , \dataOutHor33[5] , 
        \dataOutHor33[4] , \dataOutHor33[3] , \dataOutHor33[2] , 
        \dataOutHor33[1] , \dataOutHor33[0] }), .dc3_in({\dataOutHor03[7] , 
        \dataOutHor03[6] , \dataOutHor03[5] , \dataOutHor03[4] , 
        \dataOutHor03[3] , \dataOutHor03[2] , \dataOutHor03[1] , 
        \dataOutHor03[0] }), .dataHor_in(data_in[23:16]), .dataVer_in({
        \barrel3_out[7] , \barrel3_out[6] , \barrel3_out[5] , \barrel3_out[4] , 
        \barrel3_out[3] , \barrel3_out[2] , \barrel3_out[1] , \barrel3_out[0] 
        }), .dataHor_out({\dataOutHor13[7] , \dataOutHor13[6] , 
        \dataOutHor13[5] , \dataOutHor13[4] , \dataOutHor13[3] , 
        \dataOutHor13[2] , \dataOutHor13[1] , \dataOutHor13[0] }), 
        .dataVer_out({\dataOutVer13[7] , \dataOutVer13[6] , \dataOutVer13[5] , 
        \dataOutVer13[4] , \dataOutVer13[3] , \dataOutVer13[2] , 
        \dataOutVer13[1] , \dataOutVer13[0] }) );
    dataCell c23 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[15:8]), .dc1_in({\dataOutHor33[7] , \dataOutHor33[6] , 
        \dataOutHor33[5] , \dataOutHor33[4] , \dataOutHor33[3] , 
        \dataOutHor33[2] , \dataOutHor33[1] , \dataOutHor33[0] }), .dc2_in({
        \dataOutHor03[7] , \dataOutHor03[6] , \dataOutHor03[5] , 
        \dataOutHor03[4] , \dataOutHor03[3] , \dataOutHor03[2] , 
        \dataOutHor03[1] , \dataOutHor03[0] }), .dc3_in({\dataOutHor13[7] , 
        \dataOutHor13[6] , \dataOutHor13[5] , \dataOutHor13[4] , 
        \dataOutHor13[3] , \dataOutHor13[2] , \dataOutHor13[1] , 
        \dataOutHor13[0] }), .dataHor_in(data_in[15:8]), .dataVer_in({
        \dataOutVer13[7] , \dataOutVer13[6] , \dataOutVer13[5] , 
        \dataOutVer13[4] , \dataOutVer13[3] , \dataOutVer13[2] , 
        \dataOutVer13[1] , \dataOutVer13[0] }), .dataHor_out({
        \dataOutHor23[7] , \dataOutHor23[6] , \dataOutHor23[5] , 
        \dataOutHor23[4] , \dataOutHor23[3] , \dataOutHor23[2] , 
        \dataOutHor23[1] , \dataOutHor23[0] }), .dataVer_out({
        \dataOutVer23[7] , \dataOutVer23[6] , \dataOutVer23[5] , 
        \dataOutVer23[4] , \dataOutVer23[3] , \dataOutVer23[2] , 
        \dataOutVer23[1] , \dataOutVer23[0] }) );
    dataCell c33 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .control_A(control_A), .control_B(control_B), .control_C(control_C), 
        .key_in(key_in[7:0]), .dc1_in({\dataOutHor03[7] , \dataOutHor03[6] , 
        \dataOutHor03[5] , \dataOutHor03[4] , \dataOutHor03[3] , 
        \dataOutHor03[2] , \dataOutHor03[1] , \dataOutHor03[0] }), .dc2_in({
        \dataOutHor13[7] , \dataOutHor13[6] , \dataOutHor13[5] , 
        \dataOutHor13[4] , \dataOutHor13[3] , \dataOutHor13[2] , 
        \dataOutHor13[1] , \dataOutHor13[0] }), .dc3_in({\dataOutHor23[7] , 
        \dataOutHor23[6] , \dataOutHor23[5] , \dataOutHor23[4] , 
        \dataOutHor23[3] , \dataOutHor23[2] , \dataOutHor23[1] , 
        \dataOutHor23[0] }), .dataHor_in(data_in[7:0]), .dataVer_in({
        \dataOutVer23[7] , \dataOutVer23[6] , \dataOutVer23[5] , 
        \dataOutVer23[4] , \dataOutVer23[3] , \dataOutVer23[2] , 
        \dataOutVer23[1] , \dataOutVer23[0] }), .dataHor_out({
        \dataOutHor33[7] , \dataOutHor33[6] , \dataOutHor33[5] , 
        \dataOutHor33[4] , \dataOutHor33[3] , \dataOutHor33[2] , 
        \dataOutHor33[1] , \dataOutHor33[0] }) );
    sbox s0 ( .clk(clk), .reset(reset), .selEncDec(sboxCntrl), .a_in({
        \s0_in[7] , \s0_in[6] , \s0_in[5] , \s0_in[4] , \s0_in[3] , \s0_in[2] , 
        \s0_in[1] , \s0_in[0] }), .a_out(sboxOutp[7:0]) );
    sbox s1 ( .clk(clk), .reset(reset), .selEncDec(sboxCntrl), .a_in({
        \s1_in[7] , \s1_in[6] , \s1_in[5] , \s1_in[4] , \s1_in[3] , \s1_in[2] , 
        \s1_in[1] , \s1_in[0] }), .a_out(sboxOutp[15:8]) );
    sbox s2 ( .clk(clk), .reset(reset), .selEncDec(sboxCntrl), .a_in({
        \s2_in[7] , \s2_in[6] , \s2_in[5] , \s2_in[4] , \s2_in[3] , \s2_in[2] , 
        \s2_in[1] , \s2_in[0] }), .a_out(sboxOutp[23:16]) );
    sbox s3 ( .clk(clk), .reset(reset), .selEncDec(sboxCntrl), .a_in({
        \s3_in[7] , \s3_in[6] , \s3_in[5] , \s3_in[4] , \s3_in[3] , \s3_in[2] , 
        \s3_in[1] , \s3_in[0] }), .a_out(sboxOutp[31:24]) );
    NAND22 U2 ( .A(n136), .B(selectBar[0]), .Q(n40) );
    NOR22 U3 ( .A(n138), .B(selectBar[0]), .Q(n137) );
    NOR22 U4 ( .A(selectBar[1]), .B(selectBar[0]), .Q(n141) );
    NOR22 U5 ( .A(n135), .B(n140), .Q(n139) );
    NOR24 U6 ( .A(selectSbox_in), .B(n39), .Q(sboxCntrl) );
    OAI2110 U7 ( .A(n40), .B(n41), .C(n42), .D(n43), .Q(\barrel0_out[7] ) );
    OAI2110 U8 ( .A(n40), .B(n44), .C(n45), .D(n46), .Q(\barrel0_out[6] ) );
    OAI2110 U9 ( .A(n40), .B(n47), .C(n48), .D(n49), .Q(\barrel0_out[5] ) );
    OAI2110 U10 ( .A(n40), .B(n50), .C(n51), .D(n52), .Q(\barrel0_out[4] ) );
    OAI2110 U11 ( .A(n40), .B(n53), .C(n54), .D(n55), .Q(\barrel0_out[3] ) );
    OAI2110 U12 ( .A(n40), .B(n56), .C(n57), .D(n58), .Q(\barrel0_out[2] ) );
    OAI2110 U13 ( .A(n40), .B(n59), .C(n60), .D(n61), .Q(\barrel0_out[1] ) );
    OAI2110 U14 ( .A(n40), .B(n62), .C(n63), .D(n64), .Q(\barrel0_out[0] ) );
    NAND20 U15 ( .A(n65), .B(n66), .Q(\barrel1_out[7] ) );
    OAI2110 U16 ( .A(n40), .B(n67), .C(n68), .D(n69), .Q(\barrel1_out[6] ) );
    OAI2110 U17 ( .A(n40), .B(n70), .C(n71), .D(n72), .Q(\barrel1_out[5] ) );
    OAI2110 U18 ( .A(n40), .B(n73), .C(n74), .D(n75), .Q(\barrel1_out[4] ) );
    OAI2110 U19 ( .A(n40), .B(n76), .C(n77), .D(n78), .Q(\barrel1_out[3] ) );
    OAI2110 U20 ( .A(n40), .B(n79), .C(n80), .D(n81), .Q(\barrel1_out[2] ) );
    OAI2110 U21 ( .A(n40), .B(n82), .C(n83), .D(n84), .Q(\barrel1_out[1] ) );
    OAI2110 U22 ( .A(n40), .B(n85), .C(n86), .D(n87), .Q(\barrel1_out[0] ) );
    NAND20 U23 ( .A(n88), .B(n89), .Q(\barrel2_out[7] ) );
    OAI2110 U24 ( .A(n40), .B(n90), .C(n91), .D(n92), .Q(\barrel2_out[6] ) );
    OAI2110 U25 ( .A(n40), .B(n93), .C(n94), .D(n95), .Q(\barrel2_out[5] ) );
    OAI2110 U26 ( .A(n40), .B(n96), .C(n97), .D(n98), .Q(\barrel2_out[4] ) );
    OAI2110 U27 ( .A(n40), .B(n99), .C(n100), .D(n101), .Q(\barrel2_out[3] )
         );
    OAI2110 U28 ( .A(n40), .B(n102), .C(n103), .D(n104), .Q(\barrel2_out[2] )
         );
    OAI2110 U29 ( .A(n40), .B(n105), .C(n106), .D(n107), .Q(\barrel2_out[1] )
         );
    OAI2110 U30 ( .A(n40), .B(n108), .C(n109), .D(n110), .Q(\barrel2_out[0] )
         );
    OAI2110 U31 ( .A(n40), .B(n111), .C(n112), .D(n113), .Q(\barrel3_out[7] )
         );
    OAI2110 U32 ( .A(n40), .B(n114), .C(n115), .D(n116), .Q(\barrel3_out[6] )
         );
    OAI2110 U33 ( .A(n40), .B(n117), .C(n118), .D(n119), .Q(\barrel3_out[5] )
         );
    OAI2110 U34 ( .A(n40), .B(n120), .C(n121), .D(n122), .Q(\barrel3_out[4] )
         );
    OAI2110 U35 ( .A(n40), .B(n123), .C(n124), .D(n125), .Q(\barrel3_out[3] )
         );
    OAI2110 U36 ( .A(n40), .B(n126), .C(n127), .D(n128), .Q(\barrel3_out[2] )
         );
    OAI2110 U37 ( .A(n40), .B(n129), .C(n130), .D(n131), .Q(\barrel3_out[1] )
         );
    OAI2110 U38 ( .A(n40), .B(n132), .C(n133), .D(n134), .Q(\barrel3_out[0] )
         );
    CLKIN0 U39 ( .A(selEncDec), .Q(n39) );
    CLKIN0 U40 ( .A(selectBar[0]), .Q(n135) );
    CLKIN0 U41 ( .A(data_out[31]), .Q(n111) );
    CLKIN0 U42 ( .A(\dataOutHor01[7] ), .Q(n41) );
    CLKIN0 U43 ( .A(data_out[30]), .Q(n114) );
    CLKIN0 U44 ( .A(\dataOutHor01[6] ), .Q(n44) );
    CLKIN0 U45 ( .A(\dataOutHor02[6] ), .Q(n67) );
    CLKIN0 U46 ( .A(\dataOutHor03[6] ), .Q(n90) );
    CLKIN0 U47 ( .A(data_out[29]), .Q(n117) );
    CLKIN0 U48 ( .A(\dataOutHor01[5] ), .Q(n47) );
    CLKIN0 U49 ( .A(\dataOutHor02[5] ), .Q(n70) );
    CLKIN0 U50 ( .A(\dataOutHor03[5] ), .Q(n93) );
    CLKIN0 U51 ( .A(data_out[28]), .Q(n120) );
    CLKIN0 U52 ( .A(\dataOutHor01[4] ), .Q(n50) );
    CLKIN0 U53 ( .A(\dataOutHor02[4] ), .Q(n73) );
    CLKIN0 U54 ( .A(\dataOutHor03[4] ), .Q(n96) );
    CLKIN0 U55 ( .A(data_out[27]), .Q(n123) );
    CLKIN0 U56 ( .A(\dataOutHor01[3] ), .Q(n53) );
    CLKIN0 U57 ( .A(\dataOutHor02[3] ), .Q(n76) );
    CLKIN0 U58 ( .A(\dataOutHor03[3] ), .Q(n99) );
    CLKIN0 U59 ( .A(data_out[26]), .Q(n126) );
    CLKIN0 U60 ( .A(\dataOutHor01[2] ), .Q(n56) );
    CLKIN0 U61 ( .A(\dataOutHor02[2] ), .Q(n79) );
    CLKIN0 U62 ( .A(\dataOutHor03[2] ), .Q(n102) );
    CLKIN0 U63 ( .A(data_out[25]), .Q(n129) );
    CLKIN0 U64 ( .A(\dataOutHor01[1] ), .Q(n59) );
    CLKIN0 U65 ( .A(\dataOutHor02[1] ), .Q(n82) );
    CLKIN0 U66 ( .A(\dataOutHor03[1] ), .Q(n105) );
    CLKIN0 U67 ( .A(data_out[24]), .Q(n132) );
    CLKIN0 U68 ( .A(\dataOutHor01[0] ), .Q(n62) );
    CLKIN0 U69 ( .A(\dataOutHor02[0] ), .Q(n85) );
    CLKIN0 U70 ( .A(\dataOutHor03[0] ), .Q(n108) );
    IMUX20 U71 ( .A(selEncDec), .B(n39), .Q(n140), .S(selectBar[1]) );
    MUX21 U72 ( .A(\dataOutHor33[7] ), .B(sboxInp[31]), .Q(\s3_in[7] ), .S(
        selectSbox_in) );
    MUX21 U73 ( .A(\dataOutHor33[6] ), .B(sboxInp[30]), .Q(\s3_in[6] ), .S(
        selectSbox_in) );
    MUX21 U74 ( .A(\dataOutHor33[5] ), .B(sboxInp[29]), .Q(\s3_in[5] ), .S(
        selectSbox_in) );
    MUX21 U75 ( .A(\dataOutHor33[4] ), .B(sboxInp[28]), .Q(\s3_in[4] ), .S(
        selectSbox_in) );
    MUX21 U76 ( .A(\dataOutHor33[3] ), .B(sboxInp[27]), .Q(\s3_in[3] ), .S(
        selectSbox_in) );
    MUX21 U77 ( .A(\dataOutHor33[2] ), .B(sboxInp[26]), .Q(\s3_in[2] ), .S(
        selectSbox_in) );
    MUX21 U78 ( .A(\dataOutHor33[1] ), .B(sboxInp[25]), .Q(\s3_in[1] ), .S(
        selectSbox_in) );
    MUX21 U79 ( .A(\dataOutHor33[0] ), .B(sboxInp[24]), .Q(\s3_in[0] ), .S(
        selectSbox_in) );
    MUX21 U80 ( .A(\dataOutHor32[7] ), .B(sboxInp[23]), .Q(\s2_in[7] ), .S(
        selectSbox_in) );
    MUX21 U81 ( .A(\dataOutHor32[6] ), .B(sboxInp[22]), .Q(\s2_in[6] ), .S(
        selectSbox_in) );
    MUX21 U82 ( .A(\dataOutHor32[5] ), .B(sboxInp[21]), .Q(\s2_in[5] ), .S(
        selectSbox_in) );
    MUX21 U83 ( .A(\dataOutHor32[4] ), .B(sboxInp[20]), .Q(\s2_in[4] ), .S(
        selectSbox_in) );
    MUX21 U84 ( .A(\dataOutHor32[3] ), .B(sboxInp[19]), .Q(\s2_in[3] ), .S(
        selectSbox_in) );
    MUX21 U85 ( .A(\dataOutHor32[2] ), .B(sboxInp[18]), .Q(\s2_in[2] ), .S(
        selectSbox_in) );
    MUX21 U86 ( .A(\dataOutHor32[1] ), .B(sboxInp[17]), .Q(\s2_in[1] ), .S(
        selectSbox_in) );
    MUX21 U87 ( .A(\dataOutHor32[0] ), .B(sboxInp[16]), .Q(\s2_in[0] ), .S(
        selectSbox_in) );
    MUX21 U88 ( .A(\dataOutHor31[7] ), .B(sboxInp[15]), .Q(\s1_in[7] ), .S(
        selectSbox_in) );
    MUX21 U89 ( .A(\dataOutHor31[6] ), .B(sboxInp[14]), .Q(\s1_in[6] ), .S(
        selectSbox_in) );
    MUX21 U90 ( .A(\dataOutHor31[5] ), .B(sboxInp[13]), .Q(\s1_in[5] ), .S(
        selectSbox_in) );
    MUX21 U91 ( .A(\dataOutHor31[4] ), .B(sboxInp[12]), .Q(\s1_in[4] ), .S(
        selectSbox_in) );
    MUX21 U92 ( .A(\dataOutHor31[3] ), .B(sboxInp[11]), .Q(\s1_in[3] ), .S(
        selectSbox_in) );
    MUX21 U93 ( .A(\dataOutHor31[2] ), .B(sboxInp[10]), .Q(\s1_in[2] ), .S(
        selectSbox_in) );
    MUX21 U94 ( .A(\dataOutHor31[1] ), .B(sboxInp[9]), .Q(\s1_in[1] ), .S(
        selectSbox_in) );
    MUX21 U95 ( .A(\dataOutHor31[0] ), .B(sboxInp[8]), .Q(\s1_in[0] ), .S(
        selectSbox_in) );
    MUX21 U96 ( .A(data_out[7]), .B(sboxInp[7]), .Q(\s0_in[7] ), .S(
        selectSbox_in) );
    MUX21 U97 ( .A(data_out[6]), .B(sboxInp[6]), .Q(\s0_in[6] ), .S(
        selectSbox_in) );
    MUX21 U98 ( .A(data_out[5]), .B(sboxInp[5]), .Q(\s0_in[5] ), .S(
        selectSbox_in) );
    MUX21 U99 ( .A(data_out[4]), .B(sboxInp[4]), .Q(\s0_in[4] ), .S(
        selectSbox_in) );
    MUX21 U100 ( .A(data_out[3]), .B(sboxInp[3]), .Q(\s0_in[3] ), .S(
        selectSbox_in) );
    MUX21 U101 ( .A(data_out[2]), .B(sboxInp[2]), .Q(\s0_in[2] ), .S(
        selectSbox_in) );
    MUX21 U102 ( .A(data_out[1]), .B(sboxInp[1]), .Q(\s0_in[1] ), .S(
        selectSbox_in) );
    MUX21 U103 ( .A(data_out[0]), .B(sboxInp[0]), .Q(\s0_in[0] ), .S(
        selectSbox_in) );
    AOI220 U104 ( .A(\dataOutHor02[7] ), .B(n139), .C(\dataOutHor03[7] ), .D(
        n141), .Q(n113) );
    AOI220 U105 ( .A(\dataOutHor02[6] ), .B(n139), .C(\dataOutHor03[6] ), .D(
        n141), .Q(n116) );
    AOI220 U106 ( .A(\dataOutHor02[5] ), .B(n139), .C(\dataOutHor03[5] ), .D(
        n141), .Q(n119) );
    AOI220 U107 ( .A(\dataOutHor02[4] ), .B(n139), .C(\dataOutHor03[4] ), .D(
        n141), .Q(n122) );
    AOI220 U108 ( .A(\dataOutHor02[3] ), .B(n139), .C(\dataOutHor03[3] ), .D(
        n141), .Q(n125) );
    AOI220 U109 ( .A(\dataOutHor02[2] ), .B(n139), .C(\dataOutHor03[2] ), .D(
        n141), .Q(n128) );
    AOI220 U110 ( .A(\dataOutHor02[1] ), .B(n139), .C(\dataOutHor03[1] ), .D(
        n141), .Q(n131) );
    AOI220 U111 ( .A(\dataOutHor02[0] ), .B(n139), .C(\dataOutHor03[0] ), .D(
        n141), .Q(n134) );
    AOI220 U112 ( .A(\dataOutHor03[7] ), .B(n142), .C(n137), .D(data_out[31]), 
        .Q(n89) );
    AOI220 U113 ( .A(n139), .B(\dataOutHor01[7] ), .C(n141), .D(
        \dataOutHor02[7] ), .Q(n88) );
    AOI220 U114 ( .A(\dataOutHor01[6] ), .B(n139), .C(\dataOutHor02[6] ), .D(
        n141), .Q(n92) );
    AOI220 U115 ( .A(\dataOutHor01[5] ), .B(n139), .C(\dataOutHor02[5] ), .D(
        n141), .Q(n95) );
    AOI220 U116 ( .A(\dataOutHor01[4] ), .B(n139), .C(\dataOutHor02[4] ), .D(
        n141), .Q(n98) );
    AOI220 U117 ( .A(\dataOutHor01[3] ), .B(n139), .C(\dataOutHor02[3] ), .D(
        n141), .Q(n101) );
    AOI220 U118 ( .A(\dataOutHor01[2] ), .B(n139), .C(\dataOutHor02[2] ), .D(
        n141), .Q(n104) );
    AOI220 U119 ( .A(\dataOutHor01[1] ), .B(n139), .C(\dataOutHor02[1] ), .D(
        n141), .Q(n107) );
    AOI220 U120 ( .A(\dataOutHor01[0] ), .B(n139), .C(\dataOutHor02[0] ), .D(
        n141), .Q(n110) );
    AOI220 U121 ( .A(\dataOutHor02[7] ), .B(n142), .C(\dataOutHor03[7] ), .D(
        n137), .Q(n66) );
    AOI220 U122 ( .A(n139), .B(data_out[31]), .C(n141), .D(\dataOutHor01[7] ), 
        .Q(n65) );
    AOI220 U123 ( .A(data_out[30]), .B(n139), .C(\dataOutHor01[6] ), .D(n141), 
        .Q(n69) );
    AOI220 U124 ( .A(data_out[29]), .B(n139), .C(\dataOutHor01[5] ), .D(n141), 
        .Q(n72) );
    AOI220 U125 ( .A(data_out[28]), .B(n139), .C(\dataOutHor01[4] ), .D(n141), 
        .Q(n75) );
    AOI220 U126 ( .A(data_out[27]), .B(n139), .C(\dataOutHor01[3] ), .D(n141), 
        .Q(n78) );
    AOI220 U127 ( .A(data_out[26]), .B(n139), .C(\dataOutHor01[2] ), .D(n141), 
        .Q(n81) );
    AOI220 U128 ( .A(data_out[25]), .B(n139), .C(\dataOutHor01[1] ), .D(n141), 
        .Q(n84) );
    AOI220 U129 ( .A(data_out[24]), .B(n139), .C(\dataOutHor01[0] ), .D(n141), 
        .Q(n87) );
    AOI220 U130 ( .A(\dataOutHor03[7] ), .B(n139), .C(n141), .D(data_out[31]), 
        .Q(n43) );
    AOI220 U131 ( .A(\dataOutHor03[6] ), .B(n139), .C(data_out[30]), .D(n141), 
        .Q(n46) );
    AOI220 U132 ( .A(\dataOutHor03[5] ), .B(n139), .C(data_out[29]), .D(n141), 
        .Q(n49) );
    AOI220 U133 ( .A(\dataOutHor03[4] ), .B(n139), .C(data_out[28]), .D(n141), 
        .Q(n52) );
    AOI220 U134 ( .A(\dataOutHor03[3] ), .B(n139), .C(data_out[27]), .D(n141), 
        .Q(n55) );
    AOI220 U135 ( .A(\dataOutHor03[2] ), .B(n139), .C(data_out[26]), .D(n141), 
        .Q(n58) );
    AOI220 U136 ( .A(\dataOutHor03[1] ), .B(n139), .C(data_out[25]), .D(n141), 
        .Q(n61) );
    AOI220 U137 ( .A(\dataOutHor03[0] ), .B(n139), .C(data_out[24]), .D(n141), 
        .Q(n64) );
    CLKIN0 U138 ( .A(n40), .Q(n142) );
    NAND20 U139 ( .A(\dataOutHor01[7] ), .B(n137), .Q(n112) );
    NAND20 U140 ( .A(\dataOutHor01[6] ), .B(n137), .Q(n115) );
    NAND20 U141 ( .A(\dataOutHor01[5] ), .B(n137), .Q(n118) );
    NAND20 U142 ( .A(\dataOutHor01[4] ), .B(n137), .Q(n121) );
    NAND20 U143 ( .A(\dataOutHor01[3] ), .B(n137), .Q(n124) );
    NAND20 U144 ( .A(\dataOutHor01[2] ), .B(n137), .Q(n127) );
    NAND20 U145 ( .A(\dataOutHor01[1] ), .B(n137), .Q(n130) );
    NAND20 U146 ( .A(\dataOutHor01[0] ), .B(n137), .Q(n133) );
    NAND20 U147 ( .A(data_out[30]), .B(n137), .Q(n91) );
    NAND20 U148 ( .A(data_out[29]), .B(n137), .Q(n94) );
    NAND20 U149 ( .A(data_out[28]), .B(n137), .Q(n97) );
    NAND20 U150 ( .A(data_out[27]), .B(n137), .Q(n100) );
    NAND20 U151 ( .A(data_out[26]), .B(n137), .Q(n103) );
    NAND20 U152 ( .A(data_out[25]), .B(n137), .Q(n106) );
    NAND20 U153 ( .A(data_out[24]), .B(n137), .Q(n109) );
    NAND20 U154 ( .A(\dataOutHor03[6] ), .B(n137), .Q(n68) );
    NAND20 U155 ( .A(\dataOutHor03[5] ), .B(n137), .Q(n71) );
    NAND20 U156 ( .A(\dataOutHor03[4] ), .B(n137), .Q(n74) );
    NAND20 U157 ( .A(\dataOutHor03[3] ), .B(n137), .Q(n77) );
    NAND20 U158 ( .A(\dataOutHor03[2] ), .B(n137), .Q(n80) );
    NAND20 U159 ( .A(\dataOutHor03[1] ), .B(n137), .Q(n83) );
    NAND20 U160 ( .A(\dataOutHor03[0] ), .B(n137), .Q(n86) );
    NAND20 U161 ( .A(\dataOutHor02[7] ), .B(n137), .Q(n42) );
    NAND20 U162 ( .A(\dataOutHor02[6] ), .B(n137), .Q(n45) );
    NAND20 U163 ( .A(\dataOutHor02[5] ), .B(n137), .Q(n48) );
    NAND20 U164 ( .A(\dataOutHor02[4] ), .B(n137), .Q(n51) );
    NAND20 U165 ( .A(\dataOutHor02[3] ), .B(n137), .Q(n54) );
    NAND20 U166 ( .A(\dataOutHor02[2] ), .B(n137), .Q(n57) );
    NAND20 U167 ( .A(\dataOutHor02[1] ), .B(n137), .Q(n60) );
    NAND20 U168 ( .A(\dataOutHor02[0] ), .B(n137), .Q(n63) );
    IMUX20 U169 ( .A(n39), .B(selEncDec), .Q(n136), .S(n138) );
    CLKIN0 U170 ( .A(selectBar[1]), .Q(n138) );
endmodule


module decoder ( clk, reset, selEncDec, start, i, signals );
input  [6:0] i;
output [7:0] signals;
input  clk, reset, selEncDec, start;
    wire N766, N770, N763, N764, N765, N767, N768, N769, n624, n626, n628, 
        n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, 
        n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, 
        n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, 
        n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, 
        n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, 
        n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, 
        n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, 
        n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, 
        n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, 
        n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, 
        n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, 
        n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, 
        n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, 
        n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, 
        n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, 
        n809, n810, n811, n812, n813, n814;
    NAND22 U3 ( .A(n716), .B(n700), .Q(n652) );
    INV6 U4 ( .A(n624), .Q(signals[4]) );
    INV6 U5 ( .A(n626), .Q(signals[6]) );
    AOI210 U6 ( .A(n628), .B(n629), .C(n630), .Q(N770) );
    OAI210 U7 ( .A(n631), .B(n632), .C(n633), .Q(N769) );
    OAI210 U8 ( .A(n634), .B(n635), .C(n636), .Q(N768) );
    NAND20 U9 ( .A(n637), .B(n628), .Q(N767) );
    OAI220 U10 ( .A(n638), .B(n635), .C(n639), .D(n630), .Q(N766) );
    OAI220 U11 ( .A(n640), .B(n635), .C(n641), .D(n632), .Q(N765) );
    NAND40 U12 ( .A(n643), .B(n644), .C(n645), .D(n646), .Q(n642) );
    OAI220 U13 ( .A(n647), .B(n635), .C(n648), .D(n632), .Q(N764) );
    OAI220 U14 ( .A(n649), .B(n632), .C(n650), .D(n635), .Q(N763) );
    NOR30 U15 ( .A(n652), .B(i[1]), .C(n653), .Q(n651) );
    OAI210 U16 ( .A(n655), .B(n656), .C(n657), .Q(n654) );
    NAND20 U17 ( .A(n659), .B(n652), .Q(n658) );
    NAND20 U18 ( .A(n661), .B(n662), .Q(n660) );
    AOI210 U19 ( .A(n664), .B(n665), .C(n666), .Q(n663) );
    NOR40 U20 ( .A(n668), .B(n669), .C(n670), .D(n671), .Q(n667) );
    NOR40 U21 ( .A(i[5]), .B(n667), .C(n673), .D(n674), .Q(n672) );
    NOR20 U22 ( .A(n675), .B(n676), .Q(n634) );
    NOR40 U23 ( .A(start), .B(n677), .C(n678), .D(n679), .Q(n639) );
    NOR40 U24 ( .A(n680), .B(n681), .C(n682), .D(n683), .Q(n640) );
    AOI310 U25 ( .A(n685), .B(n664), .C(n662), .D(n686), .Q(n684) );
    CLKIN0 U26 ( .A(i[2]), .Q(n687) );
    NOR40 U27 ( .A(n688), .B(n651), .C(n689), .D(n690), .Q(n648) );
    NOR40 U28 ( .A(n691), .B(n692), .C(n693), .D(n694), .Q(n649) );
    NOR40 U29 ( .A(n695), .B(n696), .C(n697), .D(n698), .Q(n650) );
    NOR20 U30 ( .A(i[2]), .B(n674), .Q(n699) );
    CLKIN0 U31 ( .A(i[4]), .Q(n700) );
    CLKIN0 U32 ( .A(i[5]), .Q(n701) );
    CLKIN0 U33 ( .A(i[6]), .Q(n702) );
    CLKIN0 U34 ( .A(selEncDec), .Q(n630) );
    CLKIN0 U35 ( .A(i[0]), .Q(n673) );
    NAND20 U36 ( .A(i[1]), .B(i[0]), .Q(n703) );
    NOR20 U37 ( .A(n702), .B(n701), .Q(n704) );
    CLKIN0 U38 ( .A(i[3]), .Q(n705) );
    NOR20 U39 ( .A(n705), .B(n687), .Q(n706) );
    NAND20 U40 ( .A(n702), .B(n708), .Q(n707) );
    NOR20 U41 ( .A(n707), .B(n701), .Q(n709) );
    NAND20 U42 ( .A(n709), .B(i[0]), .Q(n710) );
    NAND20 U43 ( .A(n706), .B(i[4]), .Q(n711) );
    NAND20 U44 ( .A(n706), .B(n700), .Q(n659) );
    NOR20 U45 ( .A(n687), .B(i[3]), .Q(n712) );
    NOR20 U46 ( .A(n703), .B(i[6]), .Q(n713) );
    NAND20 U47 ( .A(n712), .B(n700), .Q(n665) );
    NOR20 U48 ( .A(n707), .B(i[5]), .Q(n714) );
    NAND20 U49 ( .A(n714), .B(i[0]), .Q(n715) );
    NOR20 U50 ( .A(i[3]), .B(i[2]), .Q(n716) );
    NAND20 U51 ( .A(n713), .B(n701), .Q(n717) );
    NAND20 U52 ( .A(n716), .B(i[4]), .Q(n664) );
    NAND20 U53 ( .A(n712), .B(i[4]), .Q(n661) );
    NOR20 U54 ( .A(n705), .B(i[2]), .Q(n718) );
    NAND20 U55 ( .A(n718), .B(n700), .Q(n662) );
    AOI2110 U56 ( .A(n720), .B(n669), .C(n721), .D(n722), .Q(n719) );
    NAND30 U57 ( .A(n701), .B(n708), .C(i[6]), .Q(n723) );
    NOR20 U58 ( .A(n723), .B(n673), .Q(n724) );
    AOI220 U59 ( .A(n658), .B(n655), .C(n660), .D(n720), .Q(n725) );
    AOI2110 U60 ( .A(n655), .B(n669), .C(n727), .D(n728), .Q(n726) );
    NAND20 U61 ( .A(n713), .B(i[5]), .Q(n729) );
    NAND20 U62 ( .A(n718), .B(i[4]), .Q(n685) );
    NAND30 U63 ( .A(n673), .B(n702), .C(i[1]), .Q(n730) );
    NOR20 U64 ( .A(n730), .B(i[5]), .Q(n731) );
    NAND20 U65 ( .A(n714), .B(n673), .Q(n666) );
    NAND20 U66 ( .A(i[1]), .B(i[6]), .Q(n674) );
    AOI2110 U67 ( .A(n671), .B(n733), .C(n734), .D(n735), .Q(n732) );
    NAND20 U68 ( .A(n737), .B(n738), .Q(n736) );
    NAND40 U69 ( .A(n739), .B(n740), .C(n741), .D(n742), .Q(n677) );
    NAND30 U70 ( .A(n726), .B(n725), .C(n744), .Q(n743) );
    NOR20 U71 ( .A(n630), .B(start), .Q(n745) );
    NOR20 U72 ( .A(n730), .B(n701), .Q(n746) );
    NAND20 U73 ( .A(n709), .B(n673), .Q(n747) );
    NAND40 U74 ( .A(n748), .B(n749), .C(n750), .D(n751), .Q(n697) );
    NOR30 U75 ( .A(n752), .B(n734), .C(n697), .Q(n638) );
    NAND20 U76 ( .A(n753), .B(n674), .Q(n676) );
    NAND20 U77 ( .A(n628), .B(n630), .Q(n635) );
    NOR20 U78 ( .A(n723), .B(i[0]), .Q(n754) );
    OAI2110 U79 ( .A(n661), .B(n747), .C(n755), .D(n756), .Q(n678) );
    NOR30 U80 ( .A(n743), .B(n677), .C(n757), .Q(n631) );
    NOR20 U81 ( .A(n743), .B(n758), .Q(n641) );
    NOR30 U82 ( .A(n760), .B(n752), .C(n761), .Q(n759) );
    OAI2110 U83 ( .A(n715), .B(n685), .C(n762), .D(n763), .Q(n698) );
    NAND20 U84 ( .A(n764), .B(n765), .Q(n693) );
    NOR30 U85 ( .A(n679), .B(n736), .C(n767), .Q(n766) );
    NAND40 U86 ( .A(n769), .B(n770), .C(n771), .D(n772), .Q(n768) );
    IMUX20 U87 ( .A(n668), .B(n699), .Q(n773), .S(n701) );
    NOR40 U88 ( .A(n774), .B(n775), .C(n776), .D(n777), .Q(n738) );
    AOI2110 U89 ( .A(n731), .B(n671), .C(n778), .D(n663), .Q(n737) );
    NOR30 U90 ( .A(n736), .B(n672), .C(n779), .Q(n742) );
    OAI220 U91 ( .A(n661), .B(n710), .C(n715), .D(n711), .Q(n721) );
    OAI220 U92 ( .A(n662), .B(n717), .C(n715), .D(n665), .Q(n722) );
    OAI210 U93 ( .A(n715), .B(n659), .C(n654), .Q(n728) );
    AOI2110 U94 ( .A(n724), .B(n780), .C(n781), .D(n683), .Q(n744) );
    OAI210 U95 ( .A(n652), .B(n703), .C(n782), .Q(n757) );
    NOR40 U96 ( .A(n775), .B(n777), .C(n783), .D(n784), .Q(n751) );
    AOI210 U97 ( .A(n746), .B(n657), .C(n785), .Q(n750) );
    NOR30 U98 ( .A(n786), .B(n785), .C(n787), .Q(n756) );
    AOI220 U99 ( .A(n754), .B(n780), .C(n788), .D(n789), .Q(n755) );
    NOR40 U100 ( .A(n734), .B(n758), .C(n760), .D(n790), .Q(n772) );
    AOI210 U101 ( .A(n733), .B(n789), .C(n724), .Q(n771) );
    OAI210 U102 ( .A(n653), .B(n687), .C(n782), .Q(n767) );
    NAND20 U103 ( .A(n791), .B(n741), .Q(n681) );
    OAI2110 U104 ( .A(n665), .B(n729), .C(n792), .D(n725), .Q(n680) );
    NOR40 U105 ( .A(n784), .B(n793), .C(n790), .D(n794), .Q(n765) );
    AOI2110 U106 ( .A(n795), .B(n671), .C(n796), .D(n684), .Q(n764) );
    AOI2110 U107 ( .A(n687), .B(n798), .C(n698), .D(n693), .Q(n797) );
    NOR40 U108 ( .A(n776), .B(n774), .C(n735), .D(n799), .Q(n643) );
    NOR40 U109 ( .A(n794), .B(n786), .C(n787), .D(n778), .Q(n644) );
    NOR40 U110 ( .A(n691), .B(n800), .C(n801), .D(n796), .Q(n645) );
    AOI210 U111 ( .A(n731), .B(n789), .C(n803), .Q(n802) );
    OAI2110 U112 ( .A(n661), .B(n805), .C(n719), .D(n802), .Q(n804) );
    AOI2110 U113 ( .A(n655), .B(n789), .C(n800), .D(n803), .Q(n806) );
    NAND40 U114 ( .A(n740), .B(n807), .C(n808), .D(n806), .Q(n695) );
    OAI2110 U115 ( .A(n661), .B(n729), .C(n726), .D(n732), .Q(n696) );
    NAND20 U116 ( .A(n749), .B(n809), .Q(n692) );
    OAI220 U117 ( .A(n685), .B(n805), .C(i[0]), .D(n773), .Q(n694) );
    CLKIN0 U118 ( .A(start), .Q(n628) );
    NOR20 U119 ( .A(n711), .B(n710), .Q(n781) );
    CLKIN0 U120 ( .A(n781), .Q(n807) );
    NOR20 U121 ( .A(n685), .B(n729), .Q(n799) );
    NOR20 U122 ( .A(n729), .B(n664), .Q(n682) );
    CLKIN0 U123 ( .A(n682), .Q(n739) );
    NOR20 U124 ( .A(n659), .B(n710), .Q(n683) );
    NOR20 U125 ( .A(n652), .B(n729), .Q(n735) );
    NAND20 U126 ( .A(n670), .B(n655), .Q(n741) );
    NOR20 U127 ( .A(n666), .B(n661), .Q(n734) );
    NOR20 U128 ( .A(n810), .B(n664), .Q(n774) );
    NOR20 U129 ( .A(n810), .B(n659), .Q(n775) );
    NOR20 U130 ( .A(n666), .B(n659), .Q(n776) );
    NOR20 U131 ( .A(n666), .B(n662), .Q(n777) );
    NOR20 U132 ( .A(n810), .B(n665), .Q(n778) );
    NAND20 U133 ( .A(n746), .B(n789), .Q(n808) );
    CLKIN0 U134 ( .A(n676), .Q(n769) );
    NOR20 U135 ( .A(n810), .B(n685), .Q(n783) );
    CLKIN0 U136 ( .A(n783), .Q(n809) );
    NOR20 U137 ( .A(n652), .B(n810), .Q(n752) );
    NOR20 U138 ( .A(n747), .B(n685), .Q(n784) );
    NAND20 U139 ( .A(n746), .B(n669), .Q(n749) );
    NOR20 U140 ( .A(n747), .B(n652), .Q(n793) );
    CLKIN0 U141 ( .A(n793), .Q(n748) );
    NOR20 U142 ( .A(n747), .B(n659), .Q(n785) );
    NOR20 U143 ( .A(n747), .B(n711), .Q(n787) );
    NOR20 U144 ( .A(n747), .B(n665), .Q(n786) );
    NOR20 U145 ( .A(n652), .B(n715), .Q(n758) );
    NOR20 U146 ( .A(n652), .B(n666), .Q(n760) );
    NOR20 U147 ( .A(n686), .B(n652), .Q(n790) );
    NOR20 U148 ( .A(n685), .B(n710), .Q(n689) );
    CLKIN0 U149 ( .A(n689), .Q(n791) );
    NAND20 U150 ( .A(n668), .B(n656), .Q(n792) );
    NOR20 U151 ( .A(n747), .B(n664), .Q(n794) );
    NOR20 U152 ( .A(n666), .B(n685), .Q(n796) );
    NAND20 U153 ( .A(n671), .B(n656), .Q(n762) );
    NOR20 U154 ( .A(n661), .B(n717), .Q(n800) );
    NOR20 U155 ( .A(n805), .B(n662), .Q(n691) );
    NOR20 U156 ( .A(n729), .B(n659), .Q(n803) );
    CLKIN0 U157 ( .A(n652), .Q(n668) );
    CLKIN0 U158 ( .A(n664), .Q(n669) );
    NAND20 U159 ( .A(n704), .B(n811), .Q(n782) );
    CLKIN0 U160 ( .A(n685), .Q(n670) );
    CLKIN0 U161 ( .A(n711), .Q(n789) );
    CLKIN0 U162 ( .A(n662), .Q(n671) );
    CLKIN0 U163 ( .A(n665), .Q(n657) );
    CLKIN0 U164 ( .A(n729), .Q(n733) );
    CLKIN0 U165 ( .A(n717), .Q(n655) );
    CLKIN0 U166 ( .A(n710), .Q(n656) );
    CLKIN0 U167 ( .A(n715), .Q(n720) );
    CLKIN0 U168 ( .A(n747), .Q(n795) );
    CLKIN0 U169 ( .A(n746), .Q(n805) );
    CLKIN0 U170 ( .A(n745), .Q(n632) );
    OAI2110 U171 ( .A(n716), .B(n700), .C(n701), .D(n702), .Q(n629) );
    CLKIN0 U172 ( .A(n732), .Q(n779) );
    OAI2110 U173 ( .A(n687), .B(n703), .C(n700), .D(n705), .Q(n811) );
    CLKIN0 U174 ( .A(n631), .Q(n812) );
    OAI210 U175 ( .A(i[5]), .B(n652), .C(i[6]), .Q(n753) );
    AOI310 U176 ( .A(n769), .B(n808), .C(n638), .D(n635), .Q(n813) );
    OAI210 U177 ( .A(n678), .B(n812), .C(n745), .Q(n636) );
    NAND20 U178 ( .A(n669), .B(n656), .Q(n763) );
    CLKIN0 U179 ( .A(n697), .Q(n770) );
    CLKIN0 U180 ( .A(n719), .Q(n727) );
    NAND40 U181 ( .A(n659), .B(n661), .C(n665), .D(n711), .Q(n780) );
    IMUX20 U182 ( .A(n814), .B(n768), .Q(n637), .S(n630) );
    CLKIN0 U183 ( .A(n731), .Q(n810) );
    CLKIN0 U184 ( .A(n766), .Q(n814) );
    CLKIN0 U185 ( .A(n762), .Q(n801) );
    CLKIN0 U186 ( .A(n792), .Q(n690) );
    CLKIN0 U187 ( .A(n704), .Q(n653) );
    CLKIN0 U188 ( .A(n799), .Q(n740) );
    CLKIN0 U189 ( .A(n804), .Q(n646) );
    CLKIN0 U190 ( .A(n642), .Q(n647) );
    CLKIN0 U191 ( .A(n754), .Q(n686) );
    CLKIN0 U192 ( .A(n666), .Q(n788) );
    CLKIN0 U193 ( .A(i[1]), .Q(n708) );
    CLKIN0 U194 ( .A(n813), .Q(n633) );
    CLKIN0 U195 ( .A(n808), .Q(n675) );
    CLKIN0 U196 ( .A(n641), .Q(n761) );
    CLKIN0 U197 ( .A(n759), .Q(n679) );
    CLKIN0 U198 ( .A(n723), .Q(n798) );
    CLKIN0 U199 ( .A(n797), .Q(n688) );
    DFC3 \signals_reg[0]  ( .C(clk), .D(N763), .Q(signals[0]), .RN(reset) );
    DFC3 \signals_reg[1]  ( .C(clk), .D(N764), .Q(signals[1]), .RN(reset) );
    DFC3 \signals_reg[2]  ( .C(clk), .D(N765), .Q(signals[2]), .RN(reset) );
    DFC3 \signals_reg[3]  ( .C(clk), .D(N766), .Q(signals[3]), .RN(reset) );
    DFC3 \signals_reg[4]  ( .C(clk), .D(N767), .QN(n624), .RN(reset) );
    DFC3 \signals_reg[5]  ( .C(clk), .D(N768), .Q(signals[5]), .RN(reset) );
    DFC3 \signals_reg[6]  ( .C(clk), .D(N769), .QN(n626), .RN(reset) );
    DFC3 \signals_reg[7]  ( .C(clk), .D(N770), .Q(signals[7]), .RN(reset) );
endmodule


module counter_DW01_inc_7_0 ( A, SUM );
input  [6:0] A;
output [6:0] SUM;
    wire \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ;
    CLKIN0 U5 ( .A(A[0]), .Q(SUM[0]) );
    XOR20 U6 ( .A(A[6]), .B(\carry[6] ), .Q(SUM[6]) );
    ADD22 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(\carry[2] ), .S(SUM[1]) );
    ADD22 U1_1_2 ( .A(A[2]), .B(\carry[2] ), .CO(\carry[3] ), .S(SUM[2]) );
    ADD22 U1_1_3 ( .A(A[3]), .B(\carry[3] ), .CO(\carry[4] ), .S(SUM[3]) );
    ADD22 U1_1_4 ( .A(A[4]), .B(\carry[4] ), .CO(\carry[5] ), .S(SUM[4]) );
    ADD22 U1_1_5 ( .A(A[5]), .B(\carry[5] ), .CO(\carry[6] ), .S(SUM[5]) );
endmodule


module counter ( clk, reset, start, i );
output [6:0] i;
input  clk, reset, start;
    wire N14, N15, N16, N17, N18, N19, N20, \i_next[0] , \i_next[1] , 
        \i_next[2] , \i_next[3] , \i_next[4] , \i_next[5] , \i_next[6] , n3, 
        n4, n5, n6, n7, n8, n9;
    NOR20 U3 ( .A(start), .B(n3), .Q(N20) );
    NOR20 U4 ( .A(start), .B(n4), .Q(N19) );
    NOR20 U5 ( .A(start), .B(n5), .Q(N18) );
    NOR20 U6 ( .A(start), .B(n6), .Q(N17) );
    NOR20 U7 ( .A(start), .B(n7), .Q(N16) );
    NOR20 U8 ( .A(start), .B(n8), .Q(N15) );
    NOR20 U9 ( .A(start), .B(n9), .Q(N14) );
    CLKIN0 U10 ( .A(\i_next[6] ), .Q(n3) );
    CLKIN0 U11 ( .A(\i_next[5] ), .Q(n4) );
    CLKIN0 U12 ( .A(\i_next[4] ), .Q(n5) );
    CLKIN0 U13 ( .A(\i_next[3] ), .Q(n6) );
    CLKIN0 U14 ( .A(\i_next[2] ), .Q(n7) );
    CLKIN0 U15 ( .A(\i_next[1] ), .Q(n8) );
    CLKIN0 U16 ( .A(\i_next[0] ), .Q(n9) );
    DFC3 \i_reg[0]  ( .C(clk), .D(N14), .Q(i[0]), .RN(reset) );
    DFC3 \i_reg[1]  ( .C(clk), .D(N15), .Q(i[1]), .RN(reset) );
    DFC3 \i_reg[2]  ( .C(clk), .D(N16), .Q(i[2]), .RN(reset) );
    DFC3 \i_reg[3]  ( .C(clk), .D(N17), .Q(i[3]), .RN(reset) );
    DFC3 \i_reg[4]  ( .C(clk), .D(N18), .Q(i[4]), .RN(reset) );
    DFC3 \i_reg[5]  ( .C(clk), .D(N19), .Q(i[5]), .RN(reset) );
    DFC3 \i_reg[6]  ( .C(clk), .D(N20), .Q(i[6]), .RN(reset) );
    counter_DW01_inc_7_0 add_8 ( .A(i), .SUM({\i_next[6] , \i_next[5] , 
        \i_next[4] , \i_next[3] , \i_next[2] , \i_next[1] , \i_next[0] }) );
endmodule


module fsm ( signals, clk, reset, selEncDec, start );
output [7:0] signals;
input  clk, reset, selEncDec, start;
    wire \net3[0] , \net3[1] , \net3[2] , \net3[3] , \net3[4] , \net3[5] , 
        \net3[6] ;
    decoder I0 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), .start(start
        ), .i({\net3[0] , \net3[1] , \net3[2] , \net3[3] , \net3[4] , 
        \net3[5] , \net3[6] }), .signals(signals) );
    counter I2 ( .clk(clk), .reset(reset), .start(start), .i({\net3[0] , 
        \net3[1] , \net3[2] , \net3[3] , \net3[4] , \net3[5] , \net3[6] }) );
endmodule


module core ( data_out, signals, clk, data_in, key_in, reset, selEncDec, start
     );
output [31:0] data_out;
output [7:0] signals;
input  [31:0] data_in;
input  [127:0] key_in;
input  clk, reset, selEncDec, start;
    wire \net029[0] , \net029[1] , \net029[2] , \net029[3] , \net029[4] , 
        \net029[5] , \net029[6] , \net029[7] , \net029[8] , \net029[9] , 
        \net029[10] , \net029[11] , \net029[12] , \net029[13] , \net029[14] , 
        \net029[15] , \net029[16] , \net029[17] , \net029[18] , \net029[19] , 
        \net029[20] , \net029[21] , \net029[22] , \net029[23] , \net029[24] , 
        \net029[25] , \net029[26] , \net029[27] , \net029[28] , \net029[29] , 
        \net029[30] , \net029[31] , \net030[0] , \net030[1] , \net030[2] , 
        \net030[3] , \net030[4] , \net030[5] , \net030[6] , \net030[7] , 
        \net030[8] , \net030[9] , \net030[10] , \net030[11] , \net030[12] , 
        \net030[13] , \net030[14] , \net030[15] , \net030[16] , \net030[17] , 
        \net030[18] , \net030[19] , \net030[20] , \net030[21] , \net030[22] , 
        \net030[23] , \net030[24] , \net030[25] , \net030[26] , \net030[27] , 
        \net030[28] , \net030[29] , \net030[30] , \net030[31] , \net030[32] , 
        \net030[33] , \net030[34] , \net030[35] , \net030[36] , \net030[37] , 
        \net030[38] , \net030[39] , \net030[40] , \net030[41] , \net030[42] , 
        \net030[43] , \net030[44] , \net030[45] , \net030[46] , \net030[47] , 
        \net030[48] , \net030[49] , \net030[50] , \net030[51] , \net030[52] , 
        \net030[53] , \net030[54] , \net030[55] , \net030[56] , \net030[57] , 
        \net030[58] , \net030[59] , \net030[60] , \net030[61] , \net030[62] , 
        \net030[63] , \net030[64] , \net030[65] , \net030[66] , \net030[67] , 
        \net030[68] , \net030[69] , \net030[70] , \net030[71] , \net030[72] , 
        \net030[73] , \net030[74] , \net030[75] , \net030[76] , \net030[77] , 
        \net030[78] , \net030[79] , \net030[80] , \net030[81] , \net030[82] , 
        \net030[83] , \net030[84] , \net030[85] , \net030[86] , \net030[87] , 
        \net030[88] , \net030[89] , \net030[90] , \net030[91] , \net030[92] , 
        \net030[93] , \net030[94] , \net030[95] , \net030[96] , \net030[97] , 
        \net030[98] , \net030[99] , \net030[100] , \net030[101] , 
        \net030[102] , \net030[103] , \net030[104] , \net030[105] , 
        \net030[106] , \net030[107] , \net030[108] , \net030[109] , 
        \net030[110] , \net030[111] , \net030[112] , \net030[113] , 
        \net030[114] , \net030[115] , \net030[116] , \net030[117] , 
        \net030[118] , \net030[119] , \net030[120] , \net030[121] , 
        \net030[122] , \net030[123] , \net030[124] , \net030[125] , 
        \net030[126] , \net030[127] , \net54[0] , \net54[1] , \net54[2] , 
        \net54[3] , \net54[4] , \net54[5] , \net54[6] , \net54[7] , \net54[8] , 
        \net54[9] , \net54[10] , \net54[11] , \net54[12] , \net54[13] , 
        \net54[14] , \net54[15] , \net54[16] , \net54[17] , \net54[18] , 
        \net54[19] , \net54[20] , \net54[21] , \net54[22] , \net54[23] , 
        \net54[24] , \net54[25] , \net54[26] , \net54[27] , \net54[28] , 
        \net54[29] , \net54[30] , \net54[31] ;
    keyExpansion I2 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), 
        .key_gen(signals[7]), .start(start), .nextKey(signals[2]), .key_in(
        key_in), .key_out({\net030[0] , \net030[1] , \net030[2] , \net030[3] , 
        \net030[4] , \net030[5] , \net030[6] , \net030[7] , \net030[8] , 
        \net030[9] , \net030[10] , \net030[11] , \net030[12] , \net030[13] , 
        \net030[14] , \net030[15] , \net030[16] , \net030[17] , \net030[18] , 
        \net030[19] , \net030[20] , \net030[21] , \net030[22] , \net030[23] , 
        \net030[24] , \net030[25] , \net030[26] , \net030[27] , \net030[28] , 
        \net030[29] , \net030[30] , \net030[31] , \net030[32] , \net030[33] , 
        \net030[34] , \net030[35] , \net030[36] , \net030[37] , \net030[38] , 
        \net030[39] , \net030[40] , \net030[41] , \net030[42] , \net030[43] , 
        \net030[44] , \net030[45] , \net030[46] , \net030[47] , \net030[48] , 
        \net030[49] , \net030[50] , \net030[51] , \net030[52] , \net030[53] , 
        \net030[54] , \net030[55] , \net030[56] , \net030[57] , \net030[58] , 
        \net030[59] , \net030[60] , \net030[61] , \net030[62] , \net030[63] , 
        \net030[64] , \net030[65] , \net030[66] , \net030[67] , \net030[68] , 
        \net030[69] , \net030[70] , \net030[71] , \net030[72] , \net030[73] , 
        \net030[74] , \net030[75] , \net030[76] , \net030[77] , \net030[78] , 
        \net030[79] , \net030[80] , \net030[81] , \net030[82] , \net030[83] , 
        \net030[84] , \net030[85] , \net030[86] , \net030[87] , \net030[88] , 
        \net030[89] , \net030[90] , \net030[91] , \net030[92] , \net030[93] , 
        \net030[94] , \net030[95] , \net030[96] , \net030[97] , \net030[98] , 
        \net030[99] , \net030[100] , \net030[101] , \net030[102] , 
        \net030[103] , \net030[104] , \net030[105] , \net030[106] , 
        \net030[107] , \net030[108] , \net030[109] , \net030[110] , 
        \net030[111] , \net030[112] , \net030[113] , \net030[114] , 
        \net030[115] , \net030[116] , \net030[117] , \net030[118] , 
        \net030[119] , \net030[120] , \net030[121] , \net030[122] , 
        \net030[123] , \net030[124] , \net030[125] , \net030[126] , 
        \net030[127] }), .sboxInp({\net54[0] , \net54[1] , \net54[2] , 
        \net54[3] , \net54[4] , \net54[5] , \net54[6] , \net54[7] , \net54[8] , 
        \net54[9] , \net54[10] , \net54[11] , \net54[12] , \net54[13] , 
        \net54[14] , \net54[15] , \net54[16] , \net54[17] , \net54[18] , 
        \net54[19] , \net54[20] , \net54[21] , \net54[22] , \net54[23] , 
        \net54[24] , \net54[25] , \net54[26] , \net54[27] , \net54[28] , 
        \net54[29] , \net54[30] , \net54[31] }), .sboxOutp({\net029[0] , 
        \net029[1] , \net029[2] , \net029[3] , \net029[4] , \net029[5] , 
        \net029[6] , \net029[7] , \net029[8] , \net029[9] , \net029[10] , 
        \net029[11] , \net029[12] , \net029[13] , \net029[14] , \net029[15] , 
        \net029[16] , \net029[17] , \net029[18] , \net029[19] , \net029[20] , 
        \net029[21] , \net029[22] , \net029[23] , \net029[24] , \net029[25] , 
        \net029[26] , \net029[27] , \net029[28] , \net029[29] , \net029[30] , 
        \net029[31] }) );
    dataUnit I1 ( .clk(clk), .reset(reset), .selEncDec(selEncDec), .control_A(
        signals[6]), .control_B(signals[5]), .control_C(signals[4]), 
        .selectSbox_in(signals[3]), .selectBar(signals[1:0]), .key_in({
        \net030[0] , \net030[1] , \net030[2] , \net030[3] , \net030[4] , 
        \net030[5] , \net030[6] , \net030[7] , \net030[8] , \net030[9] , 
        \net030[10] , \net030[11] , \net030[12] , \net030[13] , \net030[14] , 
        \net030[15] , \net030[16] , \net030[17] , \net030[18] , \net030[19] , 
        \net030[20] , \net030[21] , \net030[22] , \net030[23] , \net030[24] , 
        \net030[25] , \net030[26] , \net030[27] , \net030[28] , \net030[29] , 
        \net030[30] , \net030[31] , \net030[32] , \net030[33] , \net030[34] , 
        \net030[35] , \net030[36] , \net030[37] , \net030[38] , \net030[39] , 
        \net030[40] , \net030[41] , \net030[42] , \net030[43] , \net030[44] , 
        \net030[45] , \net030[46] , \net030[47] , \net030[48] , \net030[49] , 
        \net030[50] , \net030[51] , \net030[52] , \net030[53] , \net030[54] , 
        \net030[55] , \net030[56] , \net030[57] , \net030[58] , \net030[59] , 
        \net030[60] , \net030[61] , \net030[62] , \net030[63] , \net030[64] , 
        \net030[65] , \net030[66] , \net030[67] , \net030[68] , \net030[69] , 
        \net030[70] , \net030[71] , \net030[72] , \net030[73] , \net030[74] , 
        \net030[75] , \net030[76] , \net030[77] , \net030[78] , \net030[79] , 
        \net030[80] , \net030[81] , \net030[82] , \net030[83] , \net030[84] , 
        \net030[85] , \net030[86] , \net030[87] , \net030[88] , \net030[89] , 
        \net030[90] , \net030[91] , \net030[92] , \net030[93] , \net030[94] , 
        \net030[95] , \net030[96] , \net030[97] , \net030[98] , \net030[99] , 
        \net030[100] , \net030[101] , \net030[102] , \net030[103] , 
        \net030[104] , \net030[105] , \net030[106] , \net030[107] , 
        \net030[108] , \net030[109] , \net030[110] , \net030[111] , 
        \net030[112] , \net030[113] , \net030[114] , \net030[115] , 
        \net030[116] , \net030[117] , \net030[118] , \net030[119] , 
        \net030[120] , \net030[121] , \net030[122] , \net030[123] , 
        \net030[124] , \net030[125] , \net030[126] , \net030[127] }), 
        .data_in(data_in), .data_out(data_out), .sboxInp({\net54[0] , 
        \net54[1] , \net54[2] , \net54[3] , \net54[4] , \net54[5] , \net54[6] , 
        \net54[7] , \net54[8] , \net54[9] , \net54[10] , \net54[11] , 
        \net54[12] , \net54[13] , \net54[14] , \net54[15] , \net54[16] , 
        \net54[17] , \net54[18] , \net54[19] , \net54[20] , \net54[21] , 
        \net54[22] , \net54[23] , \net54[24] , \net54[25] , \net54[26] , 
        \net54[27] , \net54[28] , \net54[29] , \net54[30] , \net54[31] }), 
        .sboxOutp({\net029[0] , \net029[1] , \net029[2] , \net029[3] , 
        \net029[4] , \net029[5] , \net029[6] , \net029[7] , \net029[8] , 
        \net029[9] , \net029[10] , \net029[11] , \net029[12] , \net029[13] , 
        \net029[14] , \net029[15] , \net029[16] , \net029[17] , \net029[18] , 
        \net029[19] , \net029[20] , \net029[21] , \net029[22] , \net029[23] , 
        \net029[24] , \net029[25] , \net029[26] , \net029[27] , \net029[28] , 
        \net029[29] , \net029[30] , \net029[31] }) );
    fsm I0 ( .signals(signals), .clk(clk), .reset(reset), .selEncDec(selEncDec
        ), .start(start) );
endmodule

