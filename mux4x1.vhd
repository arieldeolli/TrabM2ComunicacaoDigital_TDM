-- Trabalho de Comunicação Digital
-- Aluno: Ariel Vieira de Oliveira
-- Professor: Felipe Viel

-- Bibliotecas utilizadas
library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is port
(
	i_A  : in std_logic_vector (15 downto 0); -- entradas
	i_B  : in std_logic_vector (15 downto 0); 
	i_C  : in std_logic_vector (15 downto 0); 
	i_D  : in std_logic_vector (15 downto 0); 
	o_S  : out std_logic_vector (15 downto 0); -- saída
	i_SEL  : in std_logic_vector (1 downto 0) -- seletor

);
end mux4x1;

architecture arch_mux of mux4x1 is
begin
  with i_SEL select
  o_S <= i_A when "00", -- se i_SEL for "00" a saída é i_A
         i_B when "01", -- se i_SEL for "01" a saída é i_B
			i_C when "10", -- se i_SEL for "10" a saída é i_C
			i_D when "11", -- se i_SEL for "11" a saída é i_D
			i_D when others;
end arch_mux;
