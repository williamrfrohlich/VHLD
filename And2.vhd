-----------------------------------------------
--	Author: William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port AND
--
--	Date: 11.17.2018
-----------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------

-------------//  Variable  //------------------
ENTITY and2 IS PORT
(
	a   : IN STD_LOGIC;  
	b   : IN STD_LOGIC;
	y   : OUT STD_LOGIC
);
END and2;
-------------------------------------------------

------------//  Architecture //------------------  
ARCHITECTURE dataflow OF and2 IS
BEGIN
	y	<=	a AND b;
END and2;
-------------------------------------------------