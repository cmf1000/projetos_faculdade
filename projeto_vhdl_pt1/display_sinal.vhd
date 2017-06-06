LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY display_sinal IS
PORT ( sinal: IN STD_LOGIC;
		 leds: OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END display_sinal;

ARCHITECTURE strutura OF display_sinal IS
BEGIN
	PROCESS (sinal)
	BEGIN
		CASE sinal IS
			WHEN '0' => leds <= "0000001" ;
			WHEN '1' => leds <= "1111110" ;
		END CASE;
	END PROCESS;
END strutura;