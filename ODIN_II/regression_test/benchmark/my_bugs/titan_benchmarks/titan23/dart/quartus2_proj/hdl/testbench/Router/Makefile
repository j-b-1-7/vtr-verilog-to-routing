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

SIM_DIR			= $(ICSIM_DIR)/sim
DPI_DIR			= dpi

OBJS			= dpi_dart.o \
				  rt_test.o

DPI_TB_SRC		= Router_tb.v
DPI_TB_OBJ		:= $(DPI_TB_SRC:%.v=%.obj)

V_SRCS			= rotate_prio.v \
				  one_hot_detect.v \
				  mux_Nto1_decoded.v \
				  mux_Nto1.v \
				  encoder_N.v \
				  DistroRAM.v \
				  decoder_N.v \
				  VCAlloc.v \
				  srl_fifo.v \
				  RouterPortLookup.v \
				  RouterInput.v \
				  max2.v \
				  flit_out_inf.v \
				  CreditCounter.v \
				  Router.v \
                  RoutingTable.v \
                  DualBRAM.v \
                  arbiter_static.v \
                  rt_update_flit.v \
                  RAMFIFO_single_slow.v \
                  RAMFIFO_ctrl_lfsr.v \
                  LFSR3_9.v \
                  InputVCState.v \
                  RoutingTable_single.v

INCLUDES		= -I$(MODEL_TECH)/../include \
				  -I$(ICSIM_DIR)/hdl/testbench/include \
				  -I$(SIM_DIR)

DPI_FLAGS		= -DCONFIG_FILE='"test_config.bin"' \
				  -DTRACE_FILE='"test_sim_trace"'

default: design

# Compile verilog sources
design: work $(V_SRCS)
	vlog -sv $(DPI_TB_SRC)
	
	# Build dpiheader.h
	vlog -sv -dpiheader $(DPI_DIR)/dpiheader.h $(DPI_TB_SRC)
	
	# Now go compile DPI DLL manually! :)

%.v:
	vlog "../../$@" +incdir+../../

work:
	vlib work


# Compile the DPI dynamic library
dpilib: $(OBJS)
	$(CC) -shared -L$(MODEL_TECH) $(OBJS) -o dpi.so

windpilib: $(OBJS)
	$(CC) -shared -L$(WMODEL_TECH) $(DPI_TB_OBJ) $(OBJS) -o dpi.dll -lmtipli

%.o: $(DPI_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c $(INCLUDES) $(DPI_FLAGS) $< -o $@


# Compile export_wrapper.so (Linux only)
ewrapper:
	$(CC) -shared -fPIC -o work/_dpi/exportwrapper.so work/_dpi/exportwrapper.o

%.obj: %.v
	vsim $< -dpiexportobj $@
    
clean:
	rm -rf *.o *.obj dpi.so dpi.dll

