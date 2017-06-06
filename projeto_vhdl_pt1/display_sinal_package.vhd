LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE display_sinal_package IS
COMPONENT display_sinal
PORT ( sinal: IN STD_LOGIC ;
			leds: OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END COMPONENT ;
END display_sinal_package ;