----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.0
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2012 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from steeringGen_DUT_SteeringVecGen
-- VHDL created on Thu Oct  4 07:49:43 2012


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.hcc_package.all;
use work.math_package.all;
use work.fpc_library_package.all;
use work.dspba_library_package.all;
USE work.steeringGen_safe_path.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from /data/rkay/daily_build/13.0/38.3/p4/ip/aion/src/mip_common/hw_model.cpp:1242
entity steeringGen_DUT_SteeringVecGen is
    port (
        go_s : in std_logic_vector(0 downto 0);
        chan_s : in std_logic_vector(7 downto 0);
        en_s : in std_logic_vector(0 downto 0);
        dp_s : in std_logic_vector(31 downto 0);
        prf_s : in std_logic_vector(31 downto 0);
        azang_s : in std_logic_vector(31 downto 0);
        elang_s : in std_logic_vector(31 downto 0);
        qv_s : out std_logic_vector(0 downto 0);
        qc_s : out std_logic_vector(7 downto 0);
        done_s : out std_logic_vector(0 downto 0);
        q_re : out std_logic_vector(31 downto 0);
        q_im : out std_logic_vector(31 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of steeringGen_DUT_SteeringVecGen is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal Cos_reset : std_logic;
    signal Cos_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Cos_q_real : REAL;
    -- synopsys translate on
    signal Cos1_reset : std_logic;
    signal Cos1_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Cos1_q_real : REAL;
    -- synopsys translate on
    signal Cos2_reset : std_logic;
    signal Cos2_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Cos2_q_real : REAL;
    -- synopsys translate on
    signal Divide_reset : std_logic;
    signal Divide_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Divide_q_real : REAL;
    -- synopsys translate on
    signal Divide1_reset : std_logic;
    signal Divide1_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Divide1_q_real : REAL;
    -- synopsys translate on
    signal LoopDriver_AngleLoop_FLB_ls : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_la : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_init : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_step : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_limit : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_en : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_el : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_fl : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_ll : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_bs : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_v : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLB_c : std_logic_vector (7 downto 0);
    signal LoopDriver_AngleLoop_FLB_firstpass : std_logic;
    signal LoopDriver_AngleLoop_FLB_firstnextpass : std_logic;
    signal LoopDriver_AngleLoop_FLB_nextnextpass : std_logic;
    signal LoopDriver_AngleLoop_FLB_nextpass : std_logic;
    signal LoopDriver_AngleLoop_FLB_pass : std_logic;
    signal LoopDriver_AngleLoop_FLB_count : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_nextcount : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_firstloop : std_logic;
    signal LoopDriver_AngleLoop_FLB_limit2 : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_prevpass : std_logic;
    signal LoopDriver_AngleLoop_FLB_prevnextpass : std_logic;
    signal LoopDriver_AngleLoop_FLB_prevcount : std_logic_vector (8 downto 0);
    signal LoopDriver_AngleLoop_FLB_prevnextcount : std_logic_vector (8 downto 0);
    signal LoopDriver_Const1_q : std_logic_vector (7 downto 0);
    signal LoopDriver_Const2_q : std_logic_vector (7 downto 0);
    signal LoopDriver_Const3_q : std_logic_vector (7 downto 0);
    signal LoopDriver_Const4_q : std_logic_vector (7 downto 0);
    signal LoopDriver_Const5_q : std_logic_vector (7 downto 0);
    signal LoopDriver_Const6_q : std_logic_vector (7 downto 0);
    signal LoopDriver_DopplerLoop_FLB_ls : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_la : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_init : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_step : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_limit : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_en : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_el : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_fl : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_ll : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_bs : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_v : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLB_c : std_logic_vector (7 downto 0);
    signal LoopDriver_DopplerLoop_FLB_firstpass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_firstnextpass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_nextnextpass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_nextpass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_pass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_count : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_nextcount : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_firstloop : std_logic;
    signal LoopDriver_DopplerLoop_FLB_limit2 : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_prevpass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_prevnextpass : std_logic;
    signal LoopDriver_DopplerLoop_FLB_prevcount : std_logic_vector (9 downto 0);
    signal LoopDriver_DopplerLoop_FLB_prevnextcount : std_logic_vector (9 downto 0);
    signal Sin_reset : std_logic;
    signal Sin_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Sin_q_real : REAL;
    -- synopsys translate on
    signal Sin1_reset : std_logic;
    signal Sin1_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Sin1_q_real : REAL;
    -- synopsys translate on
    signal Sin2_reset : std_logic;
    signal Sin2_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Sin2_q_real : REAL;
    -- synopsys translate on
    signal KroneckerProduct_R_sub_f_reset : std_logic;
    signal KroneckerProduct_R_sub_f_add_sub : std_logic_vector (0 downto 0);
    signal KroneckerProduct_R_sub_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal KroneckerProduct_R_sub_f_a_real : REAL;
    signal KroneckerProduct_R_sub_f_b_real : REAL;
    signal KroneckerProduct_R_sub_f_q_real : REAL;
    -- synopsys translate on
    signal KroneckerProduct_R_sub_f_p : std_logic_vector (0 downto 0);
    signal KroneckerProduct_R_sub_f_n : std_logic_vector (0 downto 0);
    signal KroneckerProduct_I_add_f_reset : std_logic;
    signal KroneckerProduct_I_add_f_add_sub : std_logic_vector (0 downto 0);
    signal KroneckerProduct_I_add_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal KroneckerProduct_I_add_f_a_real : REAL;
    signal KroneckerProduct_I_add_f_b_real : REAL;
    signal KroneckerProduct_I_add_f_q_real : REAL;
    -- synopsys translate on
    signal KroneckerProduct_I_add_f_p : std_logic_vector (0 downto 0);
    signal KroneckerProduct_I_add_f_n : std_logic_vector (0 downto 0);
    signal KroneckerProduct_aR_x_bR_f_reset : std_logic;
    signal KroneckerProduct_aR_x_bR_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal KroneckerProduct_aR_x_bR_f_a_real : REAL;
    signal KroneckerProduct_aR_x_bR_f_b_real : REAL;
    signal KroneckerProduct_aR_x_bR_f_q_real : REAL;
    -- synopsys translate on
    signal KroneckerProduct_aI_x_bI_f_reset : std_logic;
    signal KroneckerProduct_aI_x_bI_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal KroneckerProduct_aI_x_bI_f_a_real : REAL;
    signal KroneckerProduct_aI_x_bI_f_b_real : REAL;
    signal KroneckerProduct_aI_x_bI_f_q_real : REAL;
    -- synopsys translate on
    signal KroneckerProduct_aR_x_bI_f_reset : std_logic;
    signal KroneckerProduct_aR_x_bI_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal KroneckerProduct_aR_x_bI_f_a_real : REAL;
    signal KroneckerProduct_aR_x_bI_f_b_real : REAL;
    signal KroneckerProduct_aR_x_bI_f_q_real : REAL;
    -- synopsys translate on
    signal KroneckerProduct_aI_x_bR_f_reset : std_logic;
    signal KroneckerProduct_aI_x_bR_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal KroneckerProduct_aI_x_bR_f_a_real : REAL;
    signal KroneckerProduct_aI_x_bR_f_b_real : REAL;
    signal KroneckerProduct_aI_x_bR_f_q_real : REAL;
    -- synopsys translate on
    signal Mult_f_reset : std_logic;
    signal Mult_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult_f_a_real : REAL;
    signal Mult_f_b_real : REAL;
    signal Mult_f_q_real : REAL;
    -- synopsys translate on
    signal Mult1_f_reset : std_logic;
    signal Mult1_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult1_f_a_real : REAL;
    signal Mult1_f_b_real : REAL;
    signal Mult1_f_q_real : REAL;
    -- synopsys translate on
    signal Mult2_f_reset : std_logic;
    signal Mult2_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult2_f_a_real : REAL;
    signal Mult2_f_b_real : REAL;
    signal Mult2_f_q_real : REAL;
    -- synopsys translate on
    signal Mult3_f_reset : std_logic;
    signal Mult3_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult3_f_a_real : REAL;
    signal Mult3_f_b_real : REAL;
    signal Mult3_f_q_real : REAL;
    -- synopsys translate on
    signal Mult4_f_reset : std_logic;
    signal Mult4_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult4_f_a_real : REAL;
    signal Mult4_f_b_real : REAL;
    signal Mult4_f_q_real : REAL;
    -- synopsys translate on
    signal Mult5_f_reset : std_logic;
    signal Mult5_f_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult5_f_a_real : REAL;
    signal Mult5_f_b_real : REAL;
    signal Mult5_f_q_real : REAL;
    -- synopsys translate on
    signal ChannelOut_3_cast_reset : std_logic;
    signal ChannelOut_3_cast_a : std_logic_vector (44 downto 0);
    signal ChannelOut_3_cast_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal ChannelOut_3_cast_q_real : REAL;
    -- synopsys translate on
    signal ChannelOut_4_cast_reset : std_logic;
    signal ChannelOut_4_cast_a : std_logic_vector (44 downto 0);
    signal ChannelOut_4_cast_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal ChannelOut_4_cast_q_real : REAL;
    -- synopsys translate on
    signal Cos_0_cast_reset : std_logic;
    signal Cos_0_cast_a : std_logic_vector (44 downto 0);
    signal Cos_0_cast_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Cos_0_cast_q_real : REAL;
    -- synopsys translate on
    signal Cos1_0_cast_reset : std_logic;
    signal Cos1_0_cast_a : std_logic_vector (44 downto 0);
    signal Cos1_0_cast_q : std_logic_vector (31 downto 0);
    -- synopsys translate off
    signal Cos1_0_cast_q_real : REAL;
    -- synopsys translate on
    signal Divide_0_cast_reset : std_logic;
    signal Divide_0_cast_a : std_logic_vector (44 downto 0);
    signal Divide_0_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Divide_0_cast_q_real : REAL;
    -- synopsys translate on
    signal Divide_1_cast_reset : std_logic;
    signal Divide_1_cast_a : std_logic_vector (31 downto 0);
    signal Divide_1_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Divide_1_cast_q_real : REAL;
    -- synopsys translate on
    signal Divide1_0_cast_reset : std_logic;
    signal Divide1_0_cast_a : std_logic_vector (44 downto 0);
    signal Divide1_0_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Divide1_0_cast_q_real : REAL;
    -- synopsys translate on
    signal Mult_f_1_cast_reset : std_logic;
    signal Mult_f_1_cast_a : std_logic_vector (31 downto 0);
    signal Mult_f_1_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult_f_1_cast_q_real : REAL;
    -- synopsys translate on
    signal Mult1_f_1_cast_reset : std_logic;
    signal Mult1_f_1_cast_a : std_logic_vector (44 downto 0);
    signal Mult1_f_1_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult1_f_1_cast_q_real : REAL;
    -- synopsys translate on
    signal Mult3_f_1_cast_reset : std_logic;
    signal Mult3_f_1_cast_a : std_logic_vector (44 downto 0);
    signal Mult3_f_1_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult3_f_1_cast_q_real : REAL;
    -- synopsys translate on
    signal Mult4_f_0_cast_reset : std_logic;
    signal Mult4_f_0_cast_a : std_logic_vector (44 downto 0);
    signal Mult4_f_0_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult4_f_0_cast_q_real : REAL;
    -- synopsys translate on
    signal Mult4_f_1_cast_reset : std_logic;
    signal Mult4_f_1_cast_a : std_logic_vector (44 downto 0);
    signal Mult4_f_1_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal Mult4_f_1_cast_q_real : REAL;
    -- synopsys translate on
    signal Divide1_1_cast_q_const_q : std_logic_vector (44 downto 0) := '0' & '0' & '0' & "0111101011100001010001111" & "0000000" & "0001111001";
    signal Mult1_f_0_cast_q_const_q : std_logic_vector (44 downto 0) := '0' & '0' & '0' & "0110010010000111111011011" & "0000000" & "0010000001";
    signal Mult2_f_0_cast_q_const_q : std_logic_vector (44 downto 0) := '0' & '0' & '0' & "0111101011100001010001111" & "0000000" & "0001111000";
    signal cj_Convert_f_Mult_f_0_cast_reset : std_logic;
    signal cj_Convert_f_Mult_f_0_cast_a : std_logic_vector (7 downto 0);
    signal cj_Convert_f_Mult_f_0_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal cj_Convert_f_Mult_f_0_cast_q_real : REAL;
    -- synopsys translate on
    signal cj_Convert1_f_Mult2_f_1_cast_reset : std_logic;
    signal cj_Convert1_f_Mult2_f_1_cast_a : std_logic_vector (7 downto 0);
    signal cj_Convert1_f_Mult2_f_1_cast_q : std_logic_vector (44 downto 0);
    -- synopsys translate off
    signal cj_Convert1_f_Mult2_f_1_cast_q_real : REAL;
    -- synopsys translate on
    signal ld_Cos_0_cast_q_to_Cos_a_q : std_logic_vector (31 downto 0);
    signal ld_Cos1_0_cast_q_to_Cos1_a_q : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_elang_s_to_Cos2_a_q : std_logic_vector (31 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_c_to_cj_Convert1_f_Mult2_f_1_cast_a_q : std_logic_vector (7 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_reset0 : std_logic;
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_iq : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ia : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ir : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_aa : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ab : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_q : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q : std_logic_vector(5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i : unsigned(5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_eq : std_logic;
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg_q : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_mem_top_q : std_logic_vector (6 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmpReg_q : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena_q : std_logic_vector (0 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_reset0 : std_logic;
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_iq : std_logic_vector (7 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ia : std_logic_vector (7 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ir : std_logic_vector (7 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_aa : std_logic_vector (5 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ab : std_logic_vector (5 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_q : std_logic_vector (7 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_reset0 : std_logic;
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_iq : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ia : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ir : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_aa : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ab : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_q : std_logic_vector (0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_reset0 : std_logic;
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_iq : std_logic_vector (44 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_ia : std_logic_vector (44 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_ir : std_logic_vector (44 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_aa : std_logic_vector (3 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_ab : std_logic_vector (3 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_mem_q : std_logic_vector (44 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_q : std_logic_vector(3 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i : unsigned(3 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_eq : std_logic;
    signal ld_Divide_q_to_Cos_0_cast_a_replace_wrreg_q : std_logic_vector (3 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_mem_top_q : std_logic_vector (4 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_cmpReg_q : std_logic_vector (0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_sticky_ena_q : std_logic_vector (0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_reset0 : std_logic;
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_iq : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ia : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ir : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_aa : std_logic_vector (4 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ab : std_logic_vector (4 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_q : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_q : std_logic_vector(4 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i : unsigned(4 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_eq : std_logic;
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_wrreg_q : std_logic_vector (4 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_mem_top_q : std_logic_vector (5 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmpReg_q : std_logic_vector (0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena_q : std_logic_vector (0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_reset0 : std_logic;
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_iq : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ia : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ir : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_aa : std_logic_vector (2 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ab : std_logic_vector (2 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_q : std_logic_vector (31 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_q : std_logic_vector(2 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i : unsigned(2 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_eq : std_logic;
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_wrreg_q : std_logic_vector (2 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_mem_top_q : std_logic_vector (3 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmpReg_q : std_logic_vector (0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena_q : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_reset0 : std_logic;
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_iq : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ia : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ir : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_aa : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ab : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_q : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q : std_logic_vector(5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_i : unsigned(5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg_q : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_mem_top_q : std_logic_vector (6 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmpReg_q : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena_q : std_logic_vector (0 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_reset0 : std_logic;
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_iq : std_logic_vector (7 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ia : std_logic_vector (7 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ir : std_logic_vector (7 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_aa : std_logic_vector (5 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ab : std_logic_vector (5 downto 0);
    signal ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_q : std_logic_vector (7 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_reset0 : std_logic;
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_iq : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ia : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ir : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_aa : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ab : std_logic_vector (5 downto 0);
    signal ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_q : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_a : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_a : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_b : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_q : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_enaAnd_a : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_enaAnd_b : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_enaAnd_q : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_a : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_b : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_q : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_a : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_b : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_q : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_a : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_b : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_q : std_logic_vector(0 downto 0);
    signal LoopDriver_AngleLoop_FLA_el : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLA_ll : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLA_bd : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLA_la : std_logic_vector (0 downto 0);
    signal LoopDriver_AngleLoop_FLA_ld : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLA_el : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLA_ll : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLA_bd : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLA_la : std_logic_vector (0 downto 0);
    signal LoopDriver_DopplerLoop_FLA_ld : std_logic_vector (0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_a : std_logic_vector(6 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_b : std_logic_vector(6 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_q : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_a : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_b : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_q : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_cmp_a : std_logic_vector(4 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_cmp_b : std_logic_vector(4 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_cmp_q : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_nor_a : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_nor_b : std_logic_vector(0 downto 0);
    signal ld_Divide_q_to_Cos_0_cast_a_nor_q : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_a : std_logic_vector(5 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_b : std_logic_vector(5 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_q : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_a : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_b : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_q : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_a : std_logic_vector(3 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_b : std_logic_vector(3 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_q : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_a : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_b : std_logic_vector(0 downto 0);
    signal ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_q : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_a : std_logic_vector(6 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_b : std_logic_vector(6 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_q : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_a : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_b : std_logic_vector(0 downto 0);
    signal ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_q : std_logic_vector(0 downto 0);
begin


	--VCC(CONSTANT,1)
    VCC_q <= "1";

	--ChannelIn(PORTIN,2)@0

	--ld_ChannelIn_elang_s_to_Cos2_a(DELAY,97)@0
    ld_ChannelIn_elang_s_to_Cos2_a : dspba_delay
    GENERIC MAP ( width => 32, depth => 1 )
    PORT MAP ( xin => elang_s, xout => ld_ChannelIn_elang_s_to_Cos2_a_q, clk => clk, aclr => areset );

	--Cos2(FLOATCOS,12)@1
    Cos2_reset <= areset;
    Cos2_inst : fp_cos_sIEEE_2_sIEEE
    GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Cos2_reset,
    		dataa	 => ld_ChannelIn_elang_s_to_Cos2_a_q,
    		result	 => Cos2_q
    	);
    -- synopsys translate off
    Cos2_q_real <= sIEEE_2_real(Cos2_q);
    -- synopsys translate on

	--Sin2(FLOATSIN,39)@0
    Sin2_reset <= areset;
    Sin2_inst : fp_sin_sIEEE_2_sIEEE
    GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Sin2_reset,
    		dataa	 => azang_s,
    		result	 => Sin2_q
    	);
    -- synopsys translate off
    Sin2_q_real <= sIEEE_2_real(Sin2_q);
    -- synopsys translate on

	--Mult5_f(FLOATMULT,65)@36
    Mult5_f_reset <= areset;
    Mult5_f_inst : fp_mult_sIEEE_2_sInternal
        GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult5_f_reset,
    		dataa	 => Sin2_q,
    		datab	 => Cos2_q,
    		result	 => Mult5_f_q
    	);
    -- synopsys translate off
    Mult5_f_a_real <= sIEEE_2_real(Sin2_q);
    Mult5_f_b_real <= sIEEE_2_real(Cos2_q);
    Mult5_f_q_real <= sInternal_2_real(Mult5_f_q);
    -- synopsys translate on

	--Mult4_f_1_cast(FLOATCAST,83)@40
    Mult4_f_1_cast_reset <= areset;
    Mult4_f_1_cast_a <= Mult5_f_q;
    Mult4_f_1_cast_inst : cast_sInternal_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult4_f_1_cast_reset,
    		dataa	 => Mult4_f_1_cast_a,
    		result	 => Mult4_f_1_cast_q
    	);
    -- synopsys translate off
    Mult4_f_1_cast_q_real <= sNorm_2_real(Mult4_f_1_cast_q);
    -- synopsys translate on

	--Divide1_1_cast_q_const(FLOATCONSTANT,84)

	--GND(CONSTANT,0)
    GND_q <= "0";

	--LoopDriver_Const6(CONSTANT,28)
    LoopDriver_Const6_q <= "00001011";

	--LoopDriver_Const4(CONSTANT,26)
    LoopDriver_Const4_q <= "00000010";

	--LoopDriver_Const3(CONSTANT,25)
    LoopDriver_Const3_q <= "11110101";

	--LoopDriver_AngleLoop_FLA(FLA,21)@0
    LoopDriver_AngleLoop_FLA_el <= LoopDriver_AngleLoop_FLB_el;
    LoopDriver_AngleLoop_FLA_ll <= LoopDriver_AngleLoop_FLB_ll;
    LoopDriver_AngleLoop_FLA_bd <= LoopDriver_AngleLoop_FLB_bs;
    LoopDriver_AngleLoop_FLA_la <= (not LoopDriver_AngleLoop_FLA_el) and LoopDriver_AngleLoop_FLA_bd;
    LoopDriver_AngleLoop_FLA_ld <= LoopDriver_AngleLoop_FLA_el or (LoopDriver_AngleLoop_FLA_bd and LoopDriver_AngleLoop_FLA_ll);

	--LoopDriver_Const5(CONSTANT,27)
    LoopDriver_Const5_q <= "00010000";

	--LoopDriver_Const2(CONSTANT,24)
    LoopDriver_Const2_q <= "00000001";

	--LoopDriver_Const1(CONSTANT,23)
    LoopDriver_Const1_q <= "00000000";

	--LoopDriver_DopplerLoop_FLA(FLA,29)@0
    LoopDriver_DopplerLoop_FLA_el <= LoopDriver_DopplerLoop_FLB_el;
    LoopDriver_DopplerLoop_FLA_ll <= LoopDriver_DopplerLoop_FLB_ll;
    LoopDriver_DopplerLoop_FLA_bd <= LoopDriver_AngleLoop_FLA_ld;
    LoopDriver_DopplerLoop_FLA_la <= (not LoopDriver_DopplerLoop_FLA_el) and LoopDriver_DopplerLoop_FLA_bd;
    LoopDriver_DopplerLoop_FLA_ld <= LoopDriver_DopplerLoop_FLA_el or (LoopDriver_DopplerLoop_FLA_bd and LoopDriver_DopplerLoop_FLA_ll);

	--LoopDriver_DopplerLoop_FLB(FLB,30)@0
    LoopDriver_DopplerLoop_FLB_ls <= go_s;
    LoopDriver_DopplerLoop_FLB_la <= LoopDriver_DopplerLoop_FLA_la;
    LoopDriver_DopplerLoop_FLB_en <= en_s;
    LoopDriver_DopplerLoop_FLB_init <= STD_LOGIC_VECTOR("00" & LoopDriver_Const1_q);
    LoopDriver_DopplerLoop_FLB_step <= STD_LOGIC_VECTOR("00" & LoopDriver_Const2_q);
    LoopDriver_DopplerLoop_FLB_limit <= STD_LOGIC_VECTOR("00" & LoopDriver_Const5_q);

    LoopDriver_DopplerLoop_FLB_count <=
        LoopDriver_DopplerLoop_FLB_init when LoopDriver_DopplerLoop_FLB_ls(0) = '1' else
        LoopDriver_DopplerLoop_FLB_prevnextcount when LoopDriver_DopplerLoop_FLB_la(0) = '1' else
        LoopDriver_DopplerLoop_FLB_prevcount;

    LoopDriver_DopplerLoop_FLB_nextcount <= STD_LOGIC_VECTOR(SIGNED(LoopDriver_DopplerLoop_FLB_count) + SIGNED(LoopDriver_DopplerLoop_FLB_step));
    LoopDriver_DopplerLoop_FLB_firstloop <=
        LoopDriver_DopplerLoop_FLB_firstpass when LoopDriver_DopplerLoop_FLB_ls(0) = '1' else
        '0' when LoopDriver_DopplerLoop_FLB_la(0) = '1' else
        LoopDriver_DopplerLoop_FLB_fl(0);

    LoopDriver_DopplerLoop_FLB_pass <=
        LoopDriver_DopplerLoop_FLB_firstpass when LoopDriver_DopplerLoop_FLB_ls(0) = '1' else
        LoopDriver_DopplerLoop_FLB_prevnextpass when LoopDriver_DopplerLoop_FLB_la(0) = '1' else
        LoopDriver_DopplerLoop_FLB_prevpass;

    LoopDriver_DopplerLoop_FLB_firstpass <= '1' when SIGNED(LoopDriver_DopplerLoop_FLB_init) < SIGNED(LoopDriver_DopplerLoop_FLB_limit) else '0';
    LoopDriver_DopplerLoop_FLB_nextpass <=
        LoopDriver_DopplerLoop_FLB_firstnextpass when LoopDriver_DopplerLoop_FLB_ls(0) = '1' else
        LoopDriver_DopplerLoop_FLB_nextnextpass when LoopDriver_DopplerLoop_FLB_la(0) = '1' else
        LoopDriver_DopplerLoop_FLB_prevnextpass;

    LoopDriver_DopplerLoop_FLB_nextnextpass <= '1' when SIGNED(LoopDriver_DopplerLoop_FLB_prevnextcount) < SIGNED(LoopDriver_DopplerLoop_FLB_limit2) else '0';
    LoopDriver_DopplerLoop_FLB_firstnextpass <= '1' when SIGNED(LoopDriver_DopplerLoop_FLB_init) < SIGNED(LoopDriver_DopplerLoop_FLB_limit2) else '0';
    LoopDriver_DopplerLoop_FLB_limit2 <= STD_LOGIC_VECTOR(SIGNED(LoopDriver_DopplerLoop_FLB_limit) - SIGNED(LoopDriver_DopplerLoop_FLB_step));

    LoopDriver_DopplerLoop_FLB: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            LoopDriver_DopplerLoop_FLB_prevcount <= (others => '0');
            LoopDriver_DopplerLoop_FLB_prevnextcount <= (others => '0');
            LoopDriver_DopplerLoop_FLB_prevpass <= '0';
            LoopDriver_DopplerLoop_FLB_prevnextpass <= '0';
            LoopDriver_DopplerLoop_FLB_el <= (others => '0');
            LoopDriver_DopplerLoop_FLB_fl <= (others => '0');
            LoopDriver_DopplerLoop_FLB_ll <= (others => '0');
            LoopDriver_DopplerLoop_FLB_bs <= (others => '0');
            LoopDriver_DopplerLoop_FLB_v <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (LoopDriver_DopplerLoop_FLB_en = "1") THEN
                LoopDriver_DopplerLoop_FLB_prevcount <= LoopDriver_DopplerLoop_FLB_count;
                LoopDriver_DopplerLoop_FLB_prevnextcount <= LoopDriver_DopplerLoop_FLB_nextcount;
                LoopDriver_DopplerLoop_FLB_prevpass <= LoopDriver_DopplerLoop_FLB_pass;
                LoopDriver_DopplerLoop_FLB_prevnextpass <= LoopDriver_DopplerLoop_FLB_nextpass;
                LoopDriver_DopplerLoop_FLB_el(0) <= LoopDriver_DopplerLoop_FLB_ls(0) and (not LoopDriver_DopplerLoop_FLB_firstpass);
                LoopDriver_DopplerLoop_FLB_fl(0) <= LoopDriver_DopplerLoop_FLB_firstloop;
                LoopDriver_DopplerLoop_FLB_ll(0) <= LoopDriver_DopplerLoop_FLB_pass and (not LoopDriver_DopplerLoop_FLB_nextpass);
                LoopDriver_DopplerLoop_FLB_bs(0) <= (LoopDriver_DopplerLoop_FLB_ls(0) or LoopDriver_DopplerLoop_FLB_la(0)) and LoopDriver_DopplerLoop_FLB_pass;
            END IF;
            LoopDriver_DopplerLoop_FLB_v(0) <= LoopDriver_DopplerLoop_FLB_en(0) and LoopDriver_DopplerLoop_FLB_pass;
        END IF;
    END PROCESS;

    LoopDriver_DopplerLoop_FLB_c <= LoopDriver_DopplerLoop_FLB_prevcount(7 downto 0);

	--LoopDriver_AngleLoop_FLB(FLB,22)@0
    LoopDriver_AngleLoop_FLB_ls <= LoopDriver_DopplerLoop_FLB_bs;
    LoopDriver_AngleLoop_FLB_la <= LoopDriver_AngleLoop_FLA_la;
    LoopDriver_AngleLoop_FLB_en <= en_s;
    LoopDriver_AngleLoop_FLB_init <= STD_LOGIC_VECTOR((8 downto 8 => LoopDriver_Const3_q(7)) & LoopDriver_Const3_q);
    LoopDriver_AngleLoop_FLB_step <= STD_LOGIC_VECTOR((8 downto 8 => LoopDriver_Const4_q(7)) & LoopDriver_Const4_q);
    LoopDriver_AngleLoop_FLB_limit <= STD_LOGIC_VECTOR((8 downto 8 => LoopDriver_Const6_q(7)) & LoopDriver_Const6_q);

    LoopDriver_AngleLoop_FLB_count <=
        LoopDriver_AngleLoop_FLB_init when LoopDriver_AngleLoop_FLB_ls(0) = '1' else
        LoopDriver_AngleLoop_FLB_prevnextcount when LoopDriver_AngleLoop_FLB_la(0) = '1' else
        LoopDriver_AngleLoop_FLB_prevcount;

    LoopDriver_AngleLoop_FLB_nextcount <= STD_LOGIC_VECTOR(SIGNED(LoopDriver_AngleLoop_FLB_count) + SIGNED(LoopDriver_AngleLoop_FLB_step));
    LoopDriver_AngleLoop_FLB_firstloop <=
        LoopDriver_AngleLoop_FLB_firstpass when LoopDriver_AngleLoop_FLB_ls(0) = '1' else
        '0' when LoopDriver_AngleLoop_FLB_la(0) = '1' else
        LoopDriver_AngleLoop_FLB_fl(0);

    LoopDriver_AngleLoop_FLB_pass <=
        LoopDriver_AngleLoop_FLB_firstpass when LoopDriver_AngleLoop_FLB_ls(0) = '1' else
        LoopDriver_AngleLoop_FLB_prevnextpass when LoopDriver_AngleLoop_FLB_la(0) = '1' else
        LoopDriver_AngleLoop_FLB_prevpass;

    LoopDriver_AngleLoop_FLB_firstpass <= '1' when SIGNED(LoopDriver_AngleLoop_FLB_init) <= SIGNED(LoopDriver_AngleLoop_FLB_limit) else '0';
    LoopDriver_AngleLoop_FLB_nextpass <=
        LoopDriver_AngleLoop_FLB_firstnextpass when LoopDriver_AngleLoop_FLB_ls(0) = '1' else
        LoopDriver_AngleLoop_FLB_nextnextpass when LoopDriver_AngleLoop_FLB_la(0) = '1' else
        LoopDriver_AngleLoop_FLB_prevnextpass;

    LoopDriver_AngleLoop_FLB_nextnextpass <= '1' when SIGNED(LoopDriver_AngleLoop_FLB_prevnextcount) <= SIGNED(LoopDriver_AngleLoop_FLB_limit2) else '0';
    LoopDriver_AngleLoop_FLB_firstnextpass <= '1' when SIGNED(LoopDriver_AngleLoop_FLB_init) <= SIGNED(LoopDriver_AngleLoop_FLB_limit2) else '0';
    LoopDriver_AngleLoop_FLB_limit2 <= STD_LOGIC_VECTOR(SIGNED(LoopDriver_AngleLoop_FLB_limit) - SIGNED(LoopDriver_AngleLoop_FLB_step));

    LoopDriver_AngleLoop_FLB: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            LoopDriver_AngleLoop_FLB_prevcount <= (others => '0');
            LoopDriver_AngleLoop_FLB_prevnextcount <= (others => '0');
            LoopDriver_AngleLoop_FLB_prevpass <= '0';
            LoopDriver_AngleLoop_FLB_prevnextpass <= '0';
            LoopDriver_AngleLoop_FLB_el <= (others => '0');
            LoopDriver_AngleLoop_FLB_fl <= (others => '0');
            LoopDriver_AngleLoop_FLB_ll <= (others => '0');
            LoopDriver_AngleLoop_FLB_bs <= (others => '0');
            LoopDriver_AngleLoop_FLB_v <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (LoopDriver_AngleLoop_FLB_en = "1") THEN
                LoopDriver_AngleLoop_FLB_prevcount <= LoopDriver_AngleLoop_FLB_count;
                LoopDriver_AngleLoop_FLB_prevnextcount <= LoopDriver_AngleLoop_FLB_nextcount;
                LoopDriver_AngleLoop_FLB_prevpass <= LoopDriver_AngleLoop_FLB_pass;
                LoopDriver_AngleLoop_FLB_prevnextpass <= LoopDriver_AngleLoop_FLB_nextpass;
                LoopDriver_AngleLoop_FLB_el(0) <= LoopDriver_AngleLoop_FLB_ls(0) and (not LoopDriver_AngleLoop_FLB_firstpass);
                LoopDriver_AngleLoop_FLB_fl(0) <= LoopDriver_AngleLoop_FLB_firstloop;
                LoopDriver_AngleLoop_FLB_ll(0) <= LoopDriver_AngleLoop_FLB_pass and (not LoopDriver_AngleLoop_FLB_nextpass);
                LoopDriver_AngleLoop_FLB_bs(0) <= (LoopDriver_AngleLoop_FLB_ls(0) or LoopDriver_AngleLoop_FLB_la(0)) and LoopDriver_AngleLoop_FLB_pass;
            END IF;
            LoopDriver_AngleLoop_FLB_v(0) <= LoopDriver_AngleLoop_FLB_en(0) and LoopDriver_AngleLoop_FLB_pass;
        END IF;
    END PROCESS;

    LoopDriver_AngleLoop_FLB_c <= LoopDriver_AngleLoop_FLB_prevcount(7 downto 0);

	--ld_LoopDriver_AngleLoop_FLB_c_to_cj_Convert1_f_Mult2_f_1_cast_a(DELAY,150)@0
    ld_LoopDriver_AngleLoop_FLB_c_to_cj_Convert1_f_Mult2_f_1_cast_a : dspba_delay
    GENERIC MAP ( width => 8, depth => 3 )
    PORT MAP ( xin => LoopDriver_AngleLoop_FLB_c, xout => ld_LoopDriver_AngleLoop_FLB_c_to_cj_Convert1_f_Mult2_f_1_cast_a_q, clk => clk, aclr => areset );

	--cj_Convert1_f_Mult2_f_1_cast(FLOATCAST,89)@3
    cj_Convert1_f_Mult2_f_1_cast_reset <= areset;
    cj_Convert1_f_Mult2_f_1_cast_a <= ld_LoopDriver_AngleLoop_FLB_c_to_cj_Convert1_f_Mult2_f_1_cast_a_q;
    cj_Convert1_f_Mult2_f_1_cast_inst : cast_fixed_2_sNorm
      GENERIC MAP (unsigned=>1, iWidth=>7, fWidth=>1)
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => cj_Convert1_f_Mult2_f_1_cast_reset,
    		dataa	 => cj_Convert1_f_Mult2_f_1_cast_a,
    		result	 => cj_Convert1_f_Mult2_f_1_cast_q
    	);
    -- synopsys translate off
    cj_Convert1_f_Mult2_f_1_cast_q_real <= sNorm_2_real(cj_Convert1_f_Mult2_f_1_cast_q);
    -- synopsys translate on

	--Mult2_f_0_cast_q_const(FLOATCONSTANT,86)

	--Mult2_f(FLOATMULT,62)@13
    Mult2_f_reset <= areset;
    Mult2_f_inst : fp_mult_sNorm_2_sInternal
        GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult2_f_reset,
    		dataa	 => Mult2_f_0_cast_q_const_q,
    		datab	 => cj_Convert1_f_Mult2_f_1_cast_q,
    		result	 => Mult2_f_q
    	);
    -- synopsys translate off
    Mult2_f_a_real <= sNorm_2_real(Mult2_f_0_cast_q_const_q);
    Mult2_f_b_real <= sNorm_2_real(cj_Convert1_f_Mult2_f_1_cast_q);
    Mult2_f_q_real <= sInternal_2_real(Mult2_f_q);
    -- synopsys translate on

	--Divide1_0_cast(FLOATCAST,72)@16
    Divide1_0_cast_reset <= areset;
    Divide1_0_cast_a <= Mult2_f_q;
    Divide1_0_cast_inst : cast_sInternal_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Divide1_0_cast_reset,
    		dataa	 => Divide1_0_cast_a,
    		result	 => Divide1_0_cast_q
    	);
    -- synopsys translate off
    Divide1_0_cast_q_real <= sNorm_2_real(Divide1_0_cast_q);
    -- synopsys translate on

	--Divide1(FLOATDIV,14)@20
    Divide1_reset <= areset;
    Divide1_inst : fp_div_sNorm_2_sInternal PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Divide1_reset,
    		dataa	 => Divide1_0_cast_q,
    		datab	 => Divide1_1_cast_q_const_q,
    		result	 => Divide1_q
    	);
    -- synopsys translate off
    Divide1_q_real <= sInternal_2_real(Divide1_q);
    -- synopsys translate on

	--Mult3_f_1_cast(FLOATCAST,81)@33
    Mult3_f_1_cast_reset <= areset;
    Mult3_f_1_cast_a <= Divide1_q;
    Mult3_f_1_cast_inst : cast_sInternal_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult3_f_1_cast_reset,
    		dataa	 => Mult3_f_1_cast_a,
    		result	 => Mult3_f_1_cast_q
    	);
    -- synopsys translate off
    Mult3_f_1_cast_q_real <= sNorm_2_real(Mult3_f_1_cast_q);
    -- synopsys translate on

	--Mult1_f_0_cast_q_const(FLOATCONSTANT,85)

	--Mult3_f(FLOATMULT,63)@37
    Mult3_f_reset <= areset;
    Mult3_f_inst : fp_mult_sNorm_2_sInternal
        GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult3_f_reset,
    		dataa	 => Mult1_f_0_cast_q_const_q,
    		datab	 => Mult3_f_1_cast_q,
    		result	 => Mult3_f_q
    	);
    -- synopsys translate off
    Mult3_f_a_real <= sNorm_2_real(Mult1_f_0_cast_q_const_q);
    Mult3_f_b_real <= sNorm_2_real(Mult3_f_1_cast_q);
    Mult3_f_q_real <= sInternal_2_real(Mult3_f_q);
    -- synopsys translate on

	--Mult4_f_0_cast(FLOATCAST,82)@40
    Mult4_f_0_cast_reset <= areset;
    Mult4_f_0_cast_a <= Mult3_f_q;
    Mult4_f_0_cast_inst : cast_sInternal_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult4_f_0_cast_reset,
    		dataa	 => Mult4_f_0_cast_a,
    		result	 => Mult4_f_0_cast_q
    	);
    -- synopsys translate off
    Mult4_f_0_cast_q_real <= sNorm_2_real(Mult4_f_0_cast_q);
    -- synopsys translate on

	--Mult4_f(FLOATMULT,64)@44
    Mult4_f_reset <= areset;
    Mult4_f_inst : fp_mult_sNorm_2_sInternal
        GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult4_f_reset,
    		dataa	 => Mult4_f_0_cast_q,
    		datab	 => Mult4_f_1_cast_q,
    		result	 => Mult4_f_q
    	);
    -- synopsys translate off
    Mult4_f_a_real <= sNorm_2_real(Mult4_f_0_cast_q);
    Mult4_f_b_real <= sNorm_2_real(Mult4_f_1_cast_q);
    Mult4_f_q_real <= sInternal_2_real(Mult4_f_q);
    -- synopsys translate on

	--Cos1_0_cast(FLOATCAST,69)@47
    Cos1_0_cast_reset <= areset;
    Cos1_0_cast_a <= Mult4_f_q;
    Cos1_0_cast_inst : cast_sInternal_2_sIEEE
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Cos1_0_cast_reset,
    		dataa	 => Cos1_0_cast_a,
    		result	 => Cos1_0_cast_q
    	);
    -- synopsys translate off
    Cos1_0_cast_q_real <= sIEEE_2_real(Cos1_0_cast_q);
    -- synopsys translate on

	--ld_Cos1_0_cast_q_to_Cos1_a(DELAY,96)@54
    ld_Cos1_0_cast_q_to_Cos1_a : dspba_delay
    GENERIC MAP ( width => 32, depth => 1 )
    PORT MAP ( xin => Cos1_0_cast_q, xout => ld_Cos1_0_cast_q_to_Cos1_a_q, clk => clk, aclr => areset );

	--Cos1(FLOATCOS,11)@55
    Cos1_reset <= areset;
    Cos1_inst : fp_cos_sIEEE_2_sIEEE
    GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Cos1_reset,
    		dataa	 => ld_Cos1_0_cast_q_to_Cos1_a_q,
    		result	 => Cos1_q
    	);
    -- synopsys translate off
    Cos1_q_real <= sIEEE_2_real(Cos1_q);
    -- synopsys translate on

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable(LOGICAL,158)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_a <= VCC_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q <= not ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_a;

	--ld_Divide_q_to_Cos_0_cast_a_nor(LOGICAL,191)
    ld_Divide_q_to_Cos_0_cast_a_nor_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q;
    ld_Divide_q_to_Cos_0_cast_a_nor_b <= ld_Divide_q_to_Cos_0_cast_a_sticky_ena_q;
    ld_Divide_q_to_Cos_0_cast_a_nor_q <= not (ld_Divide_q_to_Cos_0_cast_a_nor_a or ld_Divide_q_to_Cos_0_cast_a_nor_b);

	--ld_Divide_q_to_Cos_0_cast_a_mem_top(CONSTANT,187)
    ld_Divide_q_to_Cos_0_cast_a_mem_top_q <= "01010";

	--ld_Divide_q_to_Cos_0_cast_a_cmp(LOGICAL,188)
    ld_Divide_q_to_Cos_0_cast_a_cmp_a <= ld_Divide_q_to_Cos_0_cast_a_mem_top_q;
    ld_Divide_q_to_Cos_0_cast_a_cmp_b <= STD_LOGIC_VECTOR("0" & ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_q);
    ld_Divide_q_to_Cos_0_cast_a_cmp_q <= "1" when ld_Divide_q_to_Cos_0_cast_a_cmp_a = ld_Divide_q_to_Cos_0_cast_a_cmp_b else "0";

	--ld_Divide_q_to_Cos_0_cast_a_cmpReg(REG,189)
    ld_Divide_q_to_Cos_0_cast_a_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_Divide_q_to_Cos_0_cast_a_cmpReg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_Divide_q_to_Cos_0_cast_a_cmpReg_q <= ld_Divide_q_to_Cos_0_cast_a_cmp_q;
        END IF;
    END PROCESS;


	--ld_Divide_q_to_Cos_0_cast_a_sticky_ena(REG,192)
    ld_Divide_q_to_Cos_0_cast_a_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_Divide_q_to_Cos_0_cast_a_sticky_ena_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_Divide_q_to_Cos_0_cast_a_nor_q = "1") THEN
                ld_Divide_q_to_Cos_0_cast_a_sticky_ena_q <= ld_Divide_q_to_Cos_0_cast_a_cmpReg_q;
            END IF;
        END IF;
    END PROCESS;


	--ld_Divide_q_to_Cos_0_cast_a_enaAnd(LOGICAL,193)
    ld_Divide_q_to_Cos_0_cast_a_enaAnd_a <= ld_Divide_q_to_Cos_0_cast_a_sticky_ena_q;
    ld_Divide_q_to_Cos_0_cast_a_enaAnd_b <= VCC_q;
    ld_Divide_q_to_Cos_0_cast_a_enaAnd_q <= ld_Divide_q_to_Cos_0_cast_a_enaAnd_a and ld_Divide_q_to_Cos_0_cast_a_enaAnd_b;

	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor(LOGICAL,201)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_b <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_q <= not (ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_a or ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_b);

	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_mem_top(CONSTANT,197)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_mem_top_q <= "010010";

	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp(LOGICAL,198)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_a <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_mem_top_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_b <= STD_LOGIC_VECTOR("0" & ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_q);
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_q <= "1" when ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_a = ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_b else "0";

	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmpReg(REG,199)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmpReg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmpReg_q <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmp_q;
        END IF;
    END PROCESS;


	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena(REG,202)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_ChannelIn_prf_s_to_Divide_1_cast_a_nor_q = "1") THEN
                ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena_q <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_cmpReg_q;
            END IF;
        END IF;
    END PROCESS;


	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd(LOGICAL,203)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_a <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_sticky_ena_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_b <= VCC_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_q <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_a and ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_b;

	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_wrreg(REG,196)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_wrreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_wrreg_q <= "00000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_wrreg_q <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_q;
        END IF;
    END PROCESS;


	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt(COUNTER,195)
    -- every=1, low=0, high=18, step=1, init=1
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i <= TO_UNSIGNED(1,5);
            ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
                IF ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i = 17 THEN
                  ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_eq <= '1';
                ELSE
                  ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_eq <= '0';
                END IF;
                IF (ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_eq = '1') THEN
                    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i - 18;
                ELSE
                    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i + 1;
                END IF;
        END IF;
    END PROCESS;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_q <= STD_LOGIC_VECTOR(RESIZE(ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_i,5));


	--ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem(DUALMEM,194)
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_reset0 <= areset;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ia <= prf_s;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_aa <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_wrreg_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ab <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_rdcnt_q;
    ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 19,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 19,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_ChannelIn_prf_s_to_Divide_1_cast_a_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_iq,
        address_a => ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_aa,
        data_a => ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_ia
    );
        ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_q <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_iq(31 downto 0);

	--Divide_1_cast(FLOATCAST,71)@20
    Divide_1_cast_reset <= areset;
    Divide_1_cast_a <= ld_ChannelIn_prf_s_to_Divide_1_cast_a_replace_mem_q;
    Divide_1_cast_inst : cast_sIEEE_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Divide_1_cast_reset,
    		dataa	 => Divide_1_cast_a,
    		result	 => Divide_1_cast_q
    	);
    -- synopsys translate off
    Divide_1_cast_q_real <= sNorm_2_real(Divide_1_cast_q);
    -- synopsys translate on

	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor(LOGICAL,211)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_b <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_q <= not (ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_a or ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_b);

	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_mem_top(CONSTANT,207)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_mem_top_q <= "0100";

	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp(LOGICAL,208)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_a <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_mem_top_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_b <= STD_LOGIC_VECTOR("0" & ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_q);
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_q <= "1" when ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_a = ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_b else "0";

	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmpReg(REG,209)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmpReg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmpReg_q <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmp_q;
        END IF;
    END PROCESS;


	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena(REG,212)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_nor_q = "1") THEN
                ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena_q <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_cmpReg_q;
            END IF;
        END IF;
    END PROCESS;


	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd(LOGICAL,213)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_a <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_sticky_ena_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_b <= VCC_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_q <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_a and ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_b;

	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_wrreg(REG,206)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_wrreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_wrreg_q <= "000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_wrreg_q <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_q;
        END IF;
    END PROCESS;


	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt(COUNTER,205)
    -- every=1, low=0, high=4, step=1, init=1
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i <= TO_UNSIGNED(1,3);
            ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
                IF ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i = 3 THEN
                  ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_eq <= '1';
                ELSE
                  ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_eq <= '0';
                END IF;
                IF (ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_eq = '1') THEN
                    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i - 4;
                ELSE
                    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i + 1;
                END IF;
        END IF;
    END PROCESS;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_q <= STD_LOGIC_VECTOR(RESIZE(ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_i,3));


	--ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem(DUALMEM,204)
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_reset0 <= areset;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ia <= dp_s;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_aa <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_wrreg_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ab <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_rdcnt_q;
    ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 5,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_iq,
        address_a => ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_aa,
        data_a => ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_ia
    );
        ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_q <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_iq(31 downto 0);

	--Mult_f_1_cast(FLOATCAST,75)@6
    Mult_f_1_cast_reset <= areset;
    Mult_f_1_cast_a <= ld_ChannelIn_dp_s_to_Mult_f_1_cast_a_replace_mem_q;
    Mult_f_1_cast_inst : cast_sIEEE_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult_f_1_cast_reset,
    		dataa	 => Mult_f_1_cast_a,
    		result	 => Mult_f_1_cast_q
    	);
    -- synopsys translate off
    Mult_f_1_cast_q_real <= sNorm_2_real(Mult_f_1_cast_q);
    -- synopsys translate on

	--cj_Convert_f_Mult_f_0_cast(FLOATCAST,88)@0
    cj_Convert_f_Mult_f_0_cast_reset <= areset;
    cj_Convert_f_Mult_f_0_cast_a <= LoopDriver_DopplerLoop_FLB_c;
    cj_Convert_f_Mult_f_0_cast_inst : cast_fixed_2_sNorm
      GENERIC MAP (unsigned=>0, iWidth=>8, fWidth=>0)
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => cj_Convert_f_Mult_f_0_cast_reset,
    		dataa	 => cj_Convert_f_Mult_f_0_cast_a,
    		result	 => cj_Convert_f_Mult_f_0_cast_q
    	);
    -- synopsys translate off
    cj_Convert_f_Mult_f_0_cast_q_real <= sNorm_2_real(cj_Convert_f_Mult_f_0_cast_q);
    -- synopsys translate on

	--Mult_f(FLOATMULT,60)@8
    Mult_f_reset <= areset;
    Mult_f_inst : fp_mult_sNorm_2_sInternal
        GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult_f_reset,
    		dataa	 => cj_Convert_f_Mult_f_0_cast_q,
    		datab	 => Mult_f_1_cast_q,
    		result	 => Mult_f_q
    	);
    -- synopsys translate off
    Mult_f_a_real <= sNorm_2_real(cj_Convert_f_Mult_f_0_cast_q);
    Mult_f_b_real <= sNorm_2_real(Mult_f_1_cast_q);
    Mult_f_q_real <= sInternal_2_real(Mult_f_q);
    -- synopsys translate on

	--Mult1_f_1_cast(FLOATCAST,77)@11
    Mult1_f_1_cast_reset <= areset;
    Mult1_f_1_cast_a <= Mult_f_q;
    Mult1_f_1_cast_inst : cast_sInternal_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult1_f_1_cast_reset,
    		dataa	 => Mult1_f_1_cast_a,
    		result	 => Mult1_f_1_cast_q
    	);
    -- synopsys translate off
    Mult1_f_1_cast_q_real <= sNorm_2_real(Mult1_f_1_cast_q);
    -- synopsys translate on

	--Mult1_f(FLOATMULT,61)@15
    Mult1_f_reset <= areset;
    Mult1_f_inst : fp_mult_sNorm_2_sInternal
        GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Mult1_f_reset,
    		dataa	 => Mult1_f_0_cast_q_const_q,
    		datab	 => Mult1_f_1_cast_q,
    		result	 => Mult1_f_q
    	);
    -- synopsys translate off
    Mult1_f_a_real <= sNorm_2_real(Mult1_f_0_cast_q_const_q);
    Mult1_f_b_real <= sNorm_2_real(Mult1_f_1_cast_q);
    Mult1_f_q_real <= sInternal_2_real(Mult1_f_q);
    -- synopsys translate on

	--Divide_0_cast(FLOATCAST,70)@18
    Divide_0_cast_reset <= areset;
    Divide_0_cast_a <= Mult1_f_q;
    Divide_0_cast_inst : cast_sInternal_2_sNorm
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Divide_0_cast_reset,
    		dataa	 => Divide_0_cast_a,
    		result	 => Divide_0_cast_q
    	);
    -- synopsys translate off
    Divide_0_cast_q_real <= sNorm_2_real(Divide_0_cast_q);
    -- synopsys translate on

	--Divide(FLOATDIV,13)@22
    Divide_reset <= areset;
    Divide_inst : fp_div_sNorm_2_sInternal PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Divide_reset,
    		dataa	 => Divide_0_cast_q,
    		datab	 => Divide_1_cast_q,
    		result	 => Divide_q
    	);
    -- synopsys translate off
    Divide_q_real <= sInternal_2_real(Divide_q);
    -- synopsys translate on

	--ld_Divide_q_to_Cos_0_cast_a_replace_wrreg(REG,186)
    ld_Divide_q_to_Cos_0_cast_a_replace_wrreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_Divide_q_to_Cos_0_cast_a_replace_wrreg_q <= "0000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_Divide_q_to_Cos_0_cast_a_replace_wrreg_q <= ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_q;
        END IF;
    END PROCESS;


	--ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt(COUNTER,185)
    -- every=1, low=0, high=10, step=1, init=1
    ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i <= TO_UNSIGNED(1,4);
            ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
                IF ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i = 9 THEN
                  ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_eq <= '1';
                ELSE
                  ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_eq <= '0';
                END IF;
                IF (ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_eq = '1') THEN
                    ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i <= ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i - 10;
                ELSE
                    ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i <= ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i + 1;
                END IF;
        END IF;
    END PROCESS;
    ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_q <= STD_LOGIC_VECTOR(RESIZE(ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_i,4));


	--ld_Divide_q_to_Cos_0_cast_a_replace_mem(DUALMEM,184)
    ld_Divide_q_to_Cos_0_cast_a_replace_mem_reset0 <= areset;
    ld_Divide_q_to_Cos_0_cast_a_replace_mem_ia <= Divide_q;
    ld_Divide_q_to_Cos_0_cast_a_replace_mem_aa <= ld_Divide_q_to_Cos_0_cast_a_replace_wrreg_q;
    ld_Divide_q_to_Cos_0_cast_a_replace_mem_ab <= ld_Divide_q_to_Cos_0_cast_a_replace_rdcnt_q;
    ld_Divide_q_to_Cos_0_cast_a_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 45,
        widthad_a => 4,
        numwords_a => 11,
        width_b => 45,
        widthad_b => 4,
        numwords_b => 11,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_Divide_q_to_Cos_0_cast_a_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_Divide_q_to_Cos_0_cast_a_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_Divide_q_to_Cos_0_cast_a_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_Divide_q_to_Cos_0_cast_a_replace_mem_iq,
        address_a => ld_Divide_q_to_Cos_0_cast_a_replace_mem_aa,
        data_a => ld_Divide_q_to_Cos_0_cast_a_replace_mem_ia
    );
        ld_Divide_q_to_Cos_0_cast_a_replace_mem_q <= ld_Divide_q_to_Cos_0_cast_a_replace_mem_iq(44 downto 0);

	--Cos_0_cast(FLOATCAST,68)@47
    Cos_0_cast_reset <= areset;
    Cos_0_cast_a <= ld_Divide_q_to_Cos_0_cast_a_replace_mem_q;
    Cos_0_cast_inst : cast_sInternal_2_sIEEE
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Cos_0_cast_reset,
    		dataa	 => Cos_0_cast_a,
    		result	 => Cos_0_cast_q
    	);
    -- synopsys translate off
    Cos_0_cast_q_real <= sIEEE_2_real(Cos_0_cast_q);
    -- synopsys translate on

	--Sin(FLOATSIN,37)@54
    Sin_reset <= areset;
    Sin_inst : fp_sin_sIEEE_2_sIEEE
    GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Sin_reset,
    		dataa	 => Cos_0_cast_q,
    		result	 => Sin_q
    	);
    -- synopsys translate off
    Sin_q_real <= sIEEE_2_real(Sin_q);
    -- synopsys translate on

	--KroneckerProduct_aI_x_bR_f(FLOATMULT,59)@90
    KroneckerProduct_aI_x_bR_f_reset <= areset;
    KroneckerProduct_aI_x_bR_f_inst : fp_mult_sIEEE_2_sInternalSM
        GENERIC MAP ( m_family => "Stratix IV", m_dotopt => 2)
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => KroneckerProduct_aI_x_bR_f_reset,
    		dataa	 => Sin_q,
    		datab	 => Cos1_q,
    		result	 => KroneckerProduct_aI_x_bR_f_q
    	);
    -- synopsys translate off
    KroneckerProduct_aI_x_bR_f_a_real <= sIEEE_2_real(Sin_q);
    KroneckerProduct_aI_x_bR_f_b_real <= sIEEE_2_real(Cos1_q);
    KroneckerProduct_aI_x_bR_f_q_real <= sInternalSM_2_real(KroneckerProduct_aI_x_bR_f_q);
    -- synopsys translate on

	--Sin1(FLOATSIN,38)@54
    Sin1_reset <= areset;
    Sin1_inst : fp_sin_sIEEE_2_sIEEE
    GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Sin1_reset,
    		dataa	 => Cos1_0_cast_q,
    		result	 => Sin1_q
    	);
    -- synopsys translate off
    Sin1_q_real <= sIEEE_2_real(Sin1_q);
    -- synopsys translate on

	--ld_Cos_0_cast_q_to_Cos_a(DELAY,95)@54
    ld_Cos_0_cast_q_to_Cos_a : dspba_delay
    GENERIC MAP ( width => 32, depth => 1 )
    PORT MAP ( xin => Cos_0_cast_q, xout => ld_Cos_0_cast_q_to_Cos_a_q, clk => clk, aclr => areset );

	--Cos(FLOATCOS,10)@55
    Cos_reset <= areset;
    Cos_inst : fp_cos_sIEEE_2_sIEEE
    GENERIC MAP ( m_family => "Stratix IV")
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => Cos_reset,
    		dataa	 => ld_Cos_0_cast_q_to_Cos_a_q,
    		result	 => Cos_q
    	);
    -- synopsys translate off
    Cos_q_real <= sIEEE_2_real(Cos_q);
    -- synopsys translate on

	--KroneckerProduct_aR_x_bI_f(FLOATMULT,58)@90
    KroneckerProduct_aR_x_bI_f_reset <= areset;
    KroneckerProduct_aR_x_bI_f_inst : fp_mult_sIEEE_2_sInternalSM
        GENERIC MAP ( m_family => "Stratix IV", m_dotopt => 2)
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => KroneckerProduct_aR_x_bI_f_reset,
    		dataa	 => Cos_q,
    		datab	 => Sin1_q,
    		result	 => KroneckerProduct_aR_x_bI_f_q
    	);
    -- synopsys translate off
    KroneckerProduct_aR_x_bI_f_a_real <= sIEEE_2_real(Cos_q);
    KroneckerProduct_aR_x_bI_f_b_real <= sIEEE_2_real(Sin1_q);
    KroneckerProduct_aR_x_bI_f_q_real <= sInternalSM_2_real(KroneckerProduct_aR_x_bI_f_q);
    -- synopsys translate on

	--KroneckerProduct_I_add_f(FLOATADDSUB,55)@94
    KroneckerProduct_I_add_f_reset <= areset;
    KroneckerProduct_I_add_f_add_sub	 <= not VCC_q;
    KroneckerProduct_I_add_f_inst : fp_addsub_sInternalSM_2_sInternal
    GENERIC MAP (
       addsub_resetval => '0'
    ) PORT MAP (
    	add_sub	 => KroneckerProduct_I_add_f_add_sub,
    	clk_en	 => '1',
    	clock	 => clk,
    	reset    => KroneckerProduct_I_add_f_reset,
    	dataa	 => KroneckerProduct_aR_x_bI_f_q,
    	datab	 => KroneckerProduct_aI_x_bR_f_q,
    	result	 => KroneckerProduct_I_add_f_q
   	);
    KroneckerProduct_I_add_f_p <= not KroneckerProduct_I_add_f_q(41 downto 41);
    KroneckerProduct_I_add_f_n <= KroneckerProduct_I_add_f_q(41 downto 41);
    -- synopsys translate off
    KroneckerProduct_I_add_f_a_real <= sInternalSM_2_real(KroneckerProduct_aR_x_bI_f_q);
    KroneckerProduct_I_add_f_b_real <= sInternalSM_2_real(KroneckerProduct_aI_x_bR_f_q);
    KroneckerProduct_I_add_f_q_real <= sInternal_2_real(KroneckerProduct_I_add_f_q);
    -- synopsys translate on

	--ChannelOut_4_cast(FLOATCAST,67)@99
    ChannelOut_4_cast_reset <= areset;
    ChannelOut_4_cast_a <= KroneckerProduct_I_add_f_q;
    ChannelOut_4_cast_inst : cast_sInternal_2_sIEEE
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => ChannelOut_4_cast_reset,
    		dataa	 => ChannelOut_4_cast_a,
    		result	 => ChannelOut_4_cast_q
    	);
    -- synopsys translate off
    ChannelOut_4_cast_q_real <= sIEEE_2_real(ChannelOut_4_cast_q);
    -- synopsys translate on

	--KroneckerProduct_aI_x_bI_f(FLOATMULT,57)@90
    KroneckerProduct_aI_x_bI_f_reset <= areset;
    KroneckerProduct_aI_x_bI_f_inst : fp_mult_sIEEE_2_sInternalSM
        GENERIC MAP ( m_family => "Stratix IV", m_dotopt => 2)
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => KroneckerProduct_aI_x_bI_f_reset,
    		dataa	 => Sin_q,
    		datab	 => Sin1_q,
    		result	 => KroneckerProduct_aI_x_bI_f_q
    	);
    -- synopsys translate off
    KroneckerProduct_aI_x_bI_f_a_real <= sIEEE_2_real(Sin_q);
    KroneckerProduct_aI_x_bI_f_b_real <= sIEEE_2_real(Sin1_q);
    KroneckerProduct_aI_x_bI_f_q_real <= sInternalSM_2_real(KroneckerProduct_aI_x_bI_f_q);
    -- synopsys translate on

	--KroneckerProduct_aR_x_bR_f(FLOATMULT,56)@90
    KroneckerProduct_aR_x_bR_f_reset <= areset;
    KroneckerProduct_aR_x_bR_f_inst : fp_mult_sIEEE_2_sInternalSM
        GENERIC MAP ( m_family => "Stratix IV", m_dotopt => 2)
        PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => KroneckerProduct_aR_x_bR_f_reset,
    		dataa	 => Cos_q,
    		datab	 => Cos1_q,
    		result	 => KroneckerProduct_aR_x_bR_f_q
    	);
    -- synopsys translate off
    KroneckerProduct_aR_x_bR_f_a_real <= sIEEE_2_real(Cos_q);
    KroneckerProduct_aR_x_bR_f_b_real <= sIEEE_2_real(Cos1_q);
    KroneckerProduct_aR_x_bR_f_q_real <= sInternalSM_2_real(KroneckerProduct_aR_x_bR_f_q);
    -- synopsys translate on

	--KroneckerProduct_R_sub_f(FLOATADDSUB,54)@94
    KroneckerProduct_R_sub_f_reset <= areset;
    KroneckerProduct_R_sub_f_add_sub	 <= not GND_q;
    KroneckerProduct_R_sub_f_inst : fp_addsub_sInternalSM_2_sInternal
    GENERIC MAP (
       addsub_resetval => '1'
    ) PORT MAP (
    	add_sub	 => KroneckerProduct_R_sub_f_add_sub,
    	clk_en	 => '1',
    	clock	 => clk,
    	reset    => KroneckerProduct_R_sub_f_reset,
    	dataa	 => KroneckerProduct_aR_x_bR_f_q,
    	datab	 => KroneckerProduct_aI_x_bI_f_q,
    	result	 => KroneckerProduct_R_sub_f_q
   	);
    KroneckerProduct_R_sub_f_p <= not KroneckerProduct_R_sub_f_q(41 downto 41);
    KroneckerProduct_R_sub_f_n <= KroneckerProduct_R_sub_f_q(41 downto 41);
    -- synopsys translate off
    KroneckerProduct_R_sub_f_a_real <= sInternalSM_2_real(KroneckerProduct_aR_x_bR_f_q);
    KroneckerProduct_R_sub_f_b_real <= sInternalSM_2_real(KroneckerProduct_aI_x_bI_f_q);
    KroneckerProduct_R_sub_f_q_real <= sInternal_2_real(KroneckerProduct_R_sub_f_q);
    -- synopsys translate on

	--ChannelOut_3_cast(FLOATCAST,66)@99
    ChannelOut_3_cast_reset <= areset;
    ChannelOut_3_cast_a <= KroneckerProduct_R_sub_f_q;
    ChannelOut_3_cast_inst : cast_sInternal_2_sIEEE
      PORT MAP (
    		clk_en	 => '1',
    		clock	 => clk,
    		reset    => ChannelOut_3_cast_reset,
    		dataa	 => ChannelOut_3_cast_a,
    		result	 => ChannelOut_3_cast_q
    	);
    -- synopsys translate off
    ChannelOut_3_cast_q_real <= sIEEE_2_real(ChannelOut_3_cast_q);
    -- synopsys translate on

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor(LOGICAL,159)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_b <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_q <= not (ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_a or ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_b);

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_mem_top(CONSTANT,155)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_mem_top_q <= "0100111";

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp(LOGICAL,156)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_mem_top_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_b <= STD_LOGIC_VECTOR("0" & ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q);
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_q <= "1" when ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_a = ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_b else "0";

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmpReg(REG,157)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmpReg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmpReg_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmp_q;
        END IF;
    END PROCESS;


	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena(REG,160)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_nor_q = "1") THEN
                ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_cmpReg_q;
            END IF;
        END IF;
    END PROCESS;


	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd(LOGICAL,161)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_sticky_ena_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_b <= VCC_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_a and ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_b;

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor(LOGICAL,221)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_notEnable_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_b <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_q <= not (ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_a or ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_b);

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_mem_top(CONSTANT,217)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_mem_top_q <= "0111111";

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp(LOGICAL,218)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_mem_top_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_b <= STD_LOGIC_VECTOR("0" & ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q);
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_q <= "1" when ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_a = ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_b else "0";

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmpReg(REG,219)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmpReg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmpReg_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmp_q;
        END IF;
    END PROCESS;


	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena(REG,222)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_nor_q = "1") THEN
                ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_cmpReg_q;
            END IF;
        END IF;
    END PROCESS;


	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd(LOGICAL,223)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_a <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_sticky_ena_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_b <= VCC_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_a and ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_b;

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg(REG,216)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg_q <= "000000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q;
        END IF;
    END PROCESS;


	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt(COUNTER,215)
    -- every=1, low=0, high=63, step=1, init=1
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_i <= TO_UNSIGNED(1,6);
        ELSIF (clk'EVENT AND clk = '1') THEN
                ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_i <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_i + 1;
        END IF;
    END PROCESS;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q <= STD_LOGIC_VECTOR(RESIZE(ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_i,6));


	--ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem(DUALMEM,234)
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_reset0 <= areset;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ia <= LoopDriver_DopplerLoop_FLA_ld;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_aa <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg_q;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ab <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 1,
        widthad_b => 6,
        numwords_b => 64,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_iq,
        address_a => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_aa,
        data_a => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_ia
    );
        ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_q <= ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_iq(0 downto 0);

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg(REG,154)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg_q <= "000000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q;
        END IF;
    END PROCESS;


	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt(COUNTER,153)
    -- every=1, low=0, high=39, step=1, init=1
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i <= TO_UNSIGNED(1,6);
            ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
                IF ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i = 38 THEN
                  ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_eq <= '1';
                ELSE
                  ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_eq <= '0';
                END IF;
                IF (ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_eq = '1') THEN
                    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i - 39;
                ELSE
                    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i + 1;
                END IF;
        END IF;
    END PROCESS;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q <= STD_LOGIC_VECTOR(RESIZE(ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_i,6));


	--ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem(DUALMEM,174)
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_reset0 <= areset;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ia <= ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_split_0_replace_mem_q;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_aa <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg_q;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ab <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q;
    ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 6,
        numwords_a => 40,
        width_b => 1,
        widthad_b => 6,
        numwords_b => 40,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_iq,
        address_a => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_aa,
        data_a => ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_ia
    );
        ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_q <= ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_iq(0 downto 0);

	--ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem(DUALMEM,224)
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_reset0 <= areset;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ia <= chan_s;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_aa <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg_q;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ab <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 8,
        widthad_b => 6,
        numwords_b => 64,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_iq,
        address_a => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_aa,
        data_a => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_ia
    );
        ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_q <= ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_iq(7 downto 0);

	--ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem(DUALMEM,163)
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_reset0 <= areset;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ia <= ld_ChannelIn_chan_s_to_ChannelOut_qc_s_split_0_replace_mem_q;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_aa <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg_q;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ab <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q;
    ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 6,
        numwords_a => 40,
        width_b => 8,
        widthad_b => 6,
        numwords_b => 40,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_iq,
        address_a => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_aa,
        data_a => ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_ia
    );
        ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_q <= ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_iq(7 downto 0);

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem(DUALMEM,214)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_reset0 <= areset;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ia <= LoopDriver_AngleLoop_FLB_v;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_aa <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_wrreg_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ab <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_rdcnt_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 1,
        widthad_b => 6,
        numwords_b => 64,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_iq,
        address_a => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_aa,
        data_a => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_ia
    );
        ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_iq(0 downto 0);

	--ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem(DUALMEM,152)
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_reset0 <= areset;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ia <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_split_0_replace_mem_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_aa <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_wrreg_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ab <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_rdcnt_q;
    ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 6,
        numwords_a => 40,
        width_b => 1,
        widthad_b => 6,
        numwords_b => 40,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_enaAnd_q(0),
        clocken0 => VCC_q(0),
        wren_a => VCC_q(0),
        clock0 => clk,
        aclr1 => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_reset0,
        clock1 => clk,
        address_b => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_iq,
        address_a => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_aa,
        data_a => ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_ia
    );
        ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_q <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_iq(0 downto 0);

	--ChannelOut(PORTOUT,3)@106
    qv_s <= ld_LoopDriver_AngleLoop_FLB_v_to_ChannelOut_qv_s_replace_mem_q;
    qc_s <= ld_ChannelIn_chan_s_to_ChannelOut_qc_s_replace_mem_q;
    done_s <= ld_LoopDriver_DopplerLoop_FLA_ld_to_ChannelOut_done_s_replace_mem_q;
    q_re <= ChannelOut_3_cast_q;
    q_im <= ChannelOut_4_cast_q;


end normal;
