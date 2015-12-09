-------------------------------------------------------------------------------
-- Title      : Testbench for design "fullsystem"
-- Project    :
-------------------------------------------------------------------------------
-- File       : fullsystem_tb.vhd
-- Author     : Abelardo Jara  <abelardojara@Abelardos-MacBook-Pro.local>
-- Company    :
-- Created    : 2015-12-05
-- Last update: 2015-12-06
-- Platform   :
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------
-- Copyright (c) 2015
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-05  1.0      abelardojara    Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity fullsystem_tb is

end entity fullsystem_tb;

-------------------------------------------------------------------------------

architecture test of fullsystem_tb is

  -- component ports
  signal clk1   : std_logic;            -- listener clk
  signal clk2   : std_logic;            -- talker clk
  signal reset1 : std_logic := '0';
  signal reset2 : std_logic := '0';
  signal start  : std_logic := '0';
  signal ready  : std_logic;
  signal rcv    :  std_logic;           -- talker gets succesful transmit permit

  -- Clock period definitions
  constant clk1_period : time := 10 ns;  -- listener clk
  constant clk2_period : time := 4 ns;  -- talker clk

begin  -- architecture test

  -- component instantiation
  DUT: entity work.fullsystem
    port map (
      clk1   => clk1,
      clk2   => clk2,
      reset1 => reset1,
      reset2 => reset2,
      start  => start,
      ready  => ready,
      rcv => rcv);

  -- Clock process definitions
  clk1_process: process
  begin
    clk1 <= '0';
    wait for clk1_period;
    clk1 <= '1';
    wait for clk1_period;
  end process;

  -- Clock process definitions
  clk2_process: process
  begin
    clk2 <= '0';
    wait for clk2_period;
    clk2 <= '1';
    wait for clk2_period;
  end process;


  -- waveform generation
  WaveGen1_Proc: process
  begin
    -- insert signal assignments here
    wait until clk1'event and clk1 = '1';
    reset1 <= '1';
    reset2 <= '1';
    start <= '0';
    wait until clk1'event and clk1 = '1';
    reset1 <= '0';
    reset2 <= '0';
    wait until clk1 = '1';
    start <= '1';
    wait until clk1 = '1';
    start <= '0';
    wait;
  end process WaveGen1_Proc;

end architecture test;
