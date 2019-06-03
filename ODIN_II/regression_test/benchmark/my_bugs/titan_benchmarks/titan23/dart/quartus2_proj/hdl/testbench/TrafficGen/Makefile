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
SIM_DIR			= $(ICSIM_DIR)/sim
CAD_DIR			= $(ICSIM_DIR)/cad

SIM_SRCS		= node.cpp \
				  trafficgen.cpp \
				  flitqueue.cpp \
				  router.cpp \
				  util.cpp \
				  stats.cpp \
				  rng.cpp \
				  interconnect.cpp

CAD_SRCS		= arch.cpp

SIM_OBJS		:= $(SIM_SRCS:%.cpp=%.o)
CAD_OBJS		:= $(CAD_SRCS:%.cpp=%.o)

DPI_C_SRC		= $(DPI_DIR)/tg_test.cpp
DPI_TB_SRC		= TrafficGen_tb.v
DPI_TB_OBJ		:= $(DPI_TB_SRC:%.v=%.obj)

default: design

# Compile verilog sources
design:
	vlib work
	vlog "../../DualBRAM.v"
	vlog "../../FQCtrl.v" +incdir+../../
	vlog "../../FlitQueue_NC.v" +incdir+../../
	vlog "../../LFSR3_9.v"
	vlog "../../RAMFIFO.v"
	vlog "../../RAMFIFO_ctrl_lfsr_dc.v"
	vlog "../../RNG.v"
	vlog "../../TGBernoulliFSM.v" +incdir+../../
	vlog "../../TrafficGen.v" +incdir+../../
	vlog "../../decoder_N.v"
	vlog "../../encoder_N.v"
	vlog "../../flit_out_inf.v" +incdir+../../
	vlog "../../mux_Nto1.v"
	vlog "../../mux_Nto1_decoded.v"
	vlog "../../rotate_prio.v"
	
	vlog -sv $(DPI_TB_SRC)
	
	# Build dpiheader.h
	vlog -sv -dpiheader $(DPI_DIR)/dpiheader.h $(DPI_TB_SRC)
	
	# Now go compile DPI DLL manually! :)




# Compile the DPI dynamic library
dpilib: $(SIM_OBJS) $(CAD_OBJS) $(DPI_C_SRC)
	$(CC) $(CPPFLAGS) -c -I$(MODEL_TECH)/../include -I$(ICSIM_DIR)/hdl/testbench/include -I$(SIM_DIR) -I$(CAD_DIR) -DC_TEST=0 $(DPI_C_SRC) -o dpi.o
	$(CC) -shared -L$(MODEL_TECH) $(SIM_OBJS) $(CAD_OBJS) dpi.o -o dpi.so

windpilib: $(OBJS) $(CAD_OBJS) $(DPI_C_SRC) $(DPI_TB_OBJ)
	$(CC) $(CPPFLAGS) -c -I$(WMODEL_TECH)/../include -I$(ICSIM_DIR)/hdl/testbench/include -I$(SIM_DIR) -I$(CAD_DIR) -DC_TEST=0 $(DPI_C_SRC) -o dpi.o
	$(CC) -shared -L$(WMODEL_TECH) FlitQueue_tb.obj $(OBJS) dpi.o -o dpi.dll -lmtipli


# Compile export_wrapper.so (Linux only)
ewrapper:
	$(CC) -shared -fPIC -o work/_dpi/exportwrapper.so work/_dpi/exportwrapper.o



%.o: $(SIM_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c -I$(SIM_DIR) $< -o $@

%.o: $(CAD_DIR)/%.cpp
	$(CC) $(CPPFLAGS) -c -I$(CAD_DIR) $< -o $@

%.obj: %.v
	vsim $< -dpiexportobj $@
    
clean:
	rm -rf *.o *.obj dpi.so dpi.dll

