
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:092	
464.8362	
180.754Z17-268h px� 
�
Command: %s
1870*	planAhead2{
yread_checkpoint -auto_incremental -incremental E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/utils_1/imports/synth_1/FSM.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2L
JE:/downloads/.xinstall/Vivado/FSM/FSM.srcs/utils_1/imports/synth_1/FSM.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top FSM -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
M
#Helper process launched with PID %s4824*oasys2
6076Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1300.996 ; gain = 440.660
h px� 
�
synthesizing module '%s'%s4497*oasys2
FSM2
 2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
18@Z8-6157h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
RST_N2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
648@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2

RD_EN_C12B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
648@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2

REQUEST_C22B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
648@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
RD_NOT_WRITE_C22B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
648@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2

WR_EN_C12B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
648@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FSM2
 2
02
12B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
18@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

RST_DONE2
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
78@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	RDDATA_C12
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
178@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

DATAOUT_C22
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
198@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
ACK_C22
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
208@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
RD_EN2
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
228@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
WR_EN2
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
228@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
WR_ADDR2
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
238@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
RD_ADDR2
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
238@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
WR_DATA2
FSM2B
>E:/downloads/.xinstall/Vivado/FSM/FSM.srcs/sources_1/new/FSM.v2
248@Z8-3848h px� 
J
!design %s has an empty top module3330*oasys2
FSMZ8-3330h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

RST_DONE2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[7]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[6]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[5]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[4]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[3]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[2]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[1]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[0]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[7]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[6]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[5]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[4]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[3]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[2]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[1]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[0]2
FSMZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACK_C22
FSMZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_EN2
FSMZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_EN2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ADDR[3]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ADDR[2]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ADDR[1]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ADDR[0]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_ADDR[3]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_ADDR[2]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_ADDR[1]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_ADDR[0]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[7]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[6]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[5]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[4]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[3]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[2]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[1]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_DATA[0]2
FSMZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
RST_N2
FSMZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLOCK2
FSMZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_EN_C12
FSMZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_EN_C12
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDADDR_C1[3]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDADDR_C1[2]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDADDR_C1[1]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDADDR_C1[0]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRADDR_C1[3]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRADDR_C1[2]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRADDR_C1[1]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRADDR_C1[0]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[7]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[6]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[5]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[4]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[3]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[2]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[1]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
WRDATA_C1[0]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[7]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[6]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[5]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[4]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[3]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[2]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[1]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAIN_C2[0]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

REQUEST_C22
FSMZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_NOT_WRITE_C22
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_C2[3]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_C2[2]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_C2[1]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_C2[0]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[7]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[6]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[5]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[4]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[3]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[2]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[1]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

RD_DATA[0]2
FSMZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1407.156 ; gain = 546.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1407.156 ; gain = 546.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1407.156 ; gain = 546.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1407.1562
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2L
HE:/downloads/.xinstall/Vivado/FSM/FSM.srcs/constrs_1/new/pin_mapping.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2L
HE:/downloads/.xinstall/Vivado/FSM/FSM.srcs/constrs_1/new/pin_mapping.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1423.5392
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0012

1423.5392
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:24 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
J
!design %s has an empty top module3330*oasys2
FSMZ8-3330h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

RST_DONE2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[7]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[6]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[5]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[4]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[3]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[2]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[1]2
FSMZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
RDDATA_C1[0]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[7]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[6]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[5]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[4]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[3]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[2]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[1]2
FSMZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATAOUT_C2[0]2
FSMZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACK_C22
FSMZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_EN2
FSMZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_EN2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ADDR[3]2
FSMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ADDR[2]2
FSMZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:27 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:35 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:35 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:27 ; elapsed = 00:00:35 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|      |Cell  |Count |
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|1     |OBUFT |    36|
h px� 
1
%s*synth2
+------+------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 80 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:40 . Memory (MB): peak = 1423.539 ; gain = 546.820
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1423.539 ; gain = 563.203
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1423.7302
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1428.3672
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

f35201eaZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
212
1232
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:392

00:00:492

1428.3672	
959.574Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1428.3672
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2<
:E:/downloads/.xinstall/Vivado/FSM/FSM.runs/synth_1/FSM.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file FSM_utilization_synth.rpt -pb FSM_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Nov 29 10:56:40 2023Z17-206h px� 


End Record