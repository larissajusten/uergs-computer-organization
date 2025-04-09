library IEEE;
use IEEE.NUMERIC_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith;

entity tb_mips is

end tb_mips;

architecture tb_mips of tb_mips is
	signal clk	: std_logic := '0';
	signal rst	: std_logic := '1';
	constant clk_period : time	:= 10 ns;

begin

rst <= '0' after clk_period;

  clk_100Mhz : process
  begin
    clk <= '0';

    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

    top: entity work.top_mips
    port map(
        clk => clk,
        rst => rst
    );

end tb_mips;