-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Testbench Port AND with Delay
--
--	Date: 11.17.2018
-----------------------------------------------

-- testbench para simular uma porta AND com delay
--  i1 Entrada 1
--  i2 Entrada 2
--  y  Saida
library ieee;
use ieee.std_logic_1164.ALL;

ENTITY tb_and2_Delay IS END;

ARCHITEcTURE tb_delay OF tb_and2_Delay IS

component AND2
    port(
        i1  :in std_logic;
        i2  :in std_logic;
        y   :out  std_logic
        );
     end component;

component AND2_Delay
    port(
        i1  :in std_logic;
        i2  :in std_logic;
        y   :out  std_logic
        );
     end component;
     
signal i_2, i_1, y_u1  : std_logic;
       
Begin
        
   U1: AND2  PORT MAP  (i1 => i_1, i2 => i_2, y => y_u1);
   U2: AND2_Delay  PORT MAP  (i1 => i_1, i2 => y_u1, y => open);   
     
   estimulo: PROCESS
      begin
          i_1 <=  '0'; i_2 <= '0';
          wait for 5 ns; i_1 <=  '1'; 
          wait for 5 ns; i_2 <=  '1';
          wait for 5 ns; i_1 <=  '0';
          wait for 5 ns; i_2 <=  '0';
      end PROCESS estimulo; 
 end tb_delay;
      