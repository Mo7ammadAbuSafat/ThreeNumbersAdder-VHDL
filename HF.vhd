library ieee;
use ieee.std_logic_1164.all;

entity HA is 
port(    a, b : in std_logic;
	  sum, cout: out std_logic);
end entity;

architecture HA_arch of HA is
begin 

sum<= a xor b;
cout<= a and b;

end architecture;
		
