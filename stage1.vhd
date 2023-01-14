library ieee;
use ieee.std_logic_1164.all;

entity stage1 is
port(x, y, z : in std_logic_vector(3 downto 0);
	     s, c : out std_logic_vector(3 downto 0));
end entity;

architecture stage1_arch of stage1 is

component FA is
port(a, b, cin : in std_logic;
		sum, cout: out std_logic);
end component;

begin

FA1 : FA port map(x(0),y(0),z(0),s(0),c(0));
FA2 : FA port map(x(1),y(1),z(1),s(1),c(1));
FA3 : FA port map(x(2),y(2),z(2),s(2),c(2));
FA4 : FA port map(x(3),y(3),z(3),s(3),c(3));

end architecture;