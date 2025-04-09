-------------------------------------------------------------------------
-------------------------------------------------------------------------
-- Implementação do processador Neander
-- Disciplina de Teste e Projeto de Sistemas VLSI - CMP238
-- 
-- Aluna: Débora Matos
-- Arquivo: maquina.vhd
-------------------------------------------------------------------------
-------------------------------------------------------------------------

library IEEE;
use IEEE.NUMERIC_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith;
use iEEE.std_logic_signed.all;

entity maquina is
port (
      reset      	: in std_logic;
      clk        	: in std_logic;
	  sel_mux	 	: out std_logic;
	  rem_en	 	: out std_logic;
	  rdm_en	 	: out std_logic;
	  ri_en 	 	: out std_logic;
	  pc_en		   	: out std_logic;
	  nz_en		   	: out std_logic;
	  acc_en		: out std_logic;
	  sel_alu	 	: out std_logic_vector(2 downto 0);
	  incrementa_pc : out std_logic;
	  read_mem		: out std_logic;
	  write_mem		: out std_logic;
	  n_signal		: in std_logic;
	  z_signal		: in std_logic;
	  instrucao		: in std_logic_vector(3 downto 0)
      );
end maquina;

architecture maquina of maquina is
    
-----------------------------------
-- Tipos
-----------------------------------

type state_type is (st_0, st_1, st_2, st_2a, st_3, st_4, st_5, st_6, st_7, st_8, st_idle);

-----------------------------------
-- Declarações de sinais
-----------------------------------
signal estado			: state_type := st_idle;			-- Estado atual da maquina de estados
signal sel_ula			: std_logic_vector(2 downto 0);

begin


------------------------------------------------------------------------------------------------------------------------
											-- Atribuições assíncronas --
------------------------------------------------------------------------------------------------------------------------

sel_alu <= sel_ula;

------------------------------------------------------------------------------------------------------------------------
											-- Atribuições síncronas --
------------------------------------------------------------------------------------------------------------------------

process (reset, clk)
begin

   if (reset='1') then
      estado   <=   st_idle;
   elsif (clk'event and clk='1') then
      case estado is 
         when st_idle =>
            	estado <= st_0;
         when st_0 =>
         		estado <= st_1;
         when st_1 =>
            estado <= st_2;
         when st_2 =>
         	estado <= st_2a;
         when st_2a =>
         	estado <= st_3;
         when st_3 =>
         	if instrucao = "0110" or instrucao = "0000" then 		-- intrucao NOT ou NOP
         		estado	<= st_0;
         	-- JN, N=0 ; JZ, Z=0
         	elsif (instrucao = "1001" and n_signal='0') or (instrucao = "1010" and z_signal='0') then
         		estado	<= st_0;
         	-- instrucao HALT
         	elsif instrucao = "1111" then
         		estado <= st_idle;
         	else
         		estado 	<= st_4;
         	end if;
         when st_4 =>
         	estado <= st_5; 
         when st_5 =>
         	if instrucao = "1000" or instrucao = "1001" or instrucao = "1010" then	-- jumps condicionais
         		estado	<= st_0;
         	else
				estado <= st_6;
			end if;
		 when st_6 =>
			estado <= st_7;
		 when st_7 =>
		 	estado <= st_8;
		 when st_8 =>
		 	estado <= st_0;
	     when others => 
	         estado <= st_idle;
      end case;
   end if;
end process;



process (estado)
begin
    case estado is
		when st_0 => 
			sel_mux			<= '0';
			rem_en			<= '1';	
			-- inicializa valores;
			ri_en 			<= '0';
			read_mem		<= '0';
			write_mem		<= '0';
			incrementa_pc	<= '0';
			pc_en			<= '0';
			rdm_en			<= '0';
			nz_en			<= '0';
			sel_ula			<= "111";
			acc_en			<= '0';	
		
		when st_1 =>
			read_mem		<= '1';
			incrementa_pc	<= '1';		
			rem_en			<= '0';
				
		when st_2 =>
			read_mem		<= '0';
			incrementa_pc	<= '0';
			ri_en 			<= '1';

		when st_3 =>
			ri_en			<='0';
			if instrucao = "0110" then 		-- instrução NOT
				sel_ula		<= "011";
				acc_en		<= '1';
				nz_en	 	<= '1';				 
			else
				sel_mux		<= '0';
				rem_en		<= '1';			
			end if;
		
		when st_4 =>
			sel_ula			<= "111";
			acc_en			<= '0';
			nz_en	 		<= '0';	
			rem_en			<= '0';
			read_mem		<= '1';
			if instrucao(3) /= '1' then		-- instruções de jump não incrementam pc
				incrementa_pc	<= '1';
			end if;

		when st_5 =>
			read_mem		<= '0';
			incrementa_pc	<= '0';
			if instrucao(3) /= '1' then		-- instruções de jump não incrementam pc
				sel_mux 	<= '1';
				rem_en		<= '1';
			else
				pc_en		<= '1';
			end if;
		
		when st_6 =>
			rem_en			<= '0';
			pc_en			<= '0';
			if instrucao = "0001" then
				rdm_en		<= '1';
			else
				read_mem	<= '1';
			end if;
	
		--  decodifica instrução
		when st_7 =>	
			rdm_en			<= '0';
			read_mem		<= '0';
			case instrucao is
				-- instrução STA
				when "0001" => 
					write_mem	<= '1';
				-- instrução LDA
				when "0010" =>
					sel_ula	<= "100";
					acc_en	<= '1';
					nz_en	<= '1';
				-- instrução ADD
				when "0011" =>
					sel_ula	<= "000";
					acc_en	<= '1';
					nz_en	<= '1';
				-- instrução OR
				when "0100" =>
					sel_ula	<= "010";
					acc_en	<= '1';
					nz_en	<= '1';
				-- instrução AND
				when "0101" => 
					sel_ula	<= "001";
					acc_en	<= '1';
					nz_en	<= '1';
				when others =>
					sel_ula	<= "111";
					acc_en	<= '0';
					nz_en	<= '0';
			end case;
			
		when others	=>
			sel_mux	 	<= '0';
	  		rem_en	 	<= '0';
	  		rdm_en	 	<= '0';
	 		ri_en 	 	<= '0';
	  		pc_en	   	<= '0';
	  		nz_en	   	<= '0';
	  		acc_en	 	<= '0';
	  		sel_ula	 	<= "111";
	  		incrementa_pc <= '0';
	  		read_mem	  <= '0';	
	  		write_mem	  <= '0';
	end case;	
	
end process;				

end maquina;
	
	

