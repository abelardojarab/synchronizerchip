library ieee;
use ieee.std_logic_1164.all;

entity fullsystem is

  port (
    clk1 : in std_logic;
    clk2 : in std_logic;
    reset1: in std_logic;
    reset2: in std_logic;

    -- talker signals
    start: in std_logic;
    ready: out std_logic;
    rcv: out std_logic
   );

end entity fullsystem;

architecture fullsystem_str of fullsystem is

  signal req_in : std_logic;
  signal ack_out : std_logic;

  component listener_str is
    port (
      clk     : in  std_logic;
      reset   : in  std_logic;
      req_in  : in  std_logic;
      ack_out : out std_logic);
  end component listener_str;

  component talker_str is
    port (
      clk     : in  std_logic;
      reset   : in  std_logic;
      ack_in  : in  std_logic;
      ack_out : out std_logic;
      start   : in  std_logic;
      ready   : out std_logic;
      req_out : out std_logic);
  end component talker_str;

begin  -- architecture fullsystem_str

  -- instance "listener_str_1"
  listener_str_1: listener_str
    port map (
      clk     => clk1,
      reset   => reset1,
      req_in  => req_in,
      ack_out => ack_out);

  -- instance "talker_str_1"
  talker_str_1: talker_str
    port map (
      clk     => clk2,
      reset   => reset2,
      ack_in  => ack_out,
      ack_out => rcv,
      start   => start,
      ready   => ready,
      req_out => req_in);

end architecture fullsystem_str;
