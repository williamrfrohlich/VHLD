-----------------------------------------------
--	Author: William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port AND with Delay of 1 ns
--
--	Date: 11.17.2018
-----------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
-----------------------------------------------

-------------//  Variable  //------------------
ENTITY and2_delay IS PORT
(
	a   : IN STD_LOGIC;  
	b   : IN STD_LOGIC;
	y   : OUT STD_LOGIC
);
END and2_delay;
-------------------------------------------------

------------//  Architecture //------------------  
ARCHITECTURE dataflow OF and2_delay IS
BEGIN 
	PROCESS
		WAIT FOR 1 ns;
		y	<=	a AND b;
	END PROCESS;
END and2_delay;
-------------------------------------------------