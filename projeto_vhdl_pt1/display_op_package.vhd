LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE display_op_package IS
COMPONENT display_op
PORT ( op: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		 leds: OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END COMPONENT;
END display_op_package;
