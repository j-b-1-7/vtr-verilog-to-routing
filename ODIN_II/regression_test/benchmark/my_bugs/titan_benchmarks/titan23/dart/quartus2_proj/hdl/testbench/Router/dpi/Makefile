# Makefile for ctest of DPI testbench

ICSIM_DIR	= /nobackup/wangda/icsim
CC			= g++

SIM_DIR		= $(ICSIM_DIR)/sim

DPI_SRCS 	= dpi_dart.cpp rt_test.cpp
DPI_OBJS 	:= $(DPI_SRCS:%.cpp=%.o)

CPPFLAGS	= -Wall -O2

default: ctest

test:
	echo $(SIM_OBJS)
	echo $(CAD_OBJS)
	echo $(OBJS)

FLAGS = -I$(ICSIM_DIR)/hdl/testbench/include -I$(SIM_DIR) -DCONFIG_FILE='"config.bin"' -DTRACE_FILE='"trace.out"'

# Compile the ctest
ctest: $(DPI_OBJS) $(SIM_OBJS)
	$(CC) $(DPI_OBJS) $(SIM_OBJS) -o ctest

%.o: %.cpp
	$(CC) $(CPPFLAGS) -c $(FLAGS) -DC_TEST=1 $< -o $@

# clean
clean:
	rm -rf *.o ctest

