----------------------------------------------------------------------------------
-- Company: UERGS
-- Engineer: Larissa e Giovani
-- 
-- Create Date: 01.11.2018 
-- Design Name: MIPS Simples
-- Module Name: MIPs - rtl
-- Project Name: Trabalho de Organiza��o de Computadores 2018/2
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Dependencies: 
-- Revision:
-- Revision 0.01
-- Additional Comments:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity MIPs is
    Port ( 
    clk         :in std_logic;
    rst_n       :in std_logic
    );
    
end MIPs;

architecture rtl of MIPs is

    signal pc_enable_lg :std_logic;
    signal mem_write_lg :std_logic;
    signal mem_read_lg  :std_logic;
    signal branch_lg    :std_logic;
    signal addr_sel_lg  :std_logic;
    signal r_sel_lg     :std_logic;
    signal ir_enable_lg :std_logic;
    signal op_ULA_lg    :std_logic_vector(1 downto 0);
    signal reg_write_lg :std_logic;
    signal f_zero_lg    :std_logic;
    signal f_neg_lg     :std_logic;
    signal opcode_lg    :std_logic_vector(3 downto 0);
    signal x3_lg      :std_logic_vector(15 downto 0);           
    signal data_out_lg     :std_logic_vector(15 downto 0);          
    signal addr_lg         :std_logic_vector(7 downto 0);
    
begin

control_unit: entity work.control_unit
    port map(
        rst_n           =>rst_n,
        clk             =>clk,
        mem_write       =>mem_write_lg,
        mem_read        =>mem_read_lg,
        branch          =>branch_lg,
        addr_sel        =>addr_sel_lg,
        r_sel           =>r_sel_lg,
        pc_enable       =>pc_enable_lg,
        ir_enable       =>ir_enable_lg,
        op_ULA          =>op_ULA_lg,
        reg_write       =>reg_write_lg,
        f_zero          =>f_zero_lg,
        f_neg           =>f_neg_lg,
        opcode          =>opcode_lg
    );

datapath: entity work.datapath
    port map(
        rst_n           =>rst_n,            
        clk             =>clk,
        x3              =>x3_lg,          
        data_out        =>data_out_lg,          
        addr            =>addr_lg,             
        branch          =>branch_lg,
        addr_sel        =>addr_sel_lg,
        r_sel           =>r_sel_lg,
        pc_enable       =>pc_enable_lg,
        ir_enable       =>ir_enable_lg,
        op_ULA          =>op_ULA_lg,
        reg_write       =>reg_write_lg,
        flag_zero       =>f_zero_lg,
        flag_neg        =>f_neg_lg,
        opcode          => opcode_lg
    );

mem: entity work.mem
    port map(
        clk        => clk,
        rst_n      => rst_n,
        out_mem    => data_out_lg,
        in_mem     => x3_lg,
        read       => mem_read_lg,
        write      => mem_write_lg,
        end_mem => addr_lg
    );

end rtl;
