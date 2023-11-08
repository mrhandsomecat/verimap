echo "Generating a list of wires for aes_core_syn_sr.v in file aes_core_syn_sr.w"
verimap -r ams.rls -i ams.v -o /dev/null aes_core_syn_sr.v -w aes_core_syn_sr.w -wl1 -wp "always @(u.?) sr_sa=sr_sa+1;"
verimap -r ams.rls -i ams.v -o /dev/null aes_core_syn_sr.v -w aes_core_syn_sr.hz_ -wl1 -wp "integer \u.?.hz_time ; integer \u.?.hz_num ; initial begin \u.?.hz_time = 0; \u.?.hz_num = 0; forever @(u.?) begin if (\$time - \u.?.hz_time < max_hz_delay) begin  \u.?.hz_num = \u.?.hz_num + 1; sr_hz = sr_hz + 1; end else if (\u.?.hz_num % 2 == 1) begin \u.?.hz_num = \u.?.hz_num + 1; sr_hz = sr_hz + 1; end \u.?.hz_time = \$time; end end"
cat  aes_core_syn_sr.hz_ | sed 's/\.\\\([^ ][^ ]*\) \.hz_/.\1.hz_/g' > aes_core_syn_sr.hz
rm aes_core_syn_sr.hz_

echo "Generating a list of wires for aes_core_syn_dr.v in file aes_core_syn_dr.w"
verimap -r ams.rls -g ams_dr-gen.v -i ams.v,ams_dr-cl.v,ams_sr-misc.v,ams_adr-df_ta_clk2.v,ams_adr-xdf_clk2.v,ams_adr-cnv.v aes_core_syn_dr.v -o /dev/null -w aes_core_syn_dr.w -wl1 -wp "always @(w.?) dr_sa=dr_sa+1;"
# cat  aes_core_syn_dr.w | grep _1[\ \[\)] | sed 's/dr_sa/dr_sa_1/g' > aes_core_syn_dr.w1
# cat  aes_core_syn_dr.w | grep _0[\ \[\)] | sed 's/dr_sa/dr_sa_0/g' > aes_core_syn_dr.w0
# verimap -r ams.rls -g ams_dr-gen.v -i ams.v,ams_dr-cl.v,ams_sr-misc.v,ams_adr-df_ta_clk2.v,ams_adr-xdf_clk2.v,ams_adr-cnv.v aes_core_syn_dr.v -o /dev/null -w aes_core_syn_dr.hz_ -wl1 -wp "integer \u.?.hz_time ; integer \u.?.hz_num ; initial begin \u.?.hz_time = 0; \u.?.hz_num = 0; forever @(u.?) begin if (\$time - \u.?.hz_time < max_hz_delay) begin  \u.?.hz_num = \u.?.hz_num + 1; dr_hz = dr_hz + 1; end else if (\u.?.hz_num % 2 == 1) begin \u.?.hz_num = \u.?.hz_num + 1; dr_hz = dr_hz + 1; end \u.?.hz_time = \$time; end end"
#cat  aes_core_syn_dr.hz_ | sed 's/\.\\\([^ ][^ ]*\) \.hz_/.\1.hz_/g' > aes_core_syn_dr.hz
#rm aes_core_syn_dr.hz_
