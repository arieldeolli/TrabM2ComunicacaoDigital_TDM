-- Trabalho de Comunicação Digital
-- Aluno: Ariel Vieira de Oliveira
-- Professor: Felipe Viel

-- Bibliotecas utilizadas
library ieee;
use ieee.std_logic_1164.all;

entity tdm is port
(
	i_CLK : in std_logic;      -- clock 
	i_A  : in std_logic_vector (15 downto 0); -- entradas
	i_B  : in std_logic_vector (15 downto 0); 
	i_C  : in std_logic_vector (15 downto 0); 
	i_D  : in std_logic_vector (15 downto 0); 
	o_S  : out std_logic_vector (15 downto 0) -- saída

);
end tdm;

architecture arch_tdm of tdm is
   component mux4x1 -- declara o componente mux4x1
	port (i_A, i_B, i_C, i_D : in std_logic_vector (15 downto 0);
	      i_SEL : in std_logic_vector (1 downto 0);
			o_S : out std_logic_vector (15 downto 0));
	end component mux4x1;
	
	component counter -- declara o componente counter
	port (i_CLKCOUNTER: in std_logic;
	      o_S  : out std_logic_vector (1 downto 0));
	end component counter;
	
	signal w_SEL : std_logic_vector(1 downto 0); -- fio para interligar contador no mux

begin
     x0: counter PORT MAP(i_CLK, w_SEL); -- interliga tdm ao counter
	  x1: mux4x1 PORT MAP (i_A, i_B, i_C, i_D, w_SEL,o_S); -- interliga mux
     

end arch_tdm;
