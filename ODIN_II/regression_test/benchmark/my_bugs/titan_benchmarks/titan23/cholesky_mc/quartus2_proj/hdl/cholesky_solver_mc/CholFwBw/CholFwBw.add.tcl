# This is the Quartus file list for 'cholesky_solver_mc_CholFwBw'

set_global_assignment -name VHDL_FILE ./rtl/cholesky_solver_mc/CholFwBw/cholesky_solver_mc_safe_path.vhd
set_global_assignment -name VHDL_FILE ./rtl/cholesky_solver_mc/CholFwBw/cholesky_solver_mc_CholFwBw.vhd
source ./rtl/cholesky_solver_mc/CholFwBw/BwSub/BwSub.add.tcl
source ./rtl/cholesky_solver_mc/CholFwBw/Cholesky_Fw/Cholesky_Fw.add.tcl
source ./rtl/cholesky_solver_mc/CholFwBw/ValidCapture_L/ValidCapture_L.add.tcl
source ./rtl/cholesky_solver_mc/CholFwBw/ValidCapture_y/ValidCapture_y.add.tcl
