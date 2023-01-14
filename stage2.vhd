library ieee;
use ieee.std_logic_1164.all;

entity stage2 is
port(s, c: in std_logic_vector(3 downto 0);
	   sum: out std_logic_vector(4 downto 0);
	 carry: out std_logic);
end entity;

architecture stage2_arch of stage2 is

component FA is
port(a, b, cin : in std_logic;
		sum, cout: out std_logic);
end component;

signal cout1, cout2, cout3: std_logic;

begin

sum(0) <= s(0);
FA1 : FA port map(s(1),c(0) ,'0'  ,sum(1),cout1);
FA2 : FA port map(s(2),c(1) ,cout1,sum(2),cout2);
FA3 : FA port map(s(3),c(2) ,cout2,sum(3),cout3);
FA4 : FA port map(c(3),cout3,'0'  ,sum(4),carry);


end architecture;