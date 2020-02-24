------------------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: XOR
--
--	Date: 11.06.2018
-------------------------------------------------------

----------------//  Bibliotecas  //--------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
-------------------------------------------------------

-----------------//  Variáveis  //---------------------
ENTITY xor2 IS PORT
(
	a		:IN std_logic;		-- Entrada A
	b		:IN std_logic;		-- Entrada B
	x		:OUT std_logic;		-- Saída da porta XOR
	n		:OUT std_logic;		-- Saída da porta XNOR
	s		:OUT std_logic;		-- Saída da porta XOR
	led_a	:OUT std_logic;		-- Apresenta valor de A
	led_a	:OUT std_logic;		-- Apresenta valor de B
);
END xor2;
--------------------------------------------------------

----------------//  Arquitetura //----------------------  
ARCHITECTURE dataflow OF  IS xor2
SIGNAL	i_1, i_2	std_logic;
BEGIN
	x		<= a xor b;
	n		<= not (a xor b);

-- Ou --

	i_1 	<= (NOT a) AND b;
	i_2		<= (NOT b) AND a;
	s		<= i_1 OR i_2;

-- Placa --

	led_a <= a;
	led_b <= b;
END dataflow;
--------------------------------------------------------