VERILOG = iverilog
TARGET = Random.vcd

$(TARGET) : Random.vvp
	vvp Random.vvp

Random.vvp: Random_tb.v Random.v
	$(VERILOG) -o Random.vvp Random_tb.v Random.v

clean:
	del $(TARGET)