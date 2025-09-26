*
*
*
*                       LINUX           Sat Mar  8 12:04:08 2025
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 20.1.2-p025
*  Build Date     : Thu Sep 3 13:54:09 PDT 2020
*
*  HSPICE LIBRARY
*
*
*
Cout nout gnd 1f
Vdd1 nA gnd 1.8
Vdd2 nB gnd 1.8
Vdd3 nC gnd 1.8
Vdd nVdd gnd 1.8
xNOR3 nVdd gnd nA nB nC nout NOR3_spice_ext
*
.SUBCKT NOR3_spice_ext Vdd Vss A B C Y
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MNM0	Y#8	C#1	vss#7	vss#1	g45n1svt	L=4.5e-08
+ W=1.2e-07
+ AD=1.68e-14	AS=1.68e-14	PD=5.2e-07	PS=5.2e-07
+ scc=6.45608e-06 scb=0.00252836 sca=5.42227 sb=1.4e-07 sa=1.4e-07
MNM1	Y#6	B#3	vss#8	vss#1	g45n1svt	L=4.5e-08
+ W=1.2e-07
+ AD=1.68e-14	AS=1.68e-14	PD=5.2e-07	PS=5.2e-07
+ scc=5.36211e-06 scb=0.0016813 sca=3.79042 sb=1.4e-07 sa=1.4e-07
MNM2	Y#5	A#3	vss#10	vss#1	g45n1svt	L=4.5e-08
+ W=1.2e-07
+ AD=1.68e-14	AS=1.68e-14	PD=5.2e-07	PS=5.2e-07
+ scc=5.52486e-05 scb=0.00641847 sca=7.94266 sb=1.4e-07 sa=1.4e-07
MPM2	Y#1	C#3	net2#2	vdd#7	g45p1svt	L=4.5e-08
+ W=7.2e-07
+ AD=1.008e-13	AS=1.008e-13	PD=1.72e-06	PS=1.72e-06
+ scc=0.00763038 scb=0.0624743 sca=65.0699 sb=1.4e-07 sa=1.4e-07
MPM1	net2	B#1	net1#2	vdd#4	g45p1svt	L=4.5e-08
+ W=7.2e-07
+ AD=1.008e-13	AS=1.008e-13	PD=1.72e-06	PS=1.72e-06
+ scc=0.00763038 scb=0.0624743 sca=65.0699 sb=1.4e-07 sa=1.4e-07
MPM0	net1	A#1	vdd#1	vdd#2	g45p1svt	L=4.5e-08
+ W=7.2e-07
+ AD=1.008e-13	AS=1.008e-13	PD=1.72e-06	PS=1.72e-06
+ scc=0.00763038 scb=0.0624743 sca=65.0699 sb=1.4e-07 sa=1.4e-07
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rl1	C#1	C#2	  157.2379	$poly_conn
Rl2	C#2	C#3	  465.3645	$poly_conn
Rl3	B#1	B#2	  349.1749	$poly_conn
Rl4	B#2	B#3	  239.5596	$poly_conn
Rl5	A#1	A#2	  221.1338	$poly_conn
Rl6	A#2	A#3	  369.2107	$poly_conn
Rk1	Y#1	Y#2	   11.3564	$metal1_conn
Rk2	C#2	C	   45.3260	$metal1_conn
Rk3	net2	net2#2	   22.0998	$metal1_conn
Rk4	B#2	B	   46.0509	$metal1_conn
Rk5	net1	net1#2	   22.0506	$metal1_conn
Rk6	A#2	A	   46.7498	$metal1_conn
Rk7	vdd#1	vdd#3	   10.7809	$metal1_conn
Rk8	vdd#3	vdd#5	    0.6928	$metal1_conn
Rk9	vdd#5	vdd#6	4.981e-02	$metal1_conn
Rk10	vdd#6	vdd#7	   38.2008	$metal1_conn
Rk11	vdd#6	vdd	    0.1332	$metal1_conn
Rk12	vdd#2	vdd#3	   37.5000	$metal1_conn
Rk13	vdd#4	vdd#5	   37.5000	$metal1_conn
Rk14	vss#1	vss#2	   31.0776	$metal1_conn
Rk15	vss#2	vss#3	    0.6054	$metal1_conn
Rk16	vss#3	vss#4	7.513e-02	$metal1_conn
Rk17	vss#4	vss#5	    0.2490	$metal1_conn
Rk18	vss#5	vss#6	    0.4360	$metal1_conn
Rk19	vss#6	vss#7	   75.2376	$metal1_conn
Rk20	vss#3	vss#9	    0.1716	$metal1_conn
Rk21	vss#9	vss#11	    0.4290	$metal1_conn
Rk22	vss#11	vss#12	    0.1112	$metal1_conn
Rk23	vss#5	vss	    0.1680	$metal1_conn
Rk24	vss#12	vss#2	5.895e-02	$metal1_conn
Rk25	vss#1	vss#4	   31.0000	$metal1_conn
Rk26	vss#1	vss#6	   31.0000	$metal1_conn
Rk27	vss#8	vss#9	   75.0000	$metal1_conn
Rk28	vss#10	vss#11	   75.0000	$metal1_conn
Rk29	Y	Y#3	    0.4917	$metal1_conn
Rk30	Y#3	Y#4	    0.8048	$metal1_conn
Rk31	Y#3	Y#5	   75.2012	$metal1_conn
Rk32	Y#4	Y#7	    0.1865	$metal1_conn
Rk33	Y#7	Y#8	   75.3923	$metal1_conn
Rk34	Y#6	Y#7	   75.0000	$metal1_conn
Rj1	Y#4	Y#2	    1.5235	$metal2_conn
*
*       CAPACITOR CARDS
*
*
C1	Y#8	B#2	7.18336e-18
C2	B	A	3.87352e-17
C3	Y#3	vdd#2	3.78718e-17
C4	Y#5	vdd#2	8.43385e-18
C5	net1	vdd#1	5.87106e-17
C6	C	B	1.44618e-17
C7	vss#2	B#3	5.85858e-19
C8	vss#10	vdd#2	1.01225e-17
C9	vss#3	B#3	7.83184e-19
C10	B#2	A	2.5392e-17
C11	vss#7	Y#8	1.02189e-17
C12	Y#4	net2	5.31625e-18
C13	B	C#1	1.68456e-18
C14	A	Y#2	2.85604e-17
C15	A	vdd#2	4.76093e-17
C16	B	C#2	2.52298e-17
C17	vss#1	Y#6	7.14832e-18
C18	vss#7	C#2	6.33951e-18
C19	Y#2	B	3.03532e-18
C20	Y#3	A#3	1.14866e-17
C21	vss#8	vdd#2	1.35857e-17
C22	vss#1	B	1.67352e-18
C23	Y#2	net2	6.78634e-18
C24	B	vdd#2	2.55318e-17
C25	Y	A#2	4.68288e-18
C26	B#1	A#1	1.32955e-18
C27	A	net2	9.74091e-18
C28	Y	B#2	9.81861e-19
C29	Y#6	vdd#2	1.28079e-17
C30	A	net2#2	1.87347e-17
C31	C	vdd#2	2.12318e-17
C32	C#3	B#1	1.97901e-18
C33	vss#10	Y#5	1.04766e-17
C34	net2#2	vdd#7	1.32318e-17
C35	vss#1	Y	6.6234e-19
C36	net1#2	vdd#2	2.53346e-17
C37	Y#3	B#3	4.10885e-19
C38	Y#8	B	3.22013e-18
C39	Y	vdd#2	3.2713e-17
C40	Y	vdd#1	1.13279e-18
C41	vss#1	Y#8	1.72199e-17
C42	net2	vdd#2	2.30467e-17
C43	Y#1	vdd#7	3.31949e-17
C44	B#1	A#2	1.15428e-18
C45	B#3	A#3	1.99344e-18
C46	Y#2	net2#2	2.41085e-17
C47	Y#8	vdd#2	1.10013e-17
C48	net2	vdd#6	9.54715e-18
C49	C#3	B#2	6.06461e-19
C50	Y#4	B#1	1.12811e-18
C51	C#1	B#3	1.55012e-18
C52	A#1	vdd#2	2.70828e-17
C53	Y#2	B#1	6.78198e-19
C54	B#2	A#3	1.21682e-18
C55	vdd#1	A#1	1.26727e-17
C56	Y#4	C#3	5.48732e-19
C57	vss#10	Y#3	2.86597e-17
C58	vss#7	vdd#2	9.14518e-18
C59	net1	A#1	1.64731e-17
C60	Y#2	C#3	1.21991e-17
C61	B#1	vdd#2	1.66328e-17
C62	Y#4	A#3	1.67403e-18
C63	Y#1	net2#2	6.65578e-17
C64	Y#3	A#2	1.60591e-17
C65	vdd#1	B#1	1.11661e-18
C66	net2#2	vdd#2	2.16461e-17
C67	net1	B#1	3.89032e-18
C68	vss#5	Y#6	2.1346e-17
C69	C#3	vdd#2	2.2904e-17
C70	Y#4	B#3	9.02271e-18
C71	A#2	B#2	3.10331e-17
C72	Y#1	vdd#2	4.19048e-18
C73	Y#4	C#1	2.60363e-18
C74	A#3	vdd#2	2.98946e-17
C75	vss#1	B#3	3.64409e-18
C76	B#1	vdd#4	1.28218e-17
C77	net1#2	A#1	3.67115e-18
C78	Y#3	B#2	1.42557e-18
C79	net1#2	vdd#4	1.14235e-17
C80	Y#6	vss#8	1.08278e-17
C81	net2	A#1	8.31113e-19
C82	Y#4	A#2	1.861e-17
C83	C#2	B#2	3.61153e-18
C84	B#3	vdd#2	1.73872e-17MODEL g45n1svt NMOS ( LEVEL = 77)
.MODEL g45p1svt PMOS ( LEVEL = 77)
.END
C85	vss#1	C#1	3.35937e-18
C86	Y#2	A#2	1.01498e-18
C87	Y#5	A#3	3.31424e-18
C88	Y#4	B#2	2.17275e-17
C89	net1#2	B#1	1.48503e-17
C90	net2	vdd#4	1.97787e-18
C91	C#1	vdd#2	1.70273e-17
C92	net2	B#1	1.44981e-17
C93	Y#2	B#2	4.79575e-18
C94	Y#4	C#2	5.72223e-18
C95	A#2	vdd#2	1.02966e-16
C96	Y#2	C#2	1.4963e-18
C97	net2	C#3	3.57624e-18
C98	A#2	vdd#1	8.93916e-19
C99	B#2	vdd#2	6.48422e-17
C100	net2#2	B#1	3.69393e-18
C101	vss#1	C#2	9.31925e-19
C102	A#2	net1	2.26787e-17
C103	Y#1	B#1	6.19576e-19
C104	vss#8	B#3	4.59339e-18
C105	C#3	vdd#7	1.76168e-17
C106	vss#2	vdd#2	2.7337e-17
C107	C#2	vdd#2	4.79662e-17
C108	vss#5	Y#8	1.2667e-17
C109	vss#1	Y#4	5.44744e-18
C110	Y#6	B#3	4.48597e-18
C111	net2#2	C#3	1.45466e-17
C112	vss#3	vdd#2	2.39287e-17
C113	vss#8	C#1	4.82682e-19
C114	Y#4	vdd#2	3.54728e-17
C115	net2	net1#2	7.57255e-17
C116	Y#1	C#3	1.3062e-17
C117	Y#6	C#1	4.92001e-19
C118	Y#2	vdd#2	4.7477e-17
C119	vss#5	vdd#2	2.68762e-17
C120	vss#1	vdd#2	4.68728e-17
C121	vss#7	B#3	5.12179e-19
C122	Y#8	C#1	3.0737e-18
C123	A#2	net1#2	2.19765e-17
C124	Y#6	B#2	7.10797e-18
C125	A#2	net2	9.39684e-18
C126	vss#1	Y#3	2.52562e-18
C127	vss#7	C#1	4.82046e-18
C128	vss#1	Y#5	9.13791e-18
C129	net1	vdd#2	3.67821e-17
C130	vss#8	Y#4	3.07908e-17
C131	A	vss	6.18173e-18
C132	C	vss	1.26636e-19
C133	C#3	vss	2.52114e-18
C134	A#3	vss	9.81013e-18
C135	B#3	vss	4.74164e-19
C136	C#1	vss	6.73837e-19
C137	A#2	vss	8.33017e-20
C138	B#2	vss	7.21895e-20
C139	C#2	vss	4.26435e-18
C140	Y#4	vss	3.34173e-19
C141	vdd#2	vss	2.0068e-17
C142	Y#5	vss	3.05659e-19
C143	Y#6	vss	2.99184e-19
C144	net1#2	vss	9.29273e-19
C145	net2#2	vss	1.24115e-19
*
*
.ENDS NOR3_spice_ext
.MODEL g45n1svt NMOS ( LEVEL = 77)
.MODEL g45p1svt PMOS ( LEVEL = 77)
.END
*
