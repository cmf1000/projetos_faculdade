LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE modulo_package IS
COMPONENT modulo
PORT ( x: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 err: OUT STD_LOGIC) ;
END COMPONENT;
END modulo_package;