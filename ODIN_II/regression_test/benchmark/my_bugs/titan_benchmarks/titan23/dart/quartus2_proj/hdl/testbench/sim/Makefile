# Makefile for Modelsim DPI testbench


# Check compiling platform
PLATFORM = CYGWIN

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

DPI_INPUT		= tmp.bin

default: design

# Compile verilog sources
design:
	vlib work
	vlog "../../LFSR3_9.v" +incdir+../../
	vlog "../../RAMFIFO_ctrl_lfsr.v" +incdir+../../
	vlog "../../mux_Nto1.v" +incdir+../../
	vlog "../../DualBRAM.v" +incdir+../../
	vlog "../../decoder_N.v" +incdir+../../
	vlog "../../RAMFIFO_slow.v" +incdir+../../
	vlog "../../RAMFIFO_single_slow.v" +incdir+../../
	vlog "../../FQCtrl.v" +incdir+../../
	vlog "../../flit_out_inf.v" +incdir+../../
	vlog "../../encoder_N.v" +incdir+../../
	vlog "../../DistroRAM.v" +incdir+../../
	vlog "../../arbiter_static.v" +incdir+../../
	vlog "../../VCAlloc.v" +incdir+../../
	vlog "../../TGBernoulliFSM.v" +incdir+../../
	vlog "../../RouterPortLookup.v" +incdir+../../
	vlog "../../RouterInput.v" +incdir+../../
	vlog "../../rotate_prio.v" +incdir+../../
	vlog "../../RNG.v" +incdir+../../
	vlog "../../mux_Nto1_decoded.v" +incdir+../../
	vlog "../../max2.v" +incdir+../../
	vlog "../../FlitQueue_NC.v" +incdir+../../
	vlog "../../CreditCounter.v" +incdir+../../
	vlog "../../TrafficGen.v" +incdir+../../
	vlog "../../Router.v" +incdir+../../
	vlog "../../FlitQueue.v" +incdir+../../
	vlog "../../select_ready.v" +incdir+../../
	vlog "../../RoutingTable_single.v" +incdir+../../
	vlog "../../Node.v" +incdir+../../
	vlog "../../check_dest.v" +incdir+../../
	vlog "../../Partition.v" +incdir+../../
	vlog "../../ICSourcePart.v" +incdir+../../
	vlog "../../ICDestPart.v" +incdir+../../
	vlog "../../sim9_8x8.v" +incdir+../../
	vlog "../../InputVCState.v" +incdir+../../
	vlog "../../rt_update_flit.v" +incdir+../../

	vlog -sv sim_tb.v
	
	# Build dpiheader.h
	vlog -sv -dpiheader $(DPI_DIR)/dpiheader.h sim_tb.v
	
	# Now go compile DPI DLL manually! :)




# Compile the DPI dynamic library
dpilib: $(DPI_DIR)/sim_test.cpp
	$(CC) $(CPPFLAGS) -c -I$(MODEL_TECH)/../include -I$(ICSIM_DIR)/hdl/testbench/include -I$(CPP_DIR) -DC_TEST=0 -DCONFIG_FILE='"$(DPI_INPUT)"' $(DPI_DIR)/sim_test.cpp -o dpi.o
	$(CC) -shared -L$(MODEL_TECH) dpi.o -o dpi.so

windpilib: $(DPI_DIR)/sim_test.cpp sim_tb.obj
	$(CC) $(CPPFLAGS) -c -I$(WMODEL_TECH)/../include -I$(ICSIM_DIR)/hdl/testbench/include -I$(CPP_DIR) -DC_TEST=0 -DCONFIG_FILE='"$(DPI_INPUT)"' $(DPI_DIR)/sim_test.cpp -o dpi.o
	$(CC) -shared -L$(WMODEL_TECH) sim_tb.obj dpi.o -o dpi.dll -lmtipli


# Compile export_wrapper.so (Linux only)
ewrapper:
	$(CC) -shared -fPIC -o work/_dpi/exportwrapper.so work/_dpi/exportwrapper.o


sim_tb.obj: sim_tb.v
	vsim -L xilinxcorelib_ver sim_tb -dpiexportobj sim_tb.obj
    
clean:
	rm -rf *.o *.obj dpi.so dpi.dll

