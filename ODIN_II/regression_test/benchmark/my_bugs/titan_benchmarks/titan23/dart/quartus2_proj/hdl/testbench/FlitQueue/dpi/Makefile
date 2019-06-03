# Makefile for ctest of DPI testbench

ICSIM_DIR	= /nobackup/wangda/icsim
CC			= g++

CPP_DIR		= $(ICSIM_DIR)/sim
CPP_SRCS	= node.cpp \
			  trafficgen.cpp \
			  flitqueue.cpp \
			  router.cpp \
			  util.cpp \
			  stats.cpp \
			  rng.cpp \
			  interconnect.cpp

OBJS		:= $(CPP_SRCS:%.cpp=%.o)

CPPFLAGS	= -Wall -O2

default: ctest

# Compile the ctest
ctest: $(OBJS) fq_test.cpp
	$(CC) $(CPPFLAGS) -c -I$(ICSIM_DIR)/hdl/testbench/include -I$(CPP_DIR) -DC_TEST=1 fq_test.cpp -o fq_test.o
	$(CC) $(OBJS) fq_test.o -o ctest

%.o: $(CPP_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c -I$(CPP_DIR) $< -o $@


# clean
clean:
	rm -rf *.o ctest

