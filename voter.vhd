library ieee;
use ieee.std_logic_1164.all;

entity voter is port
(
	i_A  : in std_logic_vector (15 downto 0); 
	i_B  : in std_logic_vector (15 downto 0); 
	i_C  : in std_logic_vector (15 downto 0);  
	o_S  : out std_logic_vector (15 downto 0)

);
end voter;

architecture arch_voter of voter is

begin
  p0: process (i_A, i_B, i_C)
  begin
	  if(i_A = i_B) then 
        o_S <= i_A;
        else if (i_B = i_C) then
          o_S <= i_B;
          else if (i_C = i_A) then 
            o_S <= i_C;	
	       end if;
	     end if;
	  end if;
  end process p0;	  

end arch_voter;
