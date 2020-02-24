-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port NAND
--
--	Date: 11.17.2018
-----------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------

-------------//  Variable  //------------------
ENTITY nand2 IS PORT
(
	a   : IN STD_LOGIC;  
	b   : IN STD_LOGIC;
	y   : OUT STD_LOGIC
);
END nand2;
-------------------------------------------------

------------//  Architecture //------------------  
ARCHITECTURE dataflow OF nand2 IS
BEGIN
	y	<=	NOT (a AND b);
END nand2;
-------------------------------------------------