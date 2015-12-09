library ieee;
use ieee.std_logic_1164.all;

entity talker_str is

  port (
    clk     : in  std_logic;
    reset   : in  std_logic;
    ack_in  : in  std_logic;
    start   : in  std_logic;
    ready   : out std_logic;
    req_out : out std_logic;
    ack_out : out std_logic
    );

end entity talker_str;

architecture str_arch of talker_str is
  signal ack_sync : std_logic;
  component synchronizer
    port (
      clk      : in  std_logic;
      in_async : in  std_logic;
      reset    : in  std_logic;
      out_sync : out std_logic);
  end component synchronizer;

  component talker_fsm
    port (
      ack_out: out std_logic;
      ack_sync: in std_logic;
      clk: in std_logic;
      reset: in std_logic;
      start: in std_logic;
      ready: out std_logic;
      req_out: out std_logic);
  end component talker_fsm;

begin  -- architecture str_arch

  sync_unit: synchronizer port map (clk=>clk,
                                    reset=>reset,
                                    in_async=>ack_in,
                                    out_sync=>ack_sync);

  fsm_unit: talker_fsm port map (clk=>clk,
                                 reset=>reset,
                                 start=>start,
                                 ack_out=>ack_out,
                                 ack_sync=>ack_sync,
                                 ready=>ready,
                                 req_out=>req_out);

end str_arch;
