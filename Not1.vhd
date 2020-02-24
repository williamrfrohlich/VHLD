-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Port NOT
--
--	Date: 11.17.2018
-----------------------------------------------

---------------------------------------------
-- Circuito: Porta Nao (NOT) entrada i1:
--		  i1 Entrada 
--		  y1  Saida
---------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity NOT1 is port(
         i1   :in std_logic;
         y1   :out std_logic
       );
end NOT1;

architecture rtl of NOT1 is
                    
begin               -- a definicao da arquitetura inicia por begin
   y1 <= not i1;  -- y = f(i1,i2)
end rtl;            -- a definicao da arquitetura termina por end