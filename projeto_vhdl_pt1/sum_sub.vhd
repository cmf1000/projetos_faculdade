LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.fulladd_package.all ;
USE work.display_package.all ;
ENTITY sum_sub IS 
PORT ( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 op: IN STD_LOGIC;
		 cout: OUT STD_LOGIC;
		 s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) );
END sum_sub ;
ARCHITECTURE soma_sub OF sum_sub IS
SIGNAL c1, c2, c3, c4: STD_LOGIC;
BEGIN
	stage0: fulladder PORT MAP (op, x(0), (y(0) xor op), s(0), c1);
	stage1: fulladder PORT MAP (c1, x(1), (y(1) xor op), s(1), c2);
	stage2: fulladder PORT MAP (c2, x(2), (y(2) xor op), s(2), c3);
	stage3: fulladder PORT MAP (c3, x(3), (y(3) xor op), s(3), c4);
	cout<= c4 xor c3;
END soma_sub;