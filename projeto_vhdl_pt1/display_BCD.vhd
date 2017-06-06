LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY display_BCD IS
PORT ( 	bcd: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			err: IN STD_LOGIC;
			leds: OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END display_BCD ;

ARCHITECTURE Behavior OF display_BCD IS
SIGNAL led: STD_LOGIC_VECTOR(1 TO 7)  ;
BEGIN
	PROCESS (bcd)
	BEGIN
		CASE bcd IS -- abcdefg
			WHEN "0000" => leds <= "0000001" ;
			WHEN "0001" => leds <= "1001111" ;
			WHEN "0010" => leds <= "0010010" ;
			WHEN "0011" => leds <= "0000110" ;
			WHEN "0100" => leds <= "1001100" ;
			WHEN "0101" => leds <= "0100100" ;
			WHEN "0110" => leds <= "0100000" ;
			WHEN "0111" => leds <= "0001111" ;
			WHEN "1000" => leds <= "0000000" ;
			WHEN "1001" => leds <= "0001100" ;
			WHEN OTHERS => leds <= "-------" ;
		END CASE ;
		CASE err IS
			WHEN '0' => leds <= led;
			WHEN '1' => leds <= "0110000";
		END CASE;
	END PROCESS ;
END Behavior ;