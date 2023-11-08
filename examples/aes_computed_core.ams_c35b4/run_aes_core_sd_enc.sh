exec verilog \
aes_core_sd_enc_testbench.v \
aes_core_syn_dr.v \
ams_dr-cl.v \
ams_dr-gen.v \
ams_sr-misc.v \
ams_adr-df_ta_clk2.v \
ams_adr-xdf_clk2.v \
ams_adr-cnv.v \
-f vxl.inc \
+libext+.v+.V 
-s
