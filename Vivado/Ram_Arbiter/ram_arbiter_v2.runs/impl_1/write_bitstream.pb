
]
Command: %s
1870*	planAhead2(
&open_checkpoint ram_arbiter_routed.dcpZ12-2866h px� 
L

Starting %s Task
103*constraints2
open_checkpointZ18-103h px� 
�

%s
*constraints2`
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.092 . Memory (MB): peak = 297.445 ; gain = 6.027h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0122	
861.0432
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
24Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
1Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2023.2Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read ShapeDB Complete: 2

00:00:002
00:00:00.0062	
949.8012
0.203Z17-268h px� 
K
!Start Reading Physical Databases.35885*designutilsZ20-5722h px� 
:
Reading placement.
206*designutilsZ20-206h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Netlist Cache: 2

00:00:002
00:00:00.0022	
974.6642
0.000Z17-268h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Device Cache: 2

00:00:002
00:00:00.0152	
974.6642
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read PlaceDB: 2

00:00:002
00:00:00.0392	
974.6642
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read PulsedLatchDB: 2

00:00:002

00:00:002	
974.6642
0.000Z17-268h px� 
8
Reading routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read RouteStorage: 2

00:00:002
00:00:00.0242	
974.6642
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Physdb Files: 2

00:00:002
00:00:00.1082	
974.6642
0.000Z17-268h px� 
x
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2

0.0000002

0.000000Z20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Finished XDEF File Restore: 2

00:00:002
00:00:00.2432	
974.6642
24.863Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1359.7542
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
o
'Checkpoint was created with %s build %s378*project2
Vivado v2023.2 (64-bit)2	
4029153Z1-604h px� 
�
�Critical violations of the methodology design rules detected. Critical violations may contribute to timing failures or cause functional issues in hardware. Run report_methodology for more information.10702*	planAheadZ12-23575h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
open_checkpoint: 2

00:00:152

00:00:282

1359.7542

1078.234Z17-268h px� 
Y
Command: %s
53*	vivadotcl2(
&write_bitstream -force ram_arbiter.bitZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7a35tZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7a35tZ17-349h px� 
f
,Running DRC as a precondition to command %s
1349*	planAhead2
write_bitstreamZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
w
"Loaded Vivado IP repository '%s'.
1332*coregen2.
,E:/downloads/.xinstall/Vivado/2023.2/data/ipZ19-2313h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�

�Unspecified I/O Standard: 52 out of 52 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2�
 "
ADDR_C2[3:0]ADDR_C2"
DATAIN_C2[7:0]	DATAIN_C2"
DATAOUT_C2[7:0]
DATAOUT_C2"
RDADDR_C1[3:0]	RDADDR_C1"
RDDATA_C1[7:0]	RDDATA_C1"
WRADDR_C1[3:0]	WRADDR_C1"
WRDATA_C1[7:0]	WRDATA_C1"
ACK_C2ACK_C2"
CLOCKCLOCK"
RD_EN_C1RD_EN_C1"$
RD_NOT_WRITE_C2RD_NOT_WRITE_C2"

REQUEST_C2
REQUEST_C2"
RST_DONERST_DONE"
RST_NRST_N"
WR_EN_C1WR_EN_C12
 DRC|Pin Planning8ZNSTD-1h px� 
�

�Unconstrained Logical Port: 52 out of 52 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2�
 "
ADDR_C2[3:0]ADDR_C2"
DATAIN_C2[7:0]	DATAIN_C2"
DATAOUT_C2[7:0]
DATAOUT_C2"
RDADDR_C1[3:0]	RDADDR_C1"
RDDATA_C1[7:0]	RDDATA_C1"
WRADDR_C1[3:0]	WRADDR_C1"
WRDATA_C1[7:0]	WRDATA_C1"
ACK_C2ACK_C2"
CLOCKCLOCK"
RD_EN_C1RD_EN_C1"$
RD_NOT_WRITE_C2RD_NOT_WRITE_C2"

REQUEST_C2
REQUEST_C2"
RST_DONERST_DONE"
RST_NRST_N"
WR_EN_C1WR_EN_C12
 DRC|Pin Planning8ZUCIO-1h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2
 DRC|Pin Planning8ZCFGBVS-1h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2<
 "8
dut2/RESET_DONE_REG13_outdut2/RESET_DONE_REG13_out2D
 "@
dut2/RESET_DONE_REG_reg_i_2/Odut2/RESET_DONE_REG_reg_i_2/O2@
 "<
dut2/RESET_DONE_REG_reg_i_2	dut2/RESET_DONE_REG_reg_i_22+
 %DRC|Physical Configuration|Chip Level8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "J
"dut2/nx_client_read_reg[2]_i_2_n_0"dut2/nx_client_read_reg[2]_i_2_n_02J
 "F
 dut2/nx_client_read_reg[2]_i_2/O dut2/nx_client_read_reg[2]_i_2/O2F
 "B
dut2/nx_client_read_reg[2]_i_2	dut2/nx_client_read_reg[2]_i_22+
 %DRC|Physical Configuration|Chip Level8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 "L
#dut2/nx_client_write_reg[2]_i_2_n_0#dut2/nx_client_write_reg[2]_i_2_n_02L
 "H
!dut2/nx_client_write_reg[2]_i_2/O!dut2/nx_client_write_reg[2]_i_2/O2H
 "D
dut2/nx_client_write_reg[2]_i_2	dut2/nx_client_write_reg[2]_i_22+
 %DRC|Physical Configuration|Chip Level8ZPDRC-153h px� 
T
DRC finished with %s
1905*	planAhead2
2 Errors, 4 WarningsZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162
142
02
3Z4-41h px� 
?

%s failed
30*	vivadotcl2
write_bitstreamZ4-43h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_bitstream: 2

00:00:022

00:00:052

1471.2422	
111.488Z17-268h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Nov 29 22:06:58 2023Z17-206h px� 


End Record