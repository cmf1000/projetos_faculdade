LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY display_BCD IS
	PORT ( 	bcd : IN STD_LOGIC_VECTOR(5 DOWNTO 0) ;
				err: in std_logic;
			leds : OUT STD_LOGIC_VECTOR(0 TO 13) );
END display_BCD;

ARCHITECTURE Behavior OF display_BCD IS	
SIGNAL led: STD_LOGIC_VECTOR(0 TO 13)  ;
Begin 
	PROCESS (bcd)
			BEGIN
				CASE bcd IS 
WHEN "000000"  => led <= "00000010000001";--00
WHEN "000001"  => led <= "00000011001111";--01
WHEN "000010"  => led <= "00000010010010";--02
WHEN "000011"  => led <= "00000010000110";--03
WHEN "000100"  => led <= "00000011001100";--04
WHEN "000101"  => led <= "00000010100100";--05
WHEN "000110"  => led <= "00000010100000";--06
WHEN "000111"  => led <= "00000010001111";--07
WHEN "001000"  => led <= "00000010000000";--08
WHEN "001001"  => led <= "00000010001100";--09
WHEN "001010"  => led <= "10011110000001";--10
WHEN "001011"  => led <= "10011111001111";--11
WHEN "001100"  => led <= "10011110010010";--12
WHEN "001101"  => led <= "10011110000110";--13
WHEN "001110"  => led <= "10011111001100";--14
WHEN "001111"  => led <= "10011110100100";--15
WHEN "010000"  => led <= "10011110100000";--16
WHEN "010001"  => led <= "10011110001111";--17
WHEN "010010"  => led <= "10011110000000";--18
WHEN "010011"  => led <= "10011110001100";--19
WHEN "010100"  => led <= "00100100000001";--20
WHEN "010101"  => led <= "00100101001111";--21
WHEN "010110"  => led <= "00100100010010";--22
WHEN "010111"  => led <= "00100100000110";--23
WHEN "011000"  => led <= "00100101001100";--24
WHEN "011001"  => led <= "00100100100100";--25
WHEN "011010"  => led <= "00100100100000";--26
WHEN "011011"  => led <= "00100100001111";--27
WHEN "011100"  => led <= "00100100000000";--28
WHEN "011101"  => led <= "00100100001100";--29
WHEN "011110"  => led <= "00001100000001";--30
WHEN "011111"  => led <= "00001101001111";--31
WHEN "100000"  => led <= "00001100010010";--32
WHEN "100001"  => led <= "00001100000110";--33
WHEN "100010"  => led <= "00001101001100";--34
WHEN "100011"  => led <= "00001100100100";--35
WHEN "100100"  => led <= "00001100100000";--36
WHEN "100101"  => led <= "00001100001111";--37
WHEN "100110"  => led <= "00001100000000";--38
WHEN "100111"  => led <= "00001100001100";--39
WHEN "101000"  => led <= "10011000000001";--40
WHEN "101001"  => led <= "10011001001111";--41
WHEN "101010"  => led <= "10011000010010";--42
WHEN "101011"  => led <= "10011000000110";--43
WHEN "101100"  => led <= "10011001001100";--44
WHEN "101101"  => led <= "10011000100100";--45
WHEN "101110"  => led <= "10011000100000";--46
WHEN "101111"  => led <= "10011000001111";--47
WHEN "110000"  => led <= "10011000000000";--48
WHEN "110001"  => led <= "10011000001100";--49
WHEN "110010"  => led <= "01001000000001";--50
WHEN "110011"  => led <= "01001001001111";--51
WHEN "110100"  => led <= "01001000010010";--52
WHEN "110101"  => led <= "01001000000110";--53
WHEN "110110"  => led <= "01001001001100";--54
WHEN "110111"  => led <= "01001000100100";--55
WHEN "111000"  => led <= "01001000100000";--56
WHEN "111001"  => led <= "01001000001111";--57
WHEN "111010"  => led <= "01001000000000";--58
WHEN "111011"  => led <= "01001000001100";--59
WHEN "111100"  => led <= "01000000000001";--60
WHEN "111101"  => led <= "01000001001111";--61
WHEN "111110"  => led <= "01000000010010";--62
WHEN "111111"  => led <= "01000000000110";--63
WHEN OTHERS => led <= "--------------" ;
				END CASE ;
				CASE err IS
			WHEN '0' => leds <= led;
			WHEN '1' => leds <= "11111101111110";
		END CASE;
				
			END PROCESS ;
End Behavior;