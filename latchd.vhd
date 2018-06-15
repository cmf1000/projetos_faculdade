LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY latchd IS
PORT ( d, clk : IN STD_LOGIC;
		 q: OUT STD_LOGIC);
END latchd;

ARCHITECTURE strutura OF latchd IS
BEGIN
	PROCESS (d, clk)
	BEGIN
		IF clk = '1' THEN
			q <= d;
		END IF;
	END PROCESS;
END strutura;