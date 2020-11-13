library ieee;
use ieee.std_logic_1164.all;

entity tmr is port
(
	i_A  : in std_logic_vector (15 downto 0); 
	i_B  : in std_logic_vector (15 downto 0); 
	i_C  : in std_logic_vector (15 downto 0);  
	o_S  : out std_logic_vector (15 downto 0)

);
end tmr;

architecture arch_tmr of tmr is
   	
	component voter
	port (i_A, i_B, i_C : in std_logic_vector (15 downto 0);
	      o_S  : out std_logic_vector (15 downto 0));
	end component voter;
	
begin
	  x1: voter PORT MAP (i_A, i_B, i_C, o_S);     

end arch_tmr;
