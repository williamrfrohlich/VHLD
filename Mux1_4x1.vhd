-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Mux 4x1
--
--	Date: 11.17.2018
-----------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------


-------------//  Variable  //------------------
ENTITY mux4x1 IS PORT
(
	sel				: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	a, b, c, d		: IN STD_LOGIC;
	y				: OUT STD_LOGIC
);
END mux4x1;
-------------------------------------------------

------------//  Architecture //------------------  
ARCHITECTURE dataflow OF mux4x1 IS
BEGIN
	y	<=		a WHEN sel="00" ELSE
				b WHEN sel="01" ELSE
				c WHEN sel="10" ELSE
				d;
END mux1;
------------------------------------------------
