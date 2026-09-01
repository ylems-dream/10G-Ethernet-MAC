TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(shell pwd)/../rtl/ptp_rtc.v \
                  $(shell pwd)/../rtl/ptp_parser_xgmii_64.v \
                  $(shell pwd)/../rtl/ptp_ts_fifo.v \
                  $(shell pwd)/../rtl/ptp_timestamp_top.v

TOPLEVEL = ptp_timestamp_top
MODULE = test_ptp_timestamp_unit

include $(shell cocotb-config --makefiles)/Makefile.sim
