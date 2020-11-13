-- Trabalho de Comunicação Digital
-- Aluno: Ariel Vieira de Oliveira
-- Professor: Felipe Viel

-- Bibliotecas utilizadas
library ieee;
use ieee.std_logic_1164.all;

entity counter is port
(
	i_CLKCOUNTER  : in std_logic; -- clock do counter
	o_S  : out std_logic_vector (1 downto 0) -- saída

);
end counter;

architecture arch_counter of counter is
begin
  counter_process : process(i_CLKCOUNTER)-- inicia processo para mudar a saída em um intervalo de tempo
     variable q_var : std_logic_vector (1 downto 0);
	  begin
	    if(i_CLKCOUNTER'event and i_CLKCOUNTER='1') then	-- quando clock mudar o estado de 0 para 1	    
			  if(q_var = "00") then -- se o estado anterior era "00" a saida será "01"
			    o_S <= q_var; 
				 q_var := "01";
			    else if (q_var = "01") then -- se o estado anterior era "01" a saida será "10"
			      o_S <= q_var;
				   q_var := "10";
			      else if (q_var = "10") then  -- se o estado anterior era "10" a saida será "11"
			        o_S <= q_var;
				     q_var := "11";
			        else if (q_var = "11") then  -- se o estado anterior era "11" a saida será "00"
			          o_S <= q_var;
				       q_var := "00";
			        end if;
		         end if;
			    end if;
				end if;
		  end if;
  end process;
end arch_counter;