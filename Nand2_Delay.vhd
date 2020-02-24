-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port NAND with Delay of 1 ns
--
--	Date: 11.17.2018
-----------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
-----------------------------------------------

-------------//  Variable  //------------------
ENTITY nand2_delay IS PORT
(
	a   : IN STD_LOGIC;  
	b   : IN STD_LOGIC;
	y   : OUT STD_LOGIC
);
END nand2_delay;
-------------------------------------------------

------------//  Architecture //------------------  
ARCHITECTURE dataflow OF nand2_delay IS
BEGIN 
	PROCESS
		WAIT FOR 1 ns;
		y	<=	NOT (a AND b);
	END PROCESS;
END nand2_delay;
-------------------------------------------------