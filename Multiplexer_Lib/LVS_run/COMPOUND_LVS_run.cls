*******************************************************************************
****** compound_cmos schematic ELG4137_Lib  <vs>  compound_cmos layout ELG4137_Lib
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(g45n1svt) MOS                                    3       3
(g45p1svt) MOS                                    3       3
                                             ------  ------
Total                                             6       6

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    3       3           0       0
(g45p1svt) MOS                                    3       3           1       1
(g45n1svt:ParMos2#1) MosBlk                       -       -           1       1
(g45n1svt:SerMos3#1) MosBlk                       -       -           1       1
(g45p1svt:SerMos2#1) MosBlk                       -       -           1       1

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    0       0           0       0
(g45p1svt) MOS                                    1       1           0       0
(g45n1svt:ParMos2#1) MosBlk                       1       1           0       0
(g45n1svt:SerMos3#1) MosBlk                       1       1           0       0
(g45p1svt:SerMos2#1) MosBlk                       1       1           0       0
                                             ------  ------      ------  ------
Total                                             4       4           0       0

Match Statistics for Nets                         7       8           0       1

================================================================[compound_cmos]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  vout_f
S       1   of g45p1svt {D S}
S      *1   of g45p1svt:SerMos2#1 {OUT OUT2}
S       1   of g45n1svt:SerMos3#1 {OUT OUT2}

Layout Net:  vout_f
L       1   of g45p1svt {D S}
L       1   of g45n1svt:SerMos3#1 {OUT OUT2}

================================================================[compound_cmos]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC9

================================================================[compound_cmos]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'OUT' of instance I##7 probably should connect to net 
vout_f instead of net avC9.
This makes a better match between layout net vout_f and schematic net vout_f.


================================================================[compound_cmos]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?vout_f
S       1   of g45p1svt {D S}
S       1   of g45p1svt:SerMos2#1 {OUT OUT2}
S       1   of g45n1svt:SerMos3#1 {OUT OUT2}

================================================================[compound_cmos]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC9
L       1   of g45p1svt:SerMos2#1 {OUT OUT2}
L
L ?vout_f
L       1   of g45p1svt {D S}
L       1   of g45n1svt:SerMos3#1 {OUT OUT2}

================================================================[compound_cmos]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: I##7  g45p1svt:SerMos2#1
Layout Instance:    I##7  g45p1svt:SerMos2#1

Pin        SchNet                      : LayNet
---        ------                      : ------
OUT        vout_f                      : ?avC9
OUT2       vdd                         : vdd

================================================================[compound_cmos]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 1          1         Bad Initial Net Bindings
 -          1         Suggested Terminal Rewire
 -          1         Unmatched Internal Nets
 1          1         Matched Instances with Bad Net Connections

