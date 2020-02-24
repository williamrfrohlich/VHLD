-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port OR
--
--	Date: 11.17.2018
-----------------------------------------------

---------------------------------------------
-- Circuito: Porta OU (OR) de duas entradas:
--		  i1 Entrada 1
--                i2 Entrada 2
--		   y  Saida
---------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity OR2 is port(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic
       );
end OR2;

architecture rtl of OR2 is
                    
begin               -- a definicao da arquitetura inicia por begin
   y <= i1 or i2;  -- y = f(i1,i2)
end rtl;            -- a definicao da arquitetura termina por end