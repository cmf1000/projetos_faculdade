LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY trava IS
PORT ( enable, e1: IN STD_LOGIC;
		 Q: OUT STD_LOGIC);
END trava;

ARCHITECTURE strutura OF trava IS
signal e2, e3 ,ef :STD_LOGIC;
COMPONENT flipflop
PORT ( d,clock : IN STD_LOGIC ;
		q : OUT STD_LOGIC ) ;
END COMPONENT ;
BEGIN
	stage0: flipflop PORT MAP (e1, enable, e2);
	stage1: flipflop PORT MAP (e2, enable, e3);
	stage2: flipflop PORT MAP (e3, enable, ef);
	
	Q <= (e2) and (e3) and (ef);
	
END strutura;