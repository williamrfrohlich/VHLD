-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port OR with Delay of 1 ns
--
--	Date: 11.17.2018
-----------------------------------------------

library ieee;
-- Circuito: Porta OU (OR) de duas entradas:
--		  i1 Entrada 1
--                i2 Entrada 2
--		   y  Saida
-- Delay 1 ns
---------------------------------------------
use ieee.std_logic_1164.ALL;
use std.textio.ALL;

entity OR2_Delay is port(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic
       );
end OR2_Delay;
  
architecture teste of or2_Delay is
  
 begin  process
     begin
      wait for 1 ns;   
      y <= i1 or i2;
     end process;
 end teste;
