
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:032default:default2
00:00:082default:default2
292.8952default:default2
66.7892default:defaultZ17-268h px� 
t
Command: %s
53*	vivadotcl2C
/synth_design -top MIPs -part xc7vx485tffg1157-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
	xc7vx485t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
	xc7vx485t2default:defaultZ17-349h px� 
�
%s*synth2�
rStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 403.746 ; gain = 98.730
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
MIPs2default:default2D
.C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/MIPs.vhd2default:default2
342default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2 
control_unit2default:default2L
6C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/control_unit.vhd2default:default2
362default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
control_unit2default:default2
12default:default2
12default:default2L
6C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/control_unit.vhd2default:default2
362default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
datapath2default:default2H
2C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/datapath.vhd2default:default2
482default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
datapath2default:default2
22default:default2
12default:default2H
2C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/datapath.vhd2default:default2
482default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
mem2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
402default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
rst_n2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
462default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
read2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
462default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
write2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
462default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
memoria2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
462default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
end_mem2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
462default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
in_mem2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
462default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mem2default:default2
32default:default2
12default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
402default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MIPs2default:default2
42default:default2
12default:default2D
.C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/MIPs.vhd2default:default2
342default:default8@Z8-256h px� 
u
!design %s has unconnected port %s3331*oasys2
mem2default:default2
clk2default:defaultZ8-3331h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 487.648 ; gain = 182.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 487.648 ; gain = 182.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Loading part: xc7vx485tffg1157-1
2default:defaulth p
x
� 
Y
Loading part %s157*device2&
xc7vx485tffg1157-12default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 487.648 ; gain = 182.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2 
control_unit2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	mem_write2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
branch2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
addr_sel2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	ir_enable2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	reg_write2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	old_state2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
current_state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
current_state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2H
2C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/datapath.vhd2default:default2
2002default:default8@Z8-5818h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
pc_reg2default:default2H
2C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/datapath.vhd2default:default2
792default:default8@Z8-6014h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_              busca_inst |                        000000010 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_              decodifica |                        000000100 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                salva_pc |                        000001000 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    load |                        000010000 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   store |                        000100000 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    wmem |                        010000000 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                     ula |                        001000000 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_                    wreg |                        100000000 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                        000000001 |                             1000
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2 
control_unit2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
out_mem_reg2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
3082default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[0]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[1]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[2]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[3]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[4]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[5]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[6]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[7]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[8]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
memoria_reg[9]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[10]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[11]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[12]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[13]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[14]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[15]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[16]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[17]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[18]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[19]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[20]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[21]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[22]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[23]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[24]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[25]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[26]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[27]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[28]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[29]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[30]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[31]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[32]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[33]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[34]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[35]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[36]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[37]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[38]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[39]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[40]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[41]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[42]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[43]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[44]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[45]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[46]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[47]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[48]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[49]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[50]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[51]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[52]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[53]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[54]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[55]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[56]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[57]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[58]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[59]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[60]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[61]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[62]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[63]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[64]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[65]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[66]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[67]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[68]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[69]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[70]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[71]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[72]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[73]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[74]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[75]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[76]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[77]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[78]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[79]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[80]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[81]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[82]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[83]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[84]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[85]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[86]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[87]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[88]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[89]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[90]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[91]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[92]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[93]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[94]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[95]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[96]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[97]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2#
memoria_reg[98]2default:default2C
-C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/mem.vhd2default:default2
492default:default8@Z8-327h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-3272default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:19 . Memory (MB): peak = 667.441 ; gain = 362.426
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  21 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 383   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 128   
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
A
%s
*synth2)
Module control_unit 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  21 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module datapath 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
8
%s
*synth2 
Module mem 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 128   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 382   
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2o
[Part Resources:
DSPs: 2800 (col length:140)
BRAMs: 2060 (col length: RAMB18 140 RAMB36 70)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
O202default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
O25802default:defaultZ8-5546h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
datapath/pc_reg2default:default2H
2C:/MIPSOrg/MIPSOrg.srcs/sources_1/new/datapath.vhd2default:default2
792default:default8@Z8-6014h px� 
u
!design %s has unconnected port %s3331*oasys2
mem2default:default2
clk2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:37 ; elapsed = 00:00:37 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
mem/out_mem_reg[15]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
mem/out_mem_reg[14]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
mem/out_mem_reg[13]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
mem/out_mem_reg[12]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
mem/out_mem_reg[11]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
mem/out_mem_reg[10]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[9]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[8]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
mem/out_mem_reg[0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[0][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[1][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[2][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[3][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[4][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[5][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[6][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[7][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[8][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][3]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][2]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][1]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mem/memoria_reg[9][0]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mem/memoria_reg[10][7]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mem/memoria_reg[10][6]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mem/memoria_reg[10][5]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mem/memoria_reg[10][4]2default:default2
MIPs2default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:42 ; elapsed = 00:00:42 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px� 
B
%s*synth2*
|2     |LUT1 |     1|
2default:defaulth px� 
B
%s*synth2*
|3     |LUT2 |     3|
2default:defaulth px� 
B
%s*synth2*
|4     |LUT3 |     2|
2default:defaulth px� 
B
%s*synth2*
|5     |LUT6 |     3|
2default:defaulth px� 
B
%s*synth2*
|6     |FDRE |     8|
2default:defaulth px� 
B
%s*synth2*
|7     |FDSE |     1|
2default:defaulth px� 
B
%s*synth2*
|8     |IBUF |     2|
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+---------------+-------------+------+
2default:defaulth p
x
� 
Z
%s
*synth2B
.|      |Instance       |Module       |Cells |
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+---------------+-------------+------+
2default:defaulth p
x
� 
Z
%s
*synth2B
.|1     |top            |             |    21|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|2     |  control_unit |control_unit |    18|
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+---------------+-------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
u
%s
*synth2]
ISynthesis finished with 0 errors, 0 critical warnings and 2521 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 962.184 ; gain = 657.168
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
332default:default2
2102default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:492default:default2
00:01:172default:default2
962.1842default:default2
669.2892default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2<
(C:/MIPSOrg/MIPSOrg.runs/synth_1/MIPs.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file MIPs_utilization_synth.rpt -pb MIPs_utilization_synth.pb
2default:defaulth px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.478 . Memory (MB): peak = 962.184 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Nov 12 00:09:56 20182default:defaultZ17-206h px� 


End Record