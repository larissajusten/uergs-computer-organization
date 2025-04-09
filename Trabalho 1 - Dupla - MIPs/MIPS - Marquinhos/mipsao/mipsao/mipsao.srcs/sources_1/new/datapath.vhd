library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
library work;

entity datapath is
	port(
	clk		: in std_logic;
	rst		: in std_logic;
	data_out	: in std_logic_vector(15 downto 0);
	data_in		: out std_logic_vector(15 downto 0);
	mem_addr	: out std_logic_vector(15 downto 0);
	op_code		: out std_logic_vector(3 downto 0);

	f_zero		: out std_logic;
	f_neg		: out std_logic;
	
	-- CONTROLE
	ir_write	: in std_logic; -- permite a escrita no registrador de instrucoes
	ula_op		: in std_logic_vector(1 downto 0);
	pc_enable	: in std_logic;
	reg_write	: in std_logic; -- Controle banco de registradores.
	r_sel		: in std_logic; -- Determina se o dado que vai ser escrito no banco de registrador vem da memoria ou da ula_out
	addr_sel	: in std_logic;
	branch		: in std_logic;
	ula_out_e	: in std_logic
);
end datapath;

architecture datapath of datapath is

	--------- REGISTRADORES

	signal pc : std_logic_vector(15 downto 0);
	signal reg_inst : std_logic_vector(15 downto 0);
	signal bus_a : std_logic_vector(15 downto 0);
	signal bus_b : std_logic_vector(15 downto 0);
	signal reg_ula_out : std_logic_vector(15 downto 0);
	signal r0 : std_logic_vector(15 downto 0);
	signal r1 : std_logic_vector(15 downto 0);
	signal r2 : std_logic_vector(15 downto 0);
	signal r3 : std_logic_vector(15 downto 0);
	-----------------
	signal ula_out : std_logic_vector(15 downto 0); 
	signal mux1_out : std_logic_vector (15 downto 0);
	signal mux2_out : std_logic_vector (15 downto 0);
	signal w_data : std_logic_vector(15 downto 0); -- recebe os dados a serem escritos no banco de registradores

begin
	reg_bank: process(clk)
	begin
	if(clk'event and clk = '1') then
		if(rst = '1') then
			r0 <= x"0000";
			r1 <= x"0000";
			r2 <= x"0000";
			r3 <= x"0000";
		else
			if(reg_write = '1') then
				case reg_inst(7 downto 6) is
				when "00" => r0 <= w_data;
				when "01" => r1 <= w_data;
				when "10" => r2 <= w_data;
				when others => r3 <= w_data;
				end case;
			end if;
		end if;	
	end if;
	end process;
	
	bus_ab : process(clk)
	begin
	if(clk'event and clk='1') then
		if(rst = '1') then
			bus_a <= x"0000";
			bus_b <= x"0000";
		else
			case reg_inst(11 downto 10) is
			when "00" => bus_a <= r0;
			when "01" => bus_a <= r1;
			when "10" => bus_a <= r2;
			when others => bus_a <= r3;
			end case;
			case reg_inst(9 downto 8) is
			when "00" => bus_b <= r0;
			when "01" => bus_b <= r1;
			when "10" => bus_b <= r2;
			when others => bus_b <= r3;
			end case;
		end if;
	end if;
	end process;
	

	pc_reg : process(clk)
	begin
	if(clk'event and clk='1') then
		if(rst = '1') then
			pc <= x"0000";
		else
			if(pc_enable = '1') then
				pc <= mux2_out;
			end if;
		end if;
	end if;
	end process;

	reg_de_inst : process(clk)
	begin
	if(clk'event and clk='1') then
		if(rst = '1') then
			reg_inst <= x"0000";
		else
			if(ir_write = '1') then
				reg_inst <= data_out;
			end if;
		end if;
	end if;
	end process;
	
	ula_out_reg : process(clk)
	begin
	if(clk'event and clk='1') then
		if(rst = '1') then
			reg_ula_out <= x"0000";
		else
			if(ula_out_e = '1') then
				reg_ula_out <= ula_out;
			end if;
		end if;
	end if;
	end process;
	
	------------------------ ULA
	process(bus_a, bus_b, ula_op)
	begin
		if(ula_op = "00") then
			ula_out <= bus_a + bus_b;
		elsif(ula_op = "01") then
			ula_out <= bus_a - bus_b;
		elsif(ula_op = "01") then
			ula_out <= bus_a or bus_b;
		else
			ula_out <= bus_a and bus_b;
		end if;
	end process;

	f_zero <= '1' when ula_out = x"0000" else
		  '0';
	f_neg <= '1' when ula_out(15) = '1' else
		 '0';

	----------------------------------------
	op_code <= reg_inst(15 downto 12); -- passa OP code para UC
	data_in <= bus_a;

	--------------- MUX
	mux_3 : w_data <= data_out when r_sel = '1' else
			  reg_ula_out;

	mux2 : mux2_out <= (pc + 2) when branch = '0' else
			   x"00"& "00" & reg_inst (5 downto 0);


	mux1 : mem_addr <= pc when addr_sel = '0' else
			   x"00"& "00" & reg_inst (5 downto 0);

	
	
	

end datapath;