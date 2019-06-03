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

-- VHDL created from DirectRFTest_and_DPD_SV_DirectRFDesign_DSPBA_DUC2_FIR5Scale2
-- VHDL created on Thu Oct  4 07:10:10 2012


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;
USE work.DirectRFTest_and_DPD_SV_safe_path.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from /data/rkay/daily_build/13.0/38.3/p4/ip/aion/src/mip_common/hw_model.cpp:1242
entity DirectRFTest_and_DPD_SV_DirectRFDesign_DSPBA_DUC2_FIR5Scale2 is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(34 downto 0);
        xIn_1 : in std_logic_vector(34 downto 0);
        xIn_2 : in std_logic_vector(34 downto 0);
        xIn_3 : in std_logic_vector(34 downto 0);
        gain_i : in std_logic_vector(0 downto 0);
        qOut_v : out std_logic_vector(0 downto 0);
        qOut_c : out std_logic_vector(7 downto 0);
        qOut_0 : out std_logic_vector(15 downto 0);
        qOut_1 : out std_logic_vector(15 downto 0);
        qOut_2 : out std_logic_vector(15 downto 0);
        qOut_3 : out std_logic_vector(15 downto 0);
        eOut_0 : out std_logic_vector(0 downto 0);
        eOut_1 : out std_logic_vector(0 downto 0);
        eOut_2 : out std_logic_vector(0 downto 0);
        eOut_3 : out std_logic_vector(0 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of DirectRFTest_and_DPD_SV_DirectRFDesign_DSPBA_DUC2_FIR5Scale2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal gainReg_q : std_logic_vector (0 downto 0);
    signal u0_rnd_in : std_logic_vector (35 downto 0);
    signal u0_rnd_q : std_logic_vector (20 downto 0);
    signal u0_lowconst_q : std_logic_vector (15 downto 0);
    signal u0_highconst_q : std_logic_vector (15 downto 0);
    signal u0_low_a : std_logic_vector(23 downto 0);
    signal u0_low_b : std_logic_vector(23 downto 0);
    signal u0_low_o : std_logic_vector (23 downto 0);
    signal u0_low_cin : std_logic_vector (0 downto 0);
    signal u0_low_c : std_logic_vector (0 downto 0);
    signal u0_high_a : std_logic_vector(23 downto 0);
    signal u0_high_b : std_logic_vector(23 downto 0);
    signal u0_high_o : std_logic_vector (23 downto 0);
    signal u0_high_cin : std_logic_vector (0 downto 0);
    signal u0_high_n : std_logic_vector (0 downto 0);
    signal u0_mux_q : std_logic_vector (15 downto 0);
    signal u0_mux_v : std_logic_vector (0 downto 0);
    signal u1_rnd_in : std_logic_vector (35 downto 0);
    signal u1_rnd_q : std_logic_vector (20 downto 0);
    signal u1_low_a : std_logic_vector(23 downto 0);
    signal u1_low_b : std_logic_vector(23 downto 0);
    signal u1_low_o : std_logic_vector (23 downto 0);
    signal u1_low_cin : std_logic_vector (0 downto 0);
    signal u1_low_c : std_logic_vector (0 downto 0);
    signal u1_high_a : std_logic_vector(23 downto 0);
    signal u1_high_b : std_logic_vector(23 downto 0);
    signal u1_high_o : std_logic_vector (23 downto 0);
    signal u1_high_cin : std_logic_vector (0 downto 0);
    signal u1_high_n : std_logic_vector (0 downto 0);
    signal u1_mux_q : std_logic_vector (15 downto 0);
    signal u1_mux_v : std_logic_vector (0 downto 0);
    signal u2_rnd_in : std_logic_vector (35 downto 0);
    signal u2_rnd_q : std_logic_vector (20 downto 0);
    signal u2_low_a : std_logic_vector(23 downto 0);
    signal u2_low_b : std_logic_vector(23 downto 0);
    signal u2_low_o : std_logic_vector (23 downto 0);
    signal u2_low_cin : std_logic_vector (0 downto 0);
    signal u2_low_c : std_logic_vector (0 downto 0);
    signal u2_high_a : std_logic_vector(23 downto 0);
    signal u2_high_b : std_logic_vector(23 downto 0);
    signal u2_high_o : std_logic_vector (23 downto 0);
    signal u2_high_cin : std_logic_vector (0 downto 0);
    signal u2_high_n : std_logic_vector (0 downto 0);
    signal u2_mux_q : std_logic_vector (15 downto 0);
    signal u2_mux_v : std_logic_vector (0 downto 0);
    signal u3_rnd_in : std_logic_vector (35 downto 0);
    signal u3_rnd_q : std_logic_vector (20 downto 0);
    signal u3_low_a : std_logic_vector(23 downto 0);
    signal u3_low_b : std_logic_vector(23 downto 0);
    signal u3_low_o : std_logic_vector (23 downto 0);
    signal u3_low_cin : std_logic_vector (0 downto 0);
    signal u3_low_c : std_logic_vector (0 downto 0);
    signal u3_high_a : std_logic_vector(23 downto 0);
    signal u3_high_b : std_logic_vector(23 downto 0);
    signal u3_high_o : std_logic_vector (23 downto 0);
    signal u3_high_cin : std_logic_vector (0 downto 0);
    signal u3_high_n : std_logic_vector (0 downto 0);
    signal u3_mux_q : std_logic_vector (15 downto 0);
    signal u3_mux_v : std_logic_vector (0 downto 0);
    signal ld_xIn_v_to_u0_low_e_q : std_logic_vector (0 downto 0);
    signal ld_xIn_v_to_u0_mux_e_q : std_logic_vector (0 downto 0);
    signal ld_u0_rnd_q_to_u0_mux_cc_q : std_logic_vector (20 downto 0);
    signal ld_xIn_v_to_u0_exp_and_b_q : std_logic_vector (0 downto 0);
    signal ld_u1_rnd_q_to_u1_mux_cc_q : std_logic_vector (20 downto 0);
    signal ld_u2_rnd_q_to_u2_mux_cc_q : std_logic_vector (20 downto 0);
    signal ld_u3_rnd_q_to_u3_mux_cc_q : std_logic_vector (20 downto 0);
    signal ld_xIn_c_to_qOut_c_q : std_logic_vector (7 downto 0);
    signal u0_shiftsel_q_int : std_logic_vector (35 downto 0);
    signal u0_shiftsel_q : std_logic_vector (35 downto 0);
    signal u1_shiftsel_q_int : std_logic_vector (35 downto 0);
    signal u1_shiftsel_q : std_logic_vector (35 downto 0);
    signal u2_shiftsel_q_int : std_logic_vector (35 downto 0);
    signal u2_shiftsel_q : std_logic_vector (35 downto 0);
    signal u3_shiftsel_q_int : std_logic_vector (35 downto 0);
    signal u3_shiftsel_q : std_logic_vector (35 downto 0);
    signal u0_exp_and_a : std_logic_vector(0 downto 0);
    signal u0_exp_and_b : std_logic_vector(0 downto 0);
    signal u0_exp_and_q : std_logic_vector(0 downto 0);
    signal u1_exp_and_a : std_logic_vector(0 downto 0);
    signal u1_exp_and_b : std_logic_vector(0 downto 0);
    signal u1_exp_and_q : std_logic_vector(0 downto 0);
    signal u2_exp_and_a : std_logic_vector(0 downto 0);
    signal u2_exp_and_b : std_logic_vector(0 downto 0);
    signal u2_exp_and_q : std_logic_vector(0 downto 0);
    signal u3_exp_and_a : std_logic_vector(0 downto 0);
    signal u3_exp_and_b : std_logic_vector(0 downto 0);
    signal u3_exp_and_q : std_logic_vector(0 downto 0);
begin


	--VCC(CONSTANT,1)
    VCC_q <= "1";

	--xIn(PORTIN,2)@0

	--gainReg(REG,3)@0
    gainReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            gainReg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            gainReg_q <= gain_i;
        END IF;
    END PROCESS;


	--u3_exp_and(LOGICAL,35)@3
    u3_exp_and_a <= u3_mux_v;
    u3_exp_and_b <= ld_xIn_v_to_u0_exp_and_b_q;
    u3_exp_and_q <= u3_exp_and_a and u3_exp_and_b;

	--u2_exp_and(LOGICAL,27)@3
    u2_exp_and_a <= u2_mux_v;
    u2_exp_and_b <= ld_xIn_v_to_u0_exp_and_b_q;
    u2_exp_and_q <= u2_exp_and_a and u2_exp_and_b;

	--u1_exp_and(LOGICAL,19)@3
    u1_exp_and_a <= u1_mux_v;
    u1_exp_and_b <= ld_xIn_v_to_u0_exp_and_b_q;
    u1_exp_and_q <= u1_exp_and_a and u1_exp_and_b;

	--u0_exp_and(LOGICAL,11)@3
    u0_exp_and_a <= u0_mux_v;
    u0_exp_and_b <= ld_xIn_v_to_u0_exp_and_b_q;
    u0_exp_and_q <= u0_exp_and_a and u0_exp_and_b;

	--u3_shiftsel(BITSHIFT,28)@0
    u3_shiftsel_q_int <= xIn_3 & "0";
    u3_shiftsel_q <= u3_shiftsel_q_int(35 downto 0);

	--u3_rnd(ROUND,29)@0
    u3_rnd_in <= u3_shiftsel_q;
    u3_rnd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u3_rnd_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u3_rnd_q <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u3_rnd_in(35 downto 15)), 21) + SIGNED(STD_LOGIC_VECTOR'("00000000000000000000" & u3_rnd_in(14 downto 14))));
            END IF;
        END IF;
    END PROCESS;


	--ld_u3_rnd_q_to_u3_mux_cc(DELAY,87)@1
    ld_u3_rnd_q_to_u3_mux_cc : dspba_delay
    GENERIC MAP ( width => 21, depth => 1 )
    PORT MAP ( xin => u3_rnd_q, xout => ld_u3_rnd_q_to_u3_mux_cc_q, clk => clk, aclr => areset );

	--u0_highconst(CONSTANT,7)
    u0_highconst_q <= "0111111111111111";

	--GND(CONSTANT,0)
    GND_q <= "0";

	--ld_xIn_v_to_u0_low_e(DELAY,42)@0
    ld_xIn_v_to_u0_low_e : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => xIn_v, xout => ld_xIn_v_to_u0_low_e_q, clk => clk, aclr => areset );

	--u3_high(COMPARE,33)@1
    u3_high_cin <= GND_q;
    u3_high_a <= STD_LOGIC_VECTOR((22 downto 21 => u3_rnd_q(20)) & u3_rnd_q) & '0';
    u3_high_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_highconst_q(15)) & u0_highconst_q) & u3_high_cin(0);
    u3_high: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u3_high_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u3_high_o <= STD_LOGIC_VECTOR(SIGNED(u3_high_a) - SIGNED(u3_high_b));
            END IF;
        END IF;
    END PROCESS;
    u3_high_n(0) <= not u3_high_o(23);


	--u0_lowconst(CONSTANT,6)
    u0_lowconst_q <= "1000000000000001";

	--u3_low(COMPARE,32)@1
    u3_low_cin <= GND_q;
    u3_low_a <= STD_LOGIC_VECTOR((22 downto 21 => u3_rnd_q(20)) & u3_rnd_q) & '0';
    u3_low_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_lowconst_q(15)) & u0_lowconst_q) & u3_low_cin(0);
    u3_low: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u3_low_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u3_low_o <= STD_LOGIC_VECTOR(SIGNED(u3_low_a) - SIGNED(u3_low_b));
            END IF;
        END IF;
    END PROCESS;
    u3_low_c(0) <= u3_low_o(23);


	--ld_xIn_v_to_u0_mux_e(DELAY,45)@0
    ld_xIn_v_to_u0_mux_e : dspba_delay
    GENERIC MAP ( width => 1, depth => 2 )
    PORT MAP ( xin => xIn_v, xout => ld_xIn_v_to_u0_mux_e_q, clk => clk, aclr => areset );

	--u3_mux(SELECTOR,34)@2
    u3_mux: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u3_mux_q <= (others => '0');
            u3_mux_v <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_mux_e_q = "1") THEN
                u3_mux_q <= ld_u3_rnd_q_to_u3_mux_cc_q(15 downto 0);
                u3_mux_v <= (others => '0');
                IF (u3_high_n = "1") THEN
                    u3_mux_q <= u0_highconst_q;
                    u3_mux_v <= "1";
                END IF;
                IF (u3_low_c = "1") THEN
                    u3_mux_q <= u0_lowconst_q;
                    u3_mux_v <= "1";
                END IF;
            END IF;
        END IF;
    END PROCESS;


	--u2_shiftsel(BITSHIFT,20)@0
    u2_shiftsel_q_int <= xIn_2 & "0";
    u2_shiftsel_q <= u2_shiftsel_q_int(35 downto 0);

	--u2_rnd(ROUND,21)@0
    u2_rnd_in <= u2_shiftsel_q;
    u2_rnd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u2_rnd_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u2_rnd_q <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u2_rnd_in(35 downto 15)), 21) + SIGNED(STD_LOGIC_VECTOR'("00000000000000000000" & u2_rnd_in(14 downto 14))));
            END IF;
        END IF;
    END PROCESS;


	--ld_u2_rnd_q_to_u2_mux_cc(DELAY,74)@1
    ld_u2_rnd_q_to_u2_mux_cc : dspba_delay
    GENERIC MAP ( width => 21, depth => 1 )
    PORT MAP ( xin => u2_rnd_q, xout => ld_u2_rnd_q_to_u2_mux_cc_q, clk => clk, aclr => areset );

	--u2_high(COMPARE,25)@1
    u2_high_cin <= GND_q;
    u2_high_a <= STD_LOGIC_VECTOR((22 downto 21 => u2_rnd_q(20)) & u2_rnd_q) & '0';
    u2_high_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_highconst_q(15)) & u0_highconst_q) & u2_high_cin(0);
    u2_high: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u2_high_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u2_high_o <= STD_LOGIC_VECTOR(SIGNED(u2_high_a) - SIGNED(u2_high_b));
            END IF;
        END IF;
    END PROCESS;
    u2_high_n(0) <= not u2_high_o(23);


	--u2_low(COMPARE,24)@1
    u2_low_cin <= GND_q;
    u2_low_a <= STD_LOGIC_VECTOR((22 downto 21 => u2_rnd_q(20)) & u2_rnd_q) & '0';
    u2_low_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_lowconst_q(15)) & u0_lowconst_q) & u2_low_cin(0);
    u2_low: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u2_low_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u2_low_o <= STD_LOGIC_VECTOR(SIGNED(u2_low_a) - SIGNED(u2_low_b));
            END IF;
        END IF;
    END PROCESS;
    u2_low_c(0) <= u2_low_o(23);


	--u2_mux(SELECTOR,26)@2
    u2_mux: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u2_mux_q <= (others => '0');
            u2_mux_v <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_mux_e_q = "1") THEN
                u2_mux_q <= ld_u2_rnd_q_to_u2_mux_cc_q(15 downto 0);
                u2_mux_v <= (others => '0');
                IF (u2_high_n = "1") THEN
                    u2_mux_q <= u0_highconst_q;
                    u2_mux_v <= "1";
                END IF;
                IF (u2_low_c = "1") THEN
                    u2_mux_q <= u0_lowconst_q;
                    u2_mux_v <= "1";
                END IF;
            END IF;
        END IF;
    END PROCESS;


	--u1_shiftsel(BITSHIFT,12)@0
    u1_shiftsel_q_int <= xIn_1 & "0";
    u1_shiftsel_q <= u1_shiftsel_q_int(35 downto 0);

	--u1_rnd(ROUND,13)@0
    u1_rnd_in <= u1_shiftsel_q;
    u1_rnd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_rnd_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u1_rnd_q <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u1_rnd_in(35 downto 15)), 21) + SIGNED(STD_LOGIC_VECTOR'("00000000000000000000" & u1_rnd_in(14 downto 14))));
            END IF;
        END IF;
    END PROCESS;


	--ld_u1_rnd_q_to_u1_mux_cc(DELAY,61)@1
    ld_u1_rnd_q_to_u1_mux_cc : dspba_delay
    GENERIC MAP ( width => 21, depth => 1 )
    PORT MAP ( xin => u1_rnd_q, xout => ld_u1_rnd_q_to_u1_mux_cc_q, clk => clk, aclr => areset );

	--u1_high(COMPARE,17)@1
    u1_high_cin <= GND_q;
    u1_high_a <= STD_LOGIC_VECTOR((22 downto 21 => u1_rnd_q(20)) & u1_rnd_q) & '0';
    u1_high_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_highconst_q(15)) & u0_highconst_q) & u1_high_cin(0);
    u1_high: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_high_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u1_high_o <= STD_LOGIC_VECTOR(SIGNED(u1_high_a) - SIGNED(u1_high_b));
            END IF;
        END IF;
    END PROCESS;
    u1_high_n(0) <= not u1_high_o(23);


	--u1_low(COMPARE,16)@1
    u1_low_cin <= GND_q;
    u1_low_a <= STD_LOGIC_VECTOR((22 downto 21 => u1_rnd_q(20)) & u1_rnd_q) & '0';
    u1_low_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_lowconst_q(15)) & u0_lowconst_q) & u1_low_cin(0);
    u1_low: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_low_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u1_low_o <= STD_LOGIC_VECTOR(SIGNED(u1_low_a) - SIGNED(u1_low_b));
            END IF;
        END IF;
    END PROCESS;
    u1_low_c(0) <= u1_low_o(23);


	--u1_mux(SELECTOR,18)@2
    u1_mux: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_mux_q <= (others => '0');
            u1_mux_v <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_mux_e_q = "1") THEN
                u1_mux_q <= ld_u1_rnd_q_to_u1_mux_cc_q(15 downto 0);
                u1_mux_v <= (others => '0');
                IF (u1_high_n = "1") THEN
                    u1_mux_q <= u0_highconst_q;
                    u1_mux_v <= "1";
                END IF;
                IF (u1_low_c = "1") THEN
                    u1_mux_q <= u0_lowconst_q;
                    u1_mux_v <= "1";
                END IF;
            END IF;
        END IF;
    END PROCESS;


	--u0_shiftsel(BITSHIFT,4)@0
    u0_shiftsel_q_int <= xIn_0 & "0";
    u0_shiftsel_q <= u0_shiftsel_q_int(35 downto 0);

	--u0_rnd(ROUND,5)@0
    u0_rnd_in <= u0_shiftsel_q;
    u0_rnd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_rnd_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_rnd_q <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_rnd_in(35 downto 15)), 21) + SIGNED(STD_LOGIC_VECTOR'("00000000000000000000" & u0_rnd_in(14 downto 14))));
            END IF;
        END IF;
    END PROCESS;


	--ld_u0_rnd_q_to_u0_mux_cc(DELAY,48)@1
    ld_u0_rnd_q_to_u0_mux_cc : dspba_delay
    GENERIC MAP ( width => 21, depth => 1 )
    PORT MAP ( xin => u0_rnd_q, xout => ld_u0_rnd_q_to_u0_mux_cc_q, clk => clk, aclr => areset );

	--u0_high(COMPARE,9)@1
    u0_high_cin <= GND_q;
    u0_high_a <= STD_LOGIC_VECTOR((22 downto 21 => u0_rnd_q(20)) & u0_rnd_q) & '0';
    u0_high_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_highconst_q(15)) & u0_highconst_q) & u0_high_cin(0);
    u0_high: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_high_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u0_high_o <= STD_LOGIC_VECTOR(SIGNED(u0_high_a) - SIGNED(u0_high_b));
            END IF;
        END IF;
    END PROCESS;
    u0_high_n(0) <= not u0_high_o(23);


	--u0_low(COMPARE,8)@1
    u0_low_cin <= GND_q;
    u0_low_a <= STD_LOGIC_VECTOR((22 downto 21 => u0_rnd_q(20)) & u0_rnd_q) & '0';
    u0_low_b <= STD_LOGIC_VECTOR((22 downto 16 => u0_lowconst_q(15)) & u0_lowconst_q) & u0_low_cin(0);
    u0_low: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_low_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_low_e_q = "1") THEN
                u0_low_o <= STD_LOGIC_VECTOR(SIGNED(u0_low_a) - SIGNED(u0_low_b));
            END IF;
        END IF;
    END PROCESS;
    u0_low_c(0) <= u0_low_o(23);


	--u0_mux(SELECTOR,10)@2
    u0_mux: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_mux_q <= (others => '0');
            u0_mux_v <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (ld_xIn_v_to_u0_mux_e_q = "1") THEN
                u0_mux_q <= ld_u0_rnd_q_to_u0_mux_cc_q(15 downto 0);
                u0_mux_v <= (others => '0');
                IF (u0_high_n = "1") THEN
                    u0_mux_q <= u0_highconst_q;
                    u0_mux_v <= "1";
                END IF;
                IF (u0_low_c = "1") THEN
                    u0_mux_q <= u0_lowconst_q;
                    u0_mux_v <= "1";
                END IF;
            END IF;
        END IF;
    END PROCESS;


	--ld_xIn_c_to_qOut_c(DELAY,91)@0
    ld_xIn_c_to_qOut_c : dspba_delay
    GENERIC MAP ( width => 8, depth => 3 )
    PORT MAP ( xin => xIn_c, xout => ld_xIn_c_to_qOut_c_q, clk => clk, aclr => areset );

	--ld_xIn_v_to_u0_exp_and_b(DELAY,50)@0
    ld_xIn_v_to_u0_exp_and_b : dspba_delay
    GENERIC MAP ( width => 1, depth => 3 )
    PORT MAP ( xin => xIn_v, xout => ld_xIn_v_to_u0_exp_and_b_q, clk => clk, aclr => areset );

	--qOut(PORTOUT,36)@3
    qOut_v <= ld_xIn_v_to_u0_exp_and_b_q;
    qOut_c <= ld_xIn_c_to_qOut_c_q;
    qOut_0 <= u0_mux_q;
    qOut_1 <= u1_mux_q;
    qOut_2 <= u2_mux_q;
    qOut_3 <= u3_mux_q;
    eOut_0 <= u0_exp_and_q;
    eOut_1 <= u1_exp_and_q;
    eOut_2 <= u2_exp_and_q;
    eOut_3 <= u3_exp_and_q;


end normal;
