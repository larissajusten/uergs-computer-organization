
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;
--components.all;

entity control_unit is
  Port ( 
	clk		: in std_logic;
	rst		: in std_logic;
	op_code		: in std_logic_vector(3 downto 0);
	f_zero		: in std_logic;
	f_neg		: in std_logic;
	
	ir_write	: out std_logic; -- permite a escrita no registrador de instrucoes
	ula_op		: out std_logic_vector(1 downto 0);
	pc_enable	: out std_logic;
	reg_write	: out std_logic; -- Controle banco de registradores.
	r_sel		: out std_logic; -- Determina se o dado que vai ser escrito no banco de registrador vem da memoria ou da ula_out
	addr_sel	: out std_logic;
	branch		: out std_logic;
	ula_out_e	: out std_logic;
	mem_write	: out std_logic;
	mem_read	: out std_logic
);
end control_unit;

architecture Behavioral of control_unit is

    type state_type is (BUSCA_INST, REG_INST, DECODIFICA, EXECUTA, STORE, ADD, SUB, ULA, OU, AND_I, JMP, JMP_Z, JMP_N, FINAL);
    signal current_state : state_type;
    signal next_state : state_type;

begin
    main: process(clk)
    begin
        if(clk'event and clk='1') then
            if(rst='1') then
                current_state <= BUSCA_INST;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;

	process(current_state, op_code, f_zero, f_neg)
	begin

	ir_write	<= '0';
	pc_enable	<= '0';
	reg_write	<= '0';
	r_sel		<= '0';
	addr_sel	<= '0';
	branch		<= '0';
	ula_out_e	<= '0';
	mem_read	<= '1';
	mem_write	<= '0';
	
	case current_state is
		when FINAL =>
			next_state <= FINAL;
		when REG_INST =>
			next_state <= DECODIFICA;
			ir_write <= '1';
        when STORE =>
            next_state <= REG_INST;
            pc_enable <= '1';
            mem_read <= '0';
            mem_write <= '1';
            addr_sel <= '1'; 
        when ADD =>
            ula_op <= "00";
            ula_out_e <= '1';
            next_state <= ULA;
        when SUB =>
                ula_op <= "01";
                ula_out_e <= '1';
                next_state <= ULA;
        when OU =>
                ula_op <= "10";
                ula_out_e <= '1';
                next_state <= ULA;
        when AND_I =>
                ula_op <= "11";
                ula_out_e <= '1';
                next_state <= ULA;     
        when ULA =>
            reg_write <= '1';
            next_state <= REG_INST;
            pc_enable <= '1';
        when JMP =>
            next_state <= JMP_Z;
        when JMP_Z =>
            ula_op <= "01";
            if(f_zero = '1') then
                branch <= '1';
            end if;
            next_state <= REG_INST;
            pc_enable <= '1';
        when JMP_N =>
                ula_op <= "01";
                if(f_neg = '1') then
                    branch <= '1';
                end if;
                next_state <= REG_INST;
                pc_enable <= '1';
		when DECODIFICA =>
			case op_code is
				when "0000" => -- LOAD
				    reg_write <= '1';
                    r_sel <= '1';
					addr_sel <= '1';
					pc_enable <= '1';
					next_state <= REG_INST;
				when "0001" => -- STORE
				    next_state <= STORE;
				when "0010" => -- ADD
				    next_state <= ADD;
				when "0011" => -- SUB
                    next_state <= SUB;
                when "0100" => -- OR
                    next_state <= OU;
                when "0101" => -- AND
                        next_state <= AND_I;
				when "0110" => -- JMP
				    next_state <= REG_INST;
				    pc_enable <= '1';
				    branch <= '1';    
				when "0111" => -- JMP ZERO
				    next_state <= JMP_Z;
				when "1000" => -- JMP NEG
                        next_state <= JMP_N;
				when "1111" => -- HALT
					next_state <= FINAL;
				when others =>
					next_state <= REG_INST;
					pc_enable <= '1';
			end case;
		when others =>
			next_state <= REG_INST;
	end case;
	end process;

end Behavioral;
