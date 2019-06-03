# Makefile for ctest of DPI testbench

ICSIM_DIR	= D:/school/thesis/icsim
CC			= g++

CPPFLAGS	= -Wall -O2

default: ctest

# Compile the ctest
ctest: sim_test.cpp
	$(CC) $(CPPFLAGS) -I$(ICSIM_DIR)/hdl/testbench/include -DC_TEST=1 sim_test.cpp -o ctest

# clean
clean:
	rm -rf *.o ctest*

