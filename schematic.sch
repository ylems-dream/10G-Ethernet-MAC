# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
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
property maxfontsize 18
property maxzoom 7.5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
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
property objecthighlight19 #0000ff
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
property rubberbandfontsize 18
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
module new eth_mac_10g_fifo work:eth_mac_10g_fifo:NOFILE -nosplit
load symbol eth_mac_10g work:eth_mac_10g:NOFILE HIERBOX pin cfg_mcf_rx_check_eth_dst_mcast input.left pin cfg_mcf_rx_check_eth_dst_ucast input.left pin cfg_mcf_rx_check_eth_src input.left pin cfg_mcf_rx_check_opcode_lfc input.left pin cfg_mcf_rx_check_opcode_pfc input.left pin cfg_mcf_rx_enable input.left pin cfg_mcf_rx_forward input.left pin cfg_rx_enable input.left pin cfg_rx_lfc_en input.left pin cfg_rx_pfc_en input.left pin cfg_tx_enable input.left pin cfg_tx_lfc_en input.left pin cfg_tx_pfc_en input.left pin rx_axis_tlast output.right pin rx_axis_tvalid output.right pin rx_clk input.left pin rx_error_bad_fcs output.right pin rx_error_bad_frame output.right pin rx_lfc_ack input.left pin rx_lfc_en input.left pin rx_lfc_req output.right pin rx_rst input.left pin stat_rx_lfc_paused output.right pin stat_rx_lfc_pkt output.right pin stat_rx_lfc_xoff output.right pin stat_rx_lfc_xon output.right pin stat_rx_mcf output.right pin stat_rx_pfc_pkt output.right pin stat_tx_lfc_paused output.right pin stat_tx_lfc_pkt output.right pin stat_tx_lfc_xoff output.right pin stat_tx_lfc_xon output.right pin stat_tx_mcf output.right pin stat_tx_pfc_pkt output.right pin tx_axis_ptp_ts_valid output.right pin tx_axis_tlast input.left pin tx_axis_tready output.right pin tx_axis_tvalid input.left pin tx_clk input.left pin tx_error_underflow output.right pin tx_lfc_pause_en input.left pin tx_lfc_req input.left pin tx_lfc_resend input.left pin tx_pause_ack output.right pin tx_pause_req input.left pin tx_pfc_resend input.left pin tx_rst input.left pinBus cfg_ifg input.left [7:0] pinBus cfg_mcf_rx_eth_dst_mcast input.left [47:0] pinBus cfg_mcf_rx_eth_dst_ucast input.left [47:0] pinBus cfg_mcf_rx_eth_src input.left [47:0] pinBus cfg_mcf_rx_eth_type input.left [15:0] pinBus cfg_mcf_rx_opcode_lfc input.left [15:0] pinBus cfg_mcf_rx_opcode_pfc input.left [15:0] pinBus cfg_rx_lfc_opcode input.left [15:0] pinBus cfg_rx_pfc_opcode input.left [15:0] pinBus cfg_tx_lfc_eth_dst input.left [47:0] pinBus cfg_tx_lfc_eth_src input.left [47:0] pinBus cfg_tx_lfc_eth_type input.left [15:0] pinBus cfg_tx_lfc_opcode input.left [15:0] pinBus cfg_tx_lfc_quanta input.left [15:0] pinBus cfg_tx_lfc_refresh input.left [15:0] pinBus cfg_tx_pfc_eth_dst input.left [47:0] pinBus cfg_tx_pfc_eth_src input.left [47:0] pinBus cfg_tx_pfc_eth_type input.left [15:0] pinBus cfg_tx_pfc_opcode input.left [15:0] pinBus cfg_tx_pfc_quanta input.left [127:0] pinBus cfg_tx_pfc_refresh input.left [127:0] pinBus rx_axis_tdata output.right [63:0] pinBus rx_axis_tkeep output.right [7:0] pinBus rx_axis_tuser output.right [0:0] pinBus rx_pfc_ack input.left [7:0] pinBus rx_pfc_en input.left [7:0] pinBus rx_pfc_req output.right [7:0] pinBus rx_ptp_ts input.left [95:0] pinBus rx_start_packet output.right [1:0] pinBus stat_rx_pfc_paused output.right [7:0] pinBus stat_rx_pfc_xoff output.right [7:0] pinBus stat_rx_pfc_xon output.right [7:0] pinBus stat_tx_pfc_paused output.right [7:0] pinBus stat_tx_pfc_xoff output.right [7:0] pinBus stat_tx_pfc_xon output.right [7:0] pinBus tx_axis_ptp_ts output.right [95:0] pinBus tx_axis_ptp_ts_tag output.right [15:0] pinBus tx_axis_tdata input.left [63:0] pinBus tx_axis_tkeep input.left [7:0] pinBus tx_axis_tuser input.left [0:0] pinBus tx_pfc_req input.left [7:0] pinBus tx_ptp_ts input.left [95:0] pinBus tx_start_packet output.right [1:0] pinBus xgmii_rxc input.left [7:0] pinBus xgmii_rxd input.left [63:0] pinBus xgmii_txc output.right [7:0] pinBus xgmii_txd output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_XOR1352 work XOR pin I0 input pin I1 input pin O output fillcolor 1
load symbol axis_async_fifo_adapter__parameterized0 work:axis_async_fifo_adapter__parameterized0:NOFILE HIERBOX pin m_axis_tlast output.right pin m_axis_tready input.left pin m_axis_tvalid output.right pin m_clk input.left pin m_pause_ack output.right pin m_pause_req input.left pin m_rst input.left pin m_status_bad_frame output.right pin m_status_good_frame output.right pin m_status_overflow output.right pin s_axis_tlast input.left pin s_axis_tready output.right pin s_axis_tvalid input.left pin s_clk input.left pin s_pause_ack output.right pin s_pause_req input.left pin s_rst input.left pin s_status_bad_frame output.right pin s_status_good_frame output.right pin s_status_overflow output.right pinBus m_axis_tdata output.right [63:0] pinBus m_axis_tdest output.right [7:0] pinBus m_axis_tid output.right [7:0] pinBus m_axis_tkeep output.right [7:0] pinBus m_axis_tuser output.right [0:0] pinBus m_status_depth output.right [12:0] pinBus m_status_depth_commit output.right [12:0] pinBus s_axis_tdata input.left [63:0] pinBus s_axis_tdest input.left [7:0] pinBus s_axis_tid input.left [7:0] pinBus s_axis_tkeep input.left [7:0] pinBus s_axis_tuser input.left [0:0] pinBus s_status_depth output.right [12:0] pinBus s_status_depth_commit output.right [12:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_XOR10423 work XOR pinBus I0 input [1:0] pinBus I1 input [1:0] pinBus O output [1:0] fillcolor 1
load symbol axis_async_fifo_adapter work:axis_async_fifo_adapter:NOFILE HIERBOX pin m_axis_tlast output.right pin m_axis_tready input.left pin m_axis_tvalid output.right pin m_clk input.left pin m_pause_ack output.right pin m_pause_req input.left pin m_rst input.left pin m_status_bad_frame output.right pin m_status_good_frame output.right pin m_status_overflow output.right pin s_axis_tlast input.left pin s_axis_tready output.right pin s_axis_tvalid input.left pin s_clk input.left pin s_pause_ack output.right pin s_pause_req input.left pin s_rst input.left pin s_status_bad_frame output.right pin s_status_good_frame output.right pin s_status_overflow output.right pinBus m_axis_tdata output.right [63:0] pinBus m_axis_tdest output.right [7:0] pinBus m_axis_tid output.right [7:0] pinBus m_axis_tkeep output.right [7:0] pinBus m_axis_tuser output.right [0:0] pinBus m_status_depth output.right [12:0] pinBus m_status_depth_commit output.right [12:0] pinBus s_axis_tdata input.left [63:0] pinBus s_axis_tdest input.left [7:0] pinBus s_axis_tid input.left [7:0] pinBus s_axis_tkeep input.left [7:0] pinBus s_axis_tuser input.left [0:0] pinBus s_status_depth output.right [12:0] pinBus s_status_depth_commit output.right [12:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_155 work GEN pin C input.clk.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_REG_ASYNC__BREG_155 work[1:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [1:0] pinBus Q output.right [1:0] fillcolor 1 sandwich 3 prop @bundle 2
load port cfg_rx_enable input -pg 1 -lvl 0 -x 0 -y 100
load port cfg_tx_enable input -pg 1 -lvl 0 -x 0 -y 160
load port logic_clk input -pg 1 -lvl 0 -x 0 -y 440
load port logic_rst input -pg 1 -lvl 0 -x 0 -y 470
load port m_axis_tx_ptp_ts_ready input -pg 1 -lvl 0 -x 0 -y 20
load port m_axis_tx_ptp_ts_valid output -pg 1 -lvl 9 -x 4620 -y 590
load port ptp_sample_clk input -pg 1 -lvl 0 -x 0 -y 190
load port ptp_ts_step input -pg 1 -lvl 0 -x 0 -y 630
load port rx_axis_tlast output -pg 1 -lvl 9 -x 4620 -y 130
load port rx_axis_tready input -pg 1 -lvl 0 -x 0 -y 130
load port rx_axis_tvalid output -pg 1 -lvl 9 -x 4620 -y 190
load port rx_clk input -pg 1 -lvl 0 -x 0 -y 500
load port rx_error_bad_fcs output -pg 1 -lvl 9 -x 4620 -y 620
load port rx_error_bad_frame output -pg 1 -lvl 9 -x 4620 -y 730
load port rx_fifo_bad_frame output -pg 1 -lvl 9 -x 4620 -y 220
load port rx_fifo_good_frame output -pg 1 -lvl 9 -x 4620 -y 250
load port rx_fifo_overflow output -pg 1 -lvl 9 -x 4620 -y 280
load port rx_rst input -pg 1 -lvl 0 -x 0 -y 530
load port tx_axis_tlast input -pg 1 -lvl 0 -x 0 -y 350
load port tx_axis_tready output -pg 1 -lvl 9 -x 4620 -y 360
load port tx_axis_tvalid input -pg 1 -lvl 0 -x 0 -y 410
load port tx_clk input -pg 1 -lvl 0 -x 0 -y 220
load port tx_error_underflow output -pg 1 -lvl 9 -x 4620 -y 800
load port tx_fifo_bad_frame output -pg 1 -lvl 9 -x 4620 -y 530
load port tx_fifo_good_frame output -pg 1 -lvl 9 -x 4620 -y 660
load port tx_fifo_overflow output -pg 1 -lvl 9 -x 4620 -y 560
load port tx_rst input -pg 1 -lvl 0 -x 0 -y 250
load portBus cfg_ifg input [7:0] -attr @name cfg_ifg[7:0] -pg 1 -lvl 0 -x 0 -y 70
load portBus m_axis_tx_ptp_ts_96 output [95:0] -attr @name m_axis_tx_ptp_ts_96[95:0] -pg 1 -lvl 9 -x 4620 -y 690
load portBus m_axis_tx_ptp_ts_tag output [15:0] -attr @name m_axis_tx_ptp_ts_tag[15:0] -pg 1 -lvl 9 -x 4620 -y 500
load portBus ptp_ts_96 input [95:0] -attr @name ptp_ts_96[95:0] -pg 1 -lvl 0 -x 0 -y 660
load portBus rx_axis_tdata output [63:0] -attr @name rx_axis_tdata[63:0] -pg 1 -lvl 9 -x 4620 -y 70
load portBus rx_axis_tkeep output [7:0] -attr @name rx_axis_tkeep[7:0] -pg 1 -lvl 9 -x 4620 -y 100
load portBus rx_axis_tuser output [0:0] -attr @name rx_axis_tuser[0:0] -pg 1 -lvl 9 -x 4620 -y 160
load portBus tx_axis_tdata input [63:0] -attr @name tx_axis_tdata[63:0] -pg 1 -lvl 0 -x 0 -y 280
load portBus tx_axis_tkeep input [7:0] -attr @name tx_axis_tkeep[7:0] -pg 1 -lvl 0 -x 0 -y 320
load portBus tx_axis_tuser input [0:0] -attr @name tx_axis_tuser[0:0] -pg 1 -lvl 0 -x 0 -y 380
load portBus xgmii_rxc input [7:0] -attr @name xgmii_rxc[7:0] -pg 1 -lvl 0 -x 0 -y 570
load portBus xgmii_rxd input [63:0] -attr @name xgmii_rxd[63:0] -pg 1 -lvl 0 -x 0 -y 600
load portBus xgmii_txc output [7:0] -attr @name xgmii_txc[7:0] -pg 1 -lvl 9 -x 4620 -y 330
load portBus xgmii_txd output [63:0] -attr @name xgmii_txd[63:0] -pg 1 -lvl 9 -x 4620 -y 390
load inst eth_mac_10g_inst eth_mac_10g work:eth_mac_10g:NOFILE -autohide -attr @cell(#000000) eth_mac_10g -pinAttr cfg_mcf_rx_check_eth_dst_mcast @attr n/c -pinAttr cfg_mcf_rx_check_eth_dst_ucast @attr n/c -pinAttr cfg_mcf_rx_check_eth_src @attr n/c -pinAttr cfg_mcf_rx_check_opcode_lfc @attr n/c -pinAttr cfg_mcf_rx_check_opcode_pfc @attr n/c -pinAttr cfg_mcf_rx_enable @attr n/c -pinAttr cfg_mcf_rx_forward @attr n/c -pinAttr cfg_rx_enable @attr SL=N/A -pinAttr cfg_rx_lfc_en @attr n/c -pinAttr cfg_rx_pfc_en @attr n/c -pinAttr cfg_tx_enable @attr SL=N/A -pinAttr cfg_tx_lfc_en @attr n/c -pinAttr cfg_tx_pfc_en @attr n/c -pinAttr rx_axis_tlast @attr SL=N/A -pinAttr rx_axis_tvalid @attr SL=N/A -pinAttr rx_clk @attr SL=N/A -pinAttr rx_error_bad_fcs @attr SL=N/A -pinAttr rx_error_bad_frame @attr SL=N/A -pinAttr rx_lfc_ack @attr n/c -pinAttr rx_lfc_en @attr n/c -pinAttr rx_lfc_req @attr n/c -pinAttr rx_rst @attr SL=N/A -pinAttr stat_rx_lfc_paused @attr n/c -pinAttr stat_rx_lfc_pkt @attr n/c -pinAttr stat_rx_lfc_xoff @attr n/c -pinAttr stat_rx_lfc_xon @attr n/c -pinAttr stat_rx_mcf @attr n/c -pinAttr stat_rx_pfc_pkt @attr n/c -pinAttr stat_tx_lfc_paused @attr n/c -pinAttr stat_tx_lfc_pkt @attr n/c -pinAttr stat_tx_lfc_xoff @attr n/c -pinAttr stat_tx_lfc_xon @attr n/c -pinAttr stat_tx_mcf @attr n/c -pinAttr stat_tx_pfc_pkt @attr n/c -pinAttr tx_axis_ptp_ts_valid @attr n/c -pinAttr tx_axis_tlast @attr SL=N/A -pinAttr tx_axis_tready @attr SL=N/A -pinAttr tx_axis_tvalid @attr SL=N/A -pinAttr tx_clk @attr SL=N/A -pinAttr tx_error_underflow @attr SL=N/A -pinAttr tx_lfc_pause_en @attr n/c -pinAttr tx_lfc_req @attr n/c -pinAttr tx_lfc_resend @attr n/c -pinAttr tx_pause_ack @attr n/c -pinAttr tx_pause_req @attr n/c -pinAttr tx_pfc_resend @attr n/c -pinAttr tx_rst @attr SL=N/A -pinBusAttr cfg_ifg @name cfg_ifg[7:0] -pinBusAttr cfg_ifg @attr SL=N/A -pinBusAttr cfg_mcf_rx_eth_dst_mcast @name cfg_mcf_rx_eth_dst_mcast[47:0] -pinBusAttr cfg_mcf_rx_eth_dst_mcast @attr n/c -pinBusAttr cfg_mcf_rx_eth_dst_ucast @name cfg_mcf_rx_eth_dst_ucast[47:0] -pinBusAttr cfg_mcf_rx_eth_dst_ucast @attr n/c -pinBusAttr cfg_mcf_rx_eth_src @name cfg_mcf_rx_eth_src[47:0] -pinBusAttr cfg_mcf_rx_eth_src @attr n/c -pinBusAttr cfg_mcf_rx_eth_type @name cfg_mcf_rx_eth_type[15:0] -pinBusAttr cfg_mcf_rx_eth_type @attr n/c -pinBusAttr cfg_mcf_rx_opcode_lfc @name cfg_mcf_rx_opcode_lfc[15:0] -pinBusAttr cfg_mcf_rx_opcode_lfc @attr n/c -pinBusAttr cfg_mcf_rx_opcode_pfc @name cfg_mcf_rx_opcode_pfc[15:0] -pinBusAttr cfg_mcf_rx_opcode_pfc @attr n/c -pinBusAttr cfg_rx_lfc_opcode @name cfg_rx_lfc_opcode[15:0] -pinBusAttr cfg_rx_lfc_opcode @attr n/c -pinBusAttr cfg_rx_pfc_opcode @name cfg_rx_pfc_opcode[15:0] -pinBusAttr cfg_rx_pfc_opcode @attr n/c -pinBusAttr cfg_tx_lfc_eth_dst @name cfg_tx_lfc_eth_dst[47:0] -pinBusAttr cfg_tx_lfc_eth_dst @attr n/c -pinBusAttr cfg_tx_lfc_eth_src @name cfg_tx_lfc_eth_src[47:0] -pinBusAttr cfg_tx_lfc_eth_src @attr n/c -pinBusAttr cfg_tx_lfc_eth_type @name cfg_tx_lfc_eth_type[15:0] -pinBusAttr cfg_tx_lfc_eth_type @attr n/c -pinBusAttr cfg_tx_lfc_opcode @name cfg_tx_lfc_opcode[15:0] -pinBusAttr cfg_tx_lfc_opcode @attr n/c -pinBusAttr cfg_tx_lfc_quanta @name cfg_tx_lfc_quanta[15:0] -pinBusAttr cfg_tx_lfc_quanta @attr n/c -pinBusAttr cfg_tx_lfc_refresh @name cfg_tx_lfc_refresh[15:0] -pinBusAttr cfg_tx_lfc_refresh @attr n/c -pinBusAttr cfg_tx_pfc_eth_dst @name cfg_tx_pfc_eth_dst[47:0] -pinBusAttr cfg_tx_pfc_eth_dst @attr n/c -pinBusAttr cfg_tx_pfc_eth_src @name cfg_tx_pfc_eth_src[47:0] -pinBusAttr cfg_tx_pfc_eth_src @attr n/c -pinBusAttr cfg_tx_pfc_eth_type @name cfg_tx_pfc_eth_type[15:0] -pinBusAttr cfg_tx_pfc_eth_type @attr n/c -pinBusAttr cfg_tx_pfc_opcode @name cfg_tx_pfc_opcode[15:0] -pinBusAttr cfg_tx_pfc_opcode @attr n/c -pinBusAttr cfg_tx_pfc_quanta @name cfg_tx_pfc_quanta[127:0] -pinBusAttr cfg_tx_pfc_quanta @attr n/c -pinBusAttr cfg_tx_pfc_refresh @name cfg_tx_pfc_refresh[127:0] -pinBusAttr cfg_tx_pfc_refresh @attr n/c -pinBusAttr rx_axis_tdata @name rx_axis_tdata[63:0] -pinBusAttr rx_axis_tdata @attr SL=N/A -pinBusAttr rx_axis_tkeep @name rx_axis_tkeep[7:0] -pinBusAttr rx_axis_tkeep @attr SL=N/A -pinBusAttr rx_axis_tuser @name rx_axis_tuser -pinBusAttr rx_axis_tuser @attr SL=N/A -pinBusAttr rx_pfc_ack @name rx_pfc_ack[7:0] -pinBusAttr rx_pfc_ack @attr n/c -pinBusAttr rx_pfc_en @name rx_pfc_en[7:0] -pinBusAttr rx_pfc_en @attr n/c -pinBusAttr rx_pfc_req @name rx_pfc_req[7:0] -pinBusAttr rx_pfc_req @attr n/c -pinBusAttr rx_ptp_ts @name rx_ptp_ts[95:0] -pinBusAttr rx_ptp_ts @attr SL=N/A -pinBusAttr rx_start_packet @name rx_start_packet[1:0] -pinBusAttr rx_start_packet @attr n/c -pinBusAttr stat_rx_pfc_paused @name stat_rx_pfc_paused[7:0] -pinBusAttr stat_rx_pfc_paused @attr n/c -pinBusAttr stat_rx_pfc_xoff @name stat_rx_pfc_xoff[7:0] -pinBusAttr stat_rx_pfc_xoff @attr n/c -pinBusAttr stat_rx_pfc_xon @name stat_rx_pfc_xon[7:0] -pinBusAttr stat_rx_pfc_xon @attr n/c -pinBusAttr stat_tx_pfc_paused @name stat_tx_pfc_paused[7:0] -pinBusAttr stat_tx_pfc_paused @attr n/c -pinBusAttr stat_tx_pfc_xoff @name stat_tx_pfc_xoff[7:0] -pinBusAttr stat_tx_pfc_xoff @attr n/c -pinBusAttr stat_tx_pfc_xon @name stat_tx_pfc_xon[7:0] -pinBusAttr stat_tx_pfc_xon @attr n/c -pinBusAttr tx_axis_ptp_ts @name tx_axis_ptp_ts[95:0] -pinBusAttr tx_axis_ptp_ts @attr n/c -pinBusAttr tx_axis_ptp_ts_tag @name tx_axis_ptp_ts_tag[15:0] -pinBusAttr tx_axis_ptp_ts_tag @attr n/c -pinBusAttr tx_axis_tdata @name tx_axis_tdata[63:0] -pinBusAttr tx_axis_tdata @attr SL=N/A -pinBusAttr tx_axis_tkeep @name tx_axis_tkeep[7:0] -pinBusAttr tx_axis_tkeep @attr SL=N/A -pinBusAttr tx_axis_tuser @name tx_axis_tuser -pinBusAttr tx_axis_tuser @attr SL=N/A -pinBusAttr tx_pfc_req @name tx_pfc_req[7:0] -pinBusAttr tx_pfc_req @attr n/c -pinBusAttr tx_ptp_ts @name tx_ptp_ts[95:0] -pinBusAttr tx_ptp_ts @attr SL=N/A -pinBusAttr tx_start_packet @name tx_start_packet[1:0] -pinBusAttr tx_start_packet @attr n/c -pinBusAttr xgmii_rxc @name xgmii_rxc[7:0] -pinBusAttr xgmii_rxc @attr SL=N/A -pinBusAttr xgmii_rxd @name xgmii_rxd[63:0] -pinBusAttr xgmii_rxd @attr SL=N/A -pinBusAttr xgmii_txc @name xgmii_txc[7:0] -pinBusAttr xgmii_txc @attr SL=N/A -pinBusAttr xgmii_txd @name xgmii_txd[63:0] -pinBusAttr xgmii_txd @attr SL=N/A -pg 1 -lvl 2 -x 1303 -y 110
load inst rx_error_bad_fcs_i RTL_XOR1352 work -attr @cell(#000000) RTL_XOR -pinAttr I0 @attr {FO=2, SL=N/A} -pinAttr I1 @attr {FO=1, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 8 -x 4271 -y 610
load inst rx_error_bad_frame_i RTL_XOR1352 work -attr @cell(#000000) RTL_XOR -pinAttr I0 @attr {FO=2, SL=N/A} -pinAttr I1 @attr {FO=1, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 8 -x 4271 -y 730
load inst rx_fifo axis_async_fifo_adapter__parameterized0 work:axis_async_fifo_adapter__parameterized0:NOFILE -autohide -attr @cell(#000000) axis_async_fifo_adapter__parameterized0 -pinAttr m_axis_tlast @attr SL=N/A -pinAttr m_axis_tready @attr SL=N/A -pinAttr m_axis_tvalid @attr SL=N/A -pinAttr m_clk @attr SL=N/A -pinAttr m_pause_ack @attr n/c -pinAttr m_pause_req @attr n/c -pinAttr m_rst @attr SL=N/A -pinAttr m_status_bad_frame @attr SL=N/A -pinAttr m_status_good_frame @attr SL=N/A -pinAttr m_status_overflow @attr SL=N/A -pinAttr s_axis_tlast @attr SL=N/A -pinAttr s_axis_tready @attr n/c -pinAttr s_axis_tvalid @attr SL=N/A -pinAttr s_clk @attr SL=N/A -pinAttr s_pause_ack @attr n/c -pinAttr s_pause_req @attr n/c -pinAttr s_rst @attr SL=N/A -pinAttr s_status_bad_frame @attr n/c -pinAttr s_status_good_frame @attr n/c -pinAttr s_status_overflow @attr n/c -pinBusAttr m_axis_tdata @name m_axis_tdata[63:0] -pinBusAttr m_axis_tdata @attr SL=N/A -pinBusAttr m_axis_tdest @name m_axis_tdest[7:0] -pinBusAttr m_axis_tdest @attr n/c -pinBusAttr m_axis_tid @name m_axis_tid[7:0] -pinBusAttr m_axis_tid @attr n/c -pinBusAttr m_axis_tkeep @name m_axis_tkeep[7:0] -pinBusAttr m_axis_tkeep @attr SL=N/A -pinBusAttr m_axis_tuser @name m_axis_tuser -pinBusAttr m_axis_tuser @attr SL=N/A -pinBusAttr m_status_depth @name m_status_depth[12:0] -pinBusAttr m_status_depth @attr n/c -pinBusAttr m_status_depth_commit @name m_status_depth_commit[12:0] -pinBusAttr m_status_depth_commit @attr n/c -pinBusAttr s_axis_tdata @name s_axis_tdata[63:0] -pinBusAttr s_axis_tdata @attr SL=N/A -pinBusAttr s_axis_tdest @name s_axis_tdest[7:0] -pinBusAttr s_axis_tdest @attr SL=N/A -pinBusAttr s_axis_tid @name s_axis_tid[7:0] -pinBusAttr s_axis_tid @attr SL=N/A -pinBusAttr s_axis_tkeep @name s_axis_tkeep[7:0] -pinBusAttr s_axis_tkeep @attr SL=N/A -pinBusAttr s_axis_tuser @name s_axis_tuser -pinBusAttr s_axis_tuser @attr SL=N/A -pinBusAttr s_status_depth @name s_status_depth[12:0] -pinBusAttr s_status_depth @attr n/c -pinBusAttr s_status_depth_commit @name s_status_depth_commit[12:0] -pinBusAttr s_status_depth_commit @attr n/c -pg 1 -lvl 8 -x 4271 -y 50
load inst rx_sync_reg_10_i RTL_XOR10423 work -attr @cell(#000000) RTL_XOR -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr {FO=2, SL=N/A} -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr {FO=1, SL=N/A} -pinBusAttr O @name O[1:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 3 -x 2071 -y 450
load inst tx_error_underflow_i RTL_XOR1352 work -attr @cell(#000000) RTL_XOR -pinAttr I0 @attr {FO=2, SL=N/A} -pinAttr I1 @attr {FO=1, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 8 -x 4271 -y 800
load inst tx_fifo axis_async_fifo_adapter work:axis_async_fifo_adapter:NOFILE -autohide -attr @cell(#000000) axis_async_fifo_adapter -pinAttr m_axis_tlast @attr SL=N/A -pinAttr m_axis_tready @attr SL=N/A -pinAttr m_axis_tvalid @attr SL=N/A -pinAttr m_clk @attr SL=N/A -pinAttr m_pause_ack @attr n/c -pinAttr m_pause_req @attr n/c -pinAttr m_rst @attr SL=N/A -pinAttr m_status_bad_frame @attr n/c -pinAttr m_status_good_frame @attr n/c -pinAttr m_status_overflow @attr n/c -pinAttr s_axis_tlast @attr SL=N/A -pinAttr s_axis_tready @attr SL=N/A -pinAttr s_axis_tvalid @attr SL=N/A -pinAttr s_clk @attr SL=N/A -pinAttr s_pause_ack @attr n/c -pinAttr s_pause_req @attr n/c -pinAttr s_rst @attr SL=N/A -pinAttr s_status_bad_frame @attr SL=N/A -pinAttr s_status_good_frame @attr SL=N/A -pinAttr s_status_overflow @attr SL=N/A -pinBusAttr m_axis_tdata @name m_axis_tdata[63:0] -pinBusAttr m_axis_tdata @attr SL=N/A -pinBusAttr m_axis_tdest @name m_axis_tdest[7:0] -pinBusAttr m_axis_tdest @attr n/c -pinBusAttr m_axis_tid @name m_axis_tid[7:0] -pinBusAttr m_axis_tid @attr n/c -pinBusAttr m_axis_tkeep @name m_axis_tkeep[7:0] -pinBusAttr m_axis_tkeep @attr SL=N/A -pinBusAttr m_axis_tuser @name m_axis_tuser -pinBusAttr m_axis_tuser @attr SL=N/A -pinBusAttr m_status_depth @name m_status_depth[12:0] -pinBusAttr m_status_depth @attr n/c -pinBusAttr m_status_depth_commit @name m_status_depth_commit[12:0] -pinBusAttr m_status_depth_commit @attr n/c -pinBusAttr s_axis_tdata @name s_axis_tdata[63:0] -pinBusAttr s_axis_tdata @attr SL=N/A -pinBusAttr s_axis_tdest @name s_axis_tdest[7:0] -pinBusAttr s_axis_tdest @attr SL=N/A -pinBusAttr s_axis_tid @name s_axis_tid[7:0] -pinBusAttr s_axis_tid @attr SL=N/A -pinBusAttr s_axis_tkeep @name s_axis_tkeep[7:0] -pinBusAttr s_axis_tkeep @attr SL=N/A -pinBusAttr s_axis_tuser @name s_axis_tuser -pinBusAttr s_axis_tuser @attr SL=N/A -pinBusAttr s_status_depth @name s_status_depth[12:0] -pinBusAttr s_status_depth @attr n/c -pinBusAttr s_status_depth_commit @name s_status_depth_commit[12:0] -pinBusAttr s_status_depth_commit @attr n/c -pg 1 -lvl 1 -x 460 -y 210
load inst tx_sync_reg_10_i RTL_XOR1352 work -attr @cell(#000000) RTL_XOR -pinAttr I0 @attr {FO=2, SL=N/A} -pinAttr I1 @attr {FO=1, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 3 -x 2071 -y 730
load inst tx_sync_reg_1_reg[0] RTL_REG_ASYNC__BREG_155 work -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=578, SL=N/A} -pinAttr CLR @attr {FO=132, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr Q @attr {FO=2, SL=N/A} -pg 1 -lvl 4 -x 2441 -y 740
load inst tx_sync_reg_2_reg[0] RTL_REG_ASYNC__BREG_155 work -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=364, SL=N/A} -pinAttr CLR @attr {FO=87, SL=N/A} -pinAttr D @attr {FO=2, SL=N/A} -pinAttr Q @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 2841 -y 810
load inst tx_sync_reg_3_reg[0] RTL_REG_ASYNC__BREG_155 work -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=364, SL=N/A} -pinAttr CLR @attr {FO=87, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr Q @attr {FO=2, SL=N/A} -pg 1 -lvl 6 -x 3201 -y 810
load inst tx_sync_reg_4_reg[0] RTL_REG_ASYNC__BREG_155 work -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=364, SL=N/A} -pinAttr CLR @attr {FO=87, SL=N/A} -pinAttr D @attr {FO=2, SL=N/A} -pinAttr Q @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 3581 -y 850
load inst rx_sync_reg_1_reg[1:0] RTL_REG_ASYNC__BREG_155 work[1:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=411, SL=N/A} -pinAttr CLR @attr {FO=50, SL=N/A} -pinBusAttr D @attr {FO=1, SL=N/A} -pinBusAttr Q @attr {FO=2, SL=N/A} -pg 1 -lvl 4 -x 2441 -y 470
load inst rx_sync_reg_4_reg[1:0] RTL_REG_ASYNC__BREG_155 work[1:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=364, SL=N/A} -pinAttr CLR @attr {FO=87, SL=N/A} -pinBusAttr D @attr {FO=2, SL=N/A} -pinBusAttr Q @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 3581 -y 670
load inst rx_sync_reg_3_reg[1:0] RTL_REG_ASYNC__BREG_155 work[1:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=364, SL=N/A} -pinAttr CLR @attr {FO=87, SL=N/A} -pinBusAttr D @attr {FO=1, SL=N/A} -pinBusAttr Q @attr {FO=2, SL=N/A} -pg 1 -lvl 6 -x 3201 -y 650
load inst rx_sync_reg_2_reg[1:0] RTL_REG_ASYNC__BREG_155 work[1:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pinAttr C @attr {FO=364, SL=N/A} -pinAttr CLR @attr {FO=87, SL=N/A} -pinBusAttr D @attr {FO=2, SL=N/A} -pinBusAttr Q @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 2841 -y 650
load net <const0> -ground -pin eth_mac_10g_inst rx_ptp_ts[95] -pin eth_mac_10g_inst rx_ptp_ts[94] -pin eth_mac_10g_inst rx_ptp_ts[93] -pin eth_mac_10g_inst rx_ptp_ts[92] -pin eth_mac_10g_inst rx_ptp_ts[91] -pin eth_mac_10g_inst rx_ptp_ts[90] -pin eth_mac_10g_inst rx_ptp_ts[89] -pin eth_mac_10g_inst rx_ptp_ts[88] -pin eth_mac_10g_inst rx_ptp_ts[87] -pin eth_mac_10g_inst rx_ptp_ts[86] -pin eth_mac_10g_inst rx_ptp_ts[85] -pin eth_mac_10g_inst rx_ptp_ts[84] -pin eth_mac_10g_inst rx_ptp_ts[83] -pin eth_mac_10g_inst rx_ptp_ts[82] -pin eth_mac_10g_inst rx_ptp_ts[81] -pin eth_mac_10g_inst rx_ptp_ts[80] -pin eth_mac_10g_inst rx_ptp_ts[79] -pin eth_mac_10g_inst rx_ptp_ts[78] -pin eth_mac_10g_inst rx_ptp_ts[77] -pin eth_mac_10g_inst rx_ptp_ts[76] -pin eth_mac_10g_inst rx_ptp_ts[75] -pin eth_mac_10g_inst rx_ptp_ts[74] -pin eth_mac_10g_inst rx_ptp_ts[73] -pin eth_mac_10g_inst rx_ptp_ts[72] -pin eth_mac_10g_inst rx_ptp_ts[71] -pin eth_mac_10g_inst rx_ptp_ts[70] -pin eth_mac_10g_inst rx_ptp_ts[69] -pin eth_mac_10g_inst rx_ptp_ts[68] -pin eth_mac_10g_inst rx_ptp_ts[67] -pin eth_mac_10g_inst rx_ptp_ts[66] -pin eth_mac_10g_inst rx_ptp_ts[65] -pin eth_mac_10g_inst rx_ptp_ts[64] -pin eth_mac_10g_inst rx_ptp_ts[63] -pin eth_mac_10g_inst rx_ptp_ts[62] -pin eth_mac_10g_inst rx_ptp_ts[61] -pin eth_mac_10g_inst rx_ptp_ts[60] -pin eth_mac_10g_inst rx_ptp_ts[59] -pin eth_mac_10g_inst rx_ptp_ts[58] -pin eth_mac_10g_inst rx_ptp_ts[57] -pin eth_mac_10g_inst rx_ptp_ts[56] -pin eth_mac_10g_inst rx_ptp_ts[55] -pin eth_mac_10g_inst rx_ptp_ts[54] -pin eth_mac_10g_inst rx_ptp_ts[53] -pin eth_mac_10g_inst rx_ptp_ts[52] -pin eth_mac_10g_inst rx_ptp_ts[51] -pin eth_mac_10g_inst rx_ptp_ts[50] -pin eth_mac_10g_inst rx_ptp_ts[49] -pin eth_mac_10g_inst rx_ptp_ts[48] -pin eth_mac_10g_inst rx_ptp_ts[47] -pin eth_mac_10g_inst rx_ptp_ts[46] -pin eth_mac_10g_inst rx_ptp_ts[45] -pin eth_mac_10g_inst rx_ptp_ts[44] -pin eth_mac_10g_inst rx_ptp_ts[43] -pin eth_mac_10g_inst rx_ptp_ts[42] -pin eth_mac_10g_inst rx_ptp_ts[41] -pin eth_mac_10g_inst rx_ptp_ts[40] -pin eth_mac_10g_inst rx_ptp_ts[39] -pin eth_mac_10g_inst rx_ptp_ts[38] -pin eth_mac_10g_inst rx_ptp_ts[37] -pin eth_mac_10g_inst rx_ptp_ts[36] -pin eth_mac_10g_inst rx_ptp_ts[35] -pin eth_mac_10g_inst rx_ptp_ts[34] -pin eth_mac_10g_inst rx_ptp_ts[33] -pin eth_mac_10g_inst rx_ptp_ts[32] -pin eth_mac_10g_inst rx_ptp_ts[31] -pin eth_mac_10g_inst rx_ptp_ts[30] -pin eth_mac_10g_inst rx_ptp_ts[29] -pin eth_mac_10g_inst rx_ptp_ts[28] -pin eth_mac_10g_inst rx_ptp_ts[27] -pin eth_mac_10g_inst rx_ptp_ts[26] -pin eth_mac_10g_inst rx_ptp_ts[25] -pin eth_mac_10g_inst rx_ptp_ts[24] -pin eth_mac_10g_inst rx_ptp_ts[23] -pin eth_mac_10g_inst rx_ptp_ts[22] -pin eth_mac_10g_inst rx_ptp_ts[21] -pin eth_mac_10g_inst rx_ptp_ts[20] -pin eth_mac_10g_inst rx_ptp_ts[19] -pin eth_mac_10g_inst rx_ptp_ts[18] -pin eth_mac_10g_inst rx_ptp_ts[17] -pin eth_mac_10g_inst rx_ptp_ts[16] -pin eth_mac_10g_inst rx_ptp_ts[15] -pin eth_mac_10g_inst rx_ptp_ts[14] -pin eth_mac_10g_inst rx_ptp_ts[13] -pin eth_mac_10g_inst rx_ptp_ts[12] -pin eth_mac_10g_inst rx_ptp_ts[11] -pin eth_mac_10g_inst rx_ptp_ts[10] -pin eth_mac_10g_inst rx_ptp_ts[9] -pin eth_mac_10g_inst rx_ptp_ts[8] -pin eth_mac_10g_inst rx_ptp_ts[7] -pin eth_mac_10g_inst rx_ptp_ts[6] -pin eth_mac_10g_inst rx_ptp_ts[5] -pin eth_mac_10g_inst rx_ptp_ts[4] -pin eth_mac_10g_inst rx_ptp_ts[3] -pin eth_mac_10g_inst rx_ptp_ts[2] -pin eth_mac_10g_inst rx_ptp_ts[1] -pin eth_mac_10g_inst rx_ptp_ts[0] -pin eth_mac_10g_inst tx_ptp_ts[95] -pin eth_mac_10g_inst tx_ptp_ts[94] -pin eth_mac_10g_inst tx_ptp_ts[93] -pin eth_mac_10g_inst tx_ptp_ts[92] -pin eth_mac_10g_inst tx_ptp_ts[91] -pin eth_mac_10g_inst tx_ptp_ts[90] -pin eth_mac_10g_inst tx_ptp_ts[89] -pin eth_mac_10g_inst tx_ptp_ts[88] -pin eth_mac_10g_inst tx_ptp_ts[87] -pin eth_mac_10g_inst tx_ptp_ts[86] -pin eth_mac_10g_inst tx_ptp_ts[85] -pin eth_mac_10g_inst tx_ptp_ts[84] -pin eth_mac_10g_inst tx_ptp_ts[83] -pin eth_mac_10g_inst tx_ptp_ts[82] -pin eth_mac_10g_inst tx_ptp_ts[81] -pin eth_mac_10g_inst tx_ptp_ts[80] -pin eth_mac_10g_inst tx_ptp_ts[79] -pin eth_mac_10g_inst tx_ptp_ts[78] -pin eth_mac_10g_inst tx_ptp_ts[77] -pin eth_mac_10g_inst tx_ptp_ts[76] -pin eth_mac_10g_inst tx_ptp_ts[75] -pin eth_mac_10g_inst tx_ptp_ts[74] -pin eth_mac_10g_inst tx_ptp_ts[73] -pin eth_mac_10g_inst tx_ptp_ts[72] -pin eth_mac_10g_inst tx_ptp_ts[71] -pin eth_mac_10g_inst tx_ptp_ts[70] -pin eth_mac_10g_inst tx_ptp_ts[69] -pin eth_mac_10g_inst tx_ptp_ts[68] -pin eth_mac_10g_inst tx_ptp_ts[67] -pin eth_mac_10g_inst tx_ptp_ts[66] -pin eth_mac_10g_inst tx_ptp_ts[65] -pin eth_mac_10g_inst tx_ptp_ts[64] -pin eth_mac_10g_inst tx_ptp_ts[63] -pin eth_mac_10g_inst tx_ptp_ts[62] -pin eth_mac_10g_inst tx_ptp_ts[61] -pin eth_mac_10g_inst tx_ptp_ts[60] -pin eth_mac_10g_inst tx_ptp_ts[59] -pin eth_mac_10g_inst tx_ptp_ts[58] -pin eth_mac_10g_inst tx_ptp_ts[57] -pin eth_mac_10g_inst tx_ptp_ts[56] -pin eth_mac_10g_inst tx_ptp_ts[55] -pin eth_mac_10g_inst tx_ptp_ts[54] -pin eth_mac_10g_inst tx_ptp_ts[53] -pin eth_mac_10g_inst tx_ptp_ts[52] -pin eth_mac_10g_inst tx_ptp_ts[51] -pin eth_mac_10g_inst tx_ptp_ts[50] -pin eth_mac_10g_inst tx_ptp_ts[49] -pin eth_mac_10g_inst tx_ptp_ts[48] -pin eth_mac_10g_inst tx_ptp_ts[47] -pin eth_mac_10g_inst tx_ptp_ts[46] -pin eth_mac_10g_inst tx_ptp_ts[45] -pin eth_mac_10g_inst tx_ptp_ts[44] -pin eth_mac_10g_inst tx_ptp_ts[43] -pin eth_mac_10g_inst tx_ptp_ts[42] -pin eth_mac_10g_inst tx_ptp_ts[41] -pin eth_mac_10g_inst tx_ptp_ts[40] -pin eth_mac_10g_inst tx_ptp_ts[39] -pin eth_mac_10g_inst tx_ptp_ts[38] -pin eth_mac_10g_inst tx_ptp_ts[37] -pin eth_mac_10g_inst tx_ptp_ts[36] -pin eth_mac_10g_inst tx_ptp_ts[35] -pin eth_mac_10g_inst tx_ptp_ts[34] -pin eth_mac_10g_inst tx_ptp_ts[33] -pin eth_mac_10g_inst tx_ptp_ts[32] -pin eth_mac_10g_inst tx_ptp_ts[31] -pin eth_mac_10g_inst tx_ptp_ts[30] -pin eth_mac_10g_inst tx_ptp_ts[29] -pin eth_mac_10g_inst tx_ptp_ts[28] -pin eth_mac_10g_inst tx_ptp_ts[27] -pin eth_mac_10g_inst tx_ptp_ts[26] -pin eth_mac_10g_inst tx_ptp_ts[25] -pin eth_mac_10g_inst tx_ptp_ts[24] -pin eth_mac_10g_inst tx_ptp_ts[23] -pin eth_mac_10g_inst tx_ptp_ts[22] -pin eth_mac_10g_inst tx_ptp_ts[21] -pin eth_mac_10g_inst tx_ptp_ts[20] -pin eth_mac_10g_inst tx_ptp_ts[19] -pin eth_mac_10g_inst tx_ptp_ts[18] -pin eth_mac_10g_inst tx_ptp_ts[17] -pin eth_mac_10g_inst tx_ptp_ts[16] -pin eth_mac_10g_inst tx_ptp_ts[15] -pin eth_mac_10g_inst tx_ptp_ts[14] -pin eth_mac_10g_inst tx_ptp_ts[13] -pin eth_mac_10g_inst tx_ptp_ts[12] -pin eth_mac_10g_inst tx_ptp_ts[11] -pin eth_mac_10g_inst tx_ptp_ts[10] -pin eth_mac_10g_inst tx_ptp_ts[9] -pin eth_mac_10g_inst tx_ptp_ts[8] -pin eth_mac_10g_inst tx_ptp_ts[7] -pin eth_mac_10g_inst tx_ptp_ts[6] -pin eth_mac_10g_inst tx_ptp_ts[5] -pin eth_mac_10g_inst tx_ptp_ts[4] -pin eth_mac_10g_inst tx_ptp_ts[3] -pin eth_mac_10g_inst tx_ptp_ts[2] -pin eth_mac_10g_inst tx_ptp_ts[1] -pin eth_mac_10g_inst tx_ptp_ts[0] -port m_axis_tx_ptp_ts_96[95] -port m_axis_tx_ptp_ts_96[94] -port m_axis_tx_ptp_ts_96[93] -port m_axis_tx_ptp_ts_96[92] -port m_axis_tx_ptp_ts_96[91] -port m_axis_tx_ptp_ts_96[90] -port m_axis_tx_ptp_ts_96[89] -port m_axis_tx_ptp_ts_96[88] -port m_axis_tx_ptp_ts_96[87] -port m_axis_tx_ptp_ts_96[86] -port m_axis_tx_ptp_ts_96[85] -port m_axis_tx_ptp_ts_96[84] -port m_axis_tx_ptp_ts_96[83] -port m_axis_tx_ptp_ts_96[82] -port m_axis_tx_ptp_ts_96[81] -port m_axis_tx_ptp_ts_96[80] -port m_axis_tx_ptp_ts_96[79] -port m_axis_tx_ptp_ts_96[78] -port m_axis_tx_ptp_ts_96[77] -port m_axis_tx_ptp_ts_96[76] -port m_axis_tx_ptp_ts_96[75] -port m_axis_tx_ptp_ts_96[74] -port m_axis_tx_ptp_ts_96[73] -port m_axis_tx_ptp_ts_96[72] -port m_axis_tx_ptp_ts_96[71] -port m_axis_tx_ptp_ts_96[70] -port m_axis_tx_ptp_ts_96[69] -port m_axis_tx_ptp_ts_96[68] -port m_axis_tx_ptp_ts_96[67] -port m_axis_tx_ptp_ts_96[66] -port m_axis_tx_ptp_ts_96[65] -port m_axis_tx_ptp_ts_96[64] -port m_axis_tx_ptp_ts_96[63] -port m_axis_tx_ptp_ts_96[62] -port m_axis_tx_ptp_ts_96[61] -port m_axis_tx_ptp_ts_96[60] -port m_axis_tx_ptp_ts_96[59] -port m_axis_tx_ptp_ts_96[58] -port m_axis_tx_ptp_ts_96[57] -port m_axis_tx_ptp_ts_96[56] -port m_axis_tx_ptp_ts_96[55] -port m_axis_tx_ptp_ts_96[54] -port m_axis_tx_ptp_ts_96[53] -port m_axis_tx_ptp_ts_96[52] -port m_axis_tx_ptp_ts_96[51] -port m_axis_tx_ptp_ts_96[50] -port m_axis_tx_ptp_ts_96[49] -port m_axis_tx_ptp_ts_96[48] -port m_axis_tx_ptp_ts_96[47] -port m_axis_tx_ptp_ts_96[46] -port m_axis_tx_ptp_ts_96[45] -port m_axis_tx_ptp_ts_96[44] -port m_axis_tx_ptp_ts_96[43] -port m_axis_tx_ptp_ts_96[42] -port m_axis_tx_ptp_ts_96[41] -port m_axis_tx_ptp_ts_96[40] -port m_axis_tx_ptp_ts_96[39] -port m_axis_tx_ptp_ts_96[38] -port m_axis_tx_ptp_ts_96[37] -port m_axis_tx_ptp_ts_96[36] -port m_axis_tx_ptp_ts_96[35] -port m_axis_tx_ptp_ts_96[34] -port m_axis_tx_ptp_ts_96[33] -port m_axis_tx_ptp_ts_96[32] -port m_axis_tx_ptp_ts_96[31] -port m_axis_tx_ptp_ts_96[30] -port m_axis_tx_ptp_ts_96[29] -port m_axis_tx_ptp_ts_96[28] -port m_axis_tx_ptp_ts_96[27] -port m_axis_tx_ptp_ts_96[26] -port m_axis_tx_ptp_ts_96[25] -port m_axis_tx_ptp_ts_96[24] -port m_axis_tx_ptp_ts_96[23] -port m_axis_tx_ptp_ts_96[22] -port m_axis_tx_ptp_ts_96[21] -port m_axis_tx_ptp_ts_96[20] -port m_axis_tx_ptp_ts_96[19] -port m_axis_tx_ptp_ts_96[18] -port m_axis_tx_ptp_ts_96[17] -port m_axis_tx_ptp_ts_96[16] -port m_axis_tx_ptp_ts_96[15] -port m_axis_tx_ptp_ts_96[14] -port m_axis_tx_ptp_ts_96[13] -port m_axis_tx_ptp_ts_96[12] -port m_axis_tx_ptp_ts_96[11] -port m_axis_tx_ptp_ts_96[10] -port m_axis_tx_ptp_ts_96[9] -port m_axis_tx_ptp_ts_96[8] -port m_axis_tx_ptp_ts_96[7] -port m_axis_tx_ptp_ts_96[6] -port m_axis_tx_ptp_ts_96[5] -port m_axis_tx_ptp_ts_96[4] -port m_axis_tx_ptp_ts_96[3] -port m_axis_tx_ptp_ts_96[2] -port m_axis_tx_ptp_ts_96[1] -port m_axis_tx_ptp_ts_96[0] -port m_axis_tx_ptp_ts_tag[15] -port m_axis_tx_ptp_ts_tag[14] -port m_axis_tx_ptp_ts_tag[13] -port m_axis_tx_ptp_ts_tag[12] -port m_axis_tx_ptp_ts_tag[11] -port m_axis_tx_ptp_ts_tag[10] -port m_axis_tx_ptp_ts_tag[9] -port m_axis_tx_ptp_ts_tag[8] -port m_axis_tx_ptp_ts_tag[7] -port m_axis_tx_ptp_ts_tag[6] -port m_axis_tx_ptp_ts_tag[5] -port m_axis_tx_ptp_ts_tag[4] -port m_axis_tx_ptp_ts_tag[3] -port m_axis_tx_ptp_ts_tag[2] -port m_axis_tx_ptp_ts_tag[1] -port m_axis_tx_ptp_ts_tag[0] -port m_axis_tx_ptp_ts_valid -pin rx_fifo s_axis_tdest[7] -pin rx_fifo s_axis_tdest[6] -pin rx_fifo s_axis_tdest[5] -pin rx_fifo s_axis_tdest[4] -pin rx_fifo s_axis_tdest[3] -pin rx_fifo s_axis_tdest[2] -pin rx_fifo s_axis_tdest[1] -pin rx_fifo s_axis_tdest[0] -pin rx_fifo s_axis_tid[7] -pin rx_fifo s_axis_tid[6] -pin rx_fifo s_axis_tid[5] -pin rx_fifo s_axis_tid[4] -pin rx_fifo s_axis_tid[3] -pin rx_fifo s_axis_tid[2] -pin rx_fifo s_axis_tid[1] -pin rx_fifo s_axis_tid[0] -pin tx_fifo s_axis_tdest[7] -pin tx_fifo s_axis_tdest[6] -pin tx_fifo s_axis_tdest[5] -pin tx_fifo s_axis_tdest[4] -pin tx_fifo s_axis_tdest[3] -pin tx_fifo s_axis_tdest[2] -pin tx_fifo s_axis_tdest[1] -pin tx_fifo s_axis_tdest[0] -pin tx_fifo s_axis_tid[7] -pin tx_fifo s_axis_tid[6] -pin tx_fifo s_axis_tid[5] -pin tx_fifo s_axis_tid[4] -pin tx_fifo s_axis_tid[3] -pin tx_fifo s_axis_tid[2] -pin tx_fifo s_axis_tid[1] -pin tx_fifo s_axis_tid[0]
load net cfg_ifg[0] -attr @rip cfg_ifg[0] -port cfg_ifg[0] -pin eth_mac_10g_inst cfg_ifg[0]
load net cfg_ifg[1] -attr @rip cfg_ifg[1] -port cfg_ifg[1] -pin eth_mac_10g_inst cfg_ifg[1]
load net cfg_ifg[2] -attr @rip cfg_ifg[2] -port cfg_ifg[2] -pin eth_mac_10g_inst cfg_ifg[2]
load net cfg_ifg[3] -attr @rip cfg_ifg[3] -port cfg_ifg[3] -pin eth_mac_10g_inst cfg_ifg[3]
load net cfg_ifg[4] -attr @rip cfg_ifg[4] -port cfg_ifg[4] -pin eth_mac_10g_inst cfg_ifg[4]
load net cfg_ifg[5] -attr @rip cfg_ifg[5] -port cfg_ifg[5] -pin eth_mac_10g_inst cfg_ifg[5]
load net cfg_ifg[6] -attr @rip cfg_ifg[6] -port cfg_ifg[6] -pin eth_mac_10g_inst cfg_ifg[6]
load net cfg_ifg[7] -attr @rip cfg_ifg[7] -port cfg_ifg[7] -pin eth_mac_10g_inst cfg_ifg[7]
load net cfg_rx_enable -port cfg_rx_enable -pin eth_mac_10g_inst cfg_rx_enable
netloc cfg_rx_enable 1 0 2 NJ 100 910J
load net cfg_tx_enable -port cfg_tx_enable -pin eth_mac_10g_inst cfg_tx_enable
netloc cfg_tx_enable 1 0 2 NJ 160 NJ
load net logic_clk -port logic_clk -pin rx_fifo m_clk -pin rx_sync_reg_2_reg[1:0] C -pin rx_sync_reg_3_reg[1:0] C -pin rx_sync_reg_4_reg[1:0] C -pin tx_fifo s_clk -pin tx_sync_reg_2_reg[0] C -pin tx_sync_reg_3_reg[0] C -pin tx_sync_reg_4_reg[0] C
netloc logic_clk 1 0 8 200 640 NJ 640 NJ 640 2270J 630 2691 720 3091 720 3451 580 3971
load net logic_rst -port logic_rst -pin rx_fifo m_rst -pin rx_sync_reg_2_reg[1:0] CLR -pin rx_sync_reg_3_reg[1:0] CLR -pin rx_sync_reg_4_reg[1:0] CLR -pin tx_fifo s_rst -pin tx_sync_reg_2_reg[0] CLR -pin tx_sync_reg_3_reg[0] CLR -pin tx_sync_reg_4_reg[0] CLR
netloc logic_rst 1 0 8 260 620 NJ 620 NJ 620 2250J 610 2731 580N 3071 580N 3431 600N 3790
load net p_0_in[0] -attr @rip 0 -pin eth_mac_10g_inst rx_error_bad_frame -pin rx_sync_reg_10_i I1[0]
load net p_0_in[1] -attr @rip 1 -pin eth_mac_10g_inst rx_error_bad_fcs -pin rx_sync_reg_10_i I1[1]
load net p_1_in -pin tx_error_underflow_i I0 -pin tx_sync_reg_3_reg[0] Q -pin tx_sync_reg_4_reg[0] D
netloc p_1_in 1 6 2 3471 760 3990
load net rx_axis_tdata[0] -attr @rip m_axis_tdata[0] -port rx_axis_tdata[0] -pin rx_fifo m_axis_tdata[0]
load net rx_axis_tdata[10] -attr @rip m_axis_tdata[10] -port rx_axis_tdata[10] -pin rx_fifo m_axis_tdata[10]
load net rx_axis_tdata[11] -attr @rip m_axis_tdata[11] -port rx_axis_tdata[11] -pin rx_fifo m_axis_tdata[11]
load net rx_axis_tdata[12] -attr @rip m_axis_tdata[12] -port rx_axis_tdata[12] -pin rx_fifo m_axis_tdata[12]
load net rx_axis_tdata[13] -attr @rip m_axis_tdata[13] -port rx_axis_tdata[13] -pin rx_fifo m_axis_tdata[13]
load net rx_axis_tdata[14] -attr @rip m_axis_tdata[14] -port rx_axis_tdata[14] -pin rx_fifo m_axis_tdata[14]
load net rx_axis_tdata[15] -attr @rip m_axis_tdata[15] -port rx_axis_tdata[15] -pin rx_fifo m_axis_tdata[15]
load net rx_axis_tdata[16] -attr @rip m_axis_tdata[16] -port rx_axis_tdata[16] -pin rx_fifo m_axis_tdata[16]
load net rx_axis_tdata[17] -attr @rip m_axis_tdata[17] -port rx_axis_tdata[17] -pin rx_fifo m_axis_tdata[17]
load net rx_axis_tdata[18] -attr @rip m_axis_tdata[18] -port rx_axis_tdata[18] -pin rx_fifo m_axis_tdata[18]
load net rx_axis_tdata[19] -attr @rip m_axis_tdata[19] -port rx_axis_tdata[19] -pin rx_fifo m_axis_tdata[19]
load net rx_axis_tdata[1] -attr @rip m_axis_tdata[1] -port rx_axis_tdata[1] -pin rx_fifo m_axis_tdata[1]
load net rx_axis_tdata[20] -attr @rip m_axis_tdata[20] -port rx_axis_tdata[20] -pin rx_fifo m_axis_tdata[20]
load net rx_axis_tdata[21] -attr @rip m_axis_tdata[21] -port rx_axis_tdata[21] -pin rx_fifo m_axis_tdata[21]
load net rx_axis_tdata[22] -attr @rip m_axis_tdata[22] -port rx_axis_tdata[22] -pin rx_fifo m_axis_tdata[22]
load net rx_axis_tdata[23] -attr @rip m_axis_tdata[23] -port rx_axis_tdata[23] -pin rx_fifo m_axis_tdata[23]
load net rx_axis_tdata[24] -attr @rip m_axis_tdata[24] -port rx_axis_tdata[24] -pin rx_fifo m_axis_tdata[24]
load net rx_axis_tdata[25] -attr @rip m_axis_tdata[25] -port rx_axis_tdata[25] -pin rx_fifo m_axis_tdata[25]
load net rx_axis_tdata[26] -attr @rip m_axis_tdata[26] -port rx_axis_tdata[26] -pin rx_fifo m_axis_tdata[26]
load net rx_axis_tdata[27] -attr @rip m_axis_tdata[27] -port rx_axis_tdata[27] -pin rx_fifo m_axis_tdata[27]
load net rx_axis_tdata[28] -attr @rip m_axis_tdata[28] -port rx_axis_tdata[28] -pin rx_fifo m_axis_tdata[28]
load net rx_axis_tdata[29] -attr @rip m_axis_tdata[29] -port rx_axis_tdata[29] -pin rx_fifo m_axis_tdata[29]
load net rx_axis_tdata[2] -attr @rip m_axis_tdata[2] -port rx_axis_tdata[2] -pin rx_fifo m_axis_tdata[2]
load net rx_axis_tdata[30] -attr @rip m_axis_tdata[30] -port rx_axis_tdata[30] -pin rx_fifo m_axis_tdata[30]
load net rx_axis_tdata[31] -attr @rip m_axis_tdata[31] -port rx_axis_tdata[31] -pin rx_fifo m_axis_tdata[31]
load net rx_axis_tdata[32] -attr @rip m_axis_tdata[32] -port rx_axis_tdata[32] -pin rx_fifo m_axis_tdata[32]
load net rx_axis_tdata[33] -attr @rip m_axis_tdata[33] -port rx_axis_tdata[33] -pin rx_fifo m_axis_tdata[33]
load net rx_axis_tdata[34] -attr @rip m_axis_tdata[34] -port rx_axis_tdata[34] -pin rx_fifo m_axis_tdata[34]
load net rx_axis_tdata[35] -attr @rip m_axis_tdata[35] -port rx_axis_tdata[35] -pin rx_fifo m_axis_tdata[35]
load net rx_axis_tdata[36] -attr @rip m_axis_tdata[36] -port rx_axis_tdata[36] -pin rx_fifo m_axis_tdata[36]
load net rx_axis_tdata[37] -attr @rip m_axis_tdata[37] -port rx_axis_tdata[37] -pin rx_fifo m_axis_tdata[37]
load net rx_axis_tdata[38] -attr @rip m_axis_tdata[38] -port rx_axis_tdata[38] -pin rx_fifo m_axis_tdata[38]
load net rx_axis_tdata[39] -attr @rip m_axis_tdata[39] -port rx_axis_tdata[39] -pin rx_fifo m_axis_tdata[39]
load net rx_axis_tdata[3] -attr @rip m_axis_tdata[3] -port rx_axis_tdata[3] -pin rx_fifo m_axis_tdata[3]
load net rx_axis_tdata[40] -attr @rip m_axis_tdata[40] -port rx_axis_tdata[40] -pin rx_fifo m_axis_tdata[40]
load net rx_axis_tdata[41] -attr @rip m_axis_tdata[41] -port rx_axis_tdata[41] -pin rx_fifo m_axis_tdata[41]
load net rx_axis_tdata[42] -attr @rip m_axis_tdata[42] -port rx_axis_tdata[42] -pin rx_fifo m_axis_tdata[42]
load net rx_axis_tdata[43] -attr @rip m_axis_tdata[43] -port rx_axis_tdata[43] -pin rx_fifo m_axis_tdata[43]
load net rx_axis_tdata[44] -attr @rip m_axis_tdata[44] -port rx_axis_tdata[44] -pin rx_fifo m_axis_tdata[44]
load net rx_axis_tdata[45] -attr @rip m_axis_tdata[45] -port rx_axis_tdata[45] -pin rx_fifo m_axis_tdata[45]
load net rx_axis_tdata[46] -attr @rip m_axis_tdata[46] -port rx_axis_tdata[46] -pin rx_fifo m_axis_tdata[46]
load net rx_axis_tdata[47] -attr @rip m_axis_tdata[47] -port rx_axis_tdata[47] -pin rx_fifo m_axis_tdata[47]
load net rx_axis_tdata[48] -attr @rip m_axis_tdata[48] -port rx_axis_tdata[48] -pin rx_fifo m_axis_tdata[48]
load net rx_axis_tdata[49] -attr @rip m_axis_tdata[49] -port rx_axis_tdata[49] -pin rx_fifo m_axis_tdata[49]
load net rx_axis_tdata[4] -attr @rip m_axis_tdata[4] -port rx_axis_tdata[4] -pin rx_fifo m_axis_tdata[4]
load net rx_axis_tdata[50] -attr @rip m_axis_tdata[50] -port rx_axis_tdata[50] -pin rx_fifo m_axis_tdata[50]
load net rx_axis_tdata[51] -attr @rip m_axis_tdata[51] -port rx_axis_tdata[51] -pin rx_fifo m_axis_tdata[51]
load net rx_axis_tdata[52] -attr @rip m_axis_tdata[52] -port rx_axis_tdata[52] -pin rx_fifo m_axis_tdata[52]
load net rx_axis_tdata[53] -attr @rip m_axis_tdata[53] -port rx_axis_tdata[53] -pin rx_fifo m_axis_tdata[53]
load net rx_axis_tdata[54] -attr @rip m_axis_tdata[54] -port rx_axis_tdata[54] -pin rx_fifo m_axis_tdata[54]
load net rx_axis_tdata[55] -attr @rip m_axis_tdata[55] -port rx_axis_tdata[55] -pin rx_fifo m_axis_tdata[55]
load net rx_axis_tdata[56] -attr @rip m_axis_tdata[56] -port rx_axis_tdata[56] -pin rx_fifo m_axis_tdata[56]
load net rx_axis_tdata[57] -attr @rip m_axis_tdata[57] -port rx_axis_tdata[57] -pin rx_fifo m_axis_tdata[57]
load net rx_axis_tdata[58] -attr @rip m_axis_tdata[58] -port rx_axis_tdata[58] -pin rx_fifo m_axis_tdata[58]
load net rx_axis_tdata[59] -attr @rip m_axis_tdata[59] -port rx_axis_tdata[59] -pin rx_fifo m_axis_tdata[59]
load net rx_axis_tdata[5] -attr @rip m_axis_tdata[5] -port rx_axis_tdata[5] -pin rx_fifo m_axis_tdata[5]
load net rx_axis_tdata[60] -attr @rip m_axis_tdata[60] -port rx_axis_tdata[60] -pin rx_fifo m_axis_tdata[60]
load net rx_axis_tdata[61] -attr @rip m_axis_tdata[61] -port rx_axis_tdata[61] -pin rx_fifo m_axis_tdata[61]
load net rx_axis_tdata[62] -attr @rip m_axis_tdata[62] -port rx_axis_tdata[62] -pin rx_fifo m_axis_tdata[62]
load net rx_axis_tdata[63] -attr @rip m_axis_tdata[63] -port rx_axis_tdata[63] -pin rx_fifo m_axis_tdata[63]
load net rx_axis_tdata[6] -attr @rip m_axis_tdata[6] -port rx_axis_tdata[6] -pin rx_fifo m_axis_tdata[6]
load net rx_axis_tdata[7] -attr @rip m_axis_tdata[7] -port rx_axis_tdata[7] -pin rx_fifo m_axis_tdata[7]
load net rx_axis_tdata[8] -attr @rip m_axis_tdata[8] -port rx_axis_tdata[8] -pin rx_fifo m_axis_tdata[8]
load net rx_axis_tdata[9] -attr @rip m_axis_tdata[9] -port rx_axis_tdata[9] -pin rx_fifo m_axis_tdata[9]
load net rx_axis_tkeep[0] -attr @rip m_axis_tkeep[0] -port rx_axis_tkeep[0] -pin rx_fifo m_axis_tkeep[0]
load net rx_axis_tkeep[1] -attr @rip m_axis_tkeep[1] -port rx_axis_tkeep[1] -pin rx_fifo m_axis_tkeep[1]
load net rx_axis_tkeep[2] -attr @rip m_axis_tkeep[2] -port rx_axis_tkeep[2] -pin rx_fifo m_axis_tkeep[2]
load net rx_axis_tkeep[3] -attr @rip m_axis_tkeep[3] -port rx_axis_tkeep[3] -pin rx_fifo m_axis_tkeep[3]
load net rx_axis_tkeep[4] -attr @rip m_axis_tkeep[4] -port rx_axis_tkeep[4] -pin rx_fifo m_axis_tkeep[4]
load net rx_axis_tkeep[5] -attr @rip m_axis_tkeep[5] -port rx_axis_tkeep[5] -pin rx_fifo m_axis_tkeep[5]
load net rx_axis_tkeep[6] -attr @rip m_axis_tkeep[6] -port rx_axis_tkeep[6] -pin rx_fifo m_axis_tkeep[6]
load net rx_axis_tkeep[7] -attr @rip m_axis_tkeep[7] -port rx_axis_tkeep[7] -pin rx_fifo m_axis_tkeep[7]
load net rx_axis_tlast -port rx_axis_tlast -pin rx_fifo m_axis_tlast
netloc rx_axis_tlast 1 8 1 4590J 130n
load net rx_axis_tready -port rx_axis_tready -pin rx_fifo m_axis_tready
netloc rx_axis_tready 1 0 8 NJ 130 790J 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ
load net rx_axis_tuser[0] -attr @rip m_axis_tuser[0] -port rx_axis_tuser[0] -pin rx_fifo m_axis_tuser[0]
netloc rx_axis_tuser[0] 1 8 1 NJ 160
load net rx_axis_tvalid -port rx_axis_tvalid -pin rx_fifo m_axis_tvalid
netloc rx_axis_tvalid 1 8 1 4590J 180n
load net rx_clk -pin eth_mac_10g_inst rx_clk -port rx_clk -pin rx_fifo s_clk -pin rx_sync_reg_1_reg[1:0] C
netloc rx_clk 1 0 8 NJ 500 963 520 NJ 520 2311 380 2670J 390 NJ 390 NJ 390 3991
load net rx_error_bad_fcs -port rx_error_bad_fcs -pin rx_error_bad_fcs_i O
netloc rx_error_bad_fcs 1 8 1 4530J 610n
load net rx_error_bad_frame -port rx_error_bad_frame -pin rx_error_bad_frame_i O
netloc rx_error_bad_frame 1 8 1 NJ 730
load net rx_fifo_axis_tdata[0] -attr @rip rx_axis_tdata[0] -pin eth_mac_10g_inst rx_axis_tdata[0] -pin rx_fifo s_axis_tdata[0]
load net rx_fifo_axis_tdata[10] -attr @rip rx_axis_tdata[10] -pin eth_mac_10g_inst rx_axis_tdata[10] -pin rx_fifo s_axis_tdata[10]
load net rx_fifo_axis_tdata[11] -attr @rip rx_axis_tdata[11] -pin eth_mac_10g_inst rx_axis_tdata[11] -pin rx_fifo s_axis_tdata[11]
load net rx_fifo_axis_tdata[12] -attr @rip rx_axis_tdata[12] -pin eth_mac_10g_inst rx_axis_tdata[12] -pin rx_fifo s_axis_tdata[12]
load net rx_fifo_axis_tdata[13] -attr @rip rx_axis_tdata[13] -pin eth_mac_10g_inst rx_axis_tdata[13] -pin rx_fifo s_axis_tdata[13]
load net rx_fifo_axis_tdata[14] -attr @rip rx_axis_tdata[14] -pin eth_mac_10g_inst rx_axis_tdata[14] -pin rx_fifo s_axis_tdata[14]
load net rx_fifo_axis_tdata[15] -attr @rip rx_axis_tdata[15] -pin eth_mac_10g_inst rx_axis_tdata[15] -pin rx_fifo s_axis_tdata[15]
load net rx_fifo_axis_tdata[16] -attr @rip rx_axis_tdata[16] -pin eth_mac_10g_inst rx_axis_tdata[16] -pin rx_fifo s_axis_tdata[16]
load net rx_fifo_axis_tdata[17] -attr @rip rx_axis_tdata[17] -pin eth_mac_10g_inst rx_axis_tdata[17] -pin rx_fifo s_axis_tdata[17]
load net rx_fifo_axis_tdata[18] -attr @rip rx_axis_tdata[18] -pin eth_mac_10g_inst rx_axis_tdata[18] -pin rx_fifo s_axis_tdata[18]
load net rx_fifo_axis_tdata[19] -attr @rip rx_axis_tdata[19] -pin eth_mac_10g_inst rx_axis_tdata[19] -pin rx_fifo s_axis_tdata[19]
load net rx_fifo_axis_tdata[1] -attr @rip rx_axis_tdata[1] -pin eth_mac_10g_inst rx_axis_tdata[1] -pin rx_fifo s_axis_tdata[1]
load net rx_fifo_axis_tdata[20] -attr @rip rx_axis_tdata[20] -pin eth_mac_10g_inst rx_axis_tdata[20] -pin rx_fifo s_axis_tdata[20]
load net rx_fifo_axis_tdata[21] -attr @rip rx_axis_tdata[21] -pin eth_mac_10g_inst rx_axis_tdata[21] -pin rx_fifo s_axis_tdata[21]
load net rx_fifo_axis_tdata[22] -attr @rip rx_axis_tdata[22] -pin eth_mac_10g_inst rx_axis_tdata[22] -pin rx_fifo s_axis_tdata[22]
load net rx_fifo_axis_tdata[23] -attr @rip rx_axis_tdata[23] -pin eth_mac_10g_inst rx_axis_tdata[23] -pin rx_fifo s_axis_tdata[23]
load net rx_fifo_axis_tdata[24] -attr @rip rx_axis_tdata[24] -pin eth_mac_10g_inst rx_axis_tdata[24] -pin rx_fifo s_axis_tdata[24]
load net rx_fifo_axis_tdata[25] -attr @rip rx_axis_tdata[25] -pin eth_mac_10g_inst rx_axis_tdata[25] -pin rx_fifo s_axis_tdata[25]
load net rx_fifo_axis_tdata[26] -attr @rip rx_axis_tdata[26] -pin eth_mac_10g_inst rx_axis_tdata[26] -pin rx_fifo s_axis_tdata[26]
load net rx_fifo_axis_tdata[27] -attr @rip rx_axis_tdata[27] -pin eth_mac_10g_inst rx_axis_tdata[27] -pin rx_fifo s_axis_tdata[27]
load net rx_fifo_axis_tdata[28] -attr @rip rx_axis_tdata[28] -pin eth_mac_10g_inst rx_axis_tdata[28] -pin rx_fifo s_axis_tdata[28]
load net rx_fifo_axis_tdata[29] -attr @rip rx_axis_tdata[29] -pin eth_mac_10g_inst rx_axis_tdata[29] -pin rx_fifo s_axis_tdata[29]
load net rx_fifo_axis_tdata[2] -attr @rip rx_axis_tdata[2] -pin eth_mac_10g_inst rx_axis_tdata[2] -pin rx_fifo s_axis_tdata[2]
load net rx_fifo_axis_tdata[30] -attr @rip rx_axis_tdata[30] -pin eth_mac_10g_inst rx_axis_tdata[30] -pin rx_fifo s_axis_tdata[30]
load net rx_fifo_axis_tdata[31] -attr @rip rx_axis_tdata[31] -pin eth_mac_10g_inst rx_axis_tdata[31] -pin rx_fifo s_axis_tdata[31]
load net rx_fifo_axis_tdata[32] -attr @rip rx_axis_tdata[32] -pin eth_mac_10g_inst rx_axis_tdata[32] -pin rx_fifo s_axis_tdata[32]
load net rx_fifo_axis_tdata[33] -attr @rip rx_axis_tdata[33] -pin eth_mac_10g_inst rx_axis_tdata[33] -pin rx_fifo s_axis_tdata[33]
load net rx_fifo_axis_tdata[34] -attr @rip rx_axis_tdata[34] -pin eth_mac_10g_inst rx_axis_tdata[34] -pin rx_fifo s_axis_tdata[34]
load net rx_fifo_axis_tdata[35] -attr @rip rx_axis_tdata[35] -pin eth_mac_10g_inst rx_axis_tdata[35] -pin rx_fifo s_axis_tdata[35]
load net rx_fifo_axis_tdata[36] -attr @rip rx_axis_tdata[36] -pin eth_mac_10g_inst rx_axis_tdata[36] -pin rx_fifo s_axis_tdata[36]
load net rx_fifo_axis_tdata[37] -attr @rip rx_axis_tdata[37] -pin eth_mac_10g_inst rx_axis_tdata[37] -pin rx_fifo s_axis_tdata[37]
load net rx_fifo_axis_tdata[38] -attr @rip rx_axis_tdata[38] -pin eth_mac_10g_inst rx_axis_tdata[38] -pin rx_fifo s_axis_tdata[38]
load net rx_fifo_axis_tdata[39] -attr @rip rx_axis_tdata[39] -pin eth_mac_10g_inst rx_axis_tdata[39] -pin rx_fifo s_axis_tdata[39]
load net rx_fifo_axis_tdata[3] -attr @rip rx_axis_tdata[3] -pin eth_mac_10g_inst rx_axis_tdata[3] -pin rx_fifo s_axis_tdata[3]
load net rx_fifo_axis_tdata[40] -attr @rip rx_axis_tdata[40] -pin eth_mac_10g_inst rx_axis_tdata[40] -pin rx_fifo s_axis_tdata[40]
load net rx_fifo_axis_tdata[41] -attr @rip rx_axis_tdata[41] -pin eth_mac_10g_inst rx_axis_tdata[41] -pin rx_fifo s_axis_tdata[41]
load net rx_fifo_axis_tdata[42] -attr @rip rx_axis_tdata[42] -pin eth_mac_10g_inst rx_axis_tdata[42] -pin rx_fifo s_axis_tdata[42]
load net rx_fifo_axis_tdata[43] -attr @rip rx_axis_tdata[43] -pin eth_mac_10g_inst rx_axis_tdata[43] -pin rx_fifo s_axis_tdata[43]
load net rx_fifo_axis_tdata[44] -attr @rip rx_axis_tdata[44] -pin eth_mac_10g_inst rx_axis_tdata[44] -pin rx_fifo s_axis_tdata[44]
load net rx_fifo_axis_tdata[45] -attr @rip rx_axis_tdata[45] -pin eth_mac_10g_inst rx_axis_tdata[45] -pin rx_fifo s_axis_tdata[45]
load net rx_fifo_axis_tdata[46] -attr @rip rx_axis_tdata[46] -pin eth_mac_10g_inst rx_axis_tdata[46] -pin rx_fifo s_axis_tdata[46]
load net rx_fifo_axis_tdata[47] -attr @rip rx_axis_tdata[47] -pin eth_mac_10g_inst rx_axis_tdata[47] -pin rx_fifo s_axis_tdata[47]
load net rx_fifo_axis_tdata[48] -attr @rip rx_axis_tdata[48] -pin eth_mac_10g_inst rx_axis_tdata[48] -pin rx_fifo s_axis_tdata[48]
load net rx_fifo_axis_tdata[49] -attr @rip rx_axis_tdata[49] -pin eth_mac_10g_inst rx_axis_tdata[49] -pin rx_fifo s_axis_tdata[49]
load net rx_fifo_axis_tdata[4] -attr @rip rx_axis_tdata[4] -pin eth_mac_10g_inst rx_axis_tdata[4] -pin rx_fifo s_axis_tdata[4]
load net rx_fifo_axis_tdata[50] -attr @rip rx_axis_tdata[50] -pin eth_mac_10g_inst rx_axis_tdata[50] -pin rx_fifo s_axis_tdata[50]
load net rx_fifo_axis_tdata[51] -attr @rip rx_axis_tdata[51] -pin eth_mac_10g_inst rx_axis_tdata[51] -pin rx_fifo s_axis_tdata[51]
load net rx_fifo_axis_tdata[52] -attr @rip rx_axis_tdata[52] -pin eth_mac_10g_inst rx_axis_tdata[52] -pin rx_fifo s_axis_tdata[52]
load net rx_fifo_axis_tdata[53] -attr @rip rx_axis_tdata[53] -pin eth_mac_10g_inst rx_axis_tdata[53] -pin rx_fifo s_axis_tdata[53]
load net rx_fifo_axis_tdata[54] -attr @rip rx_axis_tdata[54] -pin eth_mac_10g_inst rx_axis_tdata[54] -pin rx_fifo s_axis_tdata[54]
load net rx_fifo_axis_tdata[55] -attr @rip rx_axis_tdata[55] -pin eth_mac_10g_inst rx_axis_tdata[55] -pin rx_fifo s_axis_tdata[55]
load net rx_fifo_axis_tdata[56] -attr @rip rx_axis_tdata[56] -pin eth_mac_10g_inst rx_axis_tdata[56] -pin rx_fifo s_axis_tdata[56]
load net rx_fifo_axis_tdata[57] -attr @rip rx_axis_tdata[57] -pin eth_mac_10g_inst rx_axis_tdata[57] -pin rx_fifo s_axis_tdata[57]
load net rx_fifo_axis_tdata[58] -attr @rip rx_axis_tdata[58] -pin eth_mac_10g_inst rx_axis_tdata[58] -pin rx_fifo s_axis_tdata[58]
load net rx_fifo_axis_tdata[59] -attr @rip rx_axis_tdata[59] -pin eth_mac_10g_inst rx_axis_tdata[59] -pin rx_fifo s_axis_tdata[59]
load net rx_fifo_axis_tdata[5] -attr @rip rx_axis_tdata[5] -pin eth_mac_10g_inst rx_axis_tdata[5] -pin rx_fifo s_axis_tdata[5]
load net rx_fifo_axis_tdata[60] -attr @rip rx_axis_tdata[60] -pin eth_mac_10g_inst rx_axis_tdata[60] -pin rx_fifo s_axis_tdata[60]
load net rx_fifo_axis_tdata[61] -attr @rip rx_axis_tdata[61] -pin eth_mac_10g_inst rx_axis_tdata[61] -pin rx_fifo s_axis_tdata[61]
load net rx_fifo_axis_tdata[62] -attr @rip rx_axis_tdata[62] -pin eth_mac_10g_inst rx_axis_tdata[62] -pin rx_fifo s_axis_tdata[62]
load net rx_fifo_axis_tdata[63] -attr @rip rx_axis_tdata[63] -pin eth_mac_10g_inst rx_axis_tdata[63] -pin rx_fifo s_axis_tdata[63]
load net rx_fifo_axis_tdata[6] -attr @rip rx_axis_tdata[6] -pin eth_mac_10g_inst rx_axis_tdata[6] -pin rx_fifo s_axis_tdata[6]
load net rx_fifo_axis_tdata[7] -attr @rip rx_axis_tdata[7] -pin eth_mac_10g_inst rx_axis_tdata[7] -pin rx_fifo s_axis_tdata[7]
load net rx_fifo_axis_tdata[8] -attr @rip rx_axis_tdata[8] -pin eth_mac_10g_inst rx_axis_tdata[8] -pin rx_fifo s_axis_tdata[8]
load net rx_fifo_axis_tdata[9] -attr @rip rx_axis_tdata[9] -pin eth_mac_10g_inst rx_axis_tdata[9] -pin rx_fifo s_axis_tdata[9]
load net rx_fifo_axis_tkeep[0] -attr @rip rx_axis_tkeep[0] -pin eth_mac_10g_inst rx_axis_tkeep[0] -pin rx_fifo s_axis_tkeep[0]
load net rx_fifo_axis_tkeep[1] -attr @rip rx_axis_tkeep[1] -pin eth_mac_10g_inst rx_axis_tkeep[1] -pin rx_fifo s_axis_tkeep[1]
load net rx_fifo_axis_tkeep[2] -attr @rip rx_axis_tkeep[2] -pin eth_mac_10g_inst rx_axis_tkeep[2] -pin rx_fifo s_axis_tkeep[2]
load net rx_fifo_axis_tkeep[3] -attr @rip rx_axis_tkeep[3] -pin eth_mac_10g_inst rx_axis_tkeep[3] -pin rx_fifo s_axis_tkeep[3]
load net rx_fifo_axis_tkeep[4] -attr @rip rx_axis_tkeep[4] -pin eth_mac_10g_inst rx_axis_tkeep[4] -pin rx_fifo s_axis_tkeep[4]
load net rx_fifo_axis_tkeep[5] -attr @rip rx_axis_tkeep[5] -pin eth_mac_10g_inst rx_axis_tkeep[5] -pin rx_fifo s_axis_tkeep[5]
load net rx_fifo_axis_tkeep[6] -attr @rip rx_axis_tkeep[6] -pin eth_mac_10g_inst rx_axis_tkeep[6] -pin rx_fifo s_axis_tkeep[6]
load net rx_fifo_axis_tkeep[7] -attr @rip rx_axis_tkeep[7] -pin eth_mac_10g_inst rx_axis_tkeep[7] -pin rx_fifo s_axis_tkeep[7]
load net rx_fifo_axis_tlast -pin eth_mac_10g_inst rx_axis_tlast -pin rx_fifo s_axis_tlast
netloc rx_fifo_axis_tlast 1 2 6 NJ 200 NJ 200 NJ 200 NJ 200 NJ 200 N
load net rx_fifo_axis_tuser[0] -attr @rip rx_axis_tuser[0] -pin eth_mac_10g_inst rx_axis_tuser[0] -pin rx_fifo s_axis_tuser[0]
netloc rx_fifo_axis_tuser[0] 1 2 6 NJ 220 NJ 220 NJ 220 NJ 220 NJ 220 N
load net rx_fifo_axis_tvalid -pin eth_mac_10g_inst rx_axis_tvalid -pin rx_fifo s_axis_tvalid
netloc rx_fifo_axis_tvalid 1 2 6 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 N
load net rx_fifo_bad_frame -pin rx_fifo m_status_bad_frame -port rx_fifo_bad_frame
netloc rx_fifo_bad_frame 1 8 1 4570J 200n
load net rx_fifo_good_frame -pin rx_fifo m_status_good_frame -port rx_fifo_good_frame
netloc rx_fifo_good_frame 1 8 1 4550J 220n
load net rx_fifo_overflow -pin rx_fifo m_status_overflow -port rx_fifo_overflow
netloc rx_fifo_overflow 1 8 1 4530J 240n
load net rx_rst -pin eth_mac_10g_inst rx_rst -pin rx_fifo s_rst -port rx_rst -pin rx_sync_reg_1_reg[1:0] CLR
netloc rx_rst 1 0 8 220J 520 1003 500 NJ 500 2331J 400N 2650J 410 NJ 410 NJ 410 4011
load net rx_sync_reg_10[0] -attr @rip O[0] -pin rx_sync_reg_10_i O[0] -pin rx_sync_reg_1_reg[1:0] D[0]
load net rx_sync_reg_10[1] -attr @rip O[1] -pin rx_sync_reg_10_i O[1] -pin rx_sync_reg_1_reg[1:0] D[1]
load net rx_sync_reg_1[0] -attr @rip 0 -pin rx_sync_reg_10_i I0[0] -pin rx_sync_reg_1_reg[1:0] Q[0] -pin rx_sync_reg_2_reg[1:0] D[0]
load net rx_sync_reg_1[1] -attr @rip 1 -pin rx_sync_reg_10_i I0[1] -pin rx_sync_reg_1_reg[1:0] Q[1] -pin rx_sync_reg_2_reg[1:0] D[1]
load net rx_sync_reg_2[0] -pin rx_sync_reg_2_reg[1:0] Q[0] -pin rx_sync_reg_3_reg[1:0] D[0]
load net rx_sync_reg_2[1] -pin rx_sync_reg_2_reg[1:0] Q[1] -pin rx_sync_reg_3_reg[1:0] D[1]
load net rx_sync_reg_3[0] -pin rx_error_bad_frame_i I0 -pin rx_sync_reg_3_reg[1:0] Q[0] -pin rx_sync_reg_4_reg[1:0] D[0]
load net rx_sync_reg_3[1] -pin rx_error_bad_fcs_i I0 -pin rx_sync_reg_3_reg[1:0] Q[1] -pin rx_sync_reg_4_reg[1:0] D[1]
load net rx_sync_reg_4[0] -pin rx_error_bad_frame_i I1 -pin rx_sync_reg_4_reg[1:0] Q[0]
load net rx_sync_reg_4[1] -pin rx_error_bad_fcs_i I1 -pin rx_sync_reg_4_reg[1:0] Q[1]
load net tx_axis_tdata[0] -attr @rip tx_axis_tdata[0] -port tx_axis_tdata[0] -pin tx_fifo s_axis_tdata[0]
load net tx_axis_tdata[10] -attr @rip tx_axis_tdata[10] -port tx_axis_tdata[10] -pin tx_fifo s_axis_tdata[10]
load net tx_axis_tdata[11] -attr @rip tx_axis_tdata[11] -port tx_axis_tdata[11] -pin tx_fifo s_axis_tdata[11]
load net tx_axis_tdata[12] -attr @rip tx_axis_tdata[12] -port tx_axis_tdata[12] -pin tx_fifo s_axis_tdata[12]
load net tx_axis_tdata[13] -attr @rip tx_axis_tdata[13] -port tx_axis_tdata[13] -pin tx_fifo s_axis_tdata[13]
load net tx_axis_tdata[14] -attr @rip tx_axis_tdata[14] -port tx_axis_tdata[14] -pin tx_fifo s_axis_tdata[14]
load net tx_axis_tdata[15] -attr @rip tx_axis_tdata[15] -port tx_axis_tdata[15] -pin tx_fifo s_axis_tdata[15]
load net tx_axis_tdata[16] -attr @rip tx_axis_tdata[16] -port tx_axis_tdata[16] -pin tx_fifo s_axis_tdata[16]
load net tx_axis_tdata[17] -attr @rip tx_axis_tdata[17] -port tx_axis_tdata[17] -pin tx_fifo s_axis_tdata[17]
load net tx_axis_tdata[18] -attr @rip tx_axis_tdata[18] -port tx_axis_tdata[18] -pin tx_fifo s_axis_tdata[18]
load net tx_axis_tdata[19] -attr @rip tx_axis_tdata[19] -port tx_axis_tdata[19] -pin tx_fifo s_axis_tdata[19]
load net tx_axis_tdata[1] -attr @rip tx_axis_tdata[1] -port tx_axis_tdata[1] -pin tx_fifo s_axis_tdata[1]
load net tx_axis_tdata[20] -attr @rip tx_axis_tdata[20] -port tx_axis_tdata[20] -pin tx_fifo s_axis_tdata[20]
load net tx_axis_tdata[21] -attr @rip tx_axis_tdata[21] -port tx_axis_tdata[21] -pin tx_fifo s_axis_tdata[21]
load net tx_axis_tdata[22] -attr @rip tx_axis_tdata[22] -port tx_axis_tdata[22] -pin tx_fifo s_axis_tdata[22]
load net tx_axis_tdata[23] -attr @rip tx_axis_tdata[23] -port tx_axis_tdata[23] -pin tx_fifo s_axis_tdata[23]
load net tx_axis_tdata[24] -attr @rip tx_axis_tdata[24] -port tx_axis_tdata[24] -pin tx_fifo s_axis_tdata[24]
load net tx_axis_tdata[25] -attr @rip tx_axis_tdata[25] -port tx_axis_tdata[25] -pin tx_fifo s_axis_tdata[25]
load net tx_axis_tdata[26] -attr @rip tx_axis_tdata[26] -port tx_axis_tdata[26] -pin tx_fifo s_axis_tdata[26]
load net tx_axis_tdata[27] -attr @rip tx_axis_tdata[27] -port tx_axis_tdata[27] -pin tx_fifo s_axis_tdata[27]
load net tx_axis_tdata[28] -attr @rip tx_axis_tdata[28] -port tx_axis_tdata[28] -pin tx_fifo s_axis_tdata[28]
load net tx_axis_tdata[29] -attr @rip tx_axis_tdata[29] -port tx_axis_tdata[29] -pin tx_fifo s_axis_tdata[29]
load net tx_axis_tdata[2] -attr @rip tx_axis_tdata[2] -port tx_axis_tdata[2] -pin tx_fifo s_axis_tdata[2]
load net tx_axis_tdata[30] -attr @rip tx_axis_tdata[30] -port tx_axis_tdata[30] -pin tx_fifo s_axis_tdata[30]
load net tx_axis_tdata[31] -attr @rip tx_axis_tdata[31] -port tx_axis_tdata[31] -pin tx_fifo s_axis_tdata[31]
load net tx_axis_tdata[32] -attr @rip tx_axis_tdata[32] -port tx_axis_tdata[32] -pin tx_fifo s_axis_tdata[32]
load net tx_axis_tdata[33] -attr @rip tx_axis_tdata[33] -port tx_axis_tdata[33] -pin tx_fifo s_axis_tdata[33]
load net tx_axis_tdata[34] -attr @rip tx_axis_tdata[34] -port tx_axis_tdata[34] -pin tx_fifo s_axis_tdata[34]
load net tx_axis_tdata[35] -attr @rip tx_axis_tdata[35] -port tx_axis_tdata[35] -pin tx_fifo s_axis_tdata[35]
load net tx_axis_tdata[36] -attr @rip tx_axis_tdata[36] -port tx_axis_tdata[36] -pin tx_fifo s_axis_tdata[36]
load net tx_axis_tdata[37] -attr @rip tx_axis_tdata[37] -port tx_axis_tdata[37] -pin tx_fifo s_axis_tdata[37]
load net tx_axis_tdata[38] -attr @rip tx_axis_tdata[38] -port tx_axis_tdata[38] -pin tx_fifo s_axis_tdata[38]
load net tx_axis_tdata[39] -attr @rip tx_axis_tdata[39] -port tx_axis_tdata[39] -pin tx_fifo s_axis_tdata[39]
load net tx_axis_tdata[3] -attr @rip tx_axis_tdata[3] -port tx_axis_tdata[3] -pin tx_fifo s_axis_tdata[3]
load net tx_axis_tdata[40] -attr @rip tx_axis_tdata[40] -port tx_axis_tdata[40] -pin tx_fifo s_axis_tdata[40]
load net tx_axis_tdata[41] -attr @rip tx_axis_tdata[41] -port tx_axis_tdata[41] -pin tx_fifo s_axis_tdata[41]
load net tx_axis_tdata[42] -attr @rip tx_axis_tdata[42] -port tx_axis_tdata[42] -pin tx_fifo s_axis_tdata[42]
load net tx_axis_tdata[43] -attr @rip tx_axis_tdata[43] -port tx_axis_tdata[43] -pin tx_fifo s_axis_tdata[43]
load net tx_axis_tdata[44] -attr @rip tx_axis_tdata[44] -port tx_axis_tdata[44] -pin tx_fifo s_axis_tdata[44]
load net tx_axis_tdata[45] -attr @rip tx_axis_tdata[45] -port tx_axis_tdata[45] -pin tx_fifo s_axis_tdata[45]
load net tx_axis_tdata[46] -attr @rip tx_axis_tdata[46] -port tx_axis_tdata[46] -pin tx_fifo s_axis_tdata[46]
load net tx_axis_tdata[47] -attr @rip tx_axis_tdata[47] -port tx_axis_tdata[47] -pin tx_fifo s_axis_tdata[47]
load net tx_axis_tdata[48] -attr @rip tx_axis_tdata[48] -port tx_axis_tdata[48] -pin tx_fifo s_axis_tdata[48]
load net tx_axis_tdata[49] -attr @rip tx_axis_tdata[49] -port tx_axis_tdata[49] -pin tx_fifo s_axis_tdata[49]
load net tx_axis_tdata[4] -attr @rip tx_axis_tdata[4] -port tx_axis_tdata[4] -pin tx_fifo s_axis_tdata[4]
load net tx_axis_tdata[50] -attr @rip tx_axis_tdata[50] -port tx_axis_tdata[50] -pin tx_fifo s_axis_tdata[50]
load net tx_axis_tdata[51] -attr @rip tx_axis_tdata[51] -port tx_axis_tdata[51] -pin tx_fifo s_axis_tdata[51]
load net tx_axis_tdata[52] -attr @rip tx_axis_tdata[52] -port tx_axis_tdata[52] -pin tx_fifo s_axis_tdata[52]
load net tx_axis_tdata[53] -attr @rip tx_axis_tdata[53] -port tx_axis_tdata[53] -pin tx_fifo s_axis_tdata[53]
load net tx_axis_tdata[54] -attr @rip tx_axis_tdata[54] -port tx_axis_tdata[54] -pin tx_fifo s_axis_tdata[54]
load net tx_axis_tdata[55] -attr @rip tx_axis_tdata[55] -port tx_axis_tdata[55] -pin tx_fifo s_axis_tdata[55]
load net tx_axis_tdata[56] -attr @rip tx_axis_tdata[56] -port tx_axis_tdata[56] -pin tx_fifo s_axis_tdata[56]
load net tx_axis_tdata[57] -attr @rip tx_axis_tdata[57] -port tx_axis_tdata[57] -pin tx_fifo s_axis_tdata[57]
load net tx_axis_tdata[58] -attr @rip tx_axis_tdata[58] -port tx_axis_tdata[58] -pin tx_fifo s_axis_tdata[58]
load net tx_axis_tdata[59] -attr @rip tx_axis_tdata[59] -port tx_axis_tdata[59] -pin tx_fifo s_axis_tdata[59]
load net tx_axis_tdata[5] -attr @rip tx_axis_tdata[5] -port tx_axis_tdata[5] -pin tx_fifo s_axis_tdata[5]
load net tx_axis_tdata[60] -attr @rip tx_axis_tdata[60] -port tx_axis_tdata[60] -pin tx_fifo s_axis_tdata[60]
load net tx_axis_tdata[61] -attr @rip tx_axis_tdata[61] -port tx_axis_tdata[61] -pin tx_fifo s_axis_tdata[61]
load net tx_axis_tdata[62] -attr @rip tx_axis_tdata[62] -port tx_axis_tdata[62] -pin tx_fifo s_axis_tdata[62]
load net tx_axis_tdata[63] -attr @rip tx_axis_tdata[63] -port tx_axis_tdata[63] -pin tx_fifo s_axis_tdata[63]
load net tx_axis_tdata[6] -attr @rip tx_axis_tdata[6] -port tx_axis_tdata[6] -pin tx_fifo s_axis_tdata[6]
load net tx_axis_tdata[7] -attr @rip tx_axis_tdata[7] -port tx_axis_tdata[7] -pin tx_fifo s_axis_tdata[7]
load net tx_axis_tdata[8] -attr @rip tx_axis_tdata[8] -port tx_axis_tdata[8] -pin tx_fifo s_axis_tdata[8]
load net tx_axis_tdata[9] -attr @rip tx_axis_tdata[9] -port tx_axis_tdata[9] -pin tx_fifo s_axis_tdata[9]
load net tx_axis_tkeep[0] -attr @rip tx_axis_tkeep[0] -port tx_axis_tkeep[0] -pin tx_fifo s_axis_tkeep[0]
load net tx_axis_tkeep[1] -attr @rip tx_axis_tkeep[1] -port tx_axis_tkeep[1] -pin tx_fifo s_axis_tkeep[1]
load net tx_axis_tkeep[2] -attr @rip tx_axis_tkeep[2] -port tx_axis_tkeep[2] -pin tx_fifo s_axis_tkeep[2]
load net tx_axis_tkeep[3] -attr @rip tx_axis_tkeep[3] -port tx_axis_tkeep[3] -pin tx_fifo s_axis_tkeep[3]
load net tx_axis_tkeep[4] -attr @rip tx_axis_tkeep[4] -port tx_axis_tkeep[4] -pin tx_fifo s_axis_tkeep[4]
load net tx_axis_tkeep[5] -attr @rip tx_axis_tkeep[5] -port tx_axis_tkeep[5] -pin tx_fifo s_axis_tkeep[5]
load net tx_axis_tkeep[6] -attr @rip tx_axis_tkeep[6] -port tx_axis_tkeep[6] -pin tx_fifo s_axis_tkeep[6]
load net tx_axis_tkeep[7] -attr @rip tx_axis_tkeep[7] -port tx_axis_tkeep[7] -pin tx_fifo s_axis_tkeep[7]
load net tx_axis_tlast -port tx_axis_tlast -pin tx_fifo s_axis_tlast
netloc tx_axis_tlast 1 0 1 20J 350n
load net tx_axis_tready -port tx_axis_tready -pin tx_fifo s_axis_tready
netloc tx_axis_tready 1 1 8 1023J 480 1610J 350 2270J 340 2710J 350 NJ 350 NJ 350 4051J 360 NJ
load net tx_axis_tuser[0] -attr @rip tx_axis_tuser[0] -port tx_axis_tuser[0] -pin tx_fifo s_axis_tuser[0]
netloc tx_axis_tuser[0] 1 0 1 NJ 380
load net tx_axis_tvalid -port tx_axis_tvalid -pin tx_fifo s_axis_tvalid
netloc tx_axis_tvalid 1 0 1 20J 400n
load net tx_clk -pin eth_mac_10g_inst tx_clk -port tx_clk -pin tx_fifo m_clk -pin tx_sync_reg_1_reg[0] C
netloc tx_clk 1 0 4 240 540 1043 780 NJ 780 2330J
load net tx_error_underflow -port tx_error_underflow -pin tx_error_underflow_i O
netloc tx_error_underflow 1 8 1 NJ 800
load net tx_error_underflow_int -pin eth_mac_10g_inst tx_error_underflow -pin tx_sync_reg_10_i I1
netloc tx_error_underflow_int 1 2 1 1550 320n
load net tx_fifo_axis_tdata[0] -attr @rip m_axis_tdata[0] -pin eth_mac_10g_inst tx_axis_tdata[0] -pin tx_fifo m_axis_tdata[0]
load net tx_fifo_axis_tdata[10] -attr @rip m_axis_tdata[10] -pin eth_mac_10g_inst tx_axis_tdata[10] -pin tx_fifo m_axis_tdata[10]
load net tx_fifo_axis_tdata[11] -attr @rip m_axis_tdata[11] -pin eth_mac_10g_inst tx_axis_tdata[11] -pin tx_fifo m_axis_tdata[11]
load net tx_fifo_axis_tdata[12] -attr @rip m_axis_tdata[12] -pin eth_mac_10g_inst tx_axis_tdata[12] -pin tx_fifo m_axis_tdata[12]
load net tx_fifo_axis_tdata[13] -attr @rip m_axis_tdata[13] -pin eth_mac_10g_inst tx_axis_tdata[13] -pin tx_fifo m_axis_tdata[13]
load net tx_fifo_axis_tdata[14] -attr @rip m_axis_tdata[14] -pin eth_mac_10g_inst tx_axis_tdata[14] -pin tx_fifo m_axis_tdata[14]
load net tx_fifo_axis_tdata[15] -attr @rip m_axis_tdata[15] -pin eth_mac_10g_inst tx_axis_tdata[15] -pin tx_fifo m_axis_tdata[15]
load net tx_fifo_axis_tdata[16] -attr @rip m_axis_tdata[16] -pin eth_mac_10g_inst tx_axis_tdata[16] -pin tx_fifo m_axis_tdata[16]
load net tx_fifo_axis_tdata[17] -attr @rip m_axis_tdata[17] -pin eth_mac_10g_inst tx_axis_tdata[17] -pin tx_fifo m_axis_tdata[17]
load net tx_fifo_axis_tdata[18] -attr @rip m_axis_tdata[18] -pin eth_mac_10g_inst tx_axis_tdata[18] -pin tx_fifo m_axis_tdata[18]
load net tx_fifo_axis_tdata[19] -attr @rip m_axis_tdata[19] -pin eth_mac_10g_inst tx_axis_tdata[19] -pin tx_fifo m_axis_tdata[19]
load net tx_fifo_axis_tdata[1] -attr @rip m_axis_tdata[1] -pin eth_mac_10g_inst tx_axis_tdata[1] -pin tx_fifo m_axis_tdata[1]
load net tx_fifo_axis_tdata[20] -attr @rip m_axis_tdata[20] -pin eth_mac_10g_inst tx_axis_tdata[20] -pin tx_fifo m_axis_tdata[20]
load net tx_fifo_axis_tdata[21] -attr @rip m_axis_tdata[21] -pin eth_mac_10g_inst tx_axis_tdata[21] -pin tx_fifo m_axis_tdata[21]
load net tx_fifo_axis_tdata[22] -attr @rip m_axis_tdata[22] -pin eth_mac_10g_inst tx_axis_tdata[22] -pin tx_fifo m_axis_tdata[22]
load net tx_fifo_axis_tdata[23] -attr @rip m_axis_tdata[23] -pin eth_mac_10g_inst tx_axis_tdata[23] -pin tx_fifo m_axis_tdata[23]
load net tx_fifo_axis_tdata[24] -attr @rip m_axis_tdata[24] -pin eth_mac_10g_inst tx_axis_tdata[24] -pin tx_fifo m_axis_tdata[24]
load net tx_fifo_axis_tdata[25] -attr @rip m_axis_tdata[25] -pin eth_mac_10g_inst tx_axis_tdata[25] -pin tx_fifo m_axis_tdata[25]
load net tx_fifo_axis_tdata[26] -attr @rip m_axis_tdata[26] -pin eth_mac_10g_inst tx_axis_tdata[26] -pin tx_fifo m_axis_tdata[26]
load net tx_fifo_axis_tdata[27] -attr @rip m_axis_tdata[27] -pin eth_mac_10g_inst tx_axis_tdata[27] -pin tx_fifo m_axis_tdata[27]
load net tx_fifo_axis_tdata[28] -attr @rip m_axis_tdata[28] -pin eth_mac_10g_inst tx_axis_tdata[28] -pin tx_fifo m_axis_tdata[28]
load net tx_fifo_axis_tdata[29] -attr @rip m_axis_tdata[29] -pin eth_mac_10g_inst tx_axis_tdata[29] -pin tx_fifo m_axis_tdata[29]
load net tx_fifo_axis_tdata[2] -attr @rip m_axis_tdata[2] -pin eth_mac_10g_inst tx_axis_tdata[2] -pin tx_fifo m_axis_tdata[2]
load net tx_fifo_axis_tdata[30] -attr @rip m_axis_tdata[30] -pin eth_mac_10g_inst tx_axis_tdata[30] -pin tx_fifo m_axis_tdata[30]
load net tx_fifo_axis_tdata[31] -attr @rip m_axis_tdata[31] -pin eth_mac_10g_inst tx_axis_tdata[31] -pin tx_fifo m_axis_tdata[31]
load net tx_fifo_axis_tdata[32] -attr @rip m_axis_tdata[32] -pin eth_mac_10g_inst tx_axis_tdata[32] -pin tx_fifo m_axis_tdata[32]
load net tx_fifo_axis_tdata[33] -attr @rip m_axis_tdata[33] -pin eth_mac_10g_inst tx_axis_tdata[33] -pin tx_fifo m_axis_tdata[33]
load net tx_fifo_axis_tdata[34] -attr @rip m_axis_tdata[34] -pin eth_mac_10g_inst tx_axis_tdata[34] -pin tx_fifo m_axis_tdata[34]
load net tx_fifo_axis_tdata[35] -attr @rip m_axis_tdata[35] -pin eth_mac_10g_inst tx_axis_tdata[35] -pin tx_fifo m_axis_tdata[35]
load net tx_fifo_axis_tdata[36] -attr @rip m_axis_tdata[36] -pin eth_mac_10g_inst tx_axis_tdata[36] -pin tx_fifo m_axis_tdata[36]
load net tx_fifo_axis_tdata[37] -attr @rip m_axis_tdata[37] -pin eth_mac_10g_inst tx_axis_tdata[37] -pin tx_fifo m_axis_tdata[37]
load net tx_fifo_axis_tdata[38] -attr @rip m_axis_tdata[38] -pin eth_mac_10g_inst tx_axis_tdata[38] -pin tx_fifo m_axis_tdata[38]
load net tx_fifo_axis_tdata[39] -attr @rip m_axis_tdata[39] -pin eth_mac_10g_inst tx_axis_tdata[39] -pin tx_fifo m_axis_tdata[39]
load net tx_fifo_axis_tdata[3] -attr @rip m_axis_tdata[3] -pin eth_mac_10g_inst tx_axis_tdata[3] -pin tx_fifo m_axis_tdata[3]
load net tx_fifo_axis_tdata[40] -attr @rip m_axis_tdata[40] -pin eth_mac_10g_inst tx_axis_tdata[40] -pin tx_fifo m_axis_tdata[40]
load net tx_fifo_axis_tdata[41] -attr @rip m_axis_tdata[41] -pin eth_mac_10g_inst tx_axis_tdata[41] -pin tx_fifo m_axis_tdata[41]
load net tx_fifo_axis_tdata[42] -attr @rip m_axis_tdata[42] -pin eth_mac_10g_inst tx_axis_tdata[42] -pin tx_fifo m_axis_tdata[42]
load net tx_fifo_axis_tdata[43] -attr @rip m_axis_tdata[43] -pin eth_mac_10g_inst tx_axis_tdata[43] -pin tx_fifo m_axis_tdata[43]
load net tx_fifo_axis_tdata[44] -attr @rip m_axis_tdata[44] -pin eth_mac_10g_inst tx_axis_tdata[44] -pin tx_fifo m_axis_tdata[44]
load net tx_fifo_axis_tdata[45] -attr @rip m_axis_tdata[45] -pin eth_mac_10g_inst tx_axis_tdata[45] -pin tx_fifo m_axis_tdata[45]
load net tx_fifo_axis_tdata[46] -attr @rip m_axis_tdata[46] -pin eth_mac_10g_inst tx_axis_tdata[46] -pin tx_fifo m_axis_tdata[46]
load net tx_fifo_axis_tdata[47] -attr @rip m_axis_tdata[47] -pin eth_mac_10g_inst tx_axis_tdata[47] -pin tx_fifo m_axis_tdata[47]
load net tx_fifo_axis_tdata[48] -attr @rip m_axis_tdata[48] -pin eth_mac_10g_inst tx_axis_tdata[48] -pin tx_fifo m_axis_tdata[48]
load net tx_fifo_axis_tdata[49] -attr @rip m_axis_tdata[49] -pin eth_mac_10g_inst tx_axis_tdata[49] -pin tx_fifo m_axis_tdata[49]
load net tx_fifo_axis_tdata[4] -attr @rip m_axis_tdata[4] -pin eth_mac_10g_inst tx_axis_tdata[4] -pin tx_fifo m_axis_tdata[4]
load net tx_fifo_axis_tdata[50] -attr @rip m_axis_tdata[50] -pin eth_mac_10g_inst tx_axis_tdata[50] -pin tx_fifo m_axis_tdata[50]
load net tx_fifo_axis_tdata[51] -attr @rip m_axis_tdata[51] -pin eth_mac_10g_inst tx_axis_tdata[51] -pin tx_fifo m_axis_tdata[51]
load net tx_fifo_axis_tdata[52] -attr @rip m_axis_tdata[52] -pin eth_mac_10g_inst tx_axis_tdata[52] -pin tx_fifo m_axis_tdata[52]
load net tx_fifo_axis_tdata[53] -attr @rip m_axis_tdata[53] -pin eth_mac_10g_inst tx_axis_tdata[53] -pin tx_fifo m_axis_tdata[53]
load net tx_fifo_axis_tdata[54] -attr @rip m_axis_tdata[54] -pin eth_mac_10g_inst tx_axis_tdata[54] -pin tx_fifo m_axis_tdata[54]
load net tx_fifo_axis_tdata[55] -attr @rip m_axis_tdata[55] -pin eth_mac_10g_inst tx_axis_tdata[55] -pin tx_fifo m_axis_tdata[55]
load net tx_fifo_axis_tdata[56] -attr @rip m_axis_tdata[56] -pin eth_mac_10g_inst tx_axis_tdata[56] -pin tx_fifo m_axis_tdata[56]
load net tx_fifo_axis_tdata[57] -attr @rip m_axis_tdata[57] -pin eth_mac_10g_inst tx_axis_tdata[57] -pin tx_fifo m_axis_tdata[57]
load net tx_fifo_axis_tdata[58] -attr @rip m_axis_tdata[58] -pin eth_mac_10g_inst tx_axis_tdata[58] -pin tx_fifo m_axis_tdata[58]
load net tx_fifo_axis_tdata[59] -attr @rip m_axis_tdata[59] -pin eth_mac_10g_inst tx_axis_tdata[59] -pin tx_fifo m_axis_tdata[59]
load net tx_fifo_axis_tdata[5] -attr @rip m_axis_tdata[5] -pin eth_mac_10g_inst tx_axis_tdata[5] -pin tx_fifo m_axis_tdata[5]
load net tx_fifo_axis_tdata[60] -attr @rip m_axis_tdata[60] -pin eth_mac_10g_inst tx_axis_tdata[60] -pin tx_fifo m_axis_tdata[60]
load net tx_fifo_axis_tdata[61] -attr @rip m_axis_tdata[61] -pin eth_mac_10g_inst tx_axis_tdata[61] -pin tx_fifo m_axis_tdata[61]
load net tx_fifo_axis_tdata[62] -attr @rip m_axis_tdata[62] -pin eth_mac_10g_inst tx_axis_tdata[62] -pin tx_fifo m_axis_tdata[62]
load net tx_fifo_axis_tdata[63] -attr @rip m_axis_tdata[63] -pin eth_mac_10g_inst tx_axis_tdata[63] -pin tx_fifo m_axis_tdata[63]
load net tx_fifo_axis_tdata[6] -attr @rip m_axis_tdata[6] -pin eth_mac_10g_inst tx_axis_tdata[6] -pin tx_fifo m_axis_tdata[6]
load net tx_fifo_axis_tdata[7] -attr @rip m_axis_tdata[7] -pin eth_mac_10g_inst tx_axis_tdata[7] -pin tx_fifo m_axis_tdata[7]
load net tx_fifo_axis_tdata[8] -attr @rip m_axis_tdata[8] -pin eth_mac_10g_inst tx_axis_tdata[8] -pin tx_fifo m_axis_tdata[8]
load net tx_fifo_axis_tdata[9] -attr @rip m_axis_tdata[9] -pin eth_mac_10g_inst tx_axis_tdata[9] -pin tx_fifo m_axis_tdata[9]
load net tx_fifo_axis_tkeep[0] -attr @rip m_axis_tkeep[0] -pin eth_mac_10g_inst tx_axis_tkeep[0] -pin tx_fifo m_axis_tkeep[0]
load net tx_fifo_axis_tkeep[1] -attr @rip m_axis_tkeep[1] -pin eth_mac_10g_inst tx_axis_tkeep[1] -pin tx_fifo m_axis_tkeep[1]
load net tx_fifo_axis_tkeep[2] -attr @rip m_axis_tkeep[2] -pin eth_mac_10g_inst tx_axis_tkeep[2] -pin tx_fifo m_axis_tkeep[2]
load net tx_fifo_axis_tkeep[3] -attr @rip m_axis_tkeep[3] -pin eth_mac_10g_inst tx_axis_tkeep[3] -pin tx_fifo m_axis_tkeep[3]
load net tx_fifo_axis_tkeep[4] -attr @rip m_axis_tkeep[4] -pin eth_mac_10g_inst tx_axis_tkeep[4] -pin tx_fifo m_axis_tkeep[4]
load net tx_fifo_axis_tkeep[5] -attr @rip m_axis_tkeep[5] -pin eth_mac_10g_inst tx_axis_tkeep[5] -pin tx_fifo m_axis_tkeep[5]
load net tx_fifo_axis_tkeep[6] -attr @rip m_axis_tkeep[6] -pin eth_mac_10g_inst tx_axis_tkeep[6] -pin tx_fifo m_axis_tkeep[6]
load net tx_fifo_axis_tkeep[7] -attr @rip m_axis_tkeep[7] -pin eth_mac_10g_inst tx_axis_tkeep[7] -pin tx_fifo m_axis_tkeep[7]
load net tx_fifo_axis_tlast -pin eth_mac_10g_inst tx_axis_tlast -pin tx_fifo m_axis_tlast
netloc tx_fifo_axis_tlast 1 1 1 N 280
load net tx_fifo_axis_tready -pin eth_mac_10g_inst tx_axis_tready -pin tx_fifo m_axis_tready
netloc tx_fifo_axis_tready 1 0 3 280 40 NJ 40 1550
load net tx_fifo_axis_tuser[0] -attr @rip m_axis_tuser[0] -pin eth_mac_10g_inst tx_axis_tuser[0] -pin tx_fifo m_axis_tuser[0]
netloc tx_fifo_axis_tuser[0] 1 1 1 N 300
load net tx_fifo_axis_tvalid -pin eth_mac_10g_inst tx_axis_tvalid -pin tx_fifo m_axis_tvalid
netloc tx_fifo_axis_tvalid 1 1 1 N 320
load net tx_fifo_bad_frame -pin tx_fifo s_status_bad_frame -port tx_fifo_bad_frame
netloc tx_fifo_bad_frame 1 1 8 1063J 540 NJ 540 NJ 540 2670J 520 NJ 520 NJ 520 4091J 540 4530J
load net tx_fifo_good_frame -pin tx_fifo s_status_good_frame -port tx_fifo_good_frame
netloc tx_fifo_good_frame 1 1 8 710J 580 NJ 580 NJ 580 2710J 560 NJ 560 NJ 560 3951J 660 NJ
load net tx_fifo_overflow -pin tx_fifo s_status_overflow -port tx_fifo_overflow
netloc tx_fifo_overflow 1 1 8 983J 560 NJ 560 NJ 560 2690J 540 NJ 540 NJ 540 4051J 560 NJ
load net tx_rst -pin eth_mac_10g_inst tx_rst -pin tx_fifo m_rst -port tx_rst -pin tx_sync_reg_1_reg[0] CLR
netloc tx_rst 1 0 4 180 560 943 680 NJ 680 2330J
load net tx_sync_reg_10 -pin tx_sync_reg_10_i O -pin tx_sync_reg_1_reg[0] D
netloc tx_sync_reg_10 1 3 1 2250 730n
load net tx_sync_reg_1[0] -pin tx_sync_reg_10_i I0 -pin tx_sync_reg_1_reg[0] Q -pin tx_sync_reg_2_reg[0] D
netloc tx_sync_reg_1[0] 1 2 3 1931 800 NJ 800 2650
load net tx_sync_reg_2[0] -pin tx_sync_reg_2_reg[0] Q -pin tx_sync_reg_3_reg[0] D
netloc tx_sync_reg_2[0] 1 5 1 3050 810n
load net tx_sync_reg_4[0] -pin tx_error_underflow_i I1 -pin tx_sync_reg_4_reg[0] Q
netloc tx_sync_reg_4[0] 1 7 1 3790 810n
load net xgmii_rxc[0] -attr @rip xgmii_rxc[0] -pin eth_mac_10g_inst xgmii_rxc[0] -port xgmii_rxc[0]
load net xgmii_rxc[1] -attr @rip xgmii_rxc[1] -pin eth_mac_10g_inst xgmii_rxc[1] -port xgmii_rxc[1]
load net xgmii_rxc[2] -attr @rip xgmii_rxc[2] -pin eth_mac_10g_inst xgmii_rxc[2] -port xgmii_rxc[2]
load net xgmii_rxc[3] -attr @rip xgmii_rxc[3] -pin eth_mac_10g_inst xgmii_rxc[3] -port xgmii_rxc[3]
load net xgmii_rxc[4] -attr @rip xgmii_rxc[4] -pin eth_mac_10g_inst xgmii_rxc[4] -port xgmii_rxc[4]
load net xgmii_rxc[5] -attr @rip xgmii_rxc[5] -pin eth_mac_10g_inst xgmii_rxc[5] -port xgmii_rxc[5]
load net xgmii_rxc[6] -attr @rip xgmii_rxc[6] -pin eth_mac_10g_inst xgmii_rxc[6] -port xgmii_rxc[6]
load net xgmii_rxc[7] -attr @rip xgmii_rxc[7] -pin eth_mac_10g_inst xgmii_rxc[7] -port xgmii_rxc[7]
load net xgmii_rxd[0] -attr @rip xgmii_rxd[0] -pin eth_mac_10g_inst xgmii_rxd[0] -port xgmii_rxd[0]
load net xgmii_rxd[10] -attr @rip xgmii_rxd[10] -pin eth_mac_10g_inst xgmii_rxd[10] -port xgmii_rxd[10]
load net xgmii_rxd[11] -attr @rip xgmii_rxd[11] -pin eth_mac_10g_inst xgmii_rxd[11] -port xgmii_rxd[11]
load net xgmii_rxd[12] -attr @rip xgmii_rxd[12] -pin eth_mac_10g_inst xgmii_rxd[12] -port xgmii_rxd[12]
load net xgmii_rxd[13] -attr @rip xgmii_rxd[13] -pin eth_mac_10g_inst xgmii_rxd[13] -port xgmii_rxd[13]
load net xgmii_rxd[14] -attr @rip xgmii_rxd[14] -pin eth_mac_10g_inst xgmii_rxd[14] -port xgmii_rxd[14]
load net xgmii_rxd[15] -attr @rip xgmii_rxd[15] -pin eth_mac_10g_inst xgmii_rxd[15] -port xgmii_rxd[15]
load net xgmii_rxd[16] -attr @rip xgmii_rxd[16] -pin eth_mac_10g_inst xgmii_rxd[16] -port xgmii_rxd[16]
load net xgmii_rxd[17] -attr @rip xgmii_rxd[17] -pin eth_mac_10g_inst xgmii_rxd[17] -port xgmii_rxd[17]
load net xgmii_rxd[18] -attr @rip xgmii_rxd[18] -pin eth_mac_10g_inst xgmii_rxd[18] -port xgmii_rxd[18]
load net xgmii_rxd[19] -attr @rip xgmii_rxd[19] -pin eth_mac_10g_inst xgmii_rxd[19] -port xgmii_rxd[19]
load net xgmii_rxd[1] -attr @rip xgmii_rxd[1] -pin eth_mac_10g_inst xgmii_rxd[1] -port xgmii_rxd[1]
load net xgmii_rxd[20] -attr @rip xgmii_rxd[20] -pin eth_mac_10g_inst xgmii_rxd[20] -port xgmii_rxd[20]
load net xgmii_rxd[21] -attr @rip xgmii_rxd[21] -pin eth_mac_10g_inst xgmii_rxd[21] -port xgmii_rxd[21]
load net xgmii_rxd[22] -attr @rip xgmii_rxd[22] -pin eth_mac_10g_inst xgmii_rxd[22] -port xgmii_rxd[22]
load net xgmii_rxd[23] -attr @rip xgmii_rxd[23] -pin eth_mac_10g_inst xgmii_rxd[23] -port xgmii_rxd[23]
load net xgmii_rxd[24] -attr @rip xgmii_rxd[24] -pin eth_mac_10g_inst xgmii_rxd[24] -port xgmii_rxd[24]
load net xgmii_rxd[25] -attr @rip xgmii_rxd[25] -pin eth_mac_10g_inst xgmii_rxd[25] -port xgmii_rxd[25]
load net xgmii_rxd[26] -attr @rip xgmii_rxd[26] -pin eth_mac_10g_inst xgmii_rxd[26] -port xgmii_rxd[26]
load net xgmii_rxd[27] -attr @rip xgmii_rxd[27] -pin eth_mac_10g_inst xgmii_rxd[27] -port xgmii_rxd[27]
load net xgmii_rxd[28] -attr @rip xgmii_rxd[28] -pin eth_mac_10g_inst xgmii_rxd[28] -port xgmii_rxd[28]
load net xgmii_rxd[29] -attr @rip xgmii_rxd[29] -pin eth_mac_10g_inst xgmii_rxd[29] -port xgmii_rxd[29]
load net xgmii_rxd[2] -attr @rip xgmii_rxd[2] -pin eth_mac_10g_inst xgmii_rxd[2] -port xgmii_rxd[2]
load net xgmii_rxd[30] -attr @rip xgmii_rxd[30] -pin eth_mac_10g_inst xgmii_rxd[30] -port xgmii_rxd[30]
load net xgmii_rxd[31] -attr @rip xgmii_rxd[31] -pin eth_mac_10g_inst xgmii_rxd[31] -port xgmii_rxd[31]
load net xgmii_rxd[32] -attr @rip xgmii_rxd[32] -pin eth_mac_10g_inst xgmii_rxd[32] -port xgmii_rxd[32]
load net xgmii_rxd[33] -attr @rip xgmii_rxd[33] -pin eth_mac_10g_inst xgmii_rxd[33] -port xgmii_rxd[33]
load net xgmii_rxd[34] -attr @rip xgmii_rxd[34] -pin eth_mac_10g_inst xgmii_rxd[34] -port xgmii_rxd[34]
load net xgmii_rxd[35] -attr @rip xgmii_rxd[35] -pin eth_mac_10g_inst xgmii_rxd[35] -port xgmii_rxd[35]
load net xgmii_rxd[36] -attr @rip xgmii_rxd[36] -pin eth_mac_10g_inst xgmii_rxd[36] -port xgmii_rxd[36]
load net xgmii_rxd[37] -attr @rip xgmii_rxd[37] -pin eth_mac_10g_inst xgmii_rxd[37] -port xgmii_rxd[37]
load net xgmii_rxd[38] -attr @rip xgmii_rxd[38] -pin eth_mac_10g_inst xgmii_rxd[38] -port xgmii_rxd[38]
load net xgmii_rxd[39] -attr @rip xgmii_rxd[39] -pin eth_mac_10g_inst xgmii_rxd[39] -port xgmii_rxd[39]
load net xgmii_rxd[3] -attr @rip xgmii_rxd[3] -pin eth_mac_10g_inst xgmii_rxd[3] -port xgmii_rxd[3]
load net xgmii_rxd[40] -attr @rip xgmii_rxd[40] -pin eth_mac_10g_inst xgmii_rxd[40] -port xgmii_rxd[40]
load net xgmii_rxd[41] -attr @rip xgmii_rxd[41] -pin eth_mac_10g_inst xgmii_rxd[41] -port xgmii_rxd[41]
load net xgmii_rxd[42] -attr @rip xgmii_rxd[42] -pin eth_mac_10g_inst xgmii_rxd[42] -port xgmii_rxd[42]
load net xgmii_rxd[43] -attr @rip xgmii_rxd[43] -pin eth_mac_10g_inst xgmii_rxd[43] -port xgmii_rxd[43]
load net xgmii_rxd[44] -attr @rip xgmii_rxd[44] -pin eth_mac_10g_inst xgmii_rxd[44] -port xgmii_rxd[44]
load net xgmii_rxd[45] -attr @rip xgmii_rxd[45] -pin eth_mac_10g_inst xgmii_rxd[45] -port xgmii_rxd[45]
load net xgmii_rxd[46] -attr @rip xgmii_rxd[46] -pin eth_mac_10g_inst xgmii_rxd[46] -port xgmii_rxd[46]
load net xgmii_rxd[47] -attr @rip xgmii_rxd[47] -pin eth_mac_10g_inst xgmii_rxd[47] -port xgmii_rxd[47]
load net xgmii_rxd[48] -attr @rip xgmii_rxd[48] -pin eth_mac_10g_inst xgmii_rxd[48] -port xgmii_rxd[48]
load net xgmii_rxd[49] -attr @rip xgmii_rxd[49] -pin eth_mac_10g_inst xgmii_rxd[49] -port xgmii_rxd[49]
load net xgmii_rxd[4] -attr @rip xgmii_rxd[4] -pin eth_mac_10g_inst xgmii_rxd[4] -port xgmii_rxd[4]
load net xgmii_rxd[50] -attr @rip xgmii_rxd[50] -pin eth_mac_10g_inst xgmii_rxd[50] -port xgmii_rxd[50]
load net xgmii_rxd[51] -attr @rip xgmii_rxd[51] -pin eth_mac_10g_inst xgmii_rxd[51] -port xgmii_rxd[51]
load net xgmii_rxd[52] -attr @rip xgmii_rxd[52] -pin eth_mac_10g_inst xgmii_rxd[52] -port xgmii_rxd[52]
load net xgmii_rxd[53] -attr @rip xgmii_rxd[53] -pin eth_mac_10g_inst xgmii_rxd[53] -port xgmii_rxd[53]
load net xgmii_rxd[54] -attr @rip xgmii_rxd[54] -pin eth_mac_10g_inst xgmii_rxd[54] -port xgmii_rxd[54]
load net xgmii_rxd[55] -attr @rip xgmii_rxd[55] -pin eth_mac_10g_inst xgmii_rxd[55] -port xgmii_rxd[55]
load net xgmii_rxd[56] -attr @rip xgmii_rxd[56] -pin eth_mac_10g_inst xgmii_rxd[56] -port xgmii_rxd[56]
load net xgmii_rxd[57] -attr @rip xgmii_rxd[57] -pin eth_mac_10g_inst xgmii_rxd[57] -port xgmii_rxd[57]
load net xgmii_rxd[58] -attr @rip xgmii_rxd[58] -pin eth_mac_10g_inst xgmii_rxd[58] -port xgmii_rxd[58]
load net xgmii_rxd[59] -attr @rip xgmii_rxd[59] -pin eth_mac_10g_inst xgmii_rxd[59] -port xgmii_rxd[59]
load net xgmii_rxd[5] -attr @rip xgmii_rxd[5] -pin eth_mac_10g_inst xgmii_rxd[5] -port xgmii_rxd[5]
load net xgmii_rxd[60] -attr @rip xgmii_rxd[60] -pin eth_mac_10g_inst xgmii_rxd[60] -port xgmii_rxd[60]
load net xgmii_rxd[61] -attr @rip xgmii_rxd[61] -pin eth_mac_10g_inst xgmii_rxd[61] -port xgmii_rxd[61]
load net xgmii_rxd[62] -attr @rip xgmii_rxd[62] -pin eth_mac_10g_inst xgmii_rxd[62] -port xgmii_rxd[62]
load net xgmii_rxd[63] -attr @rip xgmii_rxd[63] -pin eth_mac_10g_inst xgmii_rxd[63] -port xgmii_rxd[63]
load net xgmii_rxd[6] -attr @rip xgmii_rxd[6] -pin eth_mac_10g_inst xgmii_rxd[6] -port xgmii_rxd[6]
load net xgmii_rxd[7] -attr @rip xgmii_rxd[7] -pin eth_mac_10g_inst xgmii_rxd[7] -port xgmii_rxd[7]
load net xgmii_rxd[8] -attr @rip xgmii_rxd[8] -pin eth_mac_10g_inst xgmii_rxd[8] -port xgmii_rxd[8]
load net xgmii_rxd[9] -attr @rip xgmii_rxd[9] -pin eth_mac_10g_inst xgmii_rxd[9] -port xgmii_rxd[9]
load net xgmii_txc[0] -attr @rip xgmii_txc[0] -pin eth_mac_10g_inst xgmii_txc[0] -port xgmii_txc[0]
load net xgmii_txc[1] -attr @rip xgmii_txc[1] -pin eth_mac_10g_inst xgmii_txc[1] -port xgmii_txc[1]
load net xgmii_txc[2] -attr @rip xgmii_txc[2] -pin eth_mac_10g_inst xgmii_txc[2] -port xgmii_txc[2]
load net xgmii_txc[3] -attr @rip xgmii_txc[3] -pin eth_mac_10g_inst xgmii_txc[3] -port xgmii_txc[3]
load net xgmii_txc[4] -attr @rip xgmii_txc[4] -pin eth_mac_10g_inst xgmii_txc[4] -port xgmii_txc[4]
load net xgmii_txc[5] -attr @rip xgmii_txc[5] -pin eth_mac_10g_inst xgmii_txc[5] -port xgmii_txc[5]
load net xgmii_txc[6] -attr @rip xgmii_txc[6] -pin eth_mac_10g_inst xgmii_txc[6] -port xgmii_txc[6]
load net xgmii_txc[7] -attr @rip xgmii_txc[7] -pin eth_mac_10g_inst xgmii_txc[7] -port xgmii_txc[7]
load net xgmii_txd[0] -attr @rip xgmii_txd[0] -pin eth_mac_10g_inst xgmii_txd[0] -port xgmii_txd[0]
load net xgmii_txd[10] -attr @rip xgmii_txd[10] -pin eth_mac_10g_inst xgmii_txd[10] -port xgmii_txd[10]
load net xgmii_txd[11] -attr @rip xgmii_txd[11] -pin eth_mac_10g_inst xgmii_txd[11] -port xgmii_txd[11]
load net xgmii_txd[12] -attr @rip xgmii_txd[12] -pin eth_mac_10g_inst xgmii_txd[12] -port xgmii_txd[12]
load net xgmii_txd[13] -attr @rip xgmii_txd[13] -pin eth_mac_10g_inst xgmii_txd[13] -port xgmii_txd[13]
load net xgmii_txd[14] -attr @rip xgmii_txd[14] -pin eth_mac_10g_inst xgmii_txd[14] -port xgmii_txd[14]
load net xgmii_txd[15] -attr @rip xgmii_txd[15] -pin eth_mac_10g_inst xgmii_txd[15] -port xgmii_txd[15]
load net xgmii_txd[16] -attr @rip xgmii_txd[16] -pin eth_mac_10g_inst xgmii_txd[16] -port xgmii_txd[16]
load net xgmii_txd[17] -attr @rip xgmii_txd[17] -pin eth_mac_10g_inst xgmii_txd[17] -port xgmii_txd[17]
load net xgmii_txd[18] -attr @rip xgmii_txd[18] -pin eth_mac_10g_inst xgmii_txd[18] -port xgmii_txd[18]
load net xgmii_txd[19] -attr @rip xgmii_txd[19] -pin eth_mac_10g_inst xgmii_txd[19] -port xgmii_txd[19]
load net xgmii_txd[1] -attr @rip xgmii_txd[1] -pin eth_mac_10g_inst xgmii_txd[1] -port xgmii_txd[1]
load net xgmii_txd[20] -attr @rip xgmii_txd[20] -pin eth_mac_10g_inst xgmii_txd[20] -port xgmii_txd[20]
load net xgmii_txd[21] -attr @rip xgmii_txd[21] -pin eth_mac_10g_inst xgmii_txd[21] -port xgmii_txd[21]
load net xgmii_txd[22] -attr @rip xgmii_txd[22] -pin eth_mac_10g_inst xgmii_txd[22] -port xgmii_txd[22]
load net xgmii_txd[23] -attr @rip xgmii_txd[23] -pin eth_mac_10g_inst xgmii_txd[23] -port xgmii_txd[23]
load net xgmii_txd[24] -attr @rip xgmii_txd[24] -pin eth_mac_10g_inst xgmii_txd[24] -port xgmii_txd[24]
load net xgmii_txd[25] -attr @rip xgmii_txd[25] -pin eth_mac_10g_inst xgmii_txd[25] -port xgmii_txd[25]
load net xgmii_txd[26] -attr @rip xgmii_txd[26] -pin eth_mac_10g_inst xgmii_txd[26] -port xgmii_txd[26]
load net xgmii_txd[27] -attr @rip xgmii_txd[27] -pin eth_mac_10g_inst xgmii_txd[27] -port xgmii_txd[27]
load net xgmii_txd[28] -attr @rip xgmii_txd[28] -pin eth_mac_10g_inst xgmii_txd[28] -port xgmii_txd[28]
load net xgmii_txd[29] -attr @rip xgmii_txd[29] -pin eth_mac_10g_inst xgmii_txd[29] -port xgmii_txd[29]
load net xgmii_txd[2] -attr @rip xgmii_txd[2] -pin eth_mac_10g_inst xgmii_txd[2] -port xgmii_txd[2]
load net xgmii_txd[30] -attr @rip xgmii_txd[30] -pin eth_mac_10g_inst xgmii_txd[30] -port xgmii_txd[30]
load net xgmii_txd[31] -attr @rip xgmii_txd[31] -pin eth_mac_10g_inst xgmii_txd[31] -port xgmii_txd[31]
load net xgmii_txd[32] -attr @rip xgmii_txd[32] -pin eth_mac_10g_inst xgmii_txd[32] -port xgmii_txd[32]
load net xgmii_txd[33] -attr @rip xgmii_txd[33] -pin eth_mac_10g_inst xgmii_txd[33] -port xgmii_txd[33]
load net xgmii_txd[34] -attr @rip xgmii_txd[34] -pin eth_mac_10g_inst xgmii_txd[34] -port xgmii_txd[34]
load net xgmii_txd[35] -attr @rip xgmii_txd[35] -pin eth_mac_10g_inst xgmii_txd[35] -port xgmii_txd[35]
load net xgmii_txd[36] -attr @rip xgmii_txd[36] -pin eth_mac_10g_inst xgmii_txd[36] -port xgmii_txd[36]
load net xgmii_txd[37] -attr @rip xgmii_txd[37] -pin eth_mac_10g_inst xgmii_txd[37] -port xgmii_txd[37]
load net xgmii_txd[38] -attr @rip xgmii_txd[38] -pin eth_mac_10g_inst xgmii_txd[38] -port xgmii_txd[38]
load net xgmii_txd[39] -attr @rip xgmii_txd[39] -pin eth_mac_10g_inst xgmii_txd[39] -port xgmii_txd[39]
load net xgmii_txd[3] -attr @rip xgmii_txd[3] -pin eth_mac_10g_inst xgmii_txd[3] -port xgmii_txd[3]
load net xgmii_txd[40] -attr @rip xgmii_txd[40] -pin eth_mac_10g_inst xgmii_txd[40] -port xgmii_txd[40]
load net xgmii_txd[41] -attr @rip xgmii_txd[41] -pin eth_mac_10g_inst xgmii_txd[41] -port xgmii_txd[41]
load net xgmii_txd[42] -attr @rip xgmii_txd[42] -pin eth_mac_10g_inst xgmii_txd[42] -port xgmii_txd[42]
load net xgmii_txd[43] -attr @rip xgmii_txd[43] -pin eth_mac_10g_inst xgmii_txd[43] -port xgmii_txd[43]
load net xgmii_txd[44] -attr @rip xgmii_txd[44] -pin eth_mac_10g_inst xgmii_txd[44] -port xgmii_txd[44]
load net xgmii_txd[45] -attr @rip xgmii_txd[45] -pin eth_mac_10g_inst xgmii_txd[45] -port xgmii_txd[45]
load net xgmii_txd[46] -attr @rip xgmii_txd[46] -pin eth_mac_10g_inst xgmii_txd[46] -port xgmii_txd[46]
load net xgmii_txd[47] -attr @rip xgmii_txd[47] -pin eth_mac_10g_inst xgmii_txd[47] -port xgmii_txd[47]
load net xgmii_txd[48] -attr @rip xgmii_txd[48] -pin eth_mac_10g_inst xgmii_txd[48] -port xgmii_txd[48]
load net xgmii_txd[49] -attr @rip xgmii_txd[49] -pin eth_mac_10g_inst xgmii_txd[49] -port xgmii_txd[49]
load net xgmii_txd[4] -attr @rip xgmii_txd[4] -pin eth_mac_10g_inst xgmii_txd[4] -port xgmii_txd[4]
load net xgmii_txd[50] -attr @rip xgmii_txd[50] -pin eth_mac_10g_inst xgmii_txd[50] -port xgmii_txd[50]
load net xgmii_txd[51] -attr @rip xgmii_txd[51] -pin eth_mac_10g_inst xgmii_txd[51] -port xgmii_txd[51]
load net xgmii_txd[52] -attr @rip xgmii_txd[52] -pin eth_mac_10g_inst xgmii_txd[52] -port xgmii_txd[52]
load net xgmii_txd[53] -attr @rip xgmii_txd[53] -pin eth_mac_10g_inst xgmii_txd[53] -port xgmii_txd[53]
load net xgmii_txd[54] -attr @rip xgmii_txd[54] -pin eth_mac_10g_inst xgmii_txd[54] -port xgmii_txd[54]
load net xgmii_txd[55] -attr @rip xgmii_txd[55] -pin eth_mac_10g_inst xgmii_txd[55] -port xgmii_txd[55]
load net xgmii_txd[56] -attr @rip xgmii_txd[56] -pin eth_mac_10g_inst xgmii_txd[56] -port xgmii_txd[56]
load net xgmii_txd[57] -attr @rip xgmii_txd[57] -pin eth_mac_10g_inst xgmii_txd[57] -port xgmii_txd[57]
load net xgmii_txd[58] -attr @rip xgmii_txd[58] -pin eth_mac_10g_inst xgmii_txd[58] -port xgmii_txd[58]
load net xgmii_txd[59] -attr @rip xgmii_txd[59] -pin eth_mac_10g_inst xgmii_txd[59] -port xgmii_txd[59]
load net xgmii_txd[5] -attr @rip xgmii_txd[5] -pin eth_mac_10g_inst xgmii_txd[5] -port xgmii_txd[5]
load net xgmii_txd[60] -attr @rip xgmii_txd[60] -pin eth_mac_10g_inst xgmii_txd[60] -port xgmii_txd[60]
load net xgmii_txd[61] -attr @rip xgmii_txd[61] -pin eth_mac_10g_inst xgmii_txd[61] -port xgmii_txd[61]
load net xgmii_txd[62] -attr @rip xgmii_txd[62] -pin eth_mac_10g_inst xgmii_txd[62] -port xgmii_txd[62]
load net xgmii_txd[63] -attr @rip xgmii_txd[63] -pin eth_mac_10g_inst xgmii_txd[63] -port xgmii_txd[63]
load net xgmii_txd[6] -attr @rip xgmii_txd[6] -pin eth_mac_10g_inst xgmii_txd[6] -port xgmii_txd[6]
load net xgmii_txd[7] -attr @rip xgmii_txd[7] -pin eth_mac_10g_inst xgmii_txd[7] -port xgmii_txd[7]
load net xgmii_txd[8] -attr @rip xgmii_txd[8] -pin eth_mac_10g_inst xgmii_txd[8] -port xgmii_txd[8]
load net xgmii_txd[9] -attr @rip xgmii_txd[9] -pin eth_mac_10g_inst xgmii_txd[9] -port xgmii_txd[9]
load netBundle @cfg_ifg 8 cfg_ifg[7] cfg_ifg[6] cfg_ifg[5] cfg_ifg[4] cfg_ifg[3] cfg_ifg[2] cfg_ifg[1] cfg_ifg[0] -autobundled
netbloc @cfg_ifg 1 0 2 NJ 70 750J
load netBundle @tx_axis_tdata 64 tx_axis_tdata[63] tx_axis_tdata[62] tx_axis_tdata[61] tx_axis_tdata[60] tx_axis_tdata[59] tx_axis_tdata[58] tx_axis_tdata[57] tx_axis_tdata[56] tx_axis_tdata[55] tx_axis_tdata[54] tx_axis_tdata[53] tx_axis_tdata[52] tx_axis_tdata[51] tx_axis_tdata[50] tx_axis_tdata[49] tx_axis_tdata[48] tx_axis_tdata[47] tx_axis_tdata[46] tx_axis_tdata[45] tx_axis_tdata[44] tx_axis_tdata[43] tx_axis_tdata[42] tx_axis_tdata[41] tx_axis_tdata[40] tx_axis_tdata[39] tx_axis_tdata[38] tx_axis_tdata[37] tx_axis_tdata[36] tx_axis_tdata[35] tx_axis_tdata[34] tx_axis_tdata[33] tx_axis_tdata[32] tx_axis_tdata[31] tx_axis_tdata[30] tx_axis_tdata[29] tx_axis_tdata[28] tx_axis_tdata[27] tx_axis_tdata[26] tx_axis_tdata[25] tx_axis_tdata[24] tx_axis_tdata[23] tx_axis_tdata[22] tx_axis_tdata[21] tx_axis_tdata[20] tx_axis_tdata[19] tx_axis_tdata[18] tx_axis_tdata[17] tx_axis_tdata[16] tx_axis_tdata[15] tx_axis_tdata[14] tx_axis_tdata[13] tx_axis_tdata[12] tx_axis_tdata[11] tx_axis_tdata[10] tx_axis_tdata[9] tx_axis_tdata[8] tx_axis_tdata[7] tx_axis_tdata[6] tx_axis_tdata[5] tx_axis_tdata[4] tx_axis_tdata[3] tx_axis_tdata[2] tx_axis_tdata[1] tx_axis_tdata[0] -autobundled
netbloc @tx_axis_tdata 1 0 1 NJ 280
load netBundle @tx_axis_tkeep 8 tx_axis_tkeep[7] tx_axis_tkeep[6] tx_axis_tkeep[5] tx_axis_tkeep[4] tx_axis_tkeep[3] tx_axis_tkeep[2] tx_axis_tkeep[1] tx_axis_tkeep[0] -autobundled
netbloc @tx_axis_tkeep 1 0 1 200J 320n
load netBundle @xgmii_rxc 8 xgmii_rxc[7] xgmii_rxc[6] xgmii_rxc[5] xgmii_rxc[4] xgmii_rxc[3] xgmii_rxc[2] xgmii_rxc[1] xgmii_rxc[0] -autobundled
netbloc @xgmii_rxc 1 0 2 20J 580 1083J
load netBundle @xgmii_rxd 64 xgmii_rxd[63] xgmii_rxd[62] xgmii_rxd[61] xgmii_rxd[60] xgmii_rxd[59] xgmii_rxd[58] xgmii_rxd[57] xgmii_rxd[56] xgmii_rxd[55] xgmii_rxd[54] xgmii_rxd[53] xgmii_rxd[52] xgmii_rxd[51] xgmii_rxd[50] xgmii_rxd[49] xgmii_rxd[48] xgmii_rxd[47] xgmii_rxd[46] xgmii_rxd[45] xgmii_rxd[44] xgmii_rxd[43] xgmii_rxd[42] xgmii_rxd[41] xgmii_rxd[40] xgmii_rxd[39] xgmii_rxd[38] xgmii_rxd[37] xgmii_rxd[36] xgmii_rxd[35] xgmii_rxd[34] xgmii_rxd[33] xgmii_rxd[32] xgmii_rxd[31] xgmii_rxd[30] xgmii_rxd[29] xgmii_rxd[28] xgmii_rxd[27] xgmii_rxd[26] xgmii_rxd[25] xgmii_rxd[24] xgmii_rxd[23] xgmii_rxd[22] xgmii_rxd[21] xgmii_rxd[20] xgmii_rxd[19] xgmii_rxd[18] xgmii_rxd[17] xgmii_rxd[16] xgmii_rxd[15] xgmii_rxd[14] xgmii_rxd[13] xgmii_rxd[12] xgmii_rxd[11] xgmii_rxd[10] xgmii_rxd[9] xgmii_rxd[8] xgmii_rxd[7] xgmii_rxd[6] xgmii_rxd[5] xgmii_rxd[4] xgmii_rxd[3] xgmii_rxd[2] xgmii_rxd[1] xgmii_rxd[0] -autobundled
netbloc @xgmii_rxd 1 0 2 NJ 600 1103J
load netBundle @rx_axis_tdata 64 rx_axis_tdata[63] rx_axis_tdata[62] rx_axis_tdata[61] rx_axis_tdata[60] rx_axis_tdata[59] rx_axis_tdata[58] rx_axis_tdata[57] rx_axis_tdata[56] rx_axis_tdata[55] rx_axis_tdata[54] rx_axis_tdata[53] rx_axis_tdata[52] rx_axis_tdata[51] rx_axis_tdata[50] rx_axis_tdata[49] rx_axis_tdata[48] rx_axis_tdata[47] rx_axis_tdata[46] rx_axis_tdata[45] rx_axis_tdata[44] rx_axis_tdata[43] rx_axis_tdata[42] rx_axis_tdata[41] rx_axis_tdata[40] rx_axis_tdata[39] rx_axis_tdata[38] rx_axis_tdata[37] rx_axis_tdata[36] rx_axis_tdata[35] rx_axis_tdata[34] rx_axis_tdata[33] rx_axis_tdata[32] rx_axis_tdata[31] rx_axis_tdata[30] rx_axis_tdata[29] rx_axis_tdata[28] rx_axis_tdata[27] rx_axis_tdata[26] rx_axis_tdata[25] rx_axis_tdata[24] rx_axis_tdata[23] rx_axis_tdata[22] rx_axis_tdata[21] rx_axis_tdata[20] rx_axis_tdata[19] rx_axis_tdata[18] rx_axis_tdata[17] rx_axis_tdata[16] rx_axis_tdata[15] rx_axis_tdata[14] rx_axis_tdata[13] rx_axis_tdata[12] rx_axis_tdata[11] rx_axis_tdata[10] rx_axis_tdata[9] rx_axis_tdata[8] rx_axis_tdata[7] rx_axis_tdata[6] rx_axis_tdata[5] rx_axis_tdata[4] rx_axis_tdata[3] rx_axis_tdata[2] rx_axis_tdata[1] rx_axis_tdata[0] -autobundled
netbloc @rx_axis_tdata 1 8 1 4550J 70n
load netBundle @rx_axis_tkeep 8 rx_axis_tkeep[7] rx_axis_tkeep[6] rx_axis_tkeep[5] rx_axis_tkeep[4] rx_axis_tkeep[3] rx_axis_tkeep[2] rx_axis_tkeep[1] rx_axis_tkeep[0] -autobundled
netbloc @rx_axis_tkeep 1 8 1 4570J 100n
load netBundle @xgmii_txc 8 xgmii_txc[7] xgmii_txc[6] xgmii_txc[5] xgmii_txc[4] xgmii_txc[3] xgmii_txc[2] xgmii_txc[1] xgmii_txc[0] -autobundled
netbloc @xgmii_txc 1 2 7 1570J 330 2250J 320 2730J 330 NJ 330 NJ 330 4071J 340 4590J
load netBundle @xgmii_txd 64 xgmii_txd[63] xgmii_txd[62] xgmii_txd[61] xgmii_txd[60] xgmii_txd[59] xgmii_txd[58] xgmii_txd[57] xgmii_txd[56] xgmii_txd[55] xgmii_txd[54] xgmii_txd[53] xgmii_txd[52] xgmii_txd[51] xgmii_txd[50] xgmii_txd[49] xgmii_txd[48] xgmii_txd[47] xgmii_txd[46] xgmii_txd[45] xgmii_txd[44] xgmii_txd[43] xgmii_txd[42] xgmii_txd[41] xgmii_txd[40] xgmii_txd[39] xgmii_txd[38] xgmii_txd[37] xgmii_txd[36] xgmii_txd[35] xgmii_txd[34] xgmii_txd[33] xgmii_txd[32] xgmii_txd[31] xgmii_txd[30] xgmii_txd[29] xgmii_txd[28] xgmii_txd[27] xgmii_txd[26] xgmii_txd[25] xgmii_txd[24] xgmii_txd[23] xgmii_txd[22] xgmii_txd[21] xgmii_txd[20] xgmii_txd[19] xgmii_txd[18] xgmii_txd[17] xgmii_txd[16] xgmii_txd[15] xgmii_txd[14] xgmii_txd[13] xgmii_txd[12] xgmii_txd[11] xgmii_txd[10] xgmii_txd[9] xgmii_txd[8] xgmii_txd[7] xgmii_txd[6] xgmii_txd[5] xgmii_txd[4] xgmii_txd[3] xgmii_txd[2] xgmii_txd[1] xgmii_txd[0] -autobundled
netbloc @xgmii_txd 1 2 7 1570J 370 2290J 360 2690J 370 NJ 370 NJ 370 4031J 380 4530J
load netBundle @rx_fifo_axis_tdata 64 rx_fifo_axis_tdata[63] rx_fifo_axis_tdata[62] rx_fifo_axis_tdata[61] rx_fifo_axis_tdata[60] rx_fifo_axis_tdata[59] rx_fifo_axis_tdata[58] rx_fifo_axis_tdata[57] rx_fifo_axis_tdata[56] rx_fifo_axis_tdata[55] rx_fifo_axis_tdata[54] rx_fifo_axis_tdata[53] rx_fifo_axis_tdata[52] rx_fifo_axis_tdata[51] rx_fifo_axis_tdata[50] rx_fifo_axis_tdata[49] rx_fifo_axis_tdata[48] rx_fifo_axis_tdata[47] rx_fifo_axis_tdata[46] rx_fifo_axis_tdata[45] rx_fifo_axis_tdata[44] rx_fifo_axis_tdata[43] rx_fifo_axis_tdata[42] rx_fifo_axis_tdata[41] rx_fifo_axis_tdata[40] rx_fifo_axis_tdata[39] rx_fifo_axis_tdata[38] rx_fifo_axis_tdata[37] rx_fifo_axis_tdata[36] rx_fifo_axis_tdata[35] rx_fifo_axis_tdata[34] rx_fifo_axis_tdata[33] rx_fifo_axis_tdata[32] rx_fifo_axis_tdata[31] rx_fifo_axis_tdata[30] rx_fifo_axis_tdata[29] rx_fifo_axis_tdata[28] rx_fifo_axis_tdata[27] rx_fifo_axis_tdata[26] rx_fifo_axis_tdata[25] rx_fifo_axis_tdata[24] rx_fifo_axis_tdata[23] rx_fifo_axis_tdata[22] rx_fifo_axis_tdata[21] rx_fifo_axis_tdata[20] rx_fifo_axis_tdata[19] rx_fifo_axis_tdata[18] rx_fifo_axis_tdata[17] rx_fifo_axis_tdata[16] rx_fifo_axis_tdata[15] rx_fifo_axis_tdata[14] rx_fifo_axis_tdata[13] rx_fifo_axis_tdata[12] rx_fifo_axis_tdata[11] rx_fifo_axis_tdata[10] rx_fifo_axis_tdata[9] rx_fifo_axis_tdata[8] rx_fifo_axis_tdata[7] rx_fifo_axis_tdata[6] rx_fifo_axis_tdata[5] rx_fifo_axis_tdata[4] rx_fifo_axis_tdata[3] rx_fifo_axis_tdata[2] rx_fifo_axis_tdata[1] rx_fifo_axis_tdata[0] -autobundled
netbloc @rx_fifo_axis_tdata 1 2 6 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 3850
load netBundle @rx_fifo_axis_tkeep 8 rx_fifo_axis_tkeep[7] rx_fifo_axis_tkeep[6] rx_fifo_axis_tkeep[5] rx_fifo_axis_tkeep[4] rx_fifo_axis_tkeep[3] rx_fifo_axis_tkeep[2] rx_fifo_axis_tkeep[1] rx_fifo_axis_tkeep[0] -autobundled
netbloc @rx_fifo_axis_tkeep 1 2 6 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 N
load netBundle @rx_sync_reg_10 2 rx_sync_reg_10[1] rx_sync_reg_10[0] -autobundled
netbloc @rx_sync_reg_10 1 3 1 2250 450n
load netBundle @tx_fifo_axis_tdata 64 tx_fifo_axis_tdata[63] tx_fifo_axis_tdata[62] tx_fifo_axis_tdata[61] tx_fifo_axis_tdata[60] tx_fifo_axis_tdata[59] tx_fifo_axis_tdata[58] tx_fifo_axis_tdata[57] tx_fifo_axis_tdata[56] tx_fifo_axis_tdata[55] tx_fifo_axis_tdata[54] tx_fifo_axis_tdata[53] tx_fifo_axis_tdata[52] tx_fifo_axis_tdata[51] tx_fifo_axis_tdata[50] tx_fifo_axis_tdata[49] tx_fifo_axis_tdata[48] tx_fifo_axis_tdata[47] tx_fifo_axis_tdata[46] tx_fifo_axis_tdata[45] tx_fifo_axis_tdata[44] tx_fifo_axis_tdata[43] tx_fifo_axis_tdata[42] tx_fifo_axis_tdata[41] tx_fifo_axis_tdata[40] tx_fifo_axis_tdata[39] tx_fifo_axis_tdata[38] tx_fifo_axis_tdata[37] tx_fifo_axis_tdata[36] tx_fifo_axis_tdata[35] tx_fifo_axis_tdata[34] tx_fifo_axis_tdata[33] tx_fifo_axis_tdata[32] tx_fifo_axis_tdata[31] tx_fifo_axis_tdata[30] tx_fifo_axis_tdata[29] tx_fifo_axis_tdata[28] tx_fifo_axis_tdata[27] tx_fifo_axis_tdata[26] tx_fifo_axis_tdata[25] tx_fifo_axis_tdata[24] tx_fifo_axis_tdata[23] tx_fifo_axis_tdata[22] tx_fifo_axis_tdata[21] tx_fifo_axis_tdata[20] tx_fifo_axis_tdata[19] tx_fifo_axis_tdata[18] tx_fifo_axis_tdata[17] tx_fifo_axis_tdata[16] tx_fifo_axis_tdata[15] tx_fifo_axis_tdata[14] tx_fifo_axis_tdata[13] tx_fifo_axis_tdata[12] tx_fifo_axis_tdata[11] tx_fifo_axis_tdata[10] tx_fifo_axis_tdata[9] tx_fifo_axis_tdata[8] tx_fifo_axis_tdata[7] tx_fifo_axis_tdata[6] tx_fifo_axis_tdata[5] tx_fifo_axis_tdata[4] tx_fifo_axis_tdata[3] tx_fifo_axis_tdata[2] tx_fifo_axis_tdata[1] tx_fifo_axis_tdata[0] -autobundled
netbloc @tx_fifo_axis_tdata 1 1 1 N 240
load netBundle @tx_fifo_axis_tkeep 8 tx_fifo_axis_tkeep[7] tx_fifo_axis_tkeep[6] tx_fifo_axis_tkeep[5] tx_fifo_axis_tkeep[4] tx_fifo_axis_tkeep[3] tx_fifo_axis_tkeep[2] tx_fifo_axis_tkeep[1] tx_fifo_axis_tkeep[0] -autobundled
netbloc @tx_fifo_axis_tkeep 1 1 1 N 260
load netBundle @rx_sync_reg_1 2 rx_sync_reg_1[1] rx_sync_reg_1[0] -autobundled
netbloc @rx_sync_reg_1 1 2 3 1931 660 2310J 650 2650
load netBundle @rx_sync_reg_4 2 rx_sync_reg_4[1] rx_sync_reg_4[0] -autobundled
netbloc @rx_sync_reg_4 1 7 1 3931 620n
load netBundle @rx_sync_reg_3 2 rx_sync_reg_3[1] rx_sync_reg_3[0] -autobundled
netbloc @rx_sync_reg_3 1 6 2 3411 740 3911
load netBundle @rx_sync_reg_2 2 rx_sync_reg_2[1] rx_sync_reg_2[0] -autobundled
netbloc @rx_sync_reg_2 1 5 1 3050 650n
load netBundle @p_0_in 2 p_0_in[1] p_0_in[0] -autobundled
netbloc @p_0_in 1 2 1 1590 260n
levelinfo -pg 1 0 460 1303 2071 2441 2841 3201 3581 4271 4620
pagesize -pg 1 -db -bbox -sgen -200 0 5090 1610
show
zoom 0.210338
scrollpos -41 -235
#
# initialize ictrl to current module eth_mac_10g_fifo work:eth_mac_10g_fifo:NOFILE
ictrl init topinfo |
