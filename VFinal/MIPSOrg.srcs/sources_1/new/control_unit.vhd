----------------------------------------------------------------------------------
-- Company: UERGS
-- Engineer: Giovani e Larissa
-- Create Date: 10.11.2018 22:27:52
-- Design Name: MIPS Simples
-- Module Name: datapath - rtl
-- Project Name: Trabalho Org 2018.2
-- Description: 
-- Dependencies: 
-- Revision:
-- Revision 0.01 
-- Additional Comments: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity control_unit is
    Port(
    rst_n       :in std_logic;
    clk         :in std_logic;
    pc_enable   :out std_logic;
    mem_write   :out std_logic;
    mem_read    :out std_logic;
-------------datapath
    branch      :out std_logic;
    addr_sel    :out std_logic;
    r_sel       :out std_logic;
    ir_enable   :out std_logic;
    op_ULA      :out std_logic_vector(1 downto 0);
    reg_write   :out std_logic;
    sel_x1      :out std_logic;
    sel_x2      :out std_logic;
    sel_x3      :out std_logic;
-------------FLAG's
    f_zero      :in std_logic;
    f_neg       :in std_logic;
    opcode      :in std_logic_vector(3 downto 0)
    );
    
end control_unit;


architecture rtl of control_unit is

    type state_type is (BUSCA_INST, DECODIFICA, EXECUTA, SALVA_PC, STORE, LOAD, ULA, ULA_OP,ULA_W8, WMEM, WREG, ADDI, NOTT, HALT);
    signal current_state: state_type;
    signal old_state : state_type;
begin

inicio: process (clk)
begin	
    if(clk'event and clk='1') then
        if(rst_n = '0') then
            current_state<= BUSCA_INST;
        else
            old_state <= current_state;
            case current_state is
                when BUSCA_INST =>
                    current_state <= DECODIFICA;
                when DECODIFICA =>
                    current_state <= EXECUTA;
                when EXECUTA =>
                    case opcode is
                        when "0000" => --nop
                            current_state <= BUSCA_INST;
                        when "0001" => --jump
                            current_state <=  SALVA_PC;
                        when "0010" => --bneg
                            if(f_neg = '1') then
                                current_state <= SALVA_PC;
                            else
                                current_state <= BUSCA_INST;
                            end if;
                        when "0011" => --beq
                            if(f_zero = '1') then
                                current_state <= SALVA_PC;
                            else
                                current_state <= BUSCA_INST;
                            end if;
                        when "0101" => --load
                                current_state <= LOAD;
                        when "0110" => --store
                                current_state <= STORE;
                        when "1000" => --add
                                current_state <= ULA;
                        when "1001" => --sub
                                current_state <= ULA;
                        when "1010" => --and
                                current_state <= ULA;
                        when "1011" => --or
                                current_state <= ULA;
                        when "1100" => --addi
                                current_state <= ADDI;
                        when "1110" => --nott
                                current_state <= NOTT;
                        when others =>
                                current_state <= HALT;
                        end case;					
                when STORE =>
                    current_state <= WMEM;
                when WMEM =>
                    current_state <= BUSCA_INST;
                when WREG =>
                    current_state <=BUSCA_INST;
                when LOAD =>
                    current_state <= WREG;
                when ULA =>
                    current_state <= ULA_OP;
                when ULA_OP =>
                    current_state <= ULA_W8;
                when ULA_W8 =>
                    current_state <= WREG;
                when SALVA_PC =>
                    current_state <=BUSCA_INST;
                when ADDI =>
                    current_state <= WMEM; 
                when NOTT =>
                    current_state <= WMEM; 
                when others => --halt
                    current_state <=HALT;
                end case;
        end if;
    end if;       
end process;

branch <= '1' when current_state = SALVA_PC else '0';
pc_enable <=  '1' when (current_state = SALVA_PC  or current_state = DECODIFICA) else '0';
ir_enable <= '1' when current_state = DECODIFICA else '0';
addr_sel <= '1' when current_state = LOAD or current_state = WMEM else '0';
r_sel <= '1' when (current_state = WREG and old_state = LOAD) else '0';
mem_read <= '1' when (current_state = BUSCA_INST or current_state = LOAD)  else '0';
mem_write <= '1' when current_state = WMEM else '0'; 
reg_write <= '1' when current_state = WREG else '0';
sel_x1 <= '1' when current_state = ADDI else '0';
sel_x2 <= '1' when current_state = ADDI else '0';
sel_x3 <= '1' when current_state = ADDI else '0';


op_ULA <=
    "00" when (current_state = ULA_OP or current_state = ULA_W8) and opcode = "1000" else --add
    "01" when (current_state = ULA_OP or current_state = ULA_W8) and opcode = "1001" else --sub
    "10" when (current_state = ULA_OP or current_state = ULA_W8) and opcode = "1010" else --and
    "11" when (current_state = ULA_OP or current_state = ULA_W8) and opcode = "1011" ; --or

end rtl;
