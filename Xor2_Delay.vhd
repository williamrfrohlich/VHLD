-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: XOR with Delay of 1 ns
--
--	Date: 11.17.2018
-----------------------------------------------

library ieee;
-- Circuito: Porta  (XOR) de duas entradas:
--		  i1 Entrada 1
--                i2 Entrada 2
--		   y  Saida
-- Delay 1 ns
---------------------------------------------
use ieee.std_logic_1164.ALL;
use std.textio.ALL;

entity XOR2_Delay is port(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic
       );
end XOR2_Delay;
  
architecture teste of Xor2_Delay is

component AND2_Delay
    port(
        i1  :in std_logic;
        i2  :in std_logic;
        y   :out  std_logic
        );
end component;

component OR2_Delay
     port(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic
       ); 
end component;

component NOT1_Delay 
    port(
         i1   :in std_logic;
         y1   :out std_logic
       );
end component;   
 
-----------------------------------------    
-- Sinais para teste
signal f_1,f_2,f_3,f_4,f_5,f_6,f_7 : std_logic;
-----------------------------------------       
Begin

y   <= f_7;
f_1 <= i1;
f_3 <= i2;
 
-- Instancias de componentes ----------------------------      
U1: NOT1_Delay PORT MAP  (i1 => f_1, y1 => f_2);
U2: NOT1_Delay PORT MAP  (i1 => f_3, y1 => f_4);
U3: AND2_Delay PORT MAP  (i1 => f_2, i2 => f_3, y => f_5);
U4: AND2_Delay PORT MAP  (i1 => f_1, i2 => f_4, y => f_6);
U5: OR2_Delay  PORT MAP  (i1 => f_5, i2 => f_6, y => f_7); 
---------------------------------------------------------
   
end teste;
