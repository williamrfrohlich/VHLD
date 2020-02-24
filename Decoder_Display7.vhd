------------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Decoder Display 7 Segments
--
--	Date: 11.17.2018
------------------------------------------------

--------------//  Libraries //-----------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------

-------------//  Variable  //------------------
ENTITY decodificador_7seg IS PORT
(
	bcd				: IN BIT_VECTOR(3 DOWNTO 0);
	segmentos		: OUT BIT_VECTOR(6 DOWNTO 0)
);
END decodificador_7seg;
-------------------------------------------------

------------//  Architecture //------------------
ARCHITECTURE dataflow OF decodificador_7seg IS
BEGIN
	WITH bcd SELECT
    segmentos <= "1111110" WHEN "0000",
                 "0110000" WHEN "0001",
                 "1101101" WHEN "0010",
                 "1111001" WHEN "0011",
                 "0110011" WHEN "0100",
                 "1011011" WHEN "0101",
                 "1011111" WHEN "0110",
                 "1110000" WHEN "0111",
                 "1111111" WHEN "1000",
                 "1111011" WHEN "1001",
                 "1111110" WHEN OTHERS;
END dataflow; 
------------------------------------------------- 