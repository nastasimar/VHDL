library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity uart is
generic(Baud_clk: integer := 5208); --clk/baud_rate 5208
port 
(
	 clk   : in  std_logic							;
	rst_n : in  std_logic							;
	data  : out std_logic_vector(7 downto 0)  ;
	st_en : in std_logic								;
	data_in : in  std_logic							;
	data_out : out  std_logic							;
	vector: in std_logic_vector(7 downto 0)
        );

end entity; 

architecture full_uart of uart is 
component UART_TX is

    generic( Baud_clk: integer := 5208 ); -- clk/baud_rate (50 000 000 / 9600 = 5208.333)

       port(
        clk					: in  std_logic;
        reset_n			: in  std_logic;
        tx_start_en		: in  std_logic;
        tx_data_in		: in  std_logic_vector (7 downto 0);
        tx_data_out		: out std_logic
        );
end component;

 component UART_RX is 
generic(Baud_clk: integer := 5208); --clk/baud_rate 
port(
	CLOCK_50 : in 	std_logic							;
	RX 		: in 	std_logic							;
   RX_DATA	      :  out std_logic_vector(7 downto 0);
	RX_Done	: out std_logic
	
);
end component;
signal wire : std_logic;
signal RX_Ready : std_logic;
begin 
transmitter: uart_tx
generic map(Baud_clk => 5208)
port map (clk => clk, reset_n => rst_n ,tx_start_en=> st_en,tx_data_in=> vector,tx_data_out	=> data_out );

recevier: uart_rx 
generic map(Baud_clk => 5208)
port map(clk => clk, rst_n => rst_n, RX => data_in, RX_DATA => data_out, RX_Done => RX_Ready);

end architecture;