library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity VGA is
port(
CLK_I : in std_logic;
RST : in std_logic;
vga_blank_n : out std_logic;
 vga_sync_n, VGA_CLK : out std_logic := '0';
 hsync, vsync : out std_logic;
R, G, Bl :  out std_logic_vector(7 downto 0)
);
end entity;

architecture VGA_RTL of VGA is
--signal R, G, Bl :  std_logic_vector(7 downto 0);
signal cnt : integer range 0 to 1023;
signal string_cnt : integer range 0 to 1023;
--signal hsync, vsync : std_logic;
signal h_blank_n, v_blank_n : std_logic;
constant a : integer := 190 / 2;
constant b : integer := 95 / 2;
constant c : integer := 1270 / 2;
constant d : integer := 30 / 2;
constant sa : integer := 2;
constant sb : integer := 33;
constant sc : integer := 480;
constant sd : integer := 10;
signal CLK : std_logic := '0';
begin
vga_blank_n <= (h_blank_n and v_blank_n);
VGA_CLK <= CLK;
process(CLK_I)
begin
if (rising_edge (clk_I)) then 
CLK <=  not CLK;
end if;
end process;

Display_to_Monitor:
process(CLK)
begin
if (rising_edge (clk) and RST = '0') then 
	if(cnt < a) then
	hsync <= '0';
	h_blank_n <= '0';
	cnt <= cnt + 1;
	elsif(cnt < (a+b)) then
	hsync <= '1';
	cnt <= cnt + 1;
	elsif(cnt < (a+b+c/3) then
	h_blank_n <= '1';
	R <= x"FF";
	G <= x"FF";
	Bl <= x"FF";
	cnt <= cnt + 1;
	elsif(cnt < ((a+b+c/3*2)) then
	h_blank_n <= '1';
	R <= x"11";
	G <= x"1D";
	Bl <= x"FF";
	cnt <= cnt + 1;
	elsif(cnt < ((a+b+c))) then
	h_blank_n <= '1';
	R <= x"FF";
	G <= x"19";
	Bl <= x"34";
	cnt <= cnt + 1;
	elsif(cnt < (a+b+c+d-1)) then
	h_blank_n <= '0';
	cnt <= cnt + 1;
	else
	cnt <= 0;
	string_cnt <= string_cnt + 1;
				if(string_cnt < sa) then
				vsync <= '0';
				v_blank_n <= '0';
				elsif(string_cnt < (sa+sb)) then
				vsync <= '1';
				elsif(string_cnt < (sa+sb+sc)) then
				v_blank_n <= '1';
				elsif(string_cnt < (sa+sb+sc+sd - 1)) then
				v_blank_n <= '0';
				else
				string_cnt <= 0;
				end if;
	end if;
--cnt <= cnt + 1;	
end if;
--cnt <= cnt + 1;
end process;
end architecture;
