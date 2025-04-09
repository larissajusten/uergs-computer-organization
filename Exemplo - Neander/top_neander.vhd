
-------------------------------------------------------------------------
-- Implementação do processador Neander
-- Disciplina de Teste e Projeto de Sistemas VLSI - CMP238
-- 
-- Aluna: Débora Matos
-- Arquivo: top_neander.vhd
-------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Bibliotecas
-------------------------------------------------------------------------------

library IEEE;
use IEEE.NUMERIC_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith;
use iEEE.std_logic_signed.all;

entity top_neander is
	port(
		clk				: in	std_logic;
		reset			: in	std_logic;
		acumulador		: out   std_logic_vector(7 downto 0);
		saida_ula		: out	std_logic_vector(7 downto 0);
		program_counter	: out	std_logic_vector(7 downto 0)
	    );
end top_neander;	      

architecture top_neander of top_neander is

-----------------------------------
-- Declarações de sinais
-----------------------------------

signal	acc				: std_logic_vector(7 downto 0);	
signal	pc				: std_logic_vector(7 downto 0);	
signal	sel_ula			: std_logic_vector(2 downto 0);
signal	reg_ri			: std_logic_vector(7 downto 0);	
signal	reg_rem			: std_logic_vector(7 downto 0);	
signal	reg_rdm			: std_logic_vector(7 downto 0);	
signal	n_status		: std_logic;						
signal	z_status		: std_logic;						
signal	read_mem		: std_logic;
signal	write_mem		: std_logic;
signal	nz_en			: std_logic;
signal	sel_mux			: std_logic;
signal	ri_en			: std_logic;
signal	rem_en			: std_logic;
signal	rdm_en			: std_logic;
signal	acc_en			: std_logic;
signal	pc_en			: std_logic;
signal	incrementa_pc	: std_logic;
signal  instrucao		: std_logic_vector(7 downto 0);
signal  data_in 		: std_logic_vector (7 downto 0);
signal	wr				: std_logic;
signal	addr			: std_logic_vector(7 downto 0);
signal	data			: std_logic_vector(7 downto 0);
signal	data_out		: std_logic_vector(7 downto 0);

begin

-----------------------------------
	-- Port Mapping
-----------------------------------
t_neander: entity work.neander
	port map(
		reset		=>	reset,		
		clk			=>	clk,	
		data		=>	data,	
		acc			=>	acc,	
		pc			=>	pc,
		sel_ula		=>	sel_ula,	
		reg_ri		=>	instrucao,	
		reg_rem		=>	reg_rem,	
		reg_rdm		=>	reg_rdm,	
		n_status 	=>	n_status,	
		z_status	=>	z_status,	
		read_mem	=>	read_mem,
		write_mem	=>	write_mem,
		nz_en		=>	nz_en,
		sel_mux		=>	sel_mux,
		ri_en		=>	ri_en,
		rem_en		=>	rem_en,
		rdm_en		=>	rdm_en,
		acc_en		=>	acc_en,
		pc_en		=>	pc_en,
		saida_ula	=> saida_ula,
		incrementa_pc => incrementa_pc			
	    );
	
t_maquina: entity work.maquina
	port map(
	  reset   		=> reset,   	
      clk   		=> clk,  	
	  sel_mux		=> sel_mux,	
	  rem_en	 	=> rem_en,
	  rdm_en	 	=> rdm_en,
	  ri_en 	 	=> ri_en,
	  pc_en		    => pc_en,
	  nz_en		   	=> nz_en,
	  acc_en		=> acc_en,
	  sel_alu	 	=> sel_ula,
	  incrementa_pc => incrementa_pc,
	  read_mem		=> read_mem,
	  write_mem		=> write_mem,
	  n_signal		=> n_status,
	  z_signal		=> z_status,
	  instrucao		=> instrucao(7 downto 4)
	);
	

t_memoria: entity work.mem	
port map( 
	din		 	=> data_in,
	clk 		=> clk,
	we 			=> wr,
	addr		=> addr,
	dout 		=> data_out
	);
	
	
------------------------------------------------------------------------------------------------------------------------
											-- Atribuições assíncronas --
------------------------------------------------------------------------------------------------------------------------

data_in	<=	reg_rdm when write_mem = '1';

data 	<= 	data_out when read_mem = '1';

acumulador	<= acc;
program_counter <= pc;
wr <= write_mem;
		  	
			

------------------------------------------------------------------------------------------------------------------------
											-- Atribuições síncronas --
------------------------------------------------------------------------------------------------------------------------


-----------------------------------
-- Processos
-----------------------------------
process(clk)
begin
	if reset = '1' then
		addr 	<= (others => '0');
	elsif read_mem='1' or write_mem ='1' then
		addr <= reg_rem;
	end if;
end process;


end top_neander;

