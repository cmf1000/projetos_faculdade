LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE latch_package IS
COMPONENT latchd
PORT ( d, clk : IN STD_LOGIC;
		 q: OUT STD_LOGIC);
END COMPONENT;
END latch_package;