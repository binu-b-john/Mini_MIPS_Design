--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--USE ieee.numeric_std.ALL;
 
ENTITY TB_Mux IS
END TB_Mux;
 
ARCHITECTURE behavior OF TB_Mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT) - VHDL 87 format
 
    COMPONENT Mux
    PORT(
         mux_in0 : IN  std_logic_vector(31 downto 0);
         mux_in1 : IN  std_logic_vector(31 downto 0);
         mux_ctl : IN  std_logic;
         mux_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal tb_mux_in0 : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_mux_in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_mux_ctl : std_logic := '0';

 	--Outputs
   signal tb_mux_out : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux PORT MAP (
          mux_in0 => tb_mux_in0,
          mux_in1 => tb_mux_in1,
          mux_ctl => tb_mux_ctl,
          mux_out => tb_mux_out
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		tb_mux_in0 <= x"5555aaaa";
		tb_mux_in1 <= x"aaaa5555";
		
		tb_mux_ctl <= '0';
		wait for 100ns;
		
		tb_mux_ctl <= '1';
		wait for 100ns;
		
		tb_mux_ctl <= '0';
		wait for 100ns;
	  
		assert false
			report "end"
			severity failure;
   end process;

END;
