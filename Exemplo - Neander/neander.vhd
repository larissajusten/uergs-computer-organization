
-------------------------------------------------------------------------
-- Implementação do processador Neander
-- Disciplina de Teste e Projeto de Sistemas VLSI - CMP238
-- 
-- Aluna: Débora Matos
-- Arquivo: neander.vhd
-------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Bibliotecas
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith;
use iEEE.std_logic_signed.all;

entity neander is
	port(
		reset			: in	std_logic;
		clk				: in 	std_logic;
		data			: in	std_logic_vector(7 downto 0);
		acc				: out	std_logic_vector(7 downto 0);	-- acumulador
		pc				: out	std_logic_vector(7 downto 0);	-- program counter
		sel_ula			: in	std_logic_vector(2 downto 0);
		reg_ri			: out	std_logic_vector(7 downto 0);	-- reg de instrução
		reg_rem			: out	std_logic_vector(7 downto 0);	-- reg de endereços da memória
		reg_rdm			: out	std_logic_vector(7 downto 0);	-- reg de dados da memória
		n_status		: out 	std_logic;						-- status de N
		z_status		: out	std_logic;						-- status de Z
		saida_ula		: out	std_logic_vector(7 downto 0);
		read_mem		: in	std_logic;
		write_mem		: in	std_logic;
		nz_en			: in 	std_logic;
		sel_mux			: in 	std_logic;
		ri_en			: in 	std_logic;
		rem_en			: in 	std_logic;
		rdm_en			: in 	std_logic;
		acc_en			: in 	std_logic;
		pc_en			: in 	std_logic;
		incrementa_pc	: in 	std_logic		
	    );
end neander;	      

architecture neander of neander is

signal		out_ula			: std_logic_vector(7 downto 0);
signal 		x_ula			: std_logic_vector(7 downto 0);
signal		y_ula			: std_logic_vector(7 downto 0);
signal		rem_signal		: std_logic_vector(7 downto 0); 
signal		rdm_signal		: std_logic_vector(7 downto 0);
signal		ri_signal		: std_logic_vector(7 downto 0);
signal		acc_signal		: std_logic_vector(7 downto 0);
signal		pc_signal		: std_logic_vector(7 downto 0);

begin


------------------------------------------------------------------------------------------------------------------------
											-- Atribuições assíncronas --
------------------------------------------------------------------------------------------------------------------------
reg_rem	<=	rem_signal;
reg_rdm	<=	rdm_signal;
reg_ri	<=	ri_signal;
acc		<=	acc_signal;
pc		<=	pc_signal;	
saida_ula <= out_ula;

x_ula <= acc_signal;

y_ula <= data when read_mem ='1' and ri_en ='0' else
		y_ula;

---------------------------------------------------
-- ULA
---------------------------------------------------

out_ula <= (x_ula + y_ula) 		when sel_ula = "000" else
		   (x_ula and y_ula) 	when sel_ula = "001" else
		   (x_ula or y_ula) 	when sel_ula = "010" else
		   not x_ula			when sel_ula = "011" else
		   y_ula				when sel_ula = "100" else
		   out_ula;

------------------------------------------------------------------------------------------------------------------------
											-- Atribuições síncronas --
------------------------------------------------------------------------------------------------------------------------

-----------------------------------
-- Processos
-----------------------------------
-- registrador REM
process (reset, clk)
begin
	if reset = '1' then
		rem_signal <= (others => '0');
	elsif(clk'event and clk='1') then
		if rem_en = '1' then
			if sel_mux = '0' then
				rem_signal	<= pc_signal;
			elsif sel_mux = '1' then
				rem_signal	<= data;
			else
				rem_signal	<= rem_signal;
			end if;
		end if;
	end if;
end process;
			
-- registrador RDM
process(reset, clk)
begin
	if reset = '1' then
		rdm_signal <= (others => '0');
	elsif(clk'event and clk='1') then
		if rdm_en ='1' then
			rdm_signal	<=	acc_signal;
		else
			rdm_signal	<=	rdm_signal;
		end if;
	end if;
end process;


-- registrador ACC
process(reset, clk)
begin
	if reset = '1' then
		acc_signal	<= (others => '0');
	elsif(clk'event and clk='1') then
		if acc_en ='1' then
			acc_signal	<= out_ula;
		else
			acc_signal	<= acc_signal;
		end if;
	end if;
end process;


-- registrador PC
process(reset, clk)
begin
	if reset = '1' then
		pc_signal	<= (others => '0');
	elsif(clk'event and clk='1') then
		if incrementa_pc ='1' then
			pc_signal	<= pc_signal + '1';
		elsif pc_en = '1' then
			pc_signal	<= rdm_signal;	
		else
			pc_signal	<= pc_signal;
		end if;
	end if;
end process;		

-- registrador RI
process(reset, clk)
begin
	if reset = '1' then
		ri_signal	<= (others => '0');
	elsif(clk'event and clk='1') then
		if ri_en ='1' then
			ri_signal <= data;	
		else
			ri_signal	<= ri_signal;
		end if;
	end if;
end process;


-- status de N e Z
process(reset, clk)
begin
	if reset = '1' then
		n_status	<= '0';
		z_status	<= '0';
	elsif(clk'event and clk='1') then
		if nz_en = '1' then
			if acc_signal(7) = '1' then
				n_status <= '1';		-- resultado é negativo
			else
				n_status <= '0';
			end if;
			
			if acc_signal = "00000000" then
				z_status <= '1';		-- resultado é zero
			else
				z_status <= '0';
			end if;
		end if;
	end if;
end process;

end neander;

