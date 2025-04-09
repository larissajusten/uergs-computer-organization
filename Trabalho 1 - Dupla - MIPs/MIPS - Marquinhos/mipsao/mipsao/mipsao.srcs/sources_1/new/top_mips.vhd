library IEEE;
use IEEE.STD_LOGIC_1164.all;
library work;

entity top_mips is
	port(
	clk	: in std_logic;
	rst	: in std_logic
	);
end top_mips;

architecture top_mips of top_mips is
	signal data_out		: std_logic_vector(15 downto 0);
	signal data_in		: std_logic_vector(15 downto 0);
	signal mem_addr		: std_logic_vector(15 downto 0);

	signal	op_code		: std_logic_vector(3 downto 0);
	signal  f_zero		: std_logic;
	signal	f_neg		: std_logic;
------------------ CONTROLE
	signal	ir_write	: std_logic; -- permite a escrita no registrador de instrucoes
	signal	ula_op		: std_logic_vector(1 downto 0);
	signal	pc_enable	: std_logic;
	signal	reg_write	: std_logic; -- Controle banco de registradores.
	signal	r_sel		: std_logic; -- Determina se o dado que vai ser escrito no banco de registrador vem da memoria ou da ula_out
	signal	addr_sel	: std_logic;
	signal	branch		: std_logic;
	signal	ula_out_e	: std_logic;
	signal	mem_write	: std_logic;
	signal	mem_read	: std_logic;

begin
	datapath_i : entity work.datapath
	port map(
	clk 	=> clk,
	rst	=> rst,
	data_out	=> data_out,
	data_in		=> data_in,
	mem_addr	=> mem_addr,

	op_code		=> op_code,
	f_zero		=> f_zero,
	f_neg		=> f_neg,

	ir_write	=> ir_write,
	ula_op		=> ula_op,
	pc_enable	=> pc_enable,
	reg_write	=> reg_write,
	r_sel		=> r_sel,
	addr_sel	=> addr_sel,
	branch		=> branch,
	ula_out_e	=> ula_out_e

	);
	
	control_unit_i : entity work.control_unit
	port map(
	clk 	=> clk,
	rst	=> rst,

	op_code		=> op_code,
	f_zero		=> f_zero,
	f_neg		=> f_neg,

	ir_write	=> ir_write,
	ula_op		=> ula_op,
	pc_enable	=> pc_enable,
	reg_write	=> reg_write,
	r_sel		=> r_sel,
	addr_sel	=> addr_sel,
	branch		=> branch,
	ula_out_e	=> ula_out_e,
	mem_write	=> mem_write,
	mem_read	=> mem_read
	);


	mem_i : entity work.memoria
	port map(
	clk 	=> clk,
	saida_memoria => data_out,
	entrada_memoria => data_in,
	leitura => mem_read,
	escrita => mem_write,
	endereco_memoria => mem_addr,
	reset => rst
	);

end top_mips;