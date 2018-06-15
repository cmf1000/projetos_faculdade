LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY controle IS
PORT (	x: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		s,enable1:IN STD_LOGIC;
		 q,n: OUT STD_LOGIC;
		 bcd: out STD_LOGIC_VECTOR(0 to 13));
END controle;

ARCHITECTURE strutura OF controle IS
signal validacao,enable2,enable3:STD_LOGIC;
signal senhaslva: std_logic_vector(5 DOWNTO 0);
	COMPONENT trava
		PORT ( enable,e1:IN STD_LOGIC ;
				Q: OUT STD_LOGIC ) ;
	END COMPONENT ;
	
	COMPONENT senha
			PORT ( x: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		
			enable,salvar,validacao: IN STD_LOGIC;
			s: OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
	END COMPONENT ;
	
	component display_BCD
		PORT ( 	bcd: IN STD_LOGIC_VECTOR(5 DOWNTO 0) ;
			err: IN STD_LOGIC;
			leds: OUT STD_LOGIC_VECTOR(0 to 13) ) ;
	END component ;
	
	BEGIN

	
	stage0: senha port map(x, enable3, s,validacao,senhaslva);
	
	stage1: trava port map (enable1,(not validacao),enable2);
	
	stage2: display_BCD port map (x,not(enable1 and validacao),bcd);
	
	validacao <= (x(0)xnor senhaslva(0))and (x(1)xnor senhaslva(1))and (x(2)xnor senhaslva(2))and (x(3)xnor senhaslva(3))and (x(4)xnor senhaslva(4))and (x(5)xnor senhaslva(5));
	
		enable3<= enable1;-- and enable2;
			q<=validacao and enable3;
			n<=enable2;
			
END  strutura;