LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY senha IS
PORT ( x: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 enable, salvar,validacao: IN STD_LOGIC;
		 s: OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END senha;

ARCHITECTURE strutura OF senha IS
signal chave: STD_LOGIC;
COMPONENT latchd
	PORT ( d, clk : IN STD_LOGIC ;
			q : OUT STD_LOGIC ) ;
END COMPONENT ;
BEGIN
	chave <= enable and salvar and validacao;
	stage0: latchd PORT MAP (x(0), chave, s(0));
	stage1: latchd PORT MAP (x(1), chave, s(1));
	stage2: latchd PORT MAP (x(2), chave, s(2));
	stage3: latchd PORT MAP (x(3), chave, s(3));
	stage4: latchd PORT MAP (x(4), chave, s(4));
	stage5: latchd PORT MAP (x(5), chave, s(5));
END strutura;