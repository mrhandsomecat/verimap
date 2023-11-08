exec verilog \
aes_core_dec_testbench.v \
aes_core_syn_sr.v \
aes_core_syn_dr.v \
ams_dr-cl.v \
ams_dr-gen.v \
ams_sr-misc.v \
ams_adr-df_tri_clk2.v \
ams_adr-xdf_clk2.v \
ams_adr-cnv_tri.v \
-f HK_CSX.inc \
+libext+.v+.V 
-s
