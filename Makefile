VERILOG = iverilog
TARGET = nonblocking.vcd

$(TARGET) : nonblocking.vvp
	vvp nonblocking.vvp

nonblocking.vvp: nonblocking_tb.v nonblocking.v
	$(VERILOG) -o nonblocking.vvp nonblocking_tb.v nonblocking.v

clean:
	-del $(TARGET)