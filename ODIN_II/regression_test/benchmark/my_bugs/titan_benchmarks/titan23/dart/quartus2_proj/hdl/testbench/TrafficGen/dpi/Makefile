# Makefile for ctest of DPI testbench

ICSIM_DIR	= /nobackup/wangda/icsim
CC			= g++

SIM_DIR		= $(ICSIM_DIR)/sim
CAD_DIR		= $(ICSIM_DIR)/cad

SIM_SRCS	= node.cpp \
			  trafficgen.cpp \
			  flitqueue.cpp \
			  router.cpp \
			  util.cpp \
			  stats.cpp \
			  rng.cpp \
			  interconnect.cpp

CAD_SRCS	= arch.cpp

SIM_OBJS	:= $(SIM_SRCS:%.cpp=%.o)
CAD_OBJS	:= $(CAD_SRCS:%.cpp=%.o)

CPPFLAGS	= -Wall -O2

default: ctest

test:
	echo $(SIM_OBJS)
	echo $(CAD_OBJS)
	echo $(OBJS)

# Compile the ctest
ctest: $(SIM_OBJS) $(CAD_OBJS) tg_test.cpp
	$(CC) $(CPPFLAGS) -c -I$(ICSIM_DIR)/hdl/testbench/include -I$(SIM_DIR) -I$(CAD_DIR) -DC_TEST=1 tg_test.cpp -o tg_test.o
	$(CC) $(SIM_OBJS) $(CAD_OBJS) tg_test.o -o ctest

%.o: $(SIM_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c -I$(SIM_DIR) $< -o $@

%.o: $(CAD_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c -I$(CAD_DIR) $< -o $@


# clean
clean:
	rm -rf *.o ctest

