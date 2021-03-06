LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.latch_package.all;
ENTITY armazenar IS
PORT ( x: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 err, chave: IN STD_LOGIC;
		 s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END armazenar;

ARCHITECTURE strutura OF armazenar IS
BEGIN
	stage0: latchd PORT MAP (x(0), chave, s(0));
	stage1: latchd PORT MAP (x(1), chave, s(1));
	stage2: latchd PORT MAP (x(2), chave, s(2));
	stage3: latchd PORT MAP (x(3), chave, s(3));
END strutura;