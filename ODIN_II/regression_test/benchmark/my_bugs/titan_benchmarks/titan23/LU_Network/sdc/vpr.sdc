#VPR compatible SDC file for benchmark 'LU_Network'

#*******************************
# set_time_format 
#*******************************
# Unsuported by VPR

#*******************************
# create_clock 
#*******************************
create_clock -period 1.0 -name virtual_io_clock
create_clock -period 1.0 { OSC_50_BANK4 }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[2\] }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|__ALT_INV__clk\[6\] }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[0\] }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[6\] }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[5\] }
create_clock -period 1.0 { clk_a }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[4\] }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[3\] }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[4\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[5\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[6\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[7\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[0\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[1\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[2\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[3\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout }
create_clock -period 1.0 { OSC_50_BANK2 }
create_clock -period 1.0 { OSC_50_BANK6 }
create_clock -period 1.0 { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[1\] }

#*******************************
# set_clock_uncertainty 
#*******************************
# Unsupported by VPR.  VPR does not model clock uncertainty.

#*******************************
# set_input_delay 
#*******************************
set_input_delay -clock virtual_io_clock -max 0.0 [get_ports *]

#*******************************
# set_output_delay 
#*******************************
set_output_delay -clock virtual_io_clock -max 0.0 [get_ports *]

#*******************************
# set_clock_groups 
#*******************************
set_clock_groups -exclusive -group { OSC_50_BANK4 } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[2\] } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|__ALT_INV__clk\[6\] } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[0\] } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[6\] } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[5\] } -group { clk_a } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[4\] } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[3\] } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[4\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[5\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[6\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[7\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[0\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[1\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[2\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_p0:p0\|ddr_p0_memphy:umemphy\|ddr_p0_new_io_pads:uio_pads\|ddr_p0_altdqdqs:dq_ddio\[3\].ubidir_dq_dqs\|altdq_dqs2_ddio_3reg_stratixiv:altdq_dqs2_inst\|dqsbusout } -group { OSC_50_BANK2 } -group { OSC_50_BANK6 } -group { ddr:ddr_inst\|ddr_0002:ddr_inst\|ddr_pll0:pll0\|altpll:upll_memphy\|altpll_blj3:auto_generated\|clk\[1\] }
