----------------------------------------------------------------------------------
-- Company: UERGS
-- Engineer: Joao Leonardo Fragoso
-- 
-- Create Date:    19:08:01 06/26/2012 
-- Design Name:    K and S modeling
-- Module Name:    control_unit - rtl 
-- Description:    RTL Code for K and S control unit
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
--          0.02 - moving to Vivado 2017.3
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;
use work.k_and_s_pkg.all;

entity control_unit is
  port (
    rst_n               : in  std_logic;
    clk                 : in  std_logic;
    branch              : out std_logic;
    pc_enable           : out std_logic;
    ir_enable           : out std_logic;
    write_reg_enable    : out std_logic;
    addr_sel            : out std_logic;
    c_sel               : out std_logic;
    operation           : out std_logic_vector (1 downto 0);
    flags_reg_enable    : out std_logic;
    decoded_instruction : in  decoded_instruction_type;
    zero_op             : in  std_logic;
    neg_op              : in  std_logic;
    unsigned_overflow   : in  std_logic;
    signed_overflow     : in  std_logic;
    ram_write_enable    : out std_logic;
    halt                : out std_logic
    );
end control_unit;

architecture rtl of control_unit is

    type state_type is (E_BUSCA_INST, E_DECODIFICA, E_BRANCH, E_STORE, E_LOAD, E_ULA, E_WMEM, E_WREG, E_HALT, E_WAIT); --E = ESTADO, EX: E_BUSCA = ESTADO BUSCA INSTRUÇÃO
    signal current_state: state_type;
    signal next_state: state_type;
    
begin


    inicio: process(clk)
    begin
      if (clk'event and clk='1') then
           if(rst_n='0') then
                current_state <= E_BUSCA_INST;        
            else            
            case current_state is
                when E_BUSCA_INST =>
                    current_state <= E_DECODIFICA;
                when E_DECODIFICA =>
                    case decoded_instruction is
                        when I_ADD => 
                            current_state <= E_ULA;
                        when I_SUB =>
                            current_state <= E_ULA;
                        when I_AND =>
                            current_state <= E_ULA;
                        when I_OR =>
                            current_state <= E_ULA;
                        when I_LOAD =>
                            current_state <= E_LOAD;
                        when I_STORE =>
                            current_state <= E_WMEM;
                        when I_BRANCH =>
                            current_state <= E_BRANCH;
                        when I_MOVE =>
                            current_state <= E_ULA;
                        when I_BNEG =>
                            current_state <= E_WAIT;
                        when I_BZERO =>
                            current_state <= E_WAIT;
                        when I_NOP =>
                            current_state <= E_BUSCA_INST;
                        when I_HALT =>
                            current_state <= E_HALT;
                        when others => null;
                    end case;
                when E_ULA =>
                    current_state <= E_WREG;
                when E_WREG =>
                    current_state <= E_BUSCA_INST;
                when E_BRANCH =>
                    current_state <= E_BUSCA_INST;
                when E_LOAD =>
                    current_state <= E_WREG;
                when E_WMEM =>
                    current_state <= E_BUSCA_INST;      
                when E_HALT =>
                    current_state <= E_HALT;
                when E_WAIT => --bneg / bzero
                    if (neg_op = '1') then
                        current_state <= E_BRANCH;
                    elsif (zero_op = '1') then
                        current_state <= E_BRANCH;
                    else
                        current_state <= E_BUSCA_INST;
                    end if ;
                when others => current_state <= E_HALT;
            end case;
           end if; --rst  
      end if; -- clock
    end process;


branch <= '0' when current_state = E_BRANCH else '1';
pc_enable <='1' when current_state = E_BUSCA_INST or current_state = E_BRANCH else '0';
ir_enable <= '1' when current_state = E_BUSCA_INST else '0'; 
addr_sel <= '1' when (current_state = E_DECODIFICA and decoded_instruction = I_STORE) OR (current_state = E_DECODIFICA and decoded_instruction = I_LOAD) else '0';
c_sel <= '1' when (current_state = E_ULA or current_state = E_WREG) else '0';
write_reg_enable <= '1' when (current_state = E_ULA or current_state = E_LOAD) else '0';
flags_reg_enable <= '1' when (current_state = E_WREG) and (decoded_instruction = I_ADD or decoded_instruction = I_SUB) else '0';
ram_write_enable <= '1' when current_state = E_DECODIFICA and decoded_instruction = I_STORE else '0';

operation   <= "01" when current_state = E_ULA and decoded_instruction = I_ADD else
			   "10" when current_state = E_ULA and decoded_instruction = I_SUB else
			   "11" when current_state = E_ULA and decoded_instruction = I_AND else
			   "00" when current_state = E_ULA and decoded_instruction = I_OR else "00";

halt <= '1' when current_state = E_HALT else '0';

end rtl;
