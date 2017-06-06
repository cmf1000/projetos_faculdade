LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE sum_sub_package IS
COMPONENT sum_sub
PORT ( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 op: IN STD_LOGIC;
		 cout: OUT STD_LOGIC;
		 s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) );
END COMPONENT ;
END sum_sub_package ;