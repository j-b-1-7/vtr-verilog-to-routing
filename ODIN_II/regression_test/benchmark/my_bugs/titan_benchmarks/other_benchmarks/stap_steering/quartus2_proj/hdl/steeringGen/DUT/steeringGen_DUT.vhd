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

-- VHDL created from steeringGen_DUT
-- VHDL created on Thu Oct  4 07:49:43 2012


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;
USE work.steeringGen_safe_path.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from /data/rkay/daily_build/13.0/38.3/p4/ip/aion/src/mip_common/hw_model.cpp:1242
entity steeringGen_DUT is
    port (
        azang_s : in std_logic_vector(31 downto 0);
        chan_s : in std_logic_vector(7 downto 0);
        dp_s : in std_logic_vector(31 downto 0);
        elang_s : in std_logic_vector(31 downto 0);
        en_s : in std_logic_vector(0 downto 0);
        go_s : in std_logic_vector(0 downto 0);
        prf_s : in std_logic_vector(31 downto 0);
        qc_s : out std_logic_vector(7 downto 0);
        qdone_s : out std_logic_vector(0 downto 0);
        qm_re : out std_logic_vector(31 downto 0);
        qm_im : out std_logic_vector(31 downto 0);
        qv_s : out std_logic_vector(0 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of steeringGen_DUT is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

-- steeringGen_DUT_SteeringVecGen component declaration
-- inputs
--  N/C
--  N/C
--  N/C
--  N/C
--  go_s <= go_s, width=1, real=0
--  chan_s <= chan_s, width=8, real=0
--  en_s <= en_s, width=1, real=0
--  dp_s <= dp_s, width=32, real=1
--  prf_s <= prf_s, width=32, real=1
--  azang_s <= azang_s, width=32, real=1
--  elang_s <= elang_s, width=32, real=1
-- outputs
--  N/C
--  N/C
--  qv_s => steeringGen_DUT_SteeringVecGen_qv_s, width=1, real=0
--  qc_s => steeringGen_DUT_SteeringVecGen_qc_s, width=8, real=0
--  done_s => steeringGen_DUT_SteeringVecGen_done_s, width=1, real=0
--  q_re => steeringGen_DUT_SteeringVecGen_q_re, width=32, real=1
--  q_im => steeringGen_DUT_SteeringVecGen_q_im, width=32, real=1
    component steeringGen_DUT_SteeringVecGen is
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
    end component;


    signal steeringGen_DUT_SteeringVecGen_go_s : std_logic_vector (0 downto 0);
    signal steeringGen_DUT_SteeringVecGen_chan_s : std_logic_vector (7 downto 0);
    signal steeringGen_DUT_SteeringVecGen_en_s : std_logic_vector (0 downto 0);
    signal steeringGen_DUT_SteeringVecGen_dp_s : std_logic_vector (31 downto 0);
    signal steeringGen_DUT_SteeringVecGen_prf_s : std_logic_vector (31 downto 0);
    signal steeringGen_DUT_SteeringVecGen_azang_s : std_logic_vector (31 downto 0);
    signal steeringGen_DUT_SteeringVecGen_elang_s : std_logic_vector (31 downto 0);
    signal steeringGen_DUT_SteeringVecGen_qv_s : std_logic_vector (0 downto 0);
    signal steeringGen_DUT_SteeringVecGen_qc_s : std_logic_vector (7 downto 0);
    signal steeringGen_DUT_SteeringVecGen_done_s : std_logic_vector (0 downto 0);
    signal steeringGen_DUT_SteeringVecGen_q_re : std_logic_vector (31 downto 0);
    signal steeringGen_DUT_SteeringVecGen_q_im : std_logic_vector (31 downto 0);
begin


	--GND(CONSTANT,0)

	--VCC(CONSTANT,1)

	--elang_auto(GPIN,6)

	--azang_auto(GPIN,3)

	--prf_auto(GPIN,9)

	--dp_auto(GPIN,5)

	--en_auto(GPIN,7)

	--chan_auto(GPIN,4)

	--go_auto(GPIN,8)

	--steeringGen_DUT_SteeringVecGen(BLACKBOX,2)
        steeringGen_DUT_SteeringVecGen_go_s <= go_s;
        steeringGen_DUT_SteeringVecGen_chan_s <= chan_s;
        steeringGen_DUT_SteeringVecGen_en_s <= en_s;
        steeringGen_DUT_SteeringVecGen_dp_s <= dp_s;
        steeringGen_DUT_SteeringVecGen_prf_s <= prf_s;
        steeringGen_DUT_SteeringVecGen_azang_s <= azang_s;
        steeringGen_DUT_SteeringVecGen_elang_s <= elang_s;
    thesteeringGen_DUT_SteeringVecGen : steeringGen_DUT_SteeringVecGen port map (
        go_s => steeringGen_DUT_SteeringVecGen_go_s,
        chan_s => steeringGen_DUT_SteeringVecGen_chan_s,
        en_s => steeringGen_DUT_SteeringVecGen_en_s,
        dp_s => steeringGen_DUT_SteeringVecGen_dp_s,
        prf_s => steeringGen_DUT_SteeringVecGen_prf_s,
        azang_s => steeringGen_DUT_SteeringVecGen_azang_s,
        elang_s => steeringGen_DUT_SteeringVecGen_elang_s,
        qv_s => steeringGen_DUT_SteeringVecGen_qv_s,
        qc_s => steeringGen_DUT_SteeringVecGen_qc_s,
        done_s => steeringGen_DUT_SteeringVecGen_done_s,
        q_re => steeringGen_DUT_SteeringVecGen_q_re,
        q_im => steeringGen_DUT_SteeringVecGen_q_im,
        clk => clk,
        areset => areset
        );

	--qc_auto(GPOUT,10)
    qc_s <= steeringGen_DUT_SteeringVecGen_qc_s;


	--qdone_auto(GPOUT,11)
    qdone_s <= steeringGen_DUT_SteeringVecGen_done_s;


	--qm_auto_re(GPOUT,12)
    qm_re <= steeringGen_DUT_SteeringVecGen_q_re;


	--qm_auto_im(GPOUT,13)
    qm_im <= steeringGen_DUT_SteeringVecGen_q_im;


	--qv_auto(GPOUT,14)
    qv_s <= steeringGen_DUT_SteeringVecGen_qv_s;


end normal;
