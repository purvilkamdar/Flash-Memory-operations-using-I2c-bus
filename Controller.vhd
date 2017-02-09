----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:26:02 04/27/2016 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Controller is
    Port ( WR : in  STD_LOGIC;
           START : in  STD_LOGIC;
           STOP : in  STD_LOGIC;
           SCL : in  STD_LOGIC;
           ShiftIn : out  STD_LOGIC;
           ShiftOut : out  STD_LOGIC;
           LoadShift : out  STD_LOGIC;
           LoadDevId : out  STD_LOGIC;
           LoadAddrLSB : out  STD_LOGIC;
           LoadAddrMSB : out  STD_LOGIC;
           IncrAddr : out  STD_LOGIC;
           SelAddr : out  STD_LOGIC;
           Sel5555 : out  STD_LOGIC;
           SelAAAA : out  STD_LOGIC;
           SelHOLD : out  STD_LOGIC;
           SelXXXX : out  STD_LOGIC;
           Sel55 : out  STD_LOGIC;
           SelAA : out  STD_LOGIC;
           SelB0 : out  STD_LOGIC;
           SelC0 : out  STD_LOGIC;
           SelD0 : out  STD_LOGIC;
           SelE0 : out  STD_LOGIC;
           Sel00 : out  STD_LOGIC;
           SelData : out  STD_LOGIC;
           EnDataIn : out  STD_LOGIC;
           EnDataOut : out  STD_LOGIC;
           SDAIn : out  STD_LOGIC;
           SDAOut : out  STD_LOGIC;
           EnSDAOut : out  STD_LOGIC;
           ENbar : out  STD_LOGIC;
           WEbar : out  STD_LOGIC;
           REbar : out  STD_LOGIC;
           SelAux : out  STD_LOGIC);
end Controller;

architecture Behavioral of Controller is

begin


end Behavioral;

