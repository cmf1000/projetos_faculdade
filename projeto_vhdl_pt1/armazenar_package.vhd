LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.latch_package.all;
PACKAGE armazenar_package IS
COMPONENT armazenar
PORT ( x: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 err, chave: IN STD_LOGIC;
		 s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
END armazenar_package;