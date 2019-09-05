----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/04/2019 07:57:45 PM
-- Design Name: 
-- Module Name: project2_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.all;

entity project2_top is Port (
    AC_ADR0   : in std_logic;
    AC_ADR1   : in std_logic;
    AC_GPIO0  : in std_logic;
    AC_GPIO1  : in std_logic;
    AC_GPIO2  : in std_logic;
    AC_GPIO3  : in std_logic;
    AC_MCLK   : in std_logic;
    AC_SCK    : in std_logic;
    AC_SDA    : in std_logic
  );
end project2_top;

architecture Behavioral of project2_top is
  signal reset : std_logic;
  signal clk : std_logic;
  signal audio_out_word : std_logic_vector(31 downto 0);
begin

    ll_dac_gen: entity lowlevel_dac_intfc port map (
      rst => reset,
      clk100 => clk,
      data_word => audio_out_word,
      sdata
      lrck
      bclk
      mclk
      latched_data
    ); 

end Behavioral;
