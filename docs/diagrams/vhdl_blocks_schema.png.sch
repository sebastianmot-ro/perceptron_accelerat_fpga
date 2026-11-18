# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new fp32_mac_fsm work:fp32_mac_fsm:NOFILE -nosplit
load symbol RTL_MUX10 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_ROM1 work GEN pin O output.right pinBus A input.left [3:0] fillcolor 1
load symbol RTL_MUX11 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG_SYNC__BREG_1 work GEN pin C input.clk.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol RTL_MUX4 work MUX pin I0 input.left pin I1 input.left pin O output.right pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_MUX work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin I6 input.left pin I7 input.left pin I8 input.left pin O output.right pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_2 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol RTL_AND workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol RTL_ROM work GEN pinBus A input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol fp32_add work BOX pin aclk input.left pin m_axis_result_tvalid output.right pin s_axis_a_tvalid input.left pin s_axis_b_tvalid input.left pinBus m_axis_result_tdata output.right [31:0] pinBus s_axis_a_tdata input.left [31:0] pinBus s_axis_b_tdata input.left [31:0] fillcolor 1
load symbol fp32_mult work BOX pin aclk input.left pin m_axis_result_tvalid output.right pin s_axis_a_tvalid input.left pin s_axis_b_tvalid input.left pinBus m_axis_result_tdata output.right [31:0] pinBus s_axis_a_tdata input.left [31:0] pinBus s_axis_b_tdata input.left [31:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_2 work[31:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG_SYNC__BREG_2 work[3:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [3:0] pinBus Q output.right [3:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_REG__BREG_8 work[31:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port clk input -pg 1 -lvl 0 -x 0 -y 890
load port done output -pg 1 -lvl 14 -x 4110 -y 820
load port rst input -pg 1 -lvl 0 -x 0 -y 860
load port start input -pg 1 -lvl 0 -x 0 -y 1120
load portBus b input [31:0] -attr @name b[31:0] -pg 1 -lvl 0 -x 0 -y 280
load portBus w0 input [31:0] -attr @name w0[31:0] -pg 1 -lvl 0 -x 0 -y 550
load portBus w1 input [31:0] -attr @name w1[31:0] -pg 1 -lvl 0 -x 0 -y 570
load portBus x0 input [31:0] -attr @name x0[31:0] -pg 1 -lvl 0 -x 0 -y 1030
load portBus x1 input [31:0] -attr @name x1[31:0] -pg 1 -lvl 0 -x 0 -y 1050
load portBus z_out output [31:0] -attr @name z_out[31:0] -pg 1 -lvl 14 -x 4110 -y 670
load inst add_a_i RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=4'b0101 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=4'b0111 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 9 -x 2620 -y 610
load inst add_a_i__0 RTL_ROM1 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pg 1 -lvl 8 -x 2220 -y 310
load inst add_a_i__1 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2620 -y 440
load inst add_b_i RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=4'b0101 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=4'b0111 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 9 -x 2620 -y 760
load inst add_b_i__0 RTL_ROM1 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pg 1 -lvl 8 -x 2220 -y 210
load inst add_b_i__1 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2620 -y 320
load inst add_start_i RTL_ROM1 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pg 1 -lvl 9 -x 2620 -y 890
load inst add_start_reg RTL_REG_SYNC__BREG_1 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 10 -x 2910 -y 790
load inst done_reg_i RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 12 -x 3670 -y 320
load inst done_reg_i__0 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 12 -x 3670 -y 840
load inst done_reg_reg RTL_REG_SYNC__BREG_2 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 13 -x 3940 -y 820
load inst mul_a_i RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=4'b0001 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=4'b0011 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 2 -x 340 -y 1040
load inst mul_a_i__0 RTL_ROM1 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 50 -y 810
load inst mul_a_i__1 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 340 -y 800
load inst mul_b_i RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=4'b0001 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=4'b0011 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 2 -x 340 -y 560
load inst mul_b_i__0 RTL_ROM1 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 50 -y 690
load inst mul_b_i__1 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 340 -y 680
load inst mul_start_i RTL_ROM1 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pg 1 -lvl 2 -x 340 -y 940
load inst mul_start_reg RTL_REG_SYNC__BREG_1 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 3 -x 590 -y 930
load inst p0_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 1910 -y 130
load inst p1_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 1910 -y 690
load inst s01_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 1910 -y 410
load inst start_d_reg RTL_REG_SYNC__BREG_1 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 3 -x 590 -y 1050
load inst start_pulse_i RTL_AND workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 840 -y 1040
load inst state_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 5 -x 1350 -y 1180
load inst state_i__0 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 5 -x 1350 -y 980
load inst u_add fp32_add work -attr @cell(#000000) fp32_add -pinBusAttr m_axis_result_tdata @name m_axis_result_tdata[31:0] -pinBusAttr s_axis_a_tdata @name s_axis_a_tdata[31:0] -pinBusAttr s_axis_b_tdata @name s_axis_b_tdata[31:0] -pg 1 -lvl 11 -x 3140 -y 560
load inst u_mult fp32_mult work -attr @cell(#000000) fp32_mult -pinBusAttr m_axis_result_tdata @name m_axis_result_tdata[31:0] -pinBusAttr s_axis_a_tdata @name s_axis_a_tdata[31:0] -pinBusAttr s_axis_b_tdata @name s_axis_b_tdata[31:0] -pg 1 -lvl 4 -x 840 -y 740
load inst z_reg_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinBusAttr S @name S[3:0] -pg 1 -lvl 12 -x 3670 -y 510
load inst z_reg_reg[31:0] RTL_REG_SYNC__BREG_2 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 13 -x 3940 -y 670
load inst s01_reg[31:0] RTL_REG_SYNC__BREG_2 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 8 -x 2220 -y 620
load inst state_reg[3:0] RTL_REG_SYNC__BREG_2 work[3:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 6 -x 1580 -y 980
load inst p1_reg[31:0] RTL_REG_SYNC__BREG_2 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 8 -x 2220 -y 790
load inst p0_reg[31:0] RTL_REG_SYNC__BREG_2 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 8 -x 2220 -y 450
load inst add_a_reg[31:0] RTL_REG__BREG_8 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 10 -x 2910 -y 440
load inst mul_b_reg[31:0] RTL_REG__BREG_8 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 3 -x 590 -y 640
load inst mul_a_reg[31:0] RTL_REG__BREG_8 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 3 -x 590 -y 790
load inst add_b_reg[31:0] RTL_REG__BREG_8 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 10 -x 2910 -y 610
load net <const0> -ground -pin add_a_i__1 I0 -pin add_b_i__1 I0 -pin done_reg_i I0 -pin done_reg_i__0 I1 -pin done_reg_i__0 I2 -pin done_reg_i__0 I3 -pin done_reg_i__0 I4 -pin done_reg_i__0 I5 -pin done_reg_i__0 I6 -pin done_reg_i__0 I7 -pin mul_a_i__1 I0 -pin mul_b_i__1 I0 -pin p0_i I0 -pin p0_i I1 -pin p0_i I3 -pin p0_i I4 -pin p0_i I5 -pin p0_i I6 -pin p0_i I7 -pin p0_i I8 -pin p1_i I0 -pin p1_i I1 -pin p1_i I2 -pin p1_i I3 -pin p1_i I5 -pin p1_i I6 -pin p1_i I7 -pin p1_i I8 -pin s01_i I0 -pin s01_i I1 -pin s01_i I2 -pin s01_i I3 -pin s01_i I4 -pin s01_i I5 -pin s01_i I7 -pin s01_i I8 -pin z_reg_i I0 -pin z_reg_i I1 -pin z_reg_i I2 -pin z_reg_i I3 -pin z_reg_i I4 -pin z_reg_i I5 -pin z_reg_i I6 -pin z_reg_i I7
load net <const1> -power -pin state_i__0 I1 -pin state_i__0 I3 -pin state_i__0 I5 -pin state_i__0 I7
load net add_a[0] -attr @rip(#000000) 0 -pin add_a_reg[31:0] Q[0] -pin u_add s_axis_a_tdata[0]
load net add_a[10] -attr @rip(#000000) 10 -pin add_a_reg[31:0] Q[10] -pin u_add s_axis_a_tdata[10]
load net add_a[11] -attr @rip(#000000) 11 -pin add_a_reg[31:0] Q[11] -pin u_add s_axis_a_tdata[11]
load net add_a[12] -attr @rip(#000000) 12 -pin add_a_reg[31:0] Q[12] -pin u_add s_axis_a_tdata[12]
load net add_a[13] -attr @rip(#000000) 13 -pin add_a_reg[31:0] Q[13] -pin u_add s_axis_a_tdata[13]
load net add_a[14] -attr @rip(#000000) 14 -pin add_a_reg[31:0] Q[14] -pin u_add s_axis_a_tdata[14]
load net add_a[15] -attr @rip(#000000) 15 -pin add_a_reg[31:0] Q[15] -pin u_add s_axis_a_tdata[15]
load net add_a[16] -attr @rip(#000000) 16 -pin add_a_reg[31:0] Q[16] -pin u_add s_axis_a_tdata[16]
load net add_a[17] -attr @rip(#000000) 17 -pin add_a_reg[31:0] Q[17] -pin u_add s_axis_a_tdata[17]
load net add_a[18] -attr @rip(#000000) 18 -pin add_a_reg[31:0] Q[18] -pin u_add s_axis_a_tdata[18]
load net add_a[19] -attr @rip(#000000) 19 -pin add_a_reg[31:0] Q[19] -pin u_add s_axis_a_tdata[19]
load net add_a[1] -attr @rip(#000000) 1 -pin add_a_reg[31:0] Q[1] -pin u_add s_axis_a_tdata[1]
load net add_a[20] -attr @rip(#000000) 20 -pin add_a_reg[31:0] Q[20] -pin u_add s_axis_a_tdata[20]
load net add_a[21] -attr @rip(#000000) 21 -pin add_a_reg[31:0] Q[21] -pin u_add s_axis_a_tdata[21]
load net add_a[22] -attr @rip(#000000) 22 -pin add_a_reg[31:0] Q[22] -pin u_add s_axis_a_tdata[22]
load net add_a[23] -attr @rip(#000000) 23 -pin add_a_reg[31:0] Q[23] -pin u_add s_axis_a_tdata[23]
load net add_a[24] -attr @rip(#000000) 24 -pin add_a_reg[31:0] Q[24] -pin u_add s_axis_a_tdata[24]
load net add_a[25] -attr @rip(#000000) 25 -pin add_a_reg[31:0] Q[25] -pin u_add s_axis_a_tdata[25]
load net add_a[26] -attr @rip(#000000) 26 -pin add_a_reg[31:0] Q[26] -pin u_add s_axis_a_tdata[26]
load net add_a[27] -attr @rip(#000000) 27 -pin add_a_reg[31:0] Q[27] -pin u_add s_axis_a_tdata[27]
load net add_a[28] -attr @rip(#000000) 28 -pin add_a_reg[31:0] Q[28] -pin u_add s_axis_a_tdata[28]
load net add_a[29] -attr @rip(#000000) 29 -pin add_a_reg[31:0] Q[29] -pin u_add s_axis_a_tdata[29]
load net add_a[2] -attr @rip(#000000) 2 -pin add_a_reg[31:0] Q[2] -pin u_add s_axis_a_tdata[2]
load net add_a[30] -attr @rip(#000000) 30 -pin add_a_reg[31:0] Q[30] -pin u_add s_axis_a_tdata[30]
load net add_a[31] -attr @rip(#000000) 31 -pin add_a_reg[31:0] Q[31] -pin u_add s_axis_a_tdata[31]
load net add_a[3] -attr @rip(#000000) 3 -pin add_a_reg[31:0] Q[3] -pin u_add s_axis_a_tdata[3]
load net add_a[4] -attr @rip(#000000) 4 -pin add_a_reg[31:0] Q[4] -pin u_add s_axis_a_tdata[4]
load net add_a[5] -attr @rip(#000000) 5 -pin add_a_reg[31:0] Q[5] -pin u_add s_axis_a_tdata[5]
load net add_a[6] -attr @rip(#000000) 6 -pin add_a_reg[31:0] Q[6] -pin u_add s_axis_a_tdata[6]
load net add_a[7] -attr @rip(#000000) 7 -pin add_a_reg[31:0] Q[7] -pin u_add s_axis_a_tdata[7]
load net add_a[8] -attr @rip(#000000) 8 -pin add_a_reg[31:0] Q[8] -pin u_add s_axis_a_tdata[8]
load net add_a[9] -attr @rip(#000000) 9 -pin add_a_reg[31:0] Q[9] -pin u_add s_axis_a_tdata[9]
load net add_a__0[0] -attr @rip(#000000) O[0] -pin add_a_i O[0] -pin add_a_reg[31:0] D[0]
load net add_a__0[10] -attr @rip(#000000) O[10] -pin add_a_i O[10] -pin add_a_reg[31:0] D[10]
load net add_a__0[11] -attr @rip(#000000) O[11] -pin add_a_i O[11] -pin add_a_reg[31:0] D[11]
load net add_a__0[12] -attr @rip(#000000) O[12] -pin add_a_i O[12] -pin add_a_reg[31:0] D[12]
load net add_a__0[13] -attr @rip(#000000) O[13] -pin add_a_i O[13] -pin add_a_reg[31:0] D[13]
load net add_a__0[14] -attr @rip(#000000) O[14] -pin add_a_i O[14] -pin add_a_reg[31:0] D[14]
load net add_a__0[15] -attr @rip(#000000) O[15] -pin add_a_i O[15] -pin add_a_reg[31:0] D[15]
load net add_a__0[16] -attr @rip(#000000) O[16] -pin add_a_i O[16] -pin add_a_reg[31:0] D[16]
load net add_a__0[17] -attr @rip(#000000) O[17] -pin add_a_i O[17] -pin add_a_reg[31:0] D[17]
load net add_a__0[18] -attr @rip(#000000) O[18] -pin add_a_i O[18] -pin add_a_reg[31:0] D[18]
load net add_a__0[19] -attr @rip(#000000) O[19] -pin add_a_i O[19] -pin add_a_reg[31:0] D[19]
load net add_a__0[1] -attr @rip(#000000) O[1] -pin add_a_i O[1] -pin add_a_reg[31:0] D[1]
load net add_a__0[20] -attr @rip(#000000) O[20] -pin add_a_i O[20] -pin add_a_reg[31:0] D[20]
load net add_a__0[21] -attr @rip(#000000) O[21] -pin add_a_i O[21] -pin add_a_reg[31:0] D[21]
load net add_a__0[22] -attr @rip(#000000) O[22] -pin add_a_i O[22] -pin add_a_reg[31:0] D[22]
load net add_a__0[23] -attr @rip(#000000) O[23] -pin add_a_i O[23] -pin add_a_reg[31:0] D[23]
load net add_a__0[24] -attr @rip(#000000) O[24] -pin add_a_i O[24] -pin add_a_reg[31:0] D[24]
load net add_a__0[25] -attr @rip(#000000) O[25] -pin add_a_i O[25] -pin add_a_reg[31:0] D[25]
load net add_a__0[26] -attr @rip(#000000) O[26] -pin add_a_i O[26] -pin add_a_reg[31:0] D[26]
load net add_a__0[27] -attr @rip(#000000) O[27] -pin add_a_i O[27] -pin add_a_reg[31:0] D[27]
load net add_a__0[28] -attr @rip(#000000) O[28] -pin add_a_i O[28] -pin add_a_reg[31:0] D[28]
load net add_a__0[29] -attr @rip(#000000) O[29] -pin add_a_i O[29] -pin add_a_reg[31:0] D[29]
load net add_a__0[2] -attr @rip(#000000) O[2] -pin add_a_i O[2] -pin add_a_reg[31:0] D[2]
load net add_a__0[30] -attr @rip(#000000) O[30] -pin add_a_i O[30] -pin add_a_reg[31:0] D[30]
load net add_a__0[31] -attr @rip(#000000) O[31] -pin add_a_i O[31] -pin add_a_reg[31:0] D[31]
load net add_a__0[3] -attr @rip(#000000) O[3] -pin add_a_i O[3] -pin add_a_reg[31:0] D[3]
load net add_a__0[4] -attr @rip(#000000) O[4] -pin add_a_i O[4] -pin add_a_reg[31:0] D[4]
load net add_a__0[5] -attr @rip(#000000) O[5] -pin add_a_i O[5] -pin add_a_reg[31:0] D[5]
load net add_a__0[6] -attr @rip(#000000) O[6] -pin add_a_i O[6] -pin add_a_reg[31:0] D[6]
load net add_a__0[7] -attr @rip(#000000) O[7] -pin add_a_i O[7] -pin add_a_reg[31:0] D[7]
load net add_a__0[8] -attr @rip(#000000) O[8] -pin add_a_i O[8] -pin add_a_reg[31:0] D[8]
load net add_a__0[9] -attr @rip(#000000) O[9] -pin add_a_i O[9] -pin add_a_reg[31:0] D[9]
load net add_a_i__0_n_0 -pin add_a_i__0 O -pin add_a_i__1 I1
netloc add_a_i__0_n_0 1 8 1 2440 310n
load net add_a_i__1_n_0 -pin add_a_i__1 O -pin add_a_reg[31:0] CE
netloc add_a_i__1_n_0 1 9 1 N 440
load net add_b[0] -attr @rip(#000000) 0 -pin add_b_reg[31:0] Q[0] -pin u_add s_axis_b_tdata[0]
load net add_b[10] -attr @rip(#000000) 10 -pin add_b_reg[31:0] Q[10] -pin u_add s_axis_b_tdata[10]
load net add_b[11] -attr @rip(#000000) 11 -pin add_b_reg[31:0] Q[11] -pin u_add s_axis_b_tdata[11]
load net add_b[12] -attr @rip(#000000) 12 -pin add_b_reg[31:0] Q[12] -pin u_add s_axis_b_tdata[12]
load net add_b[13] -attr @rip(#000000) 13 -pin add_b_reg[31:0] Q[13] -pin u_add s_axis_b_tdata[13]
load net add_b[14] -attr @rip(#000000) 14 -pin add_b_reg[31:0] Q[14] -pin u_add s_axis_b_tdata[14]
load net add_b[15] -attr @rip(#000000) 15 -pin add_b_reg[31:0] Q[15] -pin u_add s_axis_b_tdata[15]
load net add_b[16] -attr @rip(#000000) 16 -pin add_b_reg[31:0] Q[16] -pin u_add s_axis_b_tdata[16]
load net add_b[17] -attr @rip(#000000) 17 -pin add_b_reg[31:0] Q[17] -pin u_add s_axis_b_tdata[17]
load net add_b[18] -attr @rip(#000000) 18 -pin add_b_reg[31:0] Q[18] -pin u_add s_axis_b_tdata[18]
load net add_b[19] -attr @rip(#000000) 19 -pin add_b_reg[31:0] Q[19] -pin u_add s_axis_b_tdata[19]
load net add_b[1] -attr @rip(#000000) 1 -pin add_b_reg[31:0] Q[1] -pin u_add s_axis_b_tdata[1]
load net add_b[20] -attr @rip(#000000) 20 -pin add_b_reg[31:0] Q[20] -pin u_add s_axis_b_tdata[20]
load net add_b[21] -attr @rip(#000000) 21 -pin add_b_reg[31:0] Q[21] -pin u_add s_axis_b_tdata[21]
load net add_b[22] -attr @rip(#000000) 22 -pin add_b_reg[31:0] Q[22] -pin u_add s_axis_b_tdata[22]
load net add_b[23] -attr @rip(#000000) 23 -pin add_b_reg[31:0] Q[23] -pin u_add s_axis_b_tdata[23]
load net add_b[24] -attr @rip(#000000) 24 -pin add_b_reg[31:0] Q[24] -pin u_add s_axis_b_tdata[24]
load net add_b[25] -attr @rip(#000000) 25 -pin add_b_reg[31:0] Q[25] -pin u_add s_axis_b_tdata[25]
load net add_b[26] -attr @rip(#000000) 26 -pin add_b_reg[31:0] Q[26] -pin u_add s_axis_b_tdata[26]
load net add_b[27] -attr @rip(#000000) 27 -pin add_b_reg[31:0] Q[27] -pin u_add s_axis_b_tdata[27]
load net add_b[28] -attr @rip(#000000) 28 -pin add_b_reg[31:0] Q[28] -pin u_add s_axis_b_tdata[28]
load net add_b[29] -attr @rip(#000000) 29 -pin add_b_reg[31:0] Q[29] -pin u_add s_axis_b_tdata[29]
load net add_b[2] -attr @rip(#000000) 2 -pin add_b_reg[31:0] Q[2] -pin u_add s_axis_b_tdata[2]
load net add_b[30] -attr @rip(#000000) 30 -pin add_b_reg[31:0] Q[30] -pin u_add s_axis_b_tdata[30]
load net add_b[31] -attr @rip(#000000) 31 -pin add_b_reg[31:0] Q[31] -pin u_add s_axis_b_tdata[31]
load net add_b[3] -attr @rip(#000000) 3 -pin add_b_reg[31:0] Q[3] -pin u_add s_axis_b_tdata[3]
load net add_b[4] -attr @rip(#000000) 4 -pin add_b_reg[31:0] Q[4] -pin u_add s_axis_b_tdata[4]
load net add_b[5] -attr @rip(#000000) 5 -pin add_b_reg[31:0] Q[5] -pin u_add s_axis_b_tdata[5]
load net add_b[6] -attr @rip(#000000) 6 -pin add_b_reg[31:0] Q[6] -pin u_add s_axis_b_tdata[6]
load net add_b[7] -attr @rip(#000000) 7 -pin add_b_reg[31:0] Q[7] -pin u_add s_axis_b_tdata[7]
load net add_b[8] -attr @rip(#000000) 8 -pin add_b_reg[31:0] Q[8] -pin u_add s_axis_b_tdata[8]
load net add_b[9] -attr @rip(#000000) 9 -pin add_b_reg[31:0] Q[9] -pin u_add s_axis_b_tdata[9]
load net add_b__0[0] -attr @rip(#000000) O[0] -pin add_b_i O[0] -pin add_b_reg[31:0] D[0]
load net add_b__0[10] -attr @rip(#000000) O[10] -pin add_b_i O[10] -pin add_b_reg[31:0] D[10]
load net add_b__0[11] -attr @rip(#000000) O[11] -pin add_b_i O[11] -pin add_b_reg[31:0] D[11]
load net add_b__0[12] -attr @rip(#000000) O[12] -pin add_b_i O[12] -pin add_b_reg[31:0] D[12]
load net add_b__0[13] -attr @rip(#000000) O[13] -pin add_b_i O[13] -pin add_b_reg[31:0] D[13]
load net add_b__0[14] -attr @rip(#000000) O[14] -pin add_b_i O[14] -pin add_b_reg[31:0] D[14]
load net add_b__0[15] -attr @rip(#000000) O[15] -pin add_b_i O[15] -pin add_b_reg[31:0] D[15]
load net add_b__0[16] -attr @rip(#000000) O[16] -pin add_b_i O[16] -pin add_b_reg[31:0] D[16]
load net add_b__0[17] -attr @rip(#000000) O[17] -pin add_b_i O[17] -pin add_b_reg[31:0] D[17]
load net add_b__0[18] -attr @rip(#000000) O[18] -pin add_b_i O[18] -pin add_b_reg[31:0] D[18]
load net add_b__0[19] -attr @rip(#000000) O[19] -pin add_b_i O[19] -pin add_b_reg[31:0] D[19]
load net add_b__0[1] -attr @rip(#000000) O[1] -pin add_b_i O[1] -pin add_b_reg[31:0] D[1]
load net add_b__0[20] -attr @rip(#000000) O[20] -pin add_b_i O[20] -pin add_b_reg[31:0] D[20]
load net add_b__0[21] -attr @rip(#000000) O[21] -pin add_b_i O[21] -pin add_b_reg[31:0] D[21]
load net add_b__0[22] -attr @rip(#000000) O[22] -pin add_b_i O[22] -pin add_b_reg[31:0] D[22]
load net add_b__0[23] -attr @rip(#000000) O[23] -pin add_b_i O[23] -pin add_b_reg[31:0] D[23]
load net add_b__0[24] -attr @rip(#000000) O[24] -pin add_b_i O[24] -pin add_b_reg[31:0] D[24]
load net add_b__0[25] -attr @rip(#000000) O[25] -pin add_b_i O[25] -pin add_b_reg[31:0] D[25]
load net add_b__0[26] -attr @rip(#000000) O[26] -pin add_b_i O[26] -pin add_b_reg[31:0] D[26]
load net add_b__0[27] -attr @rip(#000000) O[27] -pin add_b_i O[27] -pin add_b_reg[31:0] D[27]
load net add_b__0[28] -attr @rip(#000000) O[28] -pin add_b_i O[28] -pin add_b_reg[31:0] D[28]
load net add_b__0[29] -attr @rip(#000000) O[29] -pin add_b_i O[29] -pin add_b_reg[31:0] D[29]
load net add_b__0[2] -attr @rip(#000000) O[2] -pin add_b_i O[2] -pin add_b_reg[31:0] D[2]
load net add_b__0[30] -attr @rip(#000000) O[30] -pin add_b_i O[30] -pin add_b_reg[31:0] D[30]
load net add_b__0[31] -attr @rip(#000000) O[31] -pin add_b_i O[31] -pin add_b_reg[31:0] D[31]
load net add_b__0[3] -attr @rip(#000000) O[3] -pin add_b_i O[3] -pin add_b_reg[31:0] D[3]
load net add_b__0[4] -attr @rip(#000000) O[4] -pin add_b_i O[4] -pin add_b_reg[31:0] D[4]
load net add_b__0[5] -attr @rip(#000000) O[5] -pin add_b_i O[5] -pin add_b_reg[31:0] D[5]
load net add_b__0[6] -attr @rip(#000000) O[6] -pin add_b_i O[6] -pin add_b_reg[31:0] D[6]
load net add_b__0[7] -attr @rip(#000000) O[7] -pin add_b_i O[7] -pin add_b_reg[31:0] D[7]
load net add_b__0[8] -attr @rip(#000000) O[8] -pin add_b_i O[8] -pin add_b_reg[31:0] D[8]
load net add_b__0[9] -attr @rip(#000000) O[9] -pin add_b_i O[9] -pin add_b_reg[31:0] D[9]
load net add_b_i__0_n_0 -pin add_b_i__0 O -pin add_b_i__1 I1
netloc add_b_i__0_n_0 1 8 1 2460 210n
load net add_b_i__1_n_0 -pin add_b_i__1 O -pin add_b_reg[31:0] CE
netloc add_b_i__1_n_0 1 9 1 2850 320n
load net add_dout[0] -attr @rip(#000000) m_axis_result_tdata[0] -pin s01_reg[31:0] D[0] -pin u_add m_axis_result_tdata[0] -pin z_reg_reg[31:0] D[0]
load net add_dout[10] -attr @rip(#000000) m_axis_result_tdata[10] -pin s01_reg[31:0] D[10] -pin u_add m_axis_result_tdata[10] -pin z_reg_reg[31:0] D[10]
load net add_dout[11] -attr @rip(#000000) m_axis_result_tdata[11] -pin s01_reg[31:0] D[11] -pin u_add m_axis_result_tdata[11] -pin z_reg_reg[31:0] D[11]
load net add_dout[12] -attr @rip(#000000) m_axis_result_tdata[12] -pin s01_reg[31:0] D[12] -pin u_add m_axis_result_tdata[12] -pin z_reg_reg[31:0] D[12]
load net add_dout[13] -attr @rip(#000000) m_axis_result_tdata[13] -pin s01_reg[31:0] D[13] -pin u_add m_axis_result_tdata[13] -pin z_reg_reg[31:0] D[13]
load net add_dout[14] -attr @rip(#000000) m_axis_result_tdata[14] -pin s01_reg[31:0] D[14] -pin u_add m_axis_result_tdata[14] -pin z_reg_reg[31:0] D[14]
load net add_dout[15] -attr @rip(#000000) m_axis_result_tdata[15] -pin s01_reg[31:0] D[15] -pin u_add m_axis_result_tdata[15] -pin z_reg_reg[31:0] D[15]
load net add_dout[16] -attr @rip(#000000) m_axis_result_tdata[16] -pin s01_reg[31:0] D[16] -pin u_add m_axis_result_tdata[16] -pin z_reg_reg[31:0] D[16]
load net add_dout[17] -attr @rip(#000000) m_axis_result_tdata[17] -pin s01_reg[31:0] D[17] -pin u_add m_axis_result_tdata[17] -pin z_reg_reg[31:0] D[17]
load net add_dout[18] -attr @rip(#000000) m_axis_result_tdata[18] -pin s01_reg[31:0] D[18] -pin u_add m_axis_result_tdata[18] -pin z_reg_reg[31:0] D[18]
load net add_dout[19] -attr @rip(#000000) m_axis_result_tdata[19] -pin s01_reg[31:0] D[19] -pin u_add m_axis_result_tdata[19] -pin z_reg_reg[31:0] D[19]
load net add_dout[1] -attr @rip(#000000) m_axis_result_tdata[1] -pin s01_reg[31:0] D[1] -pin u_add m_axis_result_tdata[1] -pin z_reg_reg[31:0] D[1]
load net add_dout[20] -attr @rip(#000000) m_axis_result_tdata[20] -pin s01_reg[31:0] D[20] -pin u_add m_axis_result_tdata[20] -pin z_reg_reg[31:0] D[20]
load net add_dout[21] -attr @rip(#000000) m_axis_result_tdata[21] -pin s01_reg[31:0] D[21] -pin u_add m_axis_result_tdata[21] -pin z_reg_reg[31:0] D[21]
load net add_dout[22] -attr @rip(#000000) m_axis_result_tdata[22] -pin s01_reg[31:0] D[22] -pin u_add m_axis_result_tdata[22] -pin z_reg_reg[31:0] D[22]
load net add_dout[23] -attr @rip(#000000) m_axis_result_tdata[23] -pin s01_reg[31:0] D[23] -pin u_add m_axis_result_tdata[23] -pin z_reg_reg[31:0] D[23]
load net add_dout[24] -attr @rip(#000000) m_axis_result_tdata[24] -pin s01_reg[31:0] D[24] -pin u_add m_axis_result_tdata[24] -pin z_reg_reg[31:0] D[24]
load net add_dout[25] -attr @rip(#000000) m_axis_result_tdata[25] -pin s01_reg[31:0] D[25] -pin u_add m_axis_result_tdata[25] -pin z_reg_reg[31:0] D[25]
load net add_dout[26] -attr @rip(#000000) m_axis_result_tdata[26] -pin s01_reg[31:0] D[26] -pin u_add m_axis_result_tdata[26] -pin z_reg_reg[31:0] D[26]
load net add_dout[27] -attr @rip(#000000) m_axis_result_tdata[27] -pin s01_reg[31:0] D[27] -pin u_add m_axis_result_tdata[27] -pin z_reg_reg[31:0] D[27]
load net add_dout[28] -attr @rip(#000000) m_axis_result_tdata[28] -pin s01_reg[31:0] D[28] -pin u_add m_axis_result_tdata[28] -pin z_reg_reg[31:0] D[28]
load net add_dout[29] -attr @rip(#000000) m_axis_result_tdata[29] -pin s01_reg[31:0] D[29] -pin u_add m_axis_result_tdata[29] -pin z_reg_reg[31:0] D[29]
load net add_dout[2] -attr @rip(#000000) m_axis_result_tdata[2] -pin s01_reg[31:0] D[2] -pin u_add m_axis_result_tdata[2] -pin z_reg_reg[31:0] D[2]
load net add_dout[30] -attr @rip(#000000) m_axis_result_tdata[30] -pin s01_reg[31:0] D[30] -pin u_add m_axis_result_tdata[30] -pin z_reg_reg[31:0] D[30]
load net add_dout[31] -attr @rip(#000000) m_axis_result_tdata[31] -pin s01_reg[31:0] D[31] -pin u_add m_axis_result_tdata[31] -pin z_reg_reg[31:0] D[31]
load net add_dout[3] -attr @rip(#000000) m_axis_result_tdata[3] -pin s01_reg[31:0] D[3] -pin u_add m_axis_result_tdata[3] -pin z_reg_reg[31:0] D[3]
load net add_dout[4] -attr @rip(#000000) m_axis_result_tdata[4] -pin s01_reg[31:0] D[4] -pin u_add m_axis_result_tdata[4] -pin z_reg_reg[31:0] D[4]
load net add_dout[5] -attr @rip(#000000) m_axis_result_tdata[5] -pin s01_reg[31:0] D[5] -pin u_add m_axis_result_tdata[5] -pin z_reg_reg[31:0] D[5]
load net add_dout[6] -attr @rip(#000000) m_axis_result_tdata[6] -pin s01_reg[31:0] D[6] -pin u_add m_axis_result_tdata[6] -pin z_reg_reg[31:0] D[6]
load net add_dout[7] -attr @rip(#000000) m_axis_result_tdata[7] -pin s01_reg[31:0] D[7] -pin u_add m_axis_result_tdata[7] -pin z_reg_reg[31:0] D[7]
load net add_dout[8] -attr @rip(#000000) m_axis_result_tdata[8] -pin s01_reg[31:0] D[8] -pin u_add m_axis_result_tdata[8] -pin z_reg_reg[31:0] D[8]
load net add_dout[9] -attr @rip(#000000) m_axis_result_tdata[9] -pin s01_reg[31:0] D[9] -pin u_add m_axis_result_tdata[9] -pin z_reg_reg[31:0] D[9]
load net add_start -pin add_start_reg Q -pin u_add s_axis_a_tvalid -pin u_add s_axis_b_tvalid
netloc add_start 1 10 1 3090 610n
load net add_start__0 -pin add_start_i O -pin add_start_reg D
netloc add_start__0 1 9 1 2850 800n
load net add_valid -pin done_reg_i I1 -pin done_reg_i__0 I8 -pin s01_i I6 -pin state_i__0 I6 -pin state_i__0 I8 -pin u_add m_axis_result_tvalid -pin z_reg_i I8
netloc add_valid 1 4 8 1220 670 NJ 670 1740 560 2040J 530 NJ 530 2770J 520 3070J 510 3520
load net b[0] -attr @rip(#000000) b[0] -pin add_b_i I1[0] -port b[0]
load net b[10] -attr @rip(#000000) b[10] -pin add_b_i I1[10] -port b[10]
load net b[11] -attr @rip(#000000) b[11] -pin add_b_i I1[11] -port b[11]
load net b[12] -attr @rip(#000000) b[12] -pin add_b_i I1[12] -port b[12]
load net b[13] -attr @rip(#000000) b[13] -pin add_b_i I1[13] -port b[13]
load net b[14] -attr @rip(#000000) b[14] -pin add_b_i I1[14] -port b[14]
load net b[15] -attr @rip(#000000) b[15] -pin add_b_i I1[15] -port b[15]
load net b[16] -attr @rip(#000000) b[16] -pin add_b_i I1[16] -port b[16]
load net b[17] -attr @rip(#000000) b[17] -pin add_b_i I1[17] -port b[17]
load net b[18] -attr @rip(#000000) b[18] -pin add_b_i I1[18] -port b[18]
load net b[19] -attr @rip(#000000) b[19] -pin add_b_i I1[19] -port b[19]
load net b[1] -attr @rip(#000000) b[1] -pin add_b_i I1[1] -port b[1]
load net b[20] -attr @rip(#000000) b[20] -pin add_b_i I1[20] -port b[20]
load net b[21] -attr @rip(#000000) b[21] -pin add_b_i I1[21] -port b[21]
load net b[22] -attr @rip(#000000) b[22] -pin add_b_i I1[22] -port b[22]
load net b[23] -attr @rip(#000000) b[23] -pin add_b_i I1[23] -port b[23]
load net b[24] -attr @rip(#000000) b[24] -pin add_b_i I1[24] -port b[24]
load net b[25] -attr @rip(#000000) b[25] -pin add_b_i I1[25] -port b[25]
load net b[26] -attr @rip(#000000) b[26] -pin add_b_i I1[26] -port b[26]
load net b[27] -attr @rip(#000000) b[27] -pin add_b_i I1[27] -port b[27]
load net b[28] -attr @rip(#000000) b[28] -pin add_b_i I1[28] -port b[28]
load net b[29] -attr @rip(#000000) b[29] -pin add_b_i I1[29] -port b[29]
load net b[2] -attr @rip(#000000) b[2] -pin add_b_i I1[2] -port b[2]
load net b[30] -attr @rip(#000000) b[30] -pin add_b_i I1[30] -port b[30]
load net b[31] -attr @rip(#000000) b[31] -pin add_b_i I1[31] -port b[31]
load net b[3] -attr @rip(#000000) b[3] -pin add_b_i I1[3] -port b[3]
load net b[4] -attr @rip(#000000) b[4] -pin add_b_i I1[4] -port b[4]
load net b[5] -attr @rip(#000000) b[5] -pin add_b_i I1[5] -port b[5]
load net b[6] -attr @rip(#000000) b[6] -pin add_b_i I1[6] -port b[6]
load net b[7] -attr @rip(#000000) b[7] -pin add_b_i I1[7] -port b[7]
load net b[8] -attr @rip(#000000) b[8] -pin add_b_i I1[8] -port b[8]
load net b[9] -attr @rip(#000000) b[9] -pin add_b_i I1[9] -port b[9]
load net clk -pin add_a_reg[31:0] C -pin add_b_reg[31:0] C -pin add_start_reg C -port clk -pin done_reg_reg C -pin mul_a_reg[31:0] C -pin mul_b_reg[31:0] C -pin mul_start_reg C -pin p0_reg[31:0] C -pin p1_reg[31:0] C -pin s01_reg[31:0] C -pin start_d_reg C -pin state_reg[3:0] C -pin u_add aclk -pin u_mult aclk -pin z_reg_reg[31:0] C
netloc clk 1 0 13 NJ 890 NJ 890 510 720 790 710 NJ 710 1500 870 NJ 870 2120 870 2480J 840 2810 540 3110 530 3500J 670 3840
load net done -port done -pin done_reg_reg Q
netloc done 1 13 1 NJ 820
load net done_reg -pin done_reg_i O -pin done_reg_reg D
netloc done_reg 1 12 1 3820 320n
load net done_reg_i__0_n_0 -pin done_reg_i__0 O -pin done_reg_reg CE
netloc done_reg_i__0_n_0 1 12 1 3800 820n
load net mul_a[0] -attr @rip(#000000) O[0] -pin mul_a_i O[0] -pin mul_a_reg[31:0] D[0]
load net mul_a[10] -attr @rip(#000000) O[10] -pin mul_a_i O[10] -pin mul_a_reg[31:0] D[10]
load net mul_a[11] -attr @rip(#000000) O[11] -pin mul_a_i O[11] -pin mul_a_reg[31:0] D[11]
load net mul_a[12] -attr @rip(#000000) O[12] -pin mul_a_i O[12] -pin mul_a_reg[31:0] D[12]
load net mul_a[13] -attr @rip(#000000) O[13] -pin mul_a_i O[13] -pin mul_a_reg[31:0] D[13]
load net mul_a[14] -attr @rip(#000000) O[14] -pin mul_a_i O[14] -pin mul_a_reg[31:0] D[14]
load net mul_a[15] -attr @rip(#000000) O[15] -pin mul_a_i O[15] -pin mul_a_reg[31:0] D[15]
load net mul_a[16] -attr @rip(#000000) O[16] -pin mul_a_i O[16] -pin mul_a_reg[31:0] D[16]
load net mul_a[17] -attr @rip(#000000) O[17] -pin mul_a_i O[17] -pin mul_a_reg[31:0] D[17]
load net mul_a[18] -attr @rip(#000000) O[18] -pin mul_a_i O[18] -pin mul_a_reg[31:0] D[18]
load net mul_a[19] -attr @rip(#000000) O[19] -pin mul_a_i O[19] -pin mul_a_reg[31:0] D[19]
load net mul_a[1] -attr @rip(#000000) O[1] -pin mul_a_i O[1] -pin mul_a_reg[31:0] D[1]
load net mul_a[20] -attr @rip(#000000) O[20] -pin mul_a_i O[20] -pin mul_a_reg[31:0] D[20]
load net mul_a[21] -attr @rip(#000000) O[21] -pin mul_a_i O[21] -pin mul_a_reg[31:0] D[21]
load net mul_a[22] -attr @rip(#000000) O[22] -pin mul_a_i O[22] -pin mul_a_reg[31:0] D[22]
load net mul_a[23] -attr @rip(#000000) O[23] -pin mul_a_i O[23] -pin mul_a_reg[31:0] D[23]
load net mul_a[24] -attr @rip(#000000) O[24] -pin mul_a_i O[24] -pin mul_a_reg[31:0] D[24]
load net mul_a[25] -attr @rip(#000000) O[25] -pin mul_a_i O[25] -pin mul_a_reg[31:0] D[25]
load net mul_a[26] -attr @rip(#000000) O[26] -pin mul_a_i O[26] -pin mul_a_reg[31:0] D[26]
load net mul_a[27] -attr @rip(#000000) O[27] -pin mul_a_i O[27] -pin mul_a_reg[31:0] D[27]
load net mul_a[28] -attr @rip(#000000) O[28] -pin mul_a_i O[28] -pin mul_a_reg[31:0] D[28]
load net mul_a[29] -attr @rip(#000000) O[29] -pin mul_a_i O[29] -pin mul_a_reg[31:0] D[29]
load net mul_a[2] -attr @rip(#000000) O[2] -pin mul_a_i O[2] -pin mul_a_reg[31:0] D[2]
load net mul_a[30] -attr @rip(#000000) O[30] -pin mul_a_i O[30] -pin mul_a_reg[31:0] D[30]
load net mul_a[31] -attr @rip(#000000) O[31] -pin mul_a_i O[31] -pin mul_a_reg[31:0] D[31]
load net mul_a[3] -attr @rip(#000000) O[3] -pin mul_a_i O[3] -pin mul_a_reg[31:0] D[3]
load net mul_a[4] -attr @rip(#000000) O[4] -pin mul_a_i O[4] -pin mul_a_reg[31:0] D[4]
load net mul_a[5] -attr @rip(#000000) O[5] -pin mul_a_i O[5] -pin mul_a_reg[31:0] D[5]
load net mul_a[6] -attr @rip(#000000) O[6] -pin mul_a_i O[6] -pin mul_a_reg[31:0] D[6]
load net mul_a[7] -attr @rip(#000000) O[7] -pin mul_a_i O[7] -pin mul_a_reg[31:0] D[7]
load net mul_a[8] -attr @rip(#000000) O[8] -pin mul_a_i O[8] -pin mul_a_reg[31:0] D[8]
load net mul_a[9] -attr @rip(#000000) O[9] -pin mul_a_i O[9] -pin mul_a_reg[31:0] D[9]
load net mul_a_i__0_n_0 -pin mul_a_i__0 O -pin mul_a_i__1 I1
netloc mul_a_i__0_n_0 1 1 1 NJ 810
load net mul_a_i__1_n_0 -pin mul_a_i__1 O -pin mul_a_reg[31:0] CE
netloc mul_a_i__1_n_0 1 2 1 470 790n
load net mul_b[0] -attr @rip(#000000) O[0] -pin mul_b_i O[0] -pin mul_b_reg[31:0] D[0]
load net mul_b[10] -attr @rip(#000000) O[10] -pin mul_b_i O[10] -pin mul_b_reg[31:0] D[10]
load net mul_b[11] -attr @rip(#000000) O[11] -pin mul_b_i O[11] -pin mul_b_reg[31:0] D[11]
load net mul_b[12] -attr @rip(#000000) O[12] -pin mul_b_i O[12] -pin mul_b_reg[31:0] D[12]
load net mul_b[13] -attr @rip(#000000) O[13] -pin mul_b_i O[13] -pin mul_b_reg[31:0] D[13]
load net mul_b[14] -attr @rip(#000000) O[14] -pin mul_b_i O[14] -pin mul_b_reg[31:0] D[14]
load net mul_b[15] -attr @rip(#000000) O[15] -pin mul_b_i O[15] -pin mul_b_reg[31:0] D[15]
load net mul_b[16] -attr @rip(#000000) O[16] -pin mul_b_i O[16] -pin mul_b_reg[31:0] D[16]
load net mul_b[17] -attr @rip(#000000) O[17] -pin mul_b_i O[17] -pin mul_b_reg[31:0] D[17]
load net mul_b[18] -attr @rip(#000000) O[18] -pin mul_b_i O[18] -pin mul_b_reg[31:0] D[18]
load net mul_b[19] -attr @rip(#000000) O[19] -pin mul_b_i O[19] -pin mul_b_reg[31:0] D[19]
load net mul_b[1] -attr @rip(#000000) O[1] -pin mul_b_i O[1] -pin mul_b_reg[31:0] D[1]
load net mul_b[20] -attr @rip(#000000) O[20] -pin mul_b_i O[20] -pin mul_b_reg[31:0] D[20]
load net mul_b[21] -attr @rip(#000000) O[21] -pin mul_b_i O[21] -pin mul_b_reg[31:0] D[21]
load net mul_b[22] -attr @rip(#000000) O[22] -pin mul_b_i O[22] -pin mul_b_reg[31:0] D[22]
load net mul_b[23] -attr @rip(#000000) O[23] -pin mul_b_i O[23] -pin mul_b_reg[31:0] D[23]
load net mul_b[24] -attr @rip(#000000) O[24] -pin mul_b_i O[24] -pin mul_b_reg[31:0] D[24]
load net mul_b[25] -attr @rip(#000000) O[25] -pin mul_b_i O[25] -pin mul_b_reg[31:0] D[25]
load net mul_b[26] -attr @rip(#000000) O[26] -pin mul_b_i O[26] -pin mul_b_reg[31:0] D[26]
load net mul_b[27] -attr @rip(#000000) O[27] -pin mul_b_i O[27] -pin mul_b_reg[31:0] D[27]
load net mul_b[28] -attr @rip(#000000) O[28] -pin mul_b_i O[28] -pin mul_b_reg[31:0] D[28]
load net mul_b[29] -attr @rip(#000000) O[29] -pin mul_b_i O[29] -pin mul_b_reg[31:0] D[29]
load net mul_b[2] -attr @rip(#000000) O[2] -pin mul_b_i O[2] -pin mul_b_reg[31:0] D[2]
load net mul_b[30] -attr @rip(#000000) O[30] -pin mul_b_i O[30] -pin mul_b_reg[31:0] D[30]
load net mul_b[31] -attr @rip(#000000) O[31] -pin mul_b_i O[31] -pin mul_b_reg[31:0] D[31]
load net mul_b[3] -attr @rip(#000000) O[3] -pin mul_b_i O[3] -pin mul_b_reg[31:0] D[3]
load net mul_b[4] -attr @rip(#000000) O[4] -pin mul_b_i O[4] -pin mul_b_reg[31:0] D[4]
load net mul_b[5] -attr @rip(#000000) O[5] -pin mul_b_i O[5] -pin mul_b_reg[31:0] D[5]
load net mul_b[6] -attr @rip(#000000) O[6] -pin mul_b_i O[6] -pin mul_b_reg[31:0] D[6]
load net mul_b[7] -attr @rip(#000000) O[7] -pin mul_b_i O[7] -pin mul_b_reg[31:0] D[7]
load net mul_b[8] -attr @rip(#000000) O[8] -pin mul_b_i O[8] -pin mul_b_reg[31:0] D[8]
load net mul_b[9] -attr @rip(#000000) O[9] -pin mul_b_i O[9] -pin mul_b_reg[31:0] D[9]
load net mul_b_i__0_n_0 -pin mul_b_i__0 O -pin mul_b_i__1 I1
netloc mul_b_i__0_n_0 1 1 1 NJ 690
load net mul_b_i__1_n_0 -pin mul_b_i__1 O -pin mul_b_reg[31:0] CE
netloc mul_b_i__1_n_0 1 2 1 470 640n
load net mul_dout[0] -attr @rip(#000000) m_axis_result_tdata[0] -pin p0_reg[31:0] D[0] -pin p1_reg[31:0] D[0] -pin u_mult m_axis_result_tdata[0]
load net mul_dout[10] -attr @rip(#000000) m_axis_result_tdata[10] -pin p0_reg[31:0] D[10] -pin p1_reg[31:0] D[10] -pin u_mult m_axis_result_tdata[10]
load net mul_dout[11] -attr @rip(#000000) m_axis_result_tdata[11] -pin p0_reg[31:0] D[11] -pin p1_reg[31:0] D[11] -pin u_mult m_axis_result_tdata[11]
load net mul_dout[12] -attr @rip(#000000) m_axis_result_tdata[12] -pin p0_reg[31:0] D[12] -pin p1_reg[31:0] D[12] -pin u_mult m_axis_result_tdata[12]
load net mul_dout[13] -attr @rip(#000000) m_axis_result_tdata[13] -pin p0_reg[31:0] D[13] -pin p1_reg[31:0] D[13] -pin u_mult m_axis_result_tdata[13]
load net mul_dout[14] -attr @rip(#000000) m_axis_result_tdata[14] -pin p0_reg[31:0] D[14] -pin p1_reg[31:0] D[14] -pin u_mult m_axis_result_tdata[14]
load net mul_dout[15] -attr @rip(#000000) m_axis_result_tdata[15] -pin p0_reg[31:0] D[15] -pin p1_reg[31:0] D[15] -pin u_mult m_axis_result_tdata[15]
load net mul_dout[16] -attr @rip(#000000) m_axis_result_tdata[16] -pin p0_reg[31:0] D[16] -pin p1_reg[31:0] D[16] -pin u_mult m_axis_result_tdata[16]
load net mul_dout[17] -attr @rip(#000000) m_axis_result_tdata[17] -pin p0_reg[31:0] D[17] -pin p1_reg[31:0] D[17] -pin u_mult m_axis_result_tdata[17]
load net mul_dout[18] -attr @rip(#000000) m_axis_result_tdata[18] -pin p0_reg[31:0] D[18] -pin p1_reg[31:0] D[18] -pin u_mult m_axis_result_tdata[18]
load net mul_dout[19] -attr @rip(#000000) m_axis_result_tdata[19] -pin p0_reg[31:0] D[19] -pin p1_reg[31:0] D[19] -pin u_mult m_axis_result_tdata[19]
load net mul_dout[1] -attr @rip(#000000) m_axis_result_tdata[1] -pin p0_reg[31:0] D[1] -pin p1_reg[31:0] D[1] -pin u_mult m_axis_result_tdata[1]
load net mul_dout[20] -attr @rip(#000000) m_axis_result_tdata[20] -pin p0_reg[31:0] D[20] -pin p1_reg[31:0] D[20] -pin u_mult m_axis_result_tdata[20]
load net mul_dout[21] -attr @rip(#000000) m_axis_result_tdata[21] -pin p0_reg[31:0] D[21] -pin p1_reg[31:0] D[21] -pin u_mult m_axis_result_tdata[21]
load net mul_dout[22] -attr @rip(#000000) m_axis_result_tdata[22] -pin p0_reg[31:0] D[22] -pin p1_reg[31:0] D[22] -pin u_mult m_axis_result_tdata[22]
load net mul_dout[23] -attr @rip(#000000) m_axis_result_tdata[23] -pin p0_reg[31:0] D[23] -pin p1_reg[31:0] D[23] -pin u_mult m_axis_result_tdata[23]
load net mul_dout[24] -attr @rip(#000000) m_axis_result_tdata[24] -pin p0_reg[31:0] D[24] -pin p1_reg[31:0] D[24] -pin u_mult m_axis_result_tdata[24]
load net mul_dout[25] -attr @rip(#000000) m_axis_result_tdata[25] -pin p0_reg[31:0] D[25] -pin p1_reg[31:0] D[25] -pin u_mult m_axis_result_tdata[25]
load net mul_dout[26] -attr @rip(#000000) m_axis_result_tdata[26] -pin p0_reg[31:0] D[26] -pin p1_reg[31:0] D[26] -pin u_mult m_axis_result_tdata[26]
load net mul_dout[27] -attr @rip(#000000) m_axis_result_tdata[27] -pin p0_reg[31:0] D[27] -pin p1_reg[31:0] D[27] -pin u_mult m_axis_result_tdata[27]
load net mul_dout[28] -attr @rip(#000000) m_axis_result_tdata[28] -pin p0_reg[31:0] D[28] -pin p1_reg[31:0] D[28] -pin u_mult m_axis_result_tdata[28]
load net mul_dout[29] -attr @rip(#000000) m_axis_result_tdata[29] -pin p0_reg[31:0] D[29] -pin p1_reg[31:0] D[29] -pin u_mult m_axis_result_tdata[29]
load net mul_dout[2] -attr @rip(#000000) m_axis_result_tdata[2] -pin p0_reg[31:0] D[2] -pin p1_reg[31:0] D[2] -pin u_mult m_axis_result_tdata[2]
load net mul_dout[30] -attr @rip(#000000) m_axis_result_tdata[30] -pin p0_reg[31:0] D[30] -pin p1_reg[31:0] D[30] -pin u_mult m_axis_result_tdata[30]
load net mul_dout[31] -attr @rip(#000000) m_axis_result_tdata[31] -pin p0_reg[31:0] D[31] -pin p1_reg[31:0] D[31] -pin u_mult m_axis_result_tdata[31]
load net mul_dout[3] -attr @rip(#000000) m_axis_result_tdata[3] -pin p0_reg[31:0] D[3] -pin p1_reg[31:0] D[3] -pin u_mult m_axis_result_tdata[3]
load net mul_dout[4] -attr @rip(#000000) m_axis_result_tdata[4] -pin p0_reg[31:0] D[4] -pin p1_reg[31:0] D[4] -pin u_mult m_axis_result_tdata[4]
load net mul_dout[5] -attr @rip(#000000) m_axis_result_tdata[5] -pin p0_reg[31:0] D[5] -pin p1_reg[31:0] D[5] -pin u_mult m_axis_result_tdata[5]
load net mul_dout[6] -attr @rip(#000000) m_axis_result_tdata[6] -pin p0_reg[31:0] D[6] -pin p1_reg[31:0] D[6] -pin u_mult m_axis_result_tdata[6]
load net mul_dout[7] -attr @rip(#000000) m_axis_result_tdata[7] -pin p0_reg[31:0] D[7] -pin p1_reg[31:0] D[7] -pin u_mult m_axis_result_tdata[7]
load net mul_dout[8] -attr @rip(#000000) m_axis_result_tdata[8] -pin p0_reg[31:0] D[8] -pin p1_reg[31:0] D[8] -pin u_mult m_axis_result_tdata[8]
load net mul_dout[9] -attr @rip(#000000) m_axis_result_tdata[9] -pin p0_reg[31:0] D[9] -pin p1_reg[31:0] D[9] -pin u_mult m_axis_result_tdata[9]
load net mul_start -pin mul_start_i O -pin mul_start_reg D
netloc mul_start 1 2 1 NJ 940
load net mul_valid -pin p0_i I2 -pin p1_i I4 -pin state_i__0 I2 -pin state_i__0 I4 -pin u_mult m_axis_result_tvalid
netloc mul_valid 1 4 3 1180 690 NJ 690 1760
load net p0[0] -attr @rip(#000000) 0 -pin add_a_i I0[0] -pin p0_reg[31:0] Q[0]
load net p0[10] -attr @rip(#000000) 10 -pin add_a_i I0[10] -pin p0_reg[31:0] Q[10]
load net p0[11] -attr @rip(#000000) 11 -pin add_a_i I0[11] -pin p0_reg[31:0] Q[11]
load net p0[12] -attr @rip(#000000) 12 -pin add_a_i I0[12] -pin p0_reg[31:0] Q[12]
load net p0[13] -attr @rip(#000000) 13 -pin add_a_i I0[13] -pin p0_reg[31:0] Q[13]
load net p0[14] -attr @rip(#000000) 14 -pin add_a_i I0[14] -pin p0_reg[31:0] Q[14]
load net p0[15] -attr @rip(#000000) 15 -pin add_a_i I0[15] -pin p0_reg[31:0] Q[15]
load net p0[16] -attr @rip(#000000) 16 -pin add_a_i I0[16] -pin p0_reg[31:0] Q[16]
load net p0[17] -attr @rip(#000000) 17 -pin add_a_i I0[17] -pin p0_reg[31:0] Q[17]
load net p0[18] -attr @rip(#000000) 18 -pin add_a_i I0[18] -pin p0_reg[31:0] Q[18]
load net p0[19] -attr @rip(#000000) 19 -pin add_a_i I0[19] -pin p0_reg[31:0] Q[19]
load net p0[1] -attr @rip(#000000) 1 -pin add_a_i I0[1] -pin p0_reg[31:0] Q[1]
load net p0[20] -attr @rip(#000000) 20 -pin add_a_i I0[20] -pin p0_reg[31:0] Q[20]
load net p0[21] -attr @rip(#000000) 21 -pin add_a_i I0[21] -pin p0_reg[31:0] Q[21]
load net p0[22] -attr @rip(#000000) 22 -pin add_a_i I0[22] -pin p0_reg[31:0] Q[22]
load net p0[23] -attr @rip(#000000) 23 -pin add_a_i I0[23] -pin p0_reg[31:0] Q[23]
load net p0[24] -attr @rip(#000000) 24 -pin add_a_i I0[24] -pin p0_reg[31:0] Q[24]
load net p0[25] -attr @rip(#000000) 25 -pin add_a_i I0[25] -pin p0_reg[31:0] Q[25]
load net p0[26] -attr @rip(#000000) 26 -pin add_a_i I0[26] -pin p0_reg[31:0] Q[26]
load net p0[27] -attr @rip(#000000) 27 -pin add_a_i I0[27] -pin p0_reg[31:0] Q[27]
load net p0[28] -attr @rip(#000000) 28 -pin add_a_i I0[28] -pin p0_reg[31:0] Q[28]
load net p0[29] -attr @rip(#000000) 29 -pin add_a_i I0[29] -pin p0_reg[31:0] Q[29]
load net p0[2] -attr @rip(#000000) 2 -pin add_a_i I0[2] -pin p0_reg[31:0] Q[2]
load net p0[30] -attr @rip(#000000) 30 -pin add_a_i I0[30] -pin p0_reg[31:0] Q[30]
load net p0[31] -attr @rip(#000000) 31 -pin add_a_i I0[31] -pin p0_reg[31:0] Q[31]
load net p0[3] -attr @rip(#000000) 3 -pin add_a_i I0[3] -pin p0_reg[31:0] Q[3]
load net p0[4] -attr @rip(#000000) 4 -pin add_a_i I0[4] -pin p0_reg[31:0] Q[4]
load net p0[5] -attr @rip(#000000) 5 -pin add_a_i I0[5] -pin p0_reg[31:0] Q[5]
load net p0[6] -attr @rip(#000000) 6 -pin add_a_i I0[6] -pin p0_reg[31:0] Q[6]
load net p0[7] -attr @rip(#000000) 7 -pin add_a_i I0[7] -pin p0_reg[31:0] Q[7]
load net p0[8] -attr @rip(#000000) 8 -pin add_a_i I0[8] -pin p0_reg[31:0] Q[8]
load net p0[9] -attr @rip(#000000) 9 -pin add_a_i I0[9] -pin p0_reg[31:0] Q[9]
load net p0__0 -pin p0_i O -pin p0_reg[31:0] CE
netloc p0__0 1 7 1 2100 130n
load net p1[0] -attr @rip(#000000) 0 -pin add_b_i I0[0] -pin p1_reg[31:0] Q[0]
load net p1[10] -attr @rip(#000000) 10 -pin add_b_i I0[10] -pin p1_reg[31:0] Q[10]
load net p1[11] -attr @rip(#000000) 11 -pin add_b_i I0[11] -pin p1_reg[31:0] Q[11]
load net p1[12] -attr @rip(#000000) 12 -pin add_b_i I0[12] -pin p1_reg[31:0] Q[12]
load net p1[13] -attr @rip(#000000) 13 -pin add_b_i I0[13] -pin p1_reg[31:0] Q[13]
load net p1[14] -attr @rip(#000000) 14 -pin add_b_i I0[14] -pin p1_reg[31:0] Q[14]
load net p1[15] -attr @rip(#000000) 15 -pin add_b_i I0[15] -pin p1_reg[31:0] Q[15]
load net p1[16] -attr @rip(#000000) 16 -pin add_b_i I0[16] -pin p1_reg[31:0] Q[16]
load net p1[17] -attr @rip(#000000) 17 -pin add_b_i I0[17] -pin p1_reg[31:0] Q[17]
load net p1[18] -attr @rip(#000000) 18 -pin add_b_i I0[18] -pin p1_reg[31:0] Q[18]
load net p1[19] -attr @rip(#000000) 19 -pin add_b_i I0[19] -pin p1_reg[31:0] Q[19]
load net p1[1] -attr @rip(#000000) 1 -pin add_b_i I0[1] -pin p1_reg[31:0] Q[1]
load net p1[20] -attr @rip(#000000) 20 -pin add_b_i I0[20] -pin p1_reg[31:0] Q[20]
load net p1[21] -attr @rip(#000000) 21 -pin add_b_i I0[21] -pin p1_reg[31:0] Q[21]
load net p1[22] -attr @rip(#000000) 22 -pin add_b_i I0[22] -pin p1_reg[31:0] Q[22]
load net p1[23] -attr @rip(#000000) 23 -pin add_b_i I0[23] -pin p1_reg[31:0] Q[23]
load net p1[24] -attr @rip(#000000) 24 -pin add_b_i I0[24] -pin p1_reg[31:0] Q[24]
load net p1[25] -attr @rip(#000000) 25 -pin add_b_i I0[25] -pin p1_reg[31:0] Q[25]
load net p1[26] -attr @rip(#000000) 26 -pin add_b_i I0[26] -pin p1_reg[31:0] Q[26]
load net p1[27] -attr @rip(#000000) 27 -pin add_b_i I0[27] -pin p1_reg[31:0] Q[27]
load net p1[28] -attr @rip(#000000) 28 -pin add_b_i I0[28] -pin p1_reg[31:0] Q[28]
load net p1[29] -attr @rip(#000000) 29 -pin add_b_i I0[29] -pin p1_reg[31:0] Q[29]
load net p1[2] -attr @rip(#000000) 2 -pin add_b_i I0[2] -pin p1_reg[31:0] Q[2]
load net p1[30] -attr @rip(#000000) 30 -pin add_b_i I0[30] -pin p1_reg[31:0] Q[30]
load net p1[31] -attr @rip(#000000) 31 -pin add_b_i I0[31] -pin p1_reg[31:0] Q[31]
load net p1[3] -attr @rip(#000000) 3 -pin add_b_i I0[3] -pin p1_reg[31:0] Q[3]
load net p1[4] -attr @rip(#000000) 4 -pin add_b_i I0[4] -pin p1_reg[31:0] Q[4]
load net p1[5] -attr @rip(#000000) 5 -pin add_b_i I0[5] -pin p1_reg[31:0] Q[5]
load net p1[6] -attr @rip(#000000) 6 -pin add_b_i I0[6] -pin p1_reg[31:0] Q[6]
load net p1[7] -attr @rip(#000000) 7 -pin add_b_i I0[7] -pin p1_reg[31:0] Q[7]
load net p1[8] -attr @rip(#000000) 8 -pin add_b_i I0[8] -pin p1_reg[31:0] Q[8]
load net p1[9] -attr @rip(#000000) 9 -pin add_b_i I0[9] -pin p1_reg[31:0] Q[9]
load net p1__0 -pin p1_i O -pin p1_reg[31:0] CE
netloc p1__0 1 7 1 2040 690n
load net rst -pin add_a_i__1 S -pin add_b_i__1 S -pin add_start_reg RST -pin done_reg_reg RST -pin mul_a_i__1 S -pin mul_b_i__1 S -pin mul_start_reg RST -pin p0_reg[31:0] RST -pin p1_reg[31:0] RST -port rst -pin s01_reg[31:0] RST -pin start_d_reg RST -pin state_reg[3:0] RST -pin z_reg_reg[31:0] RST
netloc rst 1 0 13 NJ 860 180 860N 470 870N NJ 870 1160J 830 1480 910N 1800 850 2080 380N 2460 500N 2790 730N 3110 710 NJ 710 3880
load net s01[0] -attr @rip(#000000) 0 -pin add_a_i I1[0] -pin s01_reg[31:0] Q[0]
load net s01[10] -attr @rip(#000000) 10 -pin add_a_i I1[10] -pin s01_reg[31:0] Q[10]
load net s01[11] -attr @rip(#000000) 11 -pin add_a_i I1[11] -pin s01_reg[31:0] Q[11]
load net s01[12] -attr @rip(#000000) 12 -pin add_a_i I1[12] -pin s01_reg[31:0] Q[12]
load net s01[13] -attr @rip(#000000) 13 -pin add_a_i I1[13] -pin s01_reg[31:0] Q[13]
load net s01[14] -attr @rip(#000000) 14 -pin add_a_i I1[14] -pin s01_reg[31:0] Q[14]
load net s01[15] -attr @rip(#000000) 15 -pin add_a_i I1[15] -pin s01_reg[31:0] Q[15]
load net s01[16] -attr @rip(#000000) 16 -pin add_a_i I1[16] -pin s01_reg[31:0] Q[16]
load net s01[17] -attr @rip(#000000) 17 -pin add_a_i I1[17] -pin s01_reg[31:0] Q[17]
load net s01[18] -attr @rip(#000000) 18 -pin add_a_i I1[18] -pin s01_reg[31:0] Q[18]
load net s01[19] -attr @rip(#000000) 19 -pin add_a_i I1[19] -pin s01_reg[31:0] Q[19]
load net s01[1] -attr @rip(#000000) 1 -pin add_a_i I1[1] -pin s01_reg[31:0] Q[1]
load net s01[20] -attr @rip(#000000) 20 -pin add_a_i I1[20] -pin s01_reg[31:0] Q[20]
load net s01[21] -attr @rip(#000000) 21 -pin add_a_i I1[21] -pin s01_reg[31:0] Q[21]
load net s01[22] -attr @rip(#000000) 22 -pin add_a_i I1[22] -pin s01_reg[31:0] Q[22]
load net s01[23] -attr @rip(#000000) 23 -pin add_a_i I1[23] -pin s01_reg[31:0] Q[23]
load net s01[24] -attr @rip(#000000) 24 -pin add_a_i I1[24] -pin s01_reg[31:0] Q[24]
load net s01[25] -attr @rip(#000000) 25 -pin add_a_i I1[25] -pin s01_reg[31:0] Q[25]
load net s01[26] -attr @rip(#000000) 26 -pin add_a_i I1[26] -pin s01_reg[31:0] Q[26]
load net s01[27] -attr @rip(#000000) 27 -pin add_a_i I1[27] -pin s01_reg[31:0] Q[27]
load net s01[28] -attr @rip(#000000) 28 -pin add_a_i I1[28] -pin s01_reg[31:0] Q[28]
load net s01[29] -attr @rip(#000000) 29 -pin add_a_i I1[29] -pin s01_reg[31:0] Q[29]
load net s01[2] -attr @rip(#000000) 2 -pin add_a_i I1[2] -pin s01_reg[31:0] Q[2]
load net s01[30] -attr @rip(#000000) 30 -pin add_a_i I1[30] -pin s01_reg[31:0] Q[30]
load net s01[31] -attr @rip(#000000) 31 -pin add_a_i I1[31] -pin s01_reg[31:0] Q[31]
load net s01[3] -attr @rip(#000000) 3 -pin add_a_i I1[3] -pin s01_reg[31:0] Q[3]
load net s01[4] -attr @rip(#000000) 4 -pin add_a_i I1[4] -pin s01_reg[31:0] Q[4]
load net s01[5] -attr @rip(#000000) 5 -pin add_a_i I1[5] -pin s01_reg[31:0] Q[5]
load net s01[6] -attr @rip(#000000) 6 -pin add_a_i I1[6] -pin s01_reg[31:0] Q[6]
load net s01[7] -attr @rip(#000000) 7 -pin add_a_i I1[7] -pin s01_reg[31:0] Q[7]
load net s01[8] -attr @rip(#000000) 8 -pin add_a_i I1[8] -pin s01_reg[31:0] Q[8]
load net s01[9] -attr @rip(#000000) 9 -pin add_a_i I1[9] -pin s01_reg[31:0] Q[9]
load net s01__0 -pin s01_i O -pin s01_reg[31:0] CE
netloc s01__0 1 7 1 2060 410n
load net s_axis_a_tdata[0] -attr @rip(#000000) 0 -pin mul_a_reg[31:0] Q[0] -pin u_mult s_axis_a_tdata[0]
load net s_axis_a_tdata[10] -attr @rip(#000000) 10 -pin mul_a_reg[31:0] Q[10] -pin u_mult s_axis_a_tdata[10]
load net s_axis_a_tdata[11] -attr @rip(#000000) 11 -pin mul_a_reg[31:0] Q[11] -pin u_mult s_axis_a_tdata[11]
load net s_axis_a_tdata[12] -attr @rip(#000000) 12 -pin mul_a_reg[31:0] Q[12] -pin u_mult s_axis_a_tdata[12]
load net s_axis_a_tdata[13] -attr @rip(#000000) 13 -pin mul_a_reg[31:0] Q[13] -pin u_mult s_axis_a_tdata[13]
load net s_axis_a_tdata[14] -attr @rip(#000000) 14 -pin mul_a_reg[31:0] Q[14] -pin u_mult s_axis_a_tdata[14]
load net s_axis_a_tdata[15] -attr @rip(#000000) 15 -pin mul_a_reg[31:0] Q[15] -pin u_mult s_axis_a_tdata[15]
load net s_axis_a_tdata[16] -attr @rip(#000000) 16 -pin mul_a_reg[31:0] Q[16] -pin u_mult s_axis_a_tdata[16]
load net s_axis_a_tdata[17] -attr @rip(#000000) 17 -pin mul_a_reg[31:0] Q[17] -pin u_mult s_axis_a_tdata[17]
load net s_axis_a_tdata[18] -attr @rip(#000000) 18 -pin mul_a_reg[31:0] Q[18] -pin u_mult s_axis_a_tdata[18]
load net s_axis_a_tdata[19] -attr @rip(#000000) 19 -pin mul_a_reg[31:0] Q[19] -pin u_mult s_axis_a_tdata[19]
load net s_axis_a_tdata[1] -attr @rip(#000000) 1 -pin mul_a_reg[31:0] Q[1] -pin u_mult s_axis_a_tdata[1]
load net s_axis_a_tdata[20] -attr @rip(#000000) 20 -pin mul_a_reg[31:0] Q[20] -pin u_mult s_axis_a_tdata[20]
load net s_axis_a_tdata[21] -attr @rip(#000000) 21 -pin mul_a_reg[31:0] Q[21] -pin u_mult s_axis_a_tdata[21]
load net s_axis_a_tdata[22] -attr @rip(#000000) 22 -pin mul_a_reg[31:0] Q[22] -pin u_mult s_axis_a_tdata[22]
load net s_axis_a_tdata[23] -attr @rip(#000000) 23 -pin mul_a_reg[31:0] Q[23] -pin u_mult s_axis_a_tdata[23]
load net s_axis_a_tdata[24] -attr @rip(#000000) 24 -pin mul_a_reg[31:0] Q[24] -pin u_mult s_axis_a_tdata[24]
load net s_axis_a_tdata[25] -attr @rip(#000000) 25 -pin mul_a_reg[31:0] Q[25] -pin u_mult s_axis_a_tdata[25]
load net s_axis_a_tdata[26] -attr @rip(#000000) 26 -pin mul_a_reg[31:0] Q[26] -pin u_mult s_axis_a_tdata[26]
load net s_axis_a_tdata[27] -attr @rip(#000000) 27 -pin mul_a_reg[31:0] Q[27] -pin u_mult s_axis_a_tdata[27]
load net s_axis_a_tdata[28] -attr @rip(#000000) 28 -pin mul_a_reg[31:0] Q[28] -pin u_mult s_axis_a_tdata[28]
load net s_axis_a_tdata[29] -attr @rip(#000000) 29 -pin mul_a_reg[31:0] Q[29] -pin u_mult s_axis_a_tdata[29]
load net s_axis_a_tdata[2] -attr @rip(#000000) 2 -pin mul_a_reg[31:0] Q[2] -pin u_mult s_axis_a_tdata[2]
load net s_axis_a_tdata[30] -attr @rip(#000000) 30 -pin mul_a_reg[31:0] Q[30] -pin u_mult s_axis_a_tdata[30]
load net s_axis_a_tdata[31] -attr @rip(#000000) 31 -pin mul_a_reg[31:0] Q[31] -pin u_mult s_axis_a_tdata[31]
load net s_axis_a_tdata[3] -attr @rip(#000000) 3 -pin mul_a_reg[31:0] Q[3] -pin u_mult s_axis_a_tdata[3]
load net s_axis_a_tdata[4] -attr @rip(#000000) 4 -pin mul_a_reg[31:0] Q[4] -pin u_mult s_axis_a_tdata[4]
load net s_axis_a_tdata[5] -attr @rip(#000000) 5 -pin mul_a_reg[31:0] Q[5] -pin u_mult s_axis_a_tdata[5]
load net s_axis_a_tdata[6] -attr @rip(#000000) 6 -pin mul_a_reg[31:0] Q[6] -pin u_mult s_axis_a_tdata[6]
load net s_axis_a_tdata[7] -attr @rip(#000000) 7 -pin mul_a_reg[31:0] Q[7] -pin u_mult s_axis_a_tdata[7]
load net s_axis_a_tdata[8] -attr @rip(#000000) 8 -pin mul_a_reg[31:0] Q[8] -pin u_mult s_axis_a_tdata[8]
load net s_axis_a_tdata[9] -attr @rip(#000000) 9 -pin mul_a_reg[31:0] Q[9] -pin u_mult s_axis_a_tdata[9]
load net s_axis_a_tvalid -pin mul_start_reg Q -pin u_mult s_axis_a_tvalid -pin u_mult s_axis_b_tvalid
netloc s_axis_a_tvalid 1 3 1 790 790n
load net s_axis_b_tdata[0] -attr @rip(#000000) 0 -pin mul_b_reg[31:0] Q[0] -pin u_mult s_axis_b_tdata[0]
load net s_axis_b_tdata[10] -attr @rip(#000000) 10 -pin mul_b_reg[31:0] Q[10] -pin u_mult s_axis_b_tdata[10]
load net s_axis_b_tdata[11] -attr @rip(#000000) 11 -pin mul_b_reg[31:0] Q[11] -pin u_mult s_axis_b_tdata[11]
load net s_axis_b_tdata[12] -attr @rip(#000000) 12 -pin mul_b_reg[31:0] Q[12] -pin u_mult s_axis_b_tdata[12]
load net s_axis_b_tdata[13] -attr @rip(#000000) 13 -pin mul_b_reg[31:0] Q[13] -pin u_mult s_axis_b_tdata[13]
load net s_axis_b_tdata[14] -attr @rip(#000000) 14 -pin mul_b_reg[31:0] Q[14] -pin u_mult s_axis_b_tdata[14]
load net s_axis_b_tdata[15] -attr @rip(#000000) 15 -pin mul_b_reg[31:0] Q[15] -pin u_mult s_axis_b_tdata[15]
load net s_axis_b_tdata[16] -attr @rip(#000000) 16 -pin mul_b_reg[31:0] Q[16] -pin u_mult s_axis_b_tdata[16]
load net s_axis_b_tdata[17] -attr @rip(#000000) 17 -pin mul_b_reg[31:0] Q[17] -pin u_mult s_axis_b_tdata[17]
load net s_axis_b_tdata[18] -attr @rip(#000000) 18 -pin mul_b_reg[31:0] Q[18] -pin u_mult s_axis_b_tdata[18]
load net s_axis_b_tdata[19] -attr @rip(#000000) 19 -pin mul_b_reg[31:0] Q[19] -pin u_mult s_axis_b_tdata[19]
load net s_axis_b_tdata[1] -attr @rip(#000000) 1 -pin mul_b_reg[31:0] Q[1] -pin u_mult s_axis_b_tdata[1]
load net s_axis_b_tdata[20] -attr @rip(#000000) 20 -pin mul_b_reg[31:0] Q[20] -pin u_mult s_axis_b_tdata[20]
load net s_axis_b_tdata[21] -attr @rip(#000000) 21 -pin mul_b_reg[31:0] Q[21] -pin u_mult s_axis_b_tdata[21]
load net s_axis_b_tdata[22] -attr @rip(#000000) 22 -pin mul_b_reg[31:0] Q[22] -pin u_mult s_axis_b_tdata[22]
load net s_axis_b_tdata[23] -attr @rip(#000000) 23 -pin mul_b_reg[31:0] Q[23] -pin u_mult s_axis_b_tdata[23]
load net s_axis_b_tdata[24] -attr @rip(#000000) 24 -pin mul_b_reg[31:0] Q[24] -pin u_mult s_axis_b_tdata[24]
load net s_axis_b_tdata[25] -attr @rip(#000000) 25 -pin mul_b_reg[31:0] Q[25] -pin u_mult s_axis_b_tdata[25]
load net s_axis_b_tdata[26] -attr @rip(#000000) 26 -pin mul_b_reg[31:0] Q[26] -pin u_mult s_axis_b_tdata[26]
load net s_axis_b_tdata[27] -attr @rip(#000000) 27 -pin mul_b_reg[31:0] Q[27] -pin u_mult s_axis_b_tdata[27]
load net s_axis_b_tdata[28] -attr @rip(#000000) 28 -pin mul_b_reg[31:0] Q[28] -pin u_mult s_axis_b_tdata[28]
load net s_axis_b_tdata[29] -attr @rip(#000000) 29 -pin mul_b_reg[31:0] Q[29] -pin u_mult s_axis_b_tdata[29]
load net s_axis_b_tdata[2] -attr @rip(#000000) 2 -pin mul_b_reg[31:0] Q[2] -pin u_mult s_axis_b_tdata[2]
load net s_axis_b_tdata[30] -attr @rip(#000000) 30 -pin mul_b_reg[31:0] Q[30] -pin u_mult s_axis_b_tdata[30]
load net s_axis_b_tdata[31] -attr @rip(#000000) 31 -pin mul_b_reg[31:0] Q[31] -pin u_mult s_axis_b_tdata[31]
load net s_axis_b_tdata[3] -attr @rip(#000000) 3 -pin mul_b_reg[31:0] Q[3] -pin u_mult s_axis_b_tdata[3]
load net s_axis_b_tdata[4] -attr @rip(#000000) 4 -pin mul_b_reg[31:0] Q[4] -pin u_mult s_axis_b_tdata[4]
load net s_axis_b_tdata[5] -attr @rip(#000000) 5 -pin mul_b_reg[31:0] Q[5] -pin u_mult s_axis_b_tdata[5]
load net s_axis_b_tdata[6] -attr @rip(#000000) 6 -pin mul_b_reg[31:0] Q[6] -pin u_mult s_axis_b_tdata[6]
load net s_axis_b_tdata[7] -attr @rip(#000000) 7 -pin mul_b_reg[31:0] Q[7] -pin u_mult s_axis_b_tdata[7]
load net s_axis_b_tdata[8] -attr @rip(#000000) 8 -pin mul_b_reg[31:0] Q[8] -pin u_mult s_axis_b_tdata[8]
load net s_axis_b_tdata[9] -attr @rip(#000000) 9 -pin mul_b_reg[31:0] Q[9] -pin u_mult s_axis_b_tdata[9]
load net start -port start -pin start_d_reg D -pin start_pulse_i I0
netloc start 1 0 4 NJ 1120 NJ 1120 530 1110 790
load net start_d -pin start_d_reg Q -pin start_pulse_i I1
netloc start_d 1 3 1 N 1050
load net start_pulse -pin done_reg_i__0 I0 -pin start_pulse_i O -pin state_i__0 I0
netloc start_pulse 1 4 8 1200 1130 NJ 1130 NJ 1130 NJ 1130 NJ 1130 NJ 1130 NJ 1130 3540
load net state0_out[0] -attr @rip(#000000) O[0] -pin state_i O[0] -pin state_reg[3:0] D[0]
load net state0_out[1] -attr @rip(#000000) O[1] -pin state_i O[1] -pin state_reg[3:0] D[1]
load net state0_out[2] -attr @rip(#000000) O[2] -pin state_i O[2] -pin state_reg[3:0] D[2]
load net state0_out[3] -attr @rip(#000000) O[3] -pin state_i O[3] -pin state_reg[3:0] D[3]
load net state[0] -attr @rip(#000000) 0 -pin add_a_i S[0] -pin add_a_i__0 A[0] -pin add_b_i S[0] -pin add_b_i__0 A[0] -pin add_start_i A[0] -pin done_reg_i S[0] -pin done_reg_i__0 S[0] -pin mul_a_i S[0] -pin mul_a_i__0 A[0] -pin mul_b_i S[0] -pin mul_b_i__0 A[0] -pin mul_start_i A[0] -pin p0_i S[0] -pin p1_i S[0] -pin s01_i S[0] -pin state_i A[0] -pin state_i__0 S[0] -pin state_reg[3:0] Q[0] -pin z_reg_i S[0]
load net state[1] -attr @rip(#000000) 1 -pin add_a_i S[1] -pin add_a_i__0 A[1] -pin add_b_i S[1] -pin add_b_i__0 A[1] -pin add_start_i A[1] -pin done_reg_i S[1] -pin done_reg_i__0 S[1] -pin mul_a_i S[1] -pin mul_a_i__0 A[1] -pin mul_b_i S[1] -pin mul_b_i__0 A[1] -pin mul_start_i A[1] -pin p0_i S[1] -pin p1_i S[1] -pin s01_i S[1] -pin state_i A[1] -pin state_i__0 S[1] -pin state_reg[3:0] Q[1] -pin z_reg_i S[1]
load net state[2] -attr @rip(#000000) 2 -pin add_a_i S[2] -pin add_a_i__0 A[2] -pin add_b_i S[2] -pin add_b_i__0 A[2] -pin add_start_i A[2] -pin done_reg_i S[2] -pin done_reg_i__0 S[2] -pin mul_a_i S[2] -pin mul_a_i__0 A[2] -pin mul_b_i S[2] -pin mul_b_i__0 A[2] -pin mul_start_i A[2] -pin p0_i S[2] -pin p1_i S[2] -pin s01_i S[2] -pin state_i A[2] -pin state_i__0 S[2] -pin state_reg[3:0] Q[2] -pin z_reg_i S[2]
load net state[3] -attr @rip(#000000) 3 -pin add_a_i S[3] -pin add_a_i__0 A[3] -pin add_b_i S[3] -pin add_b_i__0 A[3] -pin add_start_i A[3] -pin done_reg_i S[3] -pin done_reg_i__0 S[3] -pin mul_a_i S[3] -pin mul_a_i__0 A[3] -pin mul_b_i S[3] -pin mul_b_i__0 A[3] -pin mul_start_i A[3] -pin p0_i S[3] -pin p1_i S[3] -pin s01_i S[3] -pin state_i A[3] -pin state_i__0 S[3] -pin state_reg[3:0] Q[3] -pin z_reg_i S[3]
load net state_i__0_n_0 -pin state_i__0 O -pin state_reg[3:0] CE
netloc state_i__0_n_0 1 5 1 N 980
load net w0[0] -attr @rip(#000000) w0[0] -pin mul_b_i I0[0] -port w0[0]
load net w0[10] -attr @rip(#000000) w0[10] -pin mul_b_i I0[10] -port w0[10]
load net w0[11] -attr @rip(#000000) w0[11] -pin mul_b_i I0[11] -port w0[11]
load net w0[12] -attr @rip(#000000) w0[12] -pin mul_b_i I0[12] -port w0[12]
load net w0[13] -attr @rip(#000000) w0[13] -pin mul_b_i I0[13] -port w0[13]
load net w0[14] -attr @rip(#000000) w0[14] -pin mul_b_i I0[14] -port w0[14]
load net w0[15] -attr @rip(#000000) w0[15] -pin mul_b_i I0[15] -port w0[15]
load net w0[16] -attr @rip(#000000) w0[16] -pin mul_b_i I0[16] -port w0[16]
load net w0[17] -attr @rip(#000000) w0[17] -pin mul_b_i I0[17] -port w0[17]
load net w0[18] -attr @rip(#000000) w0[18] -pin mul_b_i I0[18] -port w0[18]
load net w0[19] -attr @rip(#000000) w0[19] -pin mul_b_i I0[19] -port w0[19]
load net w0[1] -attr @rip(#000000) w0[1] -pin mul_b_i I0[1] -port w0[1]
load net w0[20] -attr @rip(#000000) w0[20] -pin mul_b_i I0[20] -port w0[20]
load net w0[21] -attr @rip(#000000) w0[21] -pin mul_b_i I0[21] -port w0[21]
load net w0[22] -attr @rip(#000000) w0[22] -pin mul_b_i I0[22] -port w0[22]
load net w0[23] -attr @rip(#000000) w0[23] -pin mul_b_i I0[23] -port w0[23]
load net w0[24] -attr @rip(#000000) w0[24] -pin mul_b_i I0[24] -port w0[24]
load net w0[25] -attr @rip(#000000) w0[25] -pin mul_b_i I0[25] -port w0[25]
load net w0[26] -attr @rip(#000000) w0[26] -pin mul_b_i I0[26] -port w0[26]
load net w0[27] -attr @rip(#000000) w0[27] -pin mul_b_i I0[27] -port w0[27]
load net w0[28] -attr @rip(#000000) w0[28] -pin mul_b_i I0[28] -port w0[28]
load net w0[29] -attr @rip(#000000) w0[29] -pin mul_b_i I0[29] -port w0[29]
load net w0[2] -attr @rip(#000000) w0[2] -pin mul_b_i I0[2] -port w0[2]
load net w0[30] -attr @rip(#000000) w0[30] -pin mul_b_i I0[30] -port w0[30]
load net w0[31] -attr @rip(#000000) w0[31] -pin mul_b_i I0[31] -port w0[31]
load net w0[3] -attr @rip(#000000) w0[3] -pin mul_b_i I0[3] -port w0[3]
load net w0[4] -attr @rip(#000000) w0[4] -pin mul_b_i I0[4] -port w0[4]
load net w0[5] -attr @rip(#000000) w0[5] -pin mul_b_i I0[5] -port w0[5]
load net w0[6] -attr @rip(#000000) w0[6] -pin mul_b_i I0[6] -port w0[6]
load net w0[7] -attr @rip(#000000) w0[7] -pin mul_b_i I0[7] -port w0[7]
load net w0[8] -attr @rip(#000000) w0[8] -pin mul_b_i I0[8] -port w0[8]
load net w0[9] -attr @rip(#000000) w0[9] -pin mul_b_i I0[9] -port w0[9]
load net w1[0] -attr @rip(#000000) w1[0] -pin mul_b_i I1[0] -port w1[0]
load net w1[10] -attr @rip(#000000) w1[10] -pin mul_b_i I1[10] -port w1[10]
load net w1[11] -attr @rip(#000000) w1[11] -pin mul_b_i I1[11] -port w1[11]
load net w1[12] -attr @rip(#000000) w1[12] -pin mul_b_i I1[12] -port w1[12]
load net w1[13] -attr @rip(#000000) w1[13] -pin mul_b_i I1[13] -port w1[13]
load net w1[14] -attr @rip(#000000) w1[14] -pin mul_b_i I1[14] -port w1[14]
load net w1[15] -attr @rip(#000000) w1[15] -pin mul_b_i I1[15] -port w1[15]
load net w1[16] -attr @rip(#000000) w1[16] -pin mul_b_i I1[16] -port w1[16]
load net w1[17] -attr @rip(#000000) w1[17] -pin mul_b_i I1[17] -port w1[17]
load net w1[18] -attr @rip(#000000) w1[18] -pin mul_b_i I1[18] -port w1[18]
load net w1[19] -attr @rip(#000000) w1[19] -pin mul_b_i I1[19] -port w1[19]
load net w1[1] -attr @rip(#000000) w1[1] -pin mul_b_i I1[1] -port w1[1]
load net w1[20] -attr @rip(#000000) w1[20] -pin mul_b_i I1[20] -port w1[20]
load net w1[21] -attr @rip(#000000) w1[21] -pin mul_b_i I1[21] -port w1[21]
load net w1[22] -attr @rip(#000000) w1[22] -pin mul_b_i I1[22] -port w1[22]
load net w1[23] -attr @rip(#000000) w1[23] -pin mul_b_i I1[23] -port w1[23]
load net w1[24] -attr @rip(#000000) w1[24] -pin mul_b_i I1[24] -port w1[24]
load net w1[25] -attr @rip(#000000) w1[25] -pin mul_b_i I1[25] -port w1[25]
load net w1[26] -attr @rip(#000000) w1[26] -pin mul_b_i I1[26] -port w1[26]
load net w1[27] -attr @rip(#000000) w1[27] -pin mul_b_i I1[27] -port w1[27]
load net w1[28] -attr @rip(#000000) w1[28] -pin mul_b_i I1[28] -port w1[28]
load net w1[29] -attr @rip(#000000) w1[29] -pin mul_b_i I1[29] -port w1[29]
load net w1[2] -attr @rip(#000000) w1[2] -pin mul_b_i I1[2] -port w1[2]
load net w1[30] -attr @rip(#000000) w1[30] -pin mul_b_i I1[30] -port w1[30]
load net w1[31] -attr @rip(#000000) w1[31] -pin mul_b_i I1[31] -port w1[31]
load net w1[3] -attr @rip(#000000) w1[3] -pin mul_b_i I1[3] -port w1[3]
load net w1[4] -attr @rip(#000000) w1[4] -pin mul_b_i I1[4] -port w1[4]
load net w1[5] -attr @rip(#000000) w1[5] -pin mul_b_i I1[5] -port w1[5]
load net w1[6] -attr @rip(#000000) w1[6] -pin mul_b_i I1[6] -port w1[6]
load net w1[7] -attr @rip(#000000) w1[7] -pin mul_b_i I1[7] -port w1[7]
load net w1[8] -attr @rip(#000000) w1[8] -pin mul_b_i I1[8] -port w1[8]
load net w1[9] -attr @rip(#000000) w1[9] -pin mul_b_i I1[9] -port w1[9]
load net x0[0] -attr @rip(#000000) x0[0] -pin mul_a_i I0[0] -port x0[0]
load net x0[10] -attr @rip(#000000) x0[10] -pin mul_a_i I0[10] -port x0[10]
load net x0[11] -attr @rip(#000000) x0[11] -pin mul_a_i I0[11] -port x0[11]
load net x0[12] -attr @rip(#000000) x0[12] -pin mul_a_i I0[12] -port x0[12]
load net x0[13] -attr @rip(#000000) x0[13] -pin mul_a_i I0[13] -port x0[13]
load net x0[14] -attr @rip(#000000) x0[14] -pin mul_a_i I0[14] -port x0[14]
load net x0[15] -attr @rip(#000000) x0[15] -pin mul_a_i I0[15] -port x0[15]
load net x0[16] -attr @rip(#000000) x0[16] -pin mul_a_i I0[16] -port x0[16]
load net x0[17] -attr @rip(#000000) x0[17] -pin mul_a_i I0[17] -port x0[17]
load net x0[18] -attr @rip(#000000) x0[18] -pin mul_a_i I0[18] -port x0[18]
load net x0[19] -attr @rip(#000000) x0[19] -pin mul_a_i I0[19] -port x0[19]
load net x0[1] -attr @rip(#000000) x0[1] -pin mul_a_i I0[1] -port x0[1]
load net x0[20] -attr @rip(#000000) x0[20] -pin mul_a_i I0[20] -port x0[20]
load net x0[21] -attr @rip(#000000) x0[21] -pin mul_a_i I0[21] -port x0[21]
load net x0[22] -attr @rip(#000000) x0[22] -pin mul_a_i I0[22] -port x0[22]
load net x0[23] -attr @rip(#000000) x0[23] -pin mul_a_i I0[23] -port x0[23]
load net x0[24] -attr @rip(#000000) x0[24] -pin mul_a_i I0[24] -port x0[24]
load net x0[25] -attr @rip(#000000) x0[25] -pin mul_a_i I0[25] -port x0[25]
load net x0[26] -attr @rip(#000000) x0[26] -pin mul_a_i I0[26] -port x0[26]
load net x0[27] -attr @rip(#000000) x0[27] -pin mul_a_i I0[27] -port x0[27]
load net x0[28] -attr @rip(#000000) x0[28] -pin mul_a_i I0[28] -port x0[28]
load net x0[29] -attr @rip(#000000) x0[29] -pin mul_a_i I0[29] -port x0[29]
load net x0[2] -attr @rip(#000000) x0[2] -pin mul_a_i I0[2] -port x0[2]
load net x0[30] -attr @rip(#000000) x0[30] -pin mul_a_i I0[30] -port x0[30]
load net x0[31] -attr @rip(#000000) x0[31] -pin mul_a_i I0[31] -port x0[31]
load net x0[3] -attr @rip(#000000) x0[3] -pin mul_a_i I0[3] -port x0[3]
load net x0[4] -attr @rip(#000000) x0[4] -pin mul_a_i I0[4] -port x0[4]
load net x0[5] -attr @rip(#000000) x0[5] -pin mul_a_i I0[5] -port x0[5]
load net x0[6] -attr @rip(#000000) x0[6] -pin mul_a_i I0[6] -port x0[6]
load net x0[7] -attr @rip(#000000) x0[7] -pin mul_a_i I0[7] -port x0[7]
load net x0[8] -attr @rip(#000000) x0[8] -pin mul_a_i I0[8] -port x0[8]
load net x0[9] -attr @rip(#000000) x0[9] -pin mul_a_i I0[9] -port x0[9]
load net x1[0] -attr @rip(#000000) x1[0] -pin mul_a_i I1[0] -port x1[0]
load net x1[10] -attr @rip(#000000) x1[10] -pin mul_a_i I1[10] -port x1[10]
load net x1[11] -attr @rip(#000000) x1[11] -pin mul_a_i I1[11] -port x1[11]
load net x1[12] -attr @rip(#000000) x1[12] -pin mul_a_i I1[12] -port x1[12]
load net x1[13] -attr @rip(#000000) x1[13] -pin mul_a_i I1[13] -port x1[13]
load net x1[14] -attr @rip(#000000) x1[14] -pin mul_a_i I1[14] -port x1[14]
load net x1[15] -attr @rip(#000000) x1[15] -pin mul_a_i I1[15] -port x1[15]
load net x1[16] -attr @rip(#000000) x1[16] -pin mul_a_i I1[16] -port x1[16]
load net x1[17] -attr @rip(#000000) x1[17] -pin mul_a_i I1[17] -port x1[17]
load net x1[18] -attr @rip(#000000) x1[18] -pin mul_a_i I1[18] -port x1[18]
load net x1[19] -attr @rip(#000000) x1[19] -pin mul_a_i I1[19] -port x1[19]
load net x1[1] -attr @rip(#000000) x1[1] -pin mul_a_i I1[1] -port x1[1]
load net x1[20] -attr @rip(#000000) x1[20] -pin mul_a_i I1[20] -port x1[20]
load net x1[21] -attr @rip(#000000) x1[21] -pin mul_a_i I1[21] -port x1[21]
load net x1[22] -attr @rip(#000000) x1[22] -pin mul_a_i I1[22] -port x1[22]
load net x1[23] -attr @rip(#000000) x1[23] -pin mul_a_i I1[23] -port x1[23]
load net x1[24] -attr @rip(#000000) x1[24] -pin mul_a_i I1[24] -port x1[24]
load net x1[25] -attr @rip(#000000) x1[25] -pin mul_a_i I1[25] -port x1[25]
load net x1[26] -attr @rip(#000000) x1[26] -pin mul_a_i I1[26] -port x1[26]
load net x1[27] -attr @rip(#000000) x1[27] -pin mul_a_i I1[27] -port x1[27]
load net x1[28] -attr @rip(#000000) x1[28] -pin mul_a_i I1[28] -port x1[28]
load net x1[29] -attr @rip(#000000) x1[29] -pin mul_a_i I1[29] -port x1[29]
load net x1[2] -attr @rip(#000000) x1[2] -pin mul_a_i I1[2] -port x1[2]
load net x1[30] -attr @rip(#000000) x1[30] -pin mul_a_i I1[30] -port x1[30]
load net x1[31] -attr @rip(#000000) x1[31] -pin mul_a_i I1[31] -port x1[31]
load net x1[3] -attr @rip(#000000) x1[3] -pin mul_a_i I1[3] -port x1[3]
load net x1[4] -attr @rip(#000000) x1[4] -pin mul_a_i I1[4] -port x1[4]
load net x1[5] -attr @rip(#000000) x1[5] -pin mul_a_i I1[5] -port x1[5]
load net x1[6] -attr @rip(#000000) x1[6] -pin mul_a_i I1[6] -port x1[6]
load net x1[7] -attr @rip(#000000) x1[7] -pin mul_a_i I1[7] -port x1[7]
load net x1[8] -attr @rip(#000000) x1[8] -pin mul_a_i I1[8] -port x1[8]
load net x1[9] -attr @rip(#000000) x1[9] -pin mul_a_i I1[9] -port x1[9]
load net z_out[0] -attr @rip(#000000) 0 -port z_out[0] -pin z_reg_reg[31:0] Q[0]
load net z_out[10] -attr @rip(#000000) 10 -port z_out[10] -pin z_reg_reg[31:0] Q[10]
load net z_out[11] -attr @rip(#000000) 11 -port z_out[11] -pin z_reg_reg[31:0] Q[11]
load net z_out[12] -attr @rip(#000000) 12 -port z_out[12] -pin z_reg_reg[31:0] Q[12]
load net z_out[13] -attr @rip(#000000) 13 -port z_out[13] -pin z_reg_reg[31:0] Q[13]
load net z_out[14] -attr @rip(#000000) 14 -port z_out[14] -pin z_reg_reg[31:0] Q[14]
load net z_out[15] -attr @rip(#000000) 15 -port z_out[15] -pin z_reg_reg[31:0] Q[15]
load net z_out[16] -attr @rip(#000000) 16 -port z_out[16] -pin z_reg_reg[31:0] Q[16]
load net z_out[17] -attr @rip(#000000) 17 -port z_out[17] -pin z_reg_reg[31:0] Q[17]
load net z_out[18] -attr @rip(#000000) 18 -port z_out[18] -pin z_reg_reg[31:0] Q[18]
load net z_out[19] -attr @rip(#000000) 19 -port z_out[19] -pin z_reg_reg[31:0] Q[19]
load net z_out[1] -attr @rip(#000000) 1 -port z_out[1] -pin z_reg_reg[31:0] Q[1]
load net z_out[20] -attr @rip(#000000) 20 -port z_out[20] -pin z_reg_reg[31:0] Q[20]
load net z_out[21] -attr @rip(#000000) 21 -port z_out[21] -pin z_reg_reg[31:0] Q[21]
load net z_out[22] -attr @rip(#000000) 22 -port z_out[22] -pin z_reg_reg[31:0] Q[22]
load net z_out[23] -attr @rip(#000000) 23 -port z_out[23] -pin z_reg_reg[31:0] Q[23]
load net z_out[24] -attr @rip(#000000) 24 -port z_out[24] -pin z_reg_reg[31:0] Q[24]
load net z_out[25] -attr @rip(#000000) 25 -port z_out[25] -pin z_reg_reg[31:0] Q[25]
load net z_out[26] -attr @rip(#000000) 26 -port z_out[26] -pin z_reg_reg[31:0] Q[26]
load net z_out[27] -attr @rip(#000000) 27 -port z_out[27] -pin z_reg_reg[31:0] Q[27]
load net z_out[28] -attr @rip(#000000) 28 -port z_out[28] -pin z_reg_reg[31:0] Q[28]
load net z_out[29] -attr @rip(#000000) 29 -port z_out[29] -pin z_reg_reg[31:0] Q[29]
load net z_out[2] -attr @rip(#000000) 2 -port z_out[2] -pin z_reg_reg[31:0] Q[2]
load net z_out[30] -attr @rip(#000000) 30 -port z_out[30] -pin z_reg_reg[31:0] Q[30]
load net z_out[31] -attr @rip(#000000) 31 -port z_out[31] -pin z_reg_reg[31:0] Q[31]
load net z_out[3] -attr @rip(#000000) 3 -port z_out[3] -pin z_reg_reg[31:0] Q[3]
load net z_out[4] -attr @rip(#000000) 4 -port z_out[4] -pin z_reg_reg[31:0] Q[4]
load net z_out[5] -attr @rip(#000000) 5 -port z_out[5] -pin z_reg_reg[31:0] Q[5]
load net z_out[6] -attr @rip(#000000) 6 -port z_out[6] -pin z_reg_reg[31:0] Q[6]
load net z_out[7] -attr @rip(#000000) 7 -port z_out[7] -pin z_reg_reg[31:0] Q[7]
load net z_out[8] -attr @rip(#000000) 8 -port z_out[8] -pin z_reg_reg[31:0] Q[8]
load net z_out[9] -attr @rip(#000000) 9 -port z_out[9] -pin z_reg_reg[31:0] Q[9]
load net z_reg -pin z_reg_i O -pin z_reg_reg[31:0] CE
netloc z_reg 1 12 1 3860 510n
load netBundle @b 32 b[31] b[30] b[29] b[28] b[27] b[26] b[25] b[24] b[23] b[22] b[21] b[20] b[19] b[18] b[17] b[16] b[15] b[14] b[13] b[12] b[11] b[10] b[9] b[8] b[7] b[6] b[5] b[4] b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 0 9 NJ 280 NJ 280 NJ 280 NJ 280 NJ 280 NJ 280 NJ 280 2060J 360 2400J
load netBundle @w0 32 w0[31] w0[30] w0[29] w0[28] w0[27] w0[26] w0[25] w0[24] w0[23] w0[22] w0[21] w0[20] w0[19] w0[18] w0[17] w0[16] w0[15] w0[14] w0[13] w0[12] w0[11] w0[10] w0[9] w0[8] w0[7] w0[6] w0[5] w0[4] w0[3] w0[2] w0[1] w0[0] -autobundled
netbloc @w0 1 0 2 NJ 550 NJ
load netBundle @w1 32 w1[31] w1[30] w1[29] w1[28] w1[27] w1[26] w1[25] w1[24] w1[23] w1[22] w1[21] w1[20] w1[19] w1[18] w1[17] w1[16] w1[15] w1[14] w1[13] w1[12] w1[11] w1[10] w1[9] w1[8] w1[7] w1[6] w1[5] w1[4] w1[3] w1[2] w1[1] w1[0] -autobundled
netbloc @w1 1 0 2 NJ 570 NJ
load netBundle @x0 32 x0[31] x0[30] x0[29] x0[28] x0[27] x0[26] x0[25] x0[24] x0[23] x0[22] x0[21] x0[20] x0[19] x0[18] x0[17] x0[16] x0[15] x0[14] x0[13] x0[12] x0[11] x0[10] x0[9] x0[8] x0[7] x0[6] x0[5] x0[4] x0[3] x0[2] x0[1] x0[0] -autobundled
netbloc @x0 1 0 2 NJ 1030 NJ
load netBundle @x1 32 x1[31] x1[30] x1[29] x1[28] x1[27] x1[26] x1[25] x1[24] x1[23] x1[22] x1[21] x1[20] x1[19] x1[18] x1[17] x1[16] x1[15] x1[14] x1[13] x1[12] x1[11] x1[10] x1[9] x1[8] x1[7] x1[6] x1[5] x1[4] x1[3] x1[2] x1[1] x1[0] -autobundled
netbloc @x1 1 0 2 NJ 1050 NJ
load netBundle @z_out 32 z_out[31] z_out[30] z_out[29] z_out[28] z_out[27] z_out[26] z_out[25] z_out[24] z_out[23] z_out[22] z_out[21] z_out[20] z_out[19] z_out[18] z_out[17] z_out[16] z_out[15] z_out[14] z_out[13] z_out[12] z_out[11] z_out[10] z_out[9] z_out[8] z_out[7] z_out[6] z_out[5] z_out[4] z_out[3] z_out[2] z_out[1] z_out[0] -autobundled
netbloc @z_out 1 13 1 NJ 670
load netBundle @add_a__0 32 add_a__0[31] add_a__0[30] add_a__0[29] add_a__0[28] add_a__0[27] add_a__0[26] add_a__0[25] add_a__0[24] add_a__0[23] add_a__0[22] add_a__0[21] add_a__0[20] add_a__0[19] add_a__0[18] add_a__0[17] add_a__0[16] add_a__0[15] add_a__0[14] add_a__0[13] add_a__0[12] add_a__0[11] add_a__0[10] add_a__0[9] add_a__0[8] add_a__0[7] add_a__0[6] add_a__0[5] add_a__0[4] add_a__0[3] add_a__0[2] add_a__0[1] add_a__0[0] -autobundled
netbloc @add_a__0 1 9 1 2750 460n
load netBundle @add_b__0 32 add_b__0[31] add_b__0[30] add_b__0[29] add_b__0[28] add_b__0[27] add_b__0[26] add_b__0[25] add_b__0[24] add_b__0[23] add_b__0[22] add_b__0[21] add_b__0[20] add_b__0[19] add_b__0[18] add_b__0[17] add_b__0[16] add_b__0[15] add_b__0[14] add_b__0[13] add_b__0[12] add_b__0[11] add_b__0[10] add_b__0[9] add_b__0[8] add_b__0[7] add_b__0[6] add_b__0[5] add_b__0[4] add_b__0[3] add_b__0[2] add_b__0[1] add_b__0[0] -autobundled
netbloc @add_b__0 1 9 1 2850 630n
load netBundle @mul_a 32 mul_a[31] mul_a[30] mul_a[29] mul_a[28] mul_a[27] mul_a[26] mul_a[25] mul_a[24] mul_a[23] mul_a[22] mul_a[21] mul_a[20] mul_a[19] mul_a[18] mul_a[17] mul_a[16] mul_a[15] mul_a[14] mul_a[13] mul_a[12] mul_a[11] mul_a[10] mul_a[9] mul_a[8] mul_a[7] mul_a[6] mul_a[5] mul_a[4] mul_a[3] mul_a[2] mul_a[1] mul_a[0] -autobundled
netbloc @mul_a 1 2 1 490 810n
load netBundle @mul_b 32 mul_b[31] mul_b[30] mul_b[29] mul_b[28] mul_b[27] mul_b[26] mul_b[25] mul_b[24] mul_b[23] mul_b[22] mul_b[21] mul_b[20] mul_b[19] mul_b[18] mul_b[17] mul_b[16] mul_b[15] mul_b[14] mul_b[13] mul_b[12] mul_b[11] mul_b[10] mul_b[9] mul_b[8] mul_b[7] mul_b[6] mul_b[5] mul_b[4] mul_b[3] mul_b[2] mul_b[1] mul_b[0] -autobundled
netbloc @mul_b 1 2 1 530 560n
load netBundle @state0_out 4 state0_out[3] state0_out[2] state0_out[1] state0_out[0] -autobundled
netbloc @state0_out 1 5 1 1520 1000n
load netBundle @add_dout 32 add_dout[31] add_dout[30] add_dout[29] add_dout[28] add_dout[27] add_dout[26] add_dout[25] add_dout[24] add_dout[23] add_dout[22] add_dout[21] add_dout[20] add_dout[19] add_dout[18] add_dout[17] add_dout[16] add_dout[15] add_dout[14] add_dout[13] add_dout[12] add_dout[11] add_dout[10] add_dout[9] add_dout[8] add_dout[7] add_dout[6] add_dout[5] add_dout[4] add_dout[3] add_dout[2] add_dout[1] add_dout[0] -autobundled
netbloc @add_dout 1 7 6 2160 700 NJ 700 2750J 710 3070J 730 3480 690 NJ
load netBundle @mul_dout 32 mul_dout[31] mul_dout[30] mul_dout[29] mul_dout[28] mul_dout[27] mul_dout[26] mul_dout[25] mul_dout[24] mul_dout[23] mul_dout[22] mul_dout[21] mul_dout[20] mul_dout[19] mul_dout[18] mul_dout[17] mul_dout[16] mul_dout[15] mul_dout[14] mul_dout[13] mul_dout[12] mul_dout[11] mul_dout[10] mul_dout[9] mul_dout[8] mul_dout[7] mul_dout[6] mul_dout[5] mul_dout[4] mul_dout[3] mul_dout[2] mul_dout[1] mul_dout[0] -autobundled
netbloc @mul_dout 1 4 4 1160 810 1520J 890 NJ 890 2140
load netBundle @s01 32 s01[31] s01[30] s01[29] s01[28] s01[27] s01[26] s01[25] s01[24] s01[23] s01[22] s01[21] s01[20] s01[19] s01[18] s01[17] s01[16] s01[15] s01[14] s01[13] s01[12] s01[11] s01[10] s01[9] s01[8] s01[7] s01[6] s01[5] s01[4] s01[3] s01[2] s01[1] s01[0] -autobundled
netbloc @s01 1 8 1 N 620
load netBundle @state 4 state[3] state[2] state[1] state[0] -autobundled
netbloc @state 1 0 12 20 1070 160 1100N 470 1130 NJ 1130 1160 1110N N 1110 1780 260N 2120 260 2420 670N 2830J 690 NJ 690 3460
load netBundle @p1 32 p1[31] p1[30] p1[29] p1[28] p1[27] p1[26] p1[25] p1[24] p1[23] p1[22] p1[21] p1[20] p1[19] p1[18] p1[17] p1[16] p1[15] p1[14] p1[13] p1[12] p1[11] p1[10] p1[9] p1[8] p1[7] p1[6] p1[5] p1[4] p1[3] p1[2] p1[1] p1[0] -autobundled
netbloc @p1 1 8 1 2480 750n
load netBundle @p0 32 p0[31] p0[30] p0[29] p0[28] p0[27] p0[26] p0[25] p0[24] p0[23] p0[22] p0[21] p0[20] p0[19] p0[18] p0[17] p0[16] p0[15] p0[14] p0[13] p0[12] p0[11] p0[10] p0[9] p0[8] p0[7] p0[6] p0[5] p0[4] p0[3] p0[2] p0[1] p0[0] -autobundled
netbloc @p0 1 8 1 2380 450n
load netBundle @add_a 32 add_a[31] add_a[30] add_a[29] add_a[28] add_a[27] add_a[26] add_a[25] add_a[24] add_a[23] add_a[22] add_a[21] add_a[20] add_a[19] add_a[18] add_a[17] add_a[16] add_a[15] add_a[14] add_a[13] add_a[12] add_a[11] add_a[10] add_a[9] add_a[8] add_a[7] add_a[6] add_a[5] add_a[4] add_a[3] add_a[2] add_a[1] add_a[0] -autobundled
netbloc @add_a 1 10 1 3090 440n
load netBundle @s_axis_b_tdata 32 s_axis_b_tdata[31] s_axis_b_tdata[30] s_axis_b_tdata[29] s_axis_b_tdata[28] s_axis_b_tdata[27] s_axis_b_tdata[26] s_axis_b_tdata[25] s_axis_b_tdata[24] s_axis_b_tdata[23] s_axis_b_tdata[22] s_axis_b_tdata[21] s_axis_b_tdata[20] s_axis_b_tdata[19] s_axis_b_tdata[18] s_axis_b_tdata[17] s_axis_b_tdata[16] s_axis_b_tdata[15] s_axis_b_tdata[14] s_axis_b_tdata[13] s_axis_b_tdata[12] s_axis_b_tdata[11] s_axis_b_tdata[10] s_axis_b_tdata[9] s_axis_b_tdata[8] s_axis_b_tdata[7] s_axis_b_tdata[6] s_axis_b_tdata[5] s_axis_b_tdata[4] s_axis_b_tdata[3] s_axis_b_tdata[2] s_axis_b_tdata[1] s_axis_b_tdata[0] -autobundled
netbloc @s_axis_b_tdata 1 3 1 770 640n
load netBundle @s_axis_a_tdata 32 s_axis_a_tdata[31] s_axis_a_tdata[30] s_axis_a_tdata[29] s_axis_a_tdata[28] s_axis_a_tdata[27] s_axis_a_tdata[26] s_axis_a_tdata[25] s_axis_a_tdata[24] s_axis_a_tdata[23] s_axis_a_tdata[22] s_axis_a_tdata[21] s_axis_a_tdata[20] s_axis_a_tdata[19] s_axis_a_tdata[18] s_axis_a_tdata[17] s_axis_a_tdata[16] s_axis_a_tdata[15] s_axis_a_tdata[14] s_axis_a_tdata[13] s_axis_a_tdata[12] s_axis_a_tdata[11] s_axis_a_tdata[10] s_axis_a_tdata[9] s_axis_a_tdata[8] s_axis_a_tdata[7] s_axis_a_tdata[6] s_axis_a_tdata[5] s_axis_a_tdata[4] s_axis_a_tdata[3] s_axis_a_tdata[2] s_axis_a_tdata[1] s_axis_a_tdata[0] -autobundled
netbloc @s_axis_a_tdata 1 3 1 750 770n
load netBundle @add_b 32 add_b[31] add_b[30] add_b[29] add_b[28] add_b[27] add_b[26] add_b[25] add_b[24] add_b[23] add_b[22] add_b[21] add_b[20] add_b[19] add_b[18] add_b[17] add_b[16] add_b[15] add_b[14] add_b[13] add_b[12] add_b[11] add_b[10] add_b[9] add_b[8] add_b[7] add_b[6] add_b[5] add_b[4] add_b[3] add_b[2] add_b[1] add_b[0] -autobundled
netbloc @add_b 1 10 1 3070 610n
levelinfo -pg 1 0 50 340 590 840 1350 1580 1910 2220 2620 2910 3140 3670 3940 4110
pagesize -pg 1 -db -bbox -sgen -110 0 4230 1230
show
zoom 0.976784
scrollpos 2931 337
#
# initialize ictrl to current module fp32_mac_fsm work:fp32_mac_fsm:NOFILE
ictrl init topinfo |
