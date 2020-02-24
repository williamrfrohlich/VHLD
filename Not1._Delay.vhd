-----------------------------------------------
-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port NOT with Delay of 1 ns
--
--	Date: 11.17.2018
-----------------------------------------------

---------------------------------------------
-- Circuito: Porta Nao (NOT) de duas entradas:
--		  i1 Entrada 1
--		  y1  Saida
-- Delay 1 ns
---------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use std.textio.ALL;

entity NOT1_Delay is port(
         i1   :in std_logic;
         y1   :out std_logic
       );
end NOT1_Delay;
  
architecture teste of not1_Delay is
  
 begin  process
     begin
      wait for 1 ns;   
      y1 <= not i1;
     end process;
 end teste;
