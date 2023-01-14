library ieee;
use ieee.std_logic_1164.all;

entity Three_Number_Adder_TB is
end entity;

architecture Three_Number_Adder_TB_arch of Three_Number_Adder_TB is

component Three_Number_Adder is
port(x, y, z : in std_logic_vector(3 downto 0);
	      sum : out std_logic_vector(4 downto 0);
		 carry : out std_logic);
end component;

signal x_TB, y_TB, z_TB: std_logic_vector(3 downto 0);
signal sum_TB: std_logic_vector(4 downto 0);
signal carry_TB: std_logic;

begin 

Three_Number_Adder_1: Three_Number_Adder port map(x_TB, y_TB, z_TB, sum_TB, carry_TB);

STIMULUS : process
begin 

x_TB <= "1100" ; y_TB <= "1101" ; z_TB <= "1110" ; wait for 20 ns;
x_TB <= "1111" ; y_TB <= "1000" ; z_TB <= "1001" ; wait for 20 ns;
x_TB <= "1110" ; y_TB <= "0101" ; z_TB <= "0111" ; wait for 20 ns;

end process;
end architecture;