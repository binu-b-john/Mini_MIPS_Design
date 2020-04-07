
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;

entity Mux is					-- 2 to 1 MUX

	generic( N : integer := 32 
	);
	
	port( mux_in0 : in STD_LOGIC_VECTOR (N-1 downto 0);
			mux_in1 : in STD_LOGIC_VECTOR (N-1 downto 0);
			mux_ctl : in STD_LOGIC;
			mux_out : out STD_LOGIC_VECTOR (N-1 downto 0)
	);
	
end Mux;

architecture Behavioral of Mux is

begin

	mux_out <= mux_in0 when mux_ctl = '0' else
				  mux_in1;


end Behavioral;

//test