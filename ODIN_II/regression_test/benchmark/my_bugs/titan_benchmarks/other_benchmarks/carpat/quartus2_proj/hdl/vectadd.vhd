--**** vectadd.vhd ****
-----------------------------------------
-- Signed Vector addition Component --
-- C = A + B --
-- The output, C, is latched --
--We assume that data-types are exactly the same fixed-point representation
-----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity vectadd is
generic (
wordlength : natural
);
port(
Ax,Ay,Az : in std_logic_vector(wordlength-1 downto 0);
Bx,By,Bz : in std_logic_vector(wordlength-1 downto 0);
Cx,Cy,Cz : out std_logic_vector(wordlength-1 downto 0);
clk : in std_logic);
end;
architecture rtl of vectadd is
begin
process(clk)
begin
if (rising_edge(clk)) then
Cx <= Ax + Bx;
Cy <= Ay + By;
Cz <= Az + Bz;
end if;
end process;
end rtl;