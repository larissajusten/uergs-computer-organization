----------------------------------------------------------------------------------
-- Company: UERGS
-- Engineer: Joao Leonardo Fragoso
-- 
-- Create Date:    19:04:44 06/26/2012 
-- Design Name:    K and S Modeling
-- Module Name:    data_path - rtl 
-- Description:    RTL Code for the K and S datapath
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
--          0.02 - Moving Vivado 2017.3
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
library work;
use work.k_and_s_pkg.all;

entity data_path is
  port (
    rst_n               : in  std_logic;
    clk                 : in  std_logic;
    branch              : in  std_logic;
    pc_enable           : in  std_logic;
    ir_enable           : in  std_logic;
    addr_sel            : in  std_logic;
    c_sel               : in  std_logic;
    operation           : in  std_logic_vector ( 1 downto 0);
    write_reg_enable    : in  std_logic;
    flags_reg_enable    : in  std_logic;
    decoded_instruction : out decoded_instruction_type;
    zero_op             : out std_logic;
    neg_op              : out std_logic;
    unsigned_overflow   : out std_logic;
    signed_overflow     : out std_logic;
    ram_addr            : out std_logic_vector ( 4 downto 0);
    data_out            : out std_logic_vector (15 downto 0);
    data_in             : in  std_logic_vector (15 downto 0)
  );
end data_path;


architecture rtl of data_path is
    signal mem_addr: std_logic_vector(4 downto 0);
    signal program_counter: std_logic_vector(4 downto 0);
    signal instruction: std_logic_vector (15 downto 0);
    signal bus_a: std_logic_vector (15 downto 0);
    signal bus_b: std_logic_vector (15 downto 0);
    signal bus_c: std_logic_vector (15 downto 0);
    signal ula_out: std_logic_vector (15 downto 0);
    signal a_addr: std_logic_vector (1 downto 0);
    signal b_addr: std_logic_vector (1 downto 0);
    signal c_addr: std_logic_vector (1 downto 0);
    signal R0: std_logic_vector (15 downto 0);
    signal R1: std_logic_vector (15 downto 0);
    signal R2: std_logic_vector (15 downto 0);
    signal R3: std_logic_vector (15 downto 0);
    --Bits criados na saida da ula para fazer as flags, não obrigatorios mas para criterio de organização
    signal ula_zero: std_logic;
    signal ula_neg: std_logic;
    signal ula_u_over: std_logic;
    signal ula_s_over: std_logic;
    
begin

    data_out <= bus_a; -- liga data_out no bus_a
    
    mux_bus_c: bus_c <= data_in when c_sel= '0' else  ula_out;  --funcao do mux bus_c
    mux_addr: ram_addr <= mem_addr when addr_sel ='1' else program_counter ;  --funcao do mux addr
    mux_bus_a: bus_a <= R3 when a_addr="11" else --funcao mux bus_a
                        R2 when a_addr="10" else
                        R1 when a_addr="01" else
                        R0;
    
    mux_bus_b: bus_b <= R3 when b_addr="11" else --funcao mux bus_b
                        R2 when b_addr="10" else
                        R1 when b_addr="01" else
                        R0;    
                        
    reg_bank: process (clk) --funcao reg bank marcado na folha
    begin  
        if(clk'event and clk='1') then
            if(write_reg_enable='1') then
                case c_addr is
                    when "11" => R3 <= bus_c;
                    when "10" => R2 <= bus_c;
                    when "01" => R1 <= bus_c;
                    when others => R0 <= bus_c;
                end case;
            end if;
        end if;
    end process;               

    
    reg_inst: process (clk) --funcao reg_inst marcado na folha
    begin
        if(clk'event and clk='1') then
            if(ir_enable='1') then
                instruction<=data_in;
            end if;
         end if;    
    end process;
   
   reg_pc: process(clk) --funcao do pc e do branch juntas, funcao reg_pc marcado na folha
   begin
        if(clk'event and clk='1') then
            if(rst_n = '0') then
                program_counter <= "00000";               
            elsif(pc_enable='1') then
                if(branch='0') then
                    program_counter <= mem_addr;
                else
                    program_counter <= program_counter + 1;
                end if;
           end if;
        end if; 
   end process;
   
   decoded_inst: process (instruction) --funcao para decodificar instruçoes e a partir disso o que fazer
   begin
       a_addr <="00";
       b_addr <="00";
       c_addr <="00";
       mem_addr <="00000";
       
       case instruction (15 downto 8) is
            when x"81" => --funcao load (1000 0001)
                decoded_instruction <= I_LOAD;
                mem_addr <= instruction (4 downto 0);
                c_addr <= instruction (6 downto 5);
                --c_sel = 1, write_reg_enable = 1; ir_enable = 1; resto = x;
                
            when x"82" => --funcao store (1000 0010)
                decoded_instruction <= I_STORE;
                mem_addr <= instruction (4 downto 0);
                a_addr <= instruction (6 downto 5); --(Mudei aqui o c_addr para a_addr)
                
            when x"91" => --funçao move (1001 0001)  
                decoded_instruction <= I_MOVE;
                mem_addr <= "00000";
                a_addr <= instruction (1 downto 0);
                b_addr <= instruction (1 downto 0);
                c_addr <= instruction (3 downto 2);
                --fazer a ula or( a_addr e o b_addr) - c_sel = 0, write_reg_enable = 1; ir_enable = 1; resto = x;;
                
            when x"A1" => --funcao add (1010 0001) 
                decoded_instruction <= I_ADD;
                a_addr <= instruction (1 downto 0);
                b_addr <= instruction (3 downto 2);
                c_addr <= instruction (5 downto 4);
                --fazer a ula add( a_addr e o b_addr) - c_sel = 0, write_reg_enable = 1; ir_enable = 1; resto = x;
                
            when x"A2" => --funcao sub (1010 0010)
                decoded_instruction <= I_SUB;
                b_addr <= instruction (1 downto 0);
                a_addr <= instruction (3 downto 2);
                c_addr <= instruction (5 downto 4);
                --fazer a ula sub( a_addr e o b_addr) - c_sel = 0, write_reg_enable = 1; ir_enable = 1; resto = x;
                
            when x"A3" => --funcao and (1010 0011)
                decoded_instruction <= I_AND;
                a_addr <= instruction (1 downto 0);
                b_addr <= instruction (3 downto 2);
                c_addr <= instruction (5 downto 4);
                --fazer a ula AND( a_addr e o b_addr) - c_sel = 0, write_reg_enable = 1; ir_enable = 1; resto = x;
                            
            when x"A4" => --funcao or (1010 0100)
                decoded_instruction <= I_OR;
                a_addr <= instruction (1 downto 0);
                b_addr <= instruction (3 downto 2);
                c_addr <= instruction (5 downto 4);
                --fazer a ula OR( a_addr e o b_addr) - c_sel = 0, write_reg_enable = 1; ir_enable = 1; resto = x;
                             
            when x"01" => --funcao branch 
                decoded_instruction <= I_BRANCH;
                mem_addr <= instruction (4 downto 0);
                -- pra atualizar o pc temos que ter no controle os seugintes sinais:
                -- branch = 1; pc_enable = 1; ir_enable = 1;
                                   
            when x"02" => --funcao bzero
                decoded_instruction <= I_BZERO;
                mem_addr <= instruction (4 downto 0);
                -- pra atualizar o pc temos que ter no controle os seugintes sinais:
                -- branch = 1; pc_enable = 1; ir_enable = 1 e flag_zero = 1;
                
            when x"03" => --funcao bneg  
                decoded_instruction <= I_BNEG;
                mem_addr <= instruction (4 downto 0);
                -- pra atualizar o pc temos que ter no controle os seugintes sinais:
                -- branch = 1; pc_enable = 1; ir_enable = 1 e flag_neg = 1;
                        
            when x"FF" => --funcao halt
                decoded_instruction <= I_HALT;
                --  morrer
            when others => -- funcao nop
                decoded_instruction <= I_NOP;
                --essa linha não faz nada, vai pra proxima, ou seja, pc_enable = 1, branch = 0, ir_enable = 1;
       end case;
   end process;
       
   
    ula: process (clk) --funcao para decodificar instruçoes e a partir disso o que fazer
    begin
    -- entrada = bus_a e bus_b e operação
    -- saida = ula_out, e flags (zero, neg, uover, sover)
        case operation is
            when "11" => ula_out <= bus_a and bus_b;
            when "10" => ula_out <= bus_a - bus_b;
            when "01" => ula_out <= bus_a + bus_b;
            when others => ula_out <= bus_a or bus_b;--"00"
        end case; 
        
        --Agora analisa as flags lindas
        --zero_op
         if (ula_out = x"0000") then
            ula_zero <= '1';
         else
             ula_zero <= '0';
         end if ;
        --neg_op  
        if (ula_out (15) = '1') then
            ula_neg <= '1';
         else
             ula_neg <= '0';
        end if ;    
        --unsigned_overflow 
        if (bus_a(15) = '1' and bus_b(15) = '1') then
            ula_u_over <= '1';
         else
             ula_u_over <='0';
        end if ;
        if ((bus_a (15) = '1' or bus_b (15) = '1') and ula_out (15) = '0') then
            ula_u_over <='1';
         else
            ula_u_over <='0';
        end if ;
        --signed_overflow 
        if (bus_a (15) = '1' and bus_b (15) = '1' and ula_out (15) = '0') then
            ula_s_over <= '1';
        else
            ula_s_over <= '0';
        end if ;
        if (bus_a (15) = '0' and bus_b (15) = '0' and ula_out (15) = '1') then
            ula_s_over <= '1';
        else
            ula_s_over <='0';
        end if ;
        
    end process;         
     
     flags: process (clk) --funcao reg_inst marcado na folha
        begin
            if(clk'event and clk='1') then
                if(flags_reg_enable='1') then
                    zero_op <= ula_zero;
                    neg_op <= ula_neg;
                    unsigned_overflow <= ula_u_over;
                    signed_overflow <= ula_s_over;
                end if;
             end if;    
        end process;
        
 end rtl;
    
    

    
