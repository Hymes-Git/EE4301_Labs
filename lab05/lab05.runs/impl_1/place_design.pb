
?
Command: %s
53*	vivadotcl2
place_designZ4-113h px� 
~
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2
xc7s50Z17-347h px� 
n
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2
xc7s50Z17-349h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
k
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
2Z30-611h px� 
C

Starting %s Task
103*constraints2
PlacerZ18-103h px� 
R

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1 2'
%Placer Initialization Netlist SortingZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1933.9102
0.000Z17-268h px� 
a
%s*common2H
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1417fba93
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.005 . Memory (MB): peak = 1933.910 ; gain = 0.000h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1933.9102
0.000Z17-268h px� 
q

Phase %s%s
101*constraints2
1.2 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
9Poor placement for routing between an IO pin and BUFG. %s528*place2�
�If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets PCIncrement_IBUF] >

	Clock Rule: rule_gclkio_bufg
	Status: FAILED
	Rule Description: An IOB driving a BUFG must use a CCIO in the same half side (top/bottom) of chip as the BUFG

	<MSGMETA::BEGIN::BLOCK>PCIncrement_IBUF_inst<MSGMETA::END> (IBUF.O) is locked to IOB_X1Y54
	<MSGMETA::BEGIN::BLOCK>PCIncrement_IBUF_BUFG_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y22
"�
PCIncrement_IBUF_inst2�If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets PCIncrement_IBUF] >

	Clock Rule: rule_gclkio_bufg
	Status: FAILED
	Rule Description: An IOB driving a BUFG must use a CCIO in the same half side (top/bottom) of chip as the BUFG

	:" (IBUF.O) is locked to IOB_X1Y54
	"e
PCIncrement_IBUF_BUFG_inst2 :C (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y22
8Z30-574h px� 
n
%s*common2U
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 15421dad9
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.517 . Memory (MB): peak = 1933.910 ; gain = 0.000h px� 
O
%s*common26
4Phase 1 Placer Initialization | Checksum: 15421dad9
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.519 . Memory (MB): peak = 1933.910 ; gain = 0.000h px� 
�
�Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2
IO Clock Placer failedZ30-99h px� 
D
%s*common2+
)Ending Placer Task | Checksum: 15421dad9
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.522 . Memory (MB): peak = 1933.910 ; gain = 0.000h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
02
12
3Z4-41h px� 
<

%s failed
30*	vivadotcl2
place_designZ4-43h px� 
[
Command failed: %s
69*common2&
$Placer could not place all instancesZ17-69h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Nov 18 10:29:16 2024Z17-206h px� 


End Record