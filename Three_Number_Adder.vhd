library ieee;
use ieee.std_logic_1164.all;

entity Three_Number_Adder is
port(x, y, z : in std_logic_vector(3 downto 0);
	      sum : out std_logic_vector(4 downto 0);
		 carry : out std_logic);
end entity;

architecture Three_Number_Adder_arch of Three_Number_Adder is

component stage1 is
port(x, y, z : in std_logic_vector(3 downto 0);
	     s, c : out std_logic_vector(3 downto 0));
end component;

component stage2 is
port(s, c: in std_logic_vector(3 downto 0);
	   sum: out std_logic_vector(4 downto 0);
	 carry: out std_logic);
end component;

signal s, c: std_logic_vector(3 downto 0);


begin

stage1_o: stage1 port map (x, y, z, s, c);
stage2_o: stage2 port map (s, c, sum, carry);

end architecture;