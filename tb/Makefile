MODULE = test_ptp_timestamp_unit
VERILOG_SOURCES = $(PWD)/../rtl/ptp_timestamp_top.v \
                  $(PWD)/../rtl/ptp_rtc.v \
                  $(PWD)/../rtl/ptp_parser_xgmii_64.v \
                  $(PWD)/../rtl/ptp_ts_fifo.v
TOPLEVEL = ptp_timestamp_top

include $(shell cocotb-config --makefiles)/Makefile.sim
