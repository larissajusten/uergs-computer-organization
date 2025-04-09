
-------------------------------------------------------------------------
-- Implementação do processador Neander
-- Disciplina de Teste e Projeto de Sistemas VLSI - CMP238
-- 
-- Aluna: Débora Matos
-- Arquivo: testebench neander.vhd
-------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Bibliotecas
-------------------------------------------------------------------------------

library IEEE;
use IEEE.NUMERIC_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith;

entity tb_neander is

end tb_neander;	      

architecture tb_neander of tb_neander is

signal	clock			: std_logic := '0';
signal	rst				: std_logic;
signal 	acumulador 		: std_logic_vector(7 downto 0);
signal 	saida_ula		: std_logic_vector(7 downto 0);
signal	program_counter	: std_logic_vector(7 downto 0);


begin


------------------------------------------------------------------------------------------------------------------------
											-- Atribuições assíncronas --
------------------------------------------------------------------------------------------------------------------------
clock 	<= not clock after 10 ns;
rst		<= '1' after 5 ns,
		   '0' after 20 ns;	
		   

------------------------------------------------------------------------------------------------------------------------
											-- Atribuições síncronas --
------------------------------------------------------------------------------------------------------------------------


-----------------------------------
-- Processos
-----------------------------------

teste : entity work.top_neander
port map(
	clk				=> clock,
	reset			=> rst,
	acumulador		=> acumulador,	
	saida_ula		=> saida_ula,	
	program_counter	=> program_counter
    );
end tb_neander;

