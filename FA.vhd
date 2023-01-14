library ieee;
use ieee.std_logic_1164.all;

entity FA is
port(a, b, cin : in std_logic;
		sum, cout: out std_logic);
end entity;

architecture FA_arch of FA is

component HA is
port(a,b: in std_logic;
	  sum,cout: out std_logic);
end component;

signal sum1, cout1, cout2 :std_logic;

begin 

HF1 : HA port map(a   , b  , sum1, cout1);
HF2 : HA port map(sum1, cin, sum , cout2);

cout <= cout1 or cout2;

end architecture;