LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;


ENTITY LCD  is
port 
(
CLK : in std_logic;
RST : in std_logic;
RS : out  std_logic;
RW : out  std_logic;
EN : out  std_logic;
LCD_ON : out std_logic :=  '1'; 
BLON : out std_logic := '1';
DATA : inout std_logic_vector (7 downto 0)
);
end entity; 

architecture LCD_RTL of LCD is 
signal start, ready, Tover, RS_HL, RW_HL, OE : std_logic;
signal T_max: integer range 0 to 1023 := 1;
Type State_HL is (send, Delay,  waitReady, IDLE);
signal Sthl : State_HL  := send;
type State_LL is (IDLE, Set_RSRW, Set_E_data, clr_EN, SET_RSRW_BUSY, READ_BUSY, LL_READY, SET_E_BUSY);
 signal STLL : State_LL :=  IDLE;
 signal Data_IN, Data_out : std_logic_vector (7 downto 0);
begin 
DATA <= Data_out when OE = '0' else "ZZZZZZZZ";
Data_IN <= DATA;
RW <= OE;




process (T_max)
variable  cnt : integer range 0 to 1023 := 0;
begin 
	if (rst = '0') then 
	CNT := 0;
	Tover <= '0';
	elsif (rising_edge (CLK)) then 
		if (CNT = T_max) then 
		CNT := 0;
		Tover <= '1';
		else 
		CNT := CNT + 1;
		Tover <= '0';
	   end if;
	end if;	
end process;

SM_LL: process (CLK)
begin 
if (rst = '0') then 
	STLL <= IDLE;
	 RS <= '1';
--	 RW <= '1';
	 OE <= '1';
	 EN <= '0';
	 Ready <= '1';
	elsif (rising_edge (CLK)) then 
		case (STLL) is
		
		when IDLE => 
		RS <= RS_HL;
		OE <= RW_HL;
		EN <= '0';
		Ready <= '1';
		T_max <= 30;
		
			
		if (start <= '1') then 
		stLL <= Set_RSRW;
		 else 
		 stLL <= IDLE;
		end if;
		
		when Set_RSRW =>
		RS <= RS_HL;
	   -- RW <= RW_HL;
		 OE <= RW_HL;
	    EN <= '0';
	    Ready <= '0';
		 T_max <= 30;
		
		
		
		if (Tover <= '1') then 
		 stlL <= Set_E_data;
		 else 
		 stlL <= Set_RSRW ;
		end if;
		
		
		when Set_E_data => 
		RS <= RS_HL;
--	    RW <= RW_HL;
		 OE <= RW_HL;
	    EN <= '1';
	    Ready <= '0';
		 T_max <= 30; 
		if (Tover <= '1') then 
		 stlL <= Set_E_data;
		 else 
		 stlL <= Set_RSRW ;
		end if;
		
		when clr_EN => 
		 RS <= '0';
--	    RW <= '1';
		OE <= '1';
	    EN <= '0';
--	    Ready <= '0';
		 T_max <= 30; 
		
		if (Tover <= '1') then 
		 stlL <= SET_RSRW_BUSY;
		 Ready <= '0';
		 else 
		 stlL <= clr_EN ;
		 Ready <= '1';
		end if;
		
		when SET_RSRW_BUSY =>
		 stlL <= READ_BUSY;
		 RS <= '0';
--	    RW <= '1';
		  OE <= '1';
	    EN <= '1';
	    Ready <= '0';
		 T_max <= 30; 
		if (Tover <= '1') then 
		 stlL <= SET_E_BUSY;
		 
		 else 
		 stlL <= SET_RSRW_BUSY ; 
		end if;
		
     when SET_E_BUSY =>
	  RS <= '0';
--	    RW <= '1';
		  OE <= '1';
	    EN <= '1';
	    Ready <= '0';
		 T_max <= 30;
		 
		 if (Tover = '1') then 
		 stLL <= SET_E_BUSY;
		 else 
		 stLL <= READ_BUSY;
		 end if; 
		
		
		when READ_BUSY =>
		 RS <= '1';
--	    RW <= '1';
		OE <= '1';
	    EN <= '0';
	    Ready <= '1';
		 T_max <= 30; 
		if (DATA_IN (7) <= '0') then 
		 stlL <= LL_READY;
		 
		 else 
		 stlL <= READ_BUSY ;
		 
		 end if;
		
		when LL_READY =>
		RS <= '1';
--	    RW <= '1';
		  OE <= '1';
	    EN <= '0';
	    Ready <= '0';
		 T_max <= 30; 
		 
		if (Tover <= '1') then 
		 stlL <= IDLE;
		 
		 else 
		 stlL <= LL_READY ;
		end if;
end case;
end if;
end process;

SM_HL: process (clk)

variable byte_cnt : integer range 0 to 255 := 0;
variable cnt_delay : integer range 0 to 20 := 0;
constant MAX_BYTE : integer range 0 to  6 := 6; 
type Buf is array (0 to MAX_BYTE - 1 ) of  std_logic_vector (7 downto 0);
constant DATA_BUF : Buf := ( X"38", -- F=0 N=1 - 2 lines DL = 1 - 8 bits 
									  X"0C", -- D=1 - display on  C=0  - cursor off B=0 - blinking off
									  X"16", -- SC= 0 cursor move RL = 1 shift to the right 
									  X"01", -- addres = 0 
									  X"31", 
									  X"32");
begin 

if (rst = '0') then 
	STHL <= WaitReady;
	 Start <= '0';
	 byte_cnt := 0;

elsif (rising_edge (CLK)) then 
	
  case (Sthl) is
 
when SEND => 

	 Start <= '1';
	 Data_out <= DATA_BUF(byte_cnt);
	-- Sthl <= WaitReady;
	 RW_HL <= '0';
	 if (byte_cnt < 4) then 
	 RS_HL <= '0';
	 else 
	 RS_HL <= '1';
	end if;
	Sthl <= Delay ;
   byte_cnt := byte_cnt + 1;
	cnt_delay := 0;
	
	
when Delay => 
Cnt_delay := Cnt_delay + 1; 
if (Cnt_delay = 20) then 
Sthl <= WaitReady; 
else 
Sthl <= Delay;	
end if; 
	
when  WaitReady =>

	if (ready = '0') then 
	Sthl <= WaitReady;
	start <= '0';
	else 
	start <= '0';
	if (byte_cnt = MAX_BYTE) then 
	Sthl <= IDLE;
	byte_cnt := 0;
	start <= '0';
	else 
	Sthl <= Send;	
	byte_cnt := byte_cnt + 1; 
	start <= '1';
	end if;
	end if;
	
when  IDLE	=>
	Sthl <= IDLE;	
	byte_cnt := 0;
	start <= '0';
end case;
end if;
end process SM_HL;		
end architecture;
