LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY fulladder IS
PORT ( cin, x, y: IN STD_LOGIC;
		s, cout: OUT STD_LOGIC);
END fulladder;

ARCHITECTURE soma OF fulladder IS
BEGIN
	s<=x xor y xor cin;
	cout<= (x and y) or (x and cin) or (y and cin);
END soma;