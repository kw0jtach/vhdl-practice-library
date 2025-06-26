MODULE=siso
DIR_SRC=src/sequential
DIR_TB=tb/sequential
VCD_FILE=sim/$(MODULE).vcd

all: simulate

analyze:
	ghdl -a $(DIR_SRC)/$(MODULE).vhd
	ghdl -a $(DIR_TB)/$(MODULE)_tb.vhd

elaborate:
	ghdl -e $(MODULE)_tb

simulate: analyze elaborate
	mkdir -p sim
	ghdl -r $(MODULE)_tb --vcd=$(VCD_FILE) --stop-time=300ns
	@echo "Simulation completed. View waveform with:"
	@echo " gtkwave $(VCD_FILE)"

clean:
	rm -f *.o *.cf $(MODULE)_tb $(VCD_FILE)