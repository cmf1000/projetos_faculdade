LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY comparador IS
PORT ( x: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
       y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 resultado: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)) ;
END comparador;

ARCHITECTURE strutura OF comparador IS
BEGIN
resultado(0)<=((x(0) xnor y(0)) and ( x(1) xnor y(1)) and (x(2) xnor y(2)) and (x(3) xnor y(3)));
resultado(1)<='0';
resultado(2)<='0';
resultado(3)<='0';
END strutura;