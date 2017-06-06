LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.sum_sub_package.all;
ENTITY modulo IS
PORT ( x: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 err: OUT STD_LOGIC) ;
END modulo;

ARCHITECTURE strutura OF modulo IS
SIGNAL c1,c2: STD_LOGIC;
SIGNAL inv, inv2: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	stage0: sum_sub PORT MAP (x, x, '1', c1,inv) ;
	stage1: sum_sub PORT MAP (inv, x, '1', err, inv2) ;
	
	PROCESS (x)
	BEGIN
		CASE x(3) IS
			WHEN '0' => s <= x;
			WHEN '1' => s <= inv2;
		END CASE;
		
	END PROCESS;
END strutura;