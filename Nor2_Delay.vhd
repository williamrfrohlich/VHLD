-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port NOR with Delay of 1 ns
--
--	Date: 11.17.2018
-----------------------------------------------

-- Circuito: Porta Nao OU (NOR) de duas entradas:
--		  i1 Entrada 1
--                i2 Entrada 2
--		   y  Saida
-- Delay 1 ns
---------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use std.textio.ALL;

entity NOR2_Delay is port(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic
       );
end NOR2_Delay;
  
architecture teste of nor2_Delay is
  
 begin  process
     begin
      wait for 1 ns;   
      y <= not (i1 or i2);
     end process;
 end teste;
