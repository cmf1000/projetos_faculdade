LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.fulladd_package.all ;
USE work.sum_sub_package.all ;
USE work.display_package.all ;
USE work.display_op_package.all ;
USE work.display_sinal_package.all;
USE work.modulo_package.all;
USE work.latch_package.all;
USE work.comparador_package.all;
USE work.conversor_binario_bcd_package.all
ENTITY Calc IS 
PORT ( arm, rec : IN STD_LOGIC;
		 op : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		 x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 x_d, y_d, s_d, op_d, arm_d, sinal_x, sinal_y, sinal_s : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END Calc ;
ARCHITECTURE escolha OF Calc IS
SIGNAL sSoma, sinversor, smodulo, sbin, sbinbcd, salva, recupera: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL csoma, errinversor, errmodulo, err, errarm: STD_LOGIC;
BEGIN
	stage0: sum_sub PORT MAP (x, y, op(0), csoma, sSoma) ;
	stage1: display_BCD PORT MAP (x, '0', x_d);
	stage2: display_BCD PORT MAP (y, '0', y_d);
	stage3: modulo PORT MAP (x, smodulo, errmodulo) ;
	stage4: comparador PORT MAP (x, y, sinversor);
	stage5: conversor_binario_bcd PORT MAP(sbin,sbinbcd);
	stagesin_x: display_sinal PORT MAP (x(3), sinal_x);
	stagesin_y: display_sinal PORT MAP (y(3), sinal_y)	;
	PROCESS(op, sSoma, sbin)
	BEGIN
		CASE op IS
			WHEN "00" => sbin <= sSoma;
			WHEN "01" => sbin <= sSoma;
			WHEN "10" => sbin <= smodulo;
			WHEN "11" => sbin <= sinversor;
		END CASE ;
		CASE op IS
			WHEN "00" => err <= csoma;
			WHEN "01" => err <= csoma;
			WHEN "10" => err <= errmodulo;
			WHEN "11" => err <= errinversor;
		END CASE ;
		CASE rec IS
			WHEN '0' => recupera <= "0000";
			WHEN '1' => recupera <= salva;
		END CASE;
	END PROCESS ;
	stagesalva0: latchd PORT MAP (sbin(0), arm, salva(0));
	stagesalva1: latchd PORT MAP (sbin(1), arm, salva(1));
	stagesalva2: latchd PORT MAP (sbin(2), arm, salva(2));
	stagesalva3: latchd PORT MAP (sbin(3), arm, salva(3));
	stagesalva4: latchd PORT MAP (err, arm, errarm);
	stageop: display_op PORT MAP (op, op_d);
	stages_s: display_sinal PORT MAP (sbin(3), sinal_s);
	stagef: display_BCD PORT MAP (sbinbcd, err, s_d);
	stage_rec: display_BCD PORT MAP (recupera, errarm, arm_d);
END escolha ;