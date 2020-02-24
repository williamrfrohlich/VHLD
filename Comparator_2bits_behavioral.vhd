------------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Comparator of 2 Bits
--
--	Date: 11.15.2018
------------------------------------------------

-------------//  Libraries  //------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE std.textio.ALL;
------------------------------------------------

-------------//  Variables  //------------------
ENTITY comparador IS PORT
(
	a		:IN std_logic_vector (1 downto 0);	-- Valor A
	b		:IN std_logic_vector (1 downto 0);	-- Valor B
	led_a1		:OUT std_logic;				-- LED A1
	led_a0		:OUT std_logic;				-- LED A0
	led_b1		:OUT std_logic;				-- LED B1
	led_b0		:OUT std_logic;				-- LED B0
	amaiorb		:OUT std_logic;				-- Saída de A maior que B
	aigualb		:OUT std_logic;				-- Saída de A igual a B
	amenorb		:OUT std_logic				-- Saída de A menor que B
);
END comparador;
------------------------------------------------

------------//  Architecture //-----------------
ARCHITECTURE behavioral OF comparador IS
BEGIN
	processo: PROCESS	(a, b)	IS

	BEGIN
		if	a > b	then
			amaiorb	<= '1';
		else
			amaiorb <= '0';
		end if;

		if	a = b	then
			aigualb	<= '1';
		else
			aigualb <= '0';
		end if;

		if	a < b	then
			amenorb	<= '1';
		else
			amenorb <= '0';
		end if;
						
	END PROCESS processo;
END behavioral;
------------------------------------------------