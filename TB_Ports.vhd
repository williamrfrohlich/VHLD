-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Testbench Ports
--
--	Date: 11.17.2018
-----------------------------------------------

-- testbench para simular portas de duas entradas
--  		i1 Entrada 1
--  		i2 Entrada 2
--  		y  Saida
--  tb_portas.vhd
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use std.textio.ALL;

ENTITY tbportas IS END;

ARCHITEcTURE tb_portas OF tbportas IS

-- Declaração dos Componentes par ateste
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

component NAND2
    port(
        i1  :in std_logic;
        i2  :in std_logic;
        y   :out  std_logic
        );
     end component;

component NAND2_Delay
    port(
        i1  :in std_logic;
        i2  :in std_logic;
        y   :out  std_logic
        );
     end component;
-----------------------------------------    
-- Sinais para teste
signal i_2, i_1  : std_logic;
-----------------------------------------       
Begin
-- Instancias de componentes ----------------------------      
U1: AND2  PORT MAP  (i1 => i_1, i2 => i_2, y => open);
U2: AND2_Delay PORT MAP  (i1 => i_1, i2 => i_2, y => open);
U3: NAND2  PORT MAP  (i1 => i_1, i2 => i_2, y => open);
U4: NAND2_Delay PORT MAP  (i1 => i_1, i2 => i_2, y => open);
---------------------------------------------------------    
     
   estimulo: PROCESS -- Geracao da tabela verdade para 2 Bits
      begin			   -- 	i1  i2 | y
 	  wait for 5 ns;           -- 	       |
          i_1 <=  '0'; i_2 <= '0'; -- 	0   0  | x
          wait for 5 ns;           -- 	       |
	  i_1 <=  '0'; i_2 <= '1'; -- 	0   1  | x
          wait for 5 ns;           -- 	       |
	  i_1 <=  '1'; i_2 <= '0'; -- 	1   0  | x
	  wait for 5 ns;           -- 	       |
	  i_1 <=  '1'; i_2 <= '1'; -- 	1   1  | x
      end PROCESS estimulo;
 
 end tb_portas;
      