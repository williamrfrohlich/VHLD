------------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Comparator of 2 Bits
--
--	Date: 11.10.2018
------------------------------------------------

-------------//  Libraries  //------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
------------------------------------------------

-------------//  Variables  //------------------
ENTITY comparador IS PORT
(
	a1		:IN std_logic;		-- Bit mais significativo de A
    a0		:IN std_logic;		-- Bit menos significativo de A
	b1		:IN std_logic;		-- Bit mais significativo de B
	b0		:IN std_logic;		-- Bit menos significativo de B
	led_a1	:OUT std_logic;		-- LED A1
	led_a0	:OUT std_logic;		-- LED A0
	led_b1	:OUT std_logic;		-- LED B1
	led_b0	:OUT std_logic;		-- LED B0
    amaiorb	:OUT std_logic;		-- Saída de A maior que B
	aigualb	:OUT std_logic;		-- Saída de A igual a B
	amenorb	:OUT std_logic		-- Saída de A menor que B
);
END comparador;
------------------------------------------------

------------//  Architecture //-----------------  
ARCHITECTURE dataflow OF comparador IS
SIGNAL and1, and2, and3		: std_logic;	-- Ligações auxíliares de A maior que B
SIGNAL and4, and5, and6		: std_logic;	-- Ligações auxíliares de A menor que B
BEGIN
	and1	<= a1 and (not b1);
	and2	<= a0 and (not b1) and (not b0);
	and3	<= a1 and a0 and (not b0);
	amaiorb	<= and1 or and2 or and3;

	aigualb	<= a1 xor a0 xor b1 xor b0;
	
	and4	<= (not a1) and b1;
	and5	<= (not a1) and (not a0) and b1;
	and6	<= (not a0) and b1 and b0;
	amenorb	<= and4 or and5 or and6;
END dataflow;
------------------------------------------------