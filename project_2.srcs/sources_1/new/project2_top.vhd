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
    AC_ADR0   : inout std_logic;  -- CODEC SPI Data Latch: must go LOW at the BEGGINING of an SPI transaction and HIGH at the END.
    AC_ADR1   : inout std_logic;  -- CODEC SPI Data Input 
    AC_GPIO0  : inout std_logic;  -- CODEC Digital Audio Serial-Data DAC
 -- AC_GPIO1  : in std_logic;   -- CODEC Digital Audio Serial-Data ADC - not used
    AC_GPIO2  : inout std_logic;  -- CODEC Digital Audio bit clock
    AC_GPIO3  : inout std_logic;  -- CODEC Digital Audio Left-Right Clock
    AC_MCLK   : inout std_logic;  -- CODEC Master Clock
    AC_SCK    : inout std_logic;  -- CODEC SPI Clock
    AC_SDA    : inout std_logic;   -- CODEC SPI Data Output
    uart_tx   : out std_logic;  -- PMOD UART TX
    uart_rx   : in std_logic;   -- PMOR UART RX
    SW0       : in std_logic;   -- for reset
    GCLK      : in std_logic;    -- for system clock
    LEDS      : out std_logic_vector(7 downto 0)
  );
end project2_top;

architecture Behavioral of project2_top is

  component ila_0 is port (
      clk : IN STD_LOGIC; 
      probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe18 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe21 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe22 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe23 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe24 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe25 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe26 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe27 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe28 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe29 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
      probe30 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe31 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  end component; 
  
  component proc_system is port (
      uart_rtl_rxd : in STD_LOGIC;
      uart_rtl_txd : out STD_LOGIC;
      M_AXIS_tvalid : out STD_LOGIC;
      M_AXIS_tready : in STD_LOGIC;
      M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
      M_AXIS_tlast : out STD_LOGIC;
      Clk : in STD_LOGIC;
      reset_rtl : in STD_LOGIC;
      leds_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
      axis_fifo_aresetn : in STD_LOGIC;
      spi_rtl_io0_i : in STD_LOGIC;
      spi_rtl_io0_o : out STD_LOGIC;
      spi_rtl_io0_t : out STD_LOGIC;
      spi_rtl_io1_i : in STD_LOGIC;
      spi_rtl_io1_o : out STD_LOGIC;
      spi_rtl_io1_t : out STD_LOGIC;
      spi_rtl_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
      spi_rtl_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
      spi_rtl_ss_t : out STD_LOGIC;
      spi_rtl_sck_i : in STD_LOGIC;
      spi_rtl_sck_o : out STD_LOGIC;
      spi_rtl_sck_t : out STD_LOGIC
    );
  end component proc_system;
  
  component IOBUF is port (
      I : in STD_LOGIC;
      O : out STD_LOGIC;
      T : in STD_LOGIC;
      IO : inout STD_LOGIC
    );
  end component IOBUF;
    
  signal spi_rtl_io0_i : STD_LOGIC;
  signal spi_rtl_io0_o : STD_LOGIC;
  signal spi_rtl_io0_t : STD_LOGIC;
  signal spi_rtl_io0_io : STD_LOGIC;
  
  signal spi_rtl_io1_i : STD_LOGIC;
  signal spi_rtl_io1_o : STD_LOGIC;
  signal spi_rtl_io1_t : STD_LOGIC;
  signal spi_rtl_io1_io : STD_LOGIC;
  
  signal spi_rtl_sck_i : STD_LOGIC;
  signal spi_rtl_sck_o : STD_LOGIC;
  signal spi_rtl_sck_t : STD_LOGIC;
  signal spi_rtl_sck_io : STD_LOGIC;
  
  signal spi_rtl_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_ss_t : STD_LOGIC;
    
  signal reset : std_logic;
  signal not_reset : std_logic;
  signal clk : std_logic;
  signal audio_out_word : std_logic_vector(31 downto 0);
  signal adc_ready : std_logic;
  signal uninitialized : std_logic;
  signal buffered_adc_ready : std_logic := '1';
  
  signal ila_probes : std_logic_vector(31 downto 0);
  
begin

    not_reset <= not reset;

    -- Connect audio codec   
    ll_dac_gen: entity lowlevel_dac_intfc port map (
        rst => reset,
        clk100 => clk,
        data_word => audio_out_word,
        sdata => AC_GPIO0,
        lrck => AC_GPIO3,
        bclk => AC_GPIO2,
        mclk=> AC_MCLK,
        latched_data => adc_ready 
    ); 
    
    buffer_latched_data : process (clk, reset)
    begin
      buffered_adc_ready <= uninitialized or adc_ready;  
      if reset = '1' then
        buffered_adc_ready <= '1';
      elsif rising_edge(clk) then
        if adc_ready = '1' then 
          uninitialized <= '0';
        end if;
      end if; 
    end process;
    
    proc_system_gen: component proc_system port map (
        Clk => Clk,
        M_AXIS_tdata(31 downto 0) => audio_out_word,
        M_AXIS_tready => buffered_adc_ready,
        axis_fifo_aresetn => not_reset,
        reset_rtl => reset,
        uart_rtl_rxd => uart_rx,
        uart_rtl_txd => uart_tx,
        leds_8bits_tri_o => LEDS,
        spi_rtl_io0_i => spi_rtl_io0_i,
        spi_rtl_io0_o => spi_rtl_io0_o,
        spi_rtl_io0_t => spi_rtl_io0_t,
        spi_rtl_io1_i => spi_rtl_io1_i,
        spi_rtl_io1_o => spi_rtl_io1_o,
        spi_rtl_io1_t => spi_rtl_io1_t,
        spi_rtl_sck_i => spi_rtl_sck_i,
        spi_rtl_sck_o => spi_rtl_sck_o,
        spi_rtl_sck_t => spi_rtl_sck_t,
        spi_rtl_ss_i(0) => spi_rtl_ss_i_0(0),
        spi_rtl_ss_o(0) => spi_rtl_ss_o_0(0),
        spi_rtl_ss_t => spi_rtl_ss_t
    );
    
    spi_rtl_io0_iobuf: component IOBUF
         port map (
          I => spi_rtl_io0_o,
          IO => spi_rtl_io0_io,
          O => spi_rtl_io0_i,
          T => spi_rtl_io0_t
        );
    spi_rtl_io1_iobuf: component IOBUF
         port map (
          I => spi_rtl_io1_o,
          IO => spi_rtl_io1_io,
          O => spi_rtl_io1_i,
          T => spi_rtl_io1_t
        );
    spi_rtl_sck_iobuf: component IOBUF
         port map (
          I => spi_rtl_sck_o,
          IO => spi_rtl_sck_io,
          O => spi_rtl_sck_i,
          T => spi_rtl_sck_t
        );
    spi_rtl_ss_iobuf_0: component IOBUF
         port map (
          I => spi_rtl_ss_o_0(0),
          IO => spi_rtl_ss_io_0(0),
          O => spi_rtl_ss_i_0(0),
          T => spi_rtl_ss_t
        );
        
    -- Hook up the Proc system's SPI Interface to the ADAU1761's SPI
    AC_ADR1 <= spi_rtl_io0_io;
    spi_rtl_io1_io <= AC_SDA;
    AC_SCK <= spi_rtl_sck_io;
    AC_ADR0 <= spi_rtl_ss_io_0(0);
    
    reset <= SW0;
    clk <= GCLK;
    
    -- ILA Hookup
    ila_probes(0) <= spi_rtl_sck_o; -- spi clock
    ila_probes(1) <= spi_rtl_io0_o; -- spi output to dac
    --ila_probes(2) <= spi_rtl_io1_i; -- spi output from dac
    ila_probes(2) <= spi_rtl_io1_o; -- spi output from dac
    ila_probes(3) <= spi_rtl_ss_o_0(0); -- spi SS

    ila_probes(4) <= adc_ready;
    
    ila_probes(31 downto 5) <= (others => reset);

    ila_inst: component ila_0 port map (
        clk => clk,
        probe0 => ila_probes(0 downto 0), 
        probe1 => ila_probes(1 downto 1), 
        probe2 => ila_probes(2 downto 2), 
        probe3 => ila_probes(3 downto 3), 
        probe4 => ila_probes(4 downto 4), 
        probe5 => ila_probes(5 downto 5), 
        probe6 => ila_probes(6 downto 6), 
        probe7 => ila_probes(7 downto 7), 
        probe8 => ila_probes(8 downto 8), 
        probe9 => ila_probes(9 downto 9), 
        probe10 => ila_probes(10 downto 10), 
        probe11 => ila_probes(11 downto 11), 
        probe12 => ila_probes(12 downto 12), 
        probe13 => ila_probes(13 downto 13), 
        probe14 => ila_probes(14 downto 14), 
        probe15 => ila_probes(15 downto 15), 
        probe16 => ila_probes(16 downto 16), 
        probe17 => ila_probes(17 downto 17), 
        probe18 => ila_probes(18 downto 18), 
        probe19 => ila_probes(19 downto 19), 
        probe20 => ila_probes(20 downto 20), 
        probe21 => ila_probes(21 downto 21), 
        probe22 => ila_probes(22 downto 22), 
        probe23 => ila_probes(23 downto 23), 
        probe24 => ila_probes(24 downto 24), 
        probe25 => ila_probes(25 downto 25), 
        probe26 => ila_probes(26 downto 26), 
        probe27 => ila_probes(27 downto 27), 
        probe28 => ila_probes(28 downto 28), 
        probe29 => ila_probes(29 downto 29), 
        probe30 => ila_probes(30 downto 30),
        probe31 => ila_probes(31 downto 31)
    );
    
end Behavioral;
