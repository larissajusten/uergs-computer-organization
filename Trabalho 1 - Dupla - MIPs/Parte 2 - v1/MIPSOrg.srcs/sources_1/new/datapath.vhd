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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity datapath is
    Port ( 
    rst_n              :in  std_logic;
    clk                :in  std_logic;
    data_in            :inout std_logic_vector (15 downto 0);
    x3                 :out std_logic_vector (15 downto 0);
    data_out           :in std_logic_vector(15 downto 0);
    addr               :out std_logic_vector(7 downto 0);
    opcode             :out std_logic_vector(3 downto 0);
----IN
--------------MUX's
    branch            :in  std_logic;
    addr_sel          :in  std_logic;
    r_sel             :in std_logic;
    sel_x1            :in std_logic;
    sel_x2            :in std_logic;
    sel_x3            :in std_logic;
    pc_enable         :in  std_logic;
    ir_enable         :in  std_logic;
    op_ULA            :in  std_logic_vector (1 downto 0);
    reg_write         :in std_logic;
-------------FLAG's
    flag_zero         :out std_logic;
    flag_neg          :out std_logic
);
end datapath;

architecture rtl of datapath is
    signal pc               :std_logic_vector (7 downto 0);
    signal mem_out          :std_logic_vector (15 downto 0);
    signal reg_banco_m      :std_logic_vector (15 downto 0);
    signal mem_addr         :std_logic_vector (7 downto 0);
    signal bus_a            :std_logic_vector (15 downto 0);
    signal bus_b            :std_logic_vector (15 downto 0);
    signal RA               :std_logic_vector (1 downto 0); 
    signal RB               :std_logic_vector (1 downto 0); 
    signal RC               :std_logic_vector (1 downto 0);
    signal R0               :std_logic_vector (15 downto 0); 
    signal R1               :std_logic_vector (15 downto 0); 
    signal R2               :std_logic_vector (15 downto 0); 
    signal R3               :std_logic_vector (15 downto 0); 
    signal ula_a            :std_logic_vector (15 downto 0); 
    signal ula_b            :std_logic_vector (15 downto 0);
    signal ula_out          :std_logic_vector (15 downto 0);
    signal mux_branch_out   :std_logic_vector (7 downto 0);
    signal x1               :std_logic_vector (15 downto 0);
    signal x2               :std_logic_vector (15 downto 0);

begin
-----------------
mux_mem: addr <=  mem_addr when addr_sel = '1' else pc; 

mux_reg: reg_banco_m <= data_out when r_sel = '1' else ula_out; 

mux_branch: mux_branch_out <= mem_addr when branch = '1' else pc + 2;

mux_x1: x1 <= ula_a when sel_x1 = '1' else ula_out;

mux_x3: x3 <= x2 when sel_x3 = '1' else data_in;
-----------------
demux: process(clk)
begin
    if(clk'event and clk='1') then
        if(sel_x2 = '1') then
            reg_banco_m <= x1;
        else
            x2 <= x1;
            end if;
    end if;
end process;
-----------------
reg_pc: process(clk)
begin
    if(clk'event and clk='1') then
        if(rst_n = '0') then
            pc <= "00000000";
        else
            if(pc_enable = '1') then
                pc <= mux_branch_out;
            end if;
        end if;
    end if;
end process;
-----------------
reg_inst: process(clk)
begin
    if (clk'event and clk='1') then
        if(rst_n = '0') then
            mem_addr <= x"00";
            RA <= "00";
            RB <= "00";
            RC <= "00";
            opcode <= "0000";
        elsif(ir_enable = '1') then
            case data_out(15 downto 12) is
                when "0000" => --nop
                    -- não faz nada
                when "0001" => --jump
                    mem_addr <= data_out(7 downto 0);
                when "0010" => --bneg
                    mem_addr <= data_out(7 downto 0);
                when "0011" => --beq
                    mem_addr <= data_out(7 downto 0);
                when "0101" => --load
                    RC <= data_out(11 downto 10);
                    mem_addr <= data_out(7 downto 0);
                when "0110" => --store
                    RA <= data_out(11 downto 10);
                    mem_addr <= data_out(7 downto 0);
                when "1000" => --add
                    RA <= data_out(3 downto 2);
                    RB <= data_out(1 downto 0);
                    RC <= data_out(5 downto 4);
                when "1001" => --sub
                    RA <= data_out(3 downto 2);
                    RB <= data_out(1 downto 0);
                    RC <= data_out(5 downto 4);                
                when "1010" => --and
                    RA <= data_out(3 downto 2);
                    RB <= data_out(1 downto 0);
                    RC <= data_out(5 downto 4);
                when "1011" => --or
                    RA <= data_out(3 downto 2);
                    RB <= data_out(1 downto 0);
                    RC <= data_out(5 downto 4); 
                when "1100" => --addi
                    RA <= data_out(9 downto 8);  
                    RC <= data_out(11 downto 10);
                    mem_addr <= data_out(7 downto 0);
                when "1110" => --not
                    RA <= data_out(11 downto 10);
                    mem_addr <= data_out(7 downto 0);
                when "1111" => --halt
                    -- não faz nada
                when others =>
                    -- não faz nada
            end case;
            opcode <= data_out (15 downto 12);
        end if;
    end if;
 end process;
-----------------
reg_a: process(clk)
begin
    if(clk'event and clk='1') then
        if(rst_n = '0') then
            ula_a <= x"0000";
        else
            ula_a <= bus_a;
            data_in <= bus_a;
        end if;
    end if;  
end process;

reg_b: process(clk)
begin
    if(clk'event and clk='1') then
        if(rst_n = '0') then
            ula_b <= x"0000";
        else
            ula_b <= bus_b;
        end if;
    end if;  
end process;
-----------------
reg_banco: process(clk)
begin
    if(clk'event and clk = '1') then
        if(rst_n = '0') then
            R0 <= x"0000";
            R1 <= x"0000";
            R2 <= x"0000";
            R3 <= x"0000";
            bus_b <= x"0000";
            bus_a <= x"0000";
        else
            if(reg_write = '1') then	
                case RC is
                    when "00" => R0 <= reg_banco_m;
                    when "01" => R1 <= reg_banco_m;
                    when "10" => R2 <= reg_banco_m;
                    when others => R3 <= reg_banco_m;
                end case;
            end if;
            case RA is
                when "00" => bus_a <= R0;
                when "01" => bus_a <= R1;
                when "10" => bus_a <= R2;
                when others => bus_a <= R3;
           end case;
           case RB is
               when "00" => bus_b <= R0;
               when "01" => bus_b <= R1;
               when "10" => bus_b <= R2;
               when others => bus_b <= R3;
          end case;  
        end if;	
    end if;
end process;
-----------------
ula: process(clk)
begin
    if(clk'event and clk='1') then
        if(rst_n = '0') then
            ula_out <= x"0000";
        else
            case op_ULA is
                when "00" => --add
                    ula_out <= ula_a + ula_b;
                when "01" => --sub
                    ula_out <= ula_a - ula_b;
                when "10" => --and
                    ula_out <= ula_a and ula_b; 
                when others => --or
                    ula_out <= ula_a or ula_b;
                end case;
        end if;
    end if; 
end process;
-------------------
flag_zero <= '1' when ula_out = x"0000" else '0';
flag_neg <= '1' when (ula_out(15) = '1') else '0';
-------------------

end rtl;
