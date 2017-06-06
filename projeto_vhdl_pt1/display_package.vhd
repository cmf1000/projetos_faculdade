LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE display_package IS
COMPONENT display_BCD
PORT ( bcd: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		 err: IN STD_LOGIC;
		 leds: OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END COMPONENT ;
END display_package ;