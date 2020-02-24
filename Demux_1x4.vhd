-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Demux 1x4
--
--	Date: 11.17.2018
-----------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------


-------------//  Variable  //------------------
ENTITY demux1x4 IS
PORT(
		s   : IN STD_LOGIC_VECTOR (1 DOWNTO 0);  
		i   : IN STD_LOGIC;
		y   : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END demux1x4 ;
-------------------------------------------------

------------//  Architecture //------------------  
ARCHITECTURE dataflow OF demux1x4 IS
BEGIN
	y	<=	"0001" WHEN s ="00" AND i = '1' ELSE
			"0010" WHEN s ="01" AND i = '1' ELSE
			"0100" WHEN s ="10" AND i = '1' ELSE
			"1000" WHEN s ="11" AND i = '1' ELSE
			"0000";
END demux1_1x4;
-------------------------------------------------