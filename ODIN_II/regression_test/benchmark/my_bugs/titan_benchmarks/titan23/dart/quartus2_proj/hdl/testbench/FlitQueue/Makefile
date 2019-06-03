# Makefile for Modelsim DPI testbench


# Check compiling platform
PLATFORM = Linux

ifeq ($(PLATFORM), Linux)
	ICSIM_DIR	= /nobackup/wangda/icsim
	CC 			= g++
	CPPFLAGS	= -g -fPIC
endif

ifeq ($(PLATFORM), CYGWIN)
	ICSIM_DIR	= D:/school/thesis/icsim
	WMODEL_TECH	= C:/Modeltech_6.2e/win32
	CC			= $(WMODEL_TECH)/../gcc-3.3.1-mingw32/bin/g++
	CPP_FLAGS	= -g
endif

DPI_DIR			= dpi
CPP_DIR			= $(ICSIM_DIR)/sim

CPP_SRCS		= node.cpp \
				  trafficgen.cpp \
				  flitqueue.cpp \
				  router.cpp \
				  util.cpp \
				  stats.cpp \
				  rng.cpp \
				  interconnect.cpp
OBJS			:= $(CPP_SRCS:%.cpp=%.o)


default: design

# Compile verilog sources
design:
	vlib work
	vlog "../../DualBRAM.v"
	vlog "../../FQCtrl.v" +incdir+../../
	vlog "../../FlitQueue.v" +incdir+../../
	vlog "../../FlitQueue_NC.v" +incdir+../../
	vlog "../../LFSR3_9.v"
	vlog "../../RAMFIFO.v"
	vlog "../../RAMFIFO_ctrl_lfsr_dc.v"
	vlog "../../decoder_N.v"
	vlog "../../encoder_N.v"
	vlog "../../flit_out_inf.v" +incdir+../../
	vlog "../../mux_Nto1.v"
	vlog "../../srl_fifo.v"
	
	vlog -sv FlitQueue_tb.v
	
	# Build dpiheader.h
	vlog -sv -dpiheader $(DPI_DIR)/dpiheader.h FlitQueue_tb.v
	
	# Now go compile DPI DLL manually! :)




# Compile the DPI dynamic library
dpilib: $(OBJS) $(DPI_DIR)/fq_test.cpp
	$(CC) $(CPPFLAGS) -c -I$(MODEL_TECH)/../include -I$(ICSIM_DIR)/hdl/testbench/include -I$(CPP_DIR) -DC_TEST=0 $(DPI_DIR)/fq_test.cpp -o dpi.o
	$(CC) -shared -L$(MODEL_TECH) $(OBJS) dpi.o -o dpi.so

windpilib: $(OBJS) $(DPI_DIR)/fq_test.cpp FlitQueue_tb.obj
	$(CC) $(CPPFLAGS) -c -I$(WMODEL_TECH)/../include -I$(ICSIM_DIR)/hdl/testbench/include -I$(CPP_DIR) -DC_TEST=0 $(DPI_DIR)/fq_test.cpp -o dpi.o
	$(CC) -shared -L$(WMODEL_TECH) FlitQueue_tb.obj $(OBJS) dpi.o -o dpi.dll -lmtipli


# Compile export_wrapper.so (Linux only)
ewrapper:
	$(CC) -shared -fPIC -o work/_dpi/exportwrapper.so work/_dpi/exportwrapper.o



%.o: $(CPP_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c -I$(ICSIM_DIR)/sim $< -o $@

FlitQueue_tb.obj: FlitQueue_tb.v
	vsim FlitQueue_tb -dpiexportobj FlitQueue_tb.obj
    
clean:
	rm -rf *.o *.obj dpi.so dpi.dll

