*******************************************************************************
****** multiplexer schematic ELG4137_Lib  <vs>  multiplexer5 layout ELG4137_Lib
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(nand2_cmos schematic ELG4137_Lib, _) Cell        1       0*
(cmos_unit_inverter schematic ELG4137_Lib, _) Cell                  4       0*
(trans_g schematic ELG4137_Lib, _) Cell           6       0*
(g45n1svt) MOS                                    0      12*
(g45p1svt) MOS                                    0      12*
                                             ------  ------
Total                                            11      24

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                   12      12          12      10*
(g45p1svt) MOS                                   12      12          10      10
(g45p1svt:ParMos2#1) MosBlk                       -       -           1       1
(-, g45n1svt:SerMos2#1) MosBlk                    -       -           -       1*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                   12      10*          2       0*
(g45p1svt) MOS                                   10      10           0       0
(g45p1svt:ParMos2#1) MosBlk                       1       1           0       0
(-, g45n1svt:SerMos2#1) MosBlk                    -       1*          -       1*
                                             ------  ------      ------  ------
Total                                            23      22           2       1

Match Statistics for Nets                        18      18           1       1

==================================================================[multiplexer]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  EN
S      *1   of g45n1svt G
S       1   of g45p1svt:ParMos2#1 {IN1 IN2}

Layout Net:  EN
L       1   of g45p1svt:ParMos2#1 {IN1 IN2}
L      *1   of g45n1svt:SerMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  vss
S       5   of g45n1svt {D S}
S       11  of g45n1svt B

Layout Net:  vss
L      *4   of g45n1svt {D S}
L      *10  of g45n1svt B
L      *1   of g45n1svt:SerMos2#1 ?{OUT OUT2}
L      *1   of g45n1svt:SerMos2#1 ?TERM4

==================================================================[multiplexer]
====== Unmatched Internal Nets ================================================
===============================================================================

S ?I9/net1

L ?avC15

==================================================================[multiplexer]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net6
S       2   of g45p1svt {D S}
S       2   of g45n1svt {D S}
S      *1   of g45n1svt G
S       1   of g45p1svt:ParMos2#1 {IN1 IN2}

Layout Net:  avC18
L       2   of g45p1svt {D S}
L       2   of g45n1svt {D S}
L       1   of g45p1svt:ParMos2#1 {IN1 IN2}
L      *1   of g45n1svt:SerMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net7
S       1   of g45p1svt G
S      *1   of g45n1svt {D S}
S       1   of g45n1svt G
S       1   of g45p1svt:ParMos2#1 {OUT OUT2}

Layout Net:  avC12
L       1   of g45p1svt G
L       1   of g45n1svt G
L       1   of g45p1svt:ParMos2#1 {OUT OUT2}
L      *1   of g45n1svt:SerMos2#1 ?{OUT OUT2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 3)
Schematic Net:  net2
S       3   of g45p1svt {D S}
S       3   of g45n1svt {D S}

Layout Net:  avC17
L      *2   of g45p1svt {D S}
L      *2   of g45n1svt {D S}

==================================================================[multiplexer]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'S' of instance avD2_9 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net net2.

In the layout, terminal 'D' of instance avD10_9 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net net2.


==================================================================[multiplexer]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC17
L        avC15

==================================================================[multiplexer]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?net2
S       3   of g45p1svt {D S}
S       3   of g45n1svt {D S}
S
S ?I9/net1
S       2   of g45n1svt {D S}
S       1   of g45n1svt B
S
S ?vss
S       5   of g45n1svt {D S}
S       11  of g45n1svt B
S
S ?EN
S       1   of g45n1svt G
S       1   of g45p1svt:ParMos2#1 {IN1 IN2}
S
S ?net6
S       2   of g45p1svt {D S}
S       2   of g45n1svt {D S}
S       1   of g45n1svt G
S       1   of g45p1svt:ParMos2#1 {IN1 IN2}
S
S ?net7
S       1   of g45p1svt G
S       1   of g45n1svt {D S}
S       1   of g45n1svt G
S       1   of g45p1svt:ParMos2#1 {OUT OUT2}

==================================================================[multiplexer]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC15
L       1   of g45p1svt {D S}
L       1   of g45n1svt {D S}
L
L ?avC17
L       2   of g45p1svt {D S}
L       2   of g45n1svt {D S}
L
L ?EN
L       1   of g45p1svt:ParMos2#1 {IN1 IN2}
L       1   of g45n1svt:SerMos2#1 ?{IN1 IN2}
L
L ?avC18
L       2   of g45p1svt {D S}
L       2   of g45n1svt {D S}
L       1   of g45p1svt:ParMos2#1 {IN1 IN2}
L       1   of g45n1svt:SerMos2#1 ?{IN1 IN2}
L
L ?avC12
L       1   of g45p1svt G
L       1   of g45n1svt G
L       1   of g45p1svt:ParMos2#1 {OUT OUT2}
L       1   of g45n1svt:SerMos2#1 ?{OUT OUT2}
L
L ?vss
L       4   of g45n1svt {D S}
L       10  of g45n1svt B
L       1   of g45n1svt:SerMos2#1 ?{OUT OUT2}
L       1   of g45n1svt:SerMos2#1 ?TERM4

==================================================================[multiplexer]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: I3/PM0  g45p1svt
Layout Instance:    avD10_9  g45p1svt

Pin        SchNet                      : LayNet
---        ------                      : ------
D          L1                          : ?avC15
S          net2                        : L1

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: I3/NM0  g45n1svt
Layout Instance:    avD2_9  g45n1svt

Pin        SchNet                      : LayNet
---        ------                      : ------
D          L1                          : L1
S          net2                        : ?avC15

==================================================================[multiplexer]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I9/NM1  g45n1svt

S Pin        Net
S ---        ---
S D          ?I9/net1
S G          EN
S S          vss
S B          vss

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: I9/NM0  g45n1svt

S Pin        Net
S ---        ---
S D          net7
S G          net6
S S          ?I9/net1
S B          ?I9/net1

==================================================================[multiplexer]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##25  g45n1svt:SerMos2#1

L Pin        Net
L ---        ---
L OUT        net7
L OUT2       vss
L TERM4      vss
L IN1        net6
L IN2        EN

==================================================================[multiplexer]
====== Parameter Mismatches for Instances =====================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 1)
Schematic Instance: I13/PM0  g45p1svt
Layout Instance:    avD10_1  g45p1svt

w 1.4e-07 vs 3e-07 differs by 114.286%

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 2)
Schematic Instance: I12/PM0  g45p1svt
Layout Instance:    avD10_8  g45p1svt

w 1.4e-07 vs 3e-07 differs by 114.286%

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 3)
Schematic Instance: I11/PM0  g45p1svt
Layout Instance:    avD10_7  g45p1svt

w 1.4e-07 vs 3e-07 differs by 114.286%

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 4)
Schematic Instance: I10/PM0  g45p1svt
Layout Instance:    avD10_6  g45p1svt

w 1.4e-07 vs 3e-07 differs by 114.286%

==================================================================[multiplexer]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 2          2         Bad Initial Net Bindings
 3          3         Bad Matched Nets
 -          2         Suggested Terminal Rewire
 1          1         Unmatched Internal Nets
 -          1         Open Internal Nets
 2          2         Matched Instances with Bad Net Connections
 2          1         Unmatched Instances
 4          4         Parameter Mismatches for Instances

