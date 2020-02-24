-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Adder 1 bit Delay
--
--	Date: 06.13.2018
-----------------------------------------------

----------------------------------------------
--  Circuito: Somador completo:(soma_1bit_Delay.vhd)
--		  a Entrada 1
--                b Entrada 2
--		  s Saída = a + b
--		  cin   vem um
--	          cout  vai um 
-----------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY soma_1bit_Delay IS PORT (
	a    : in std_logic;
        b    : in std_logic;
        cin  : in std_logic;
	s    : out std_logic;
	cout : out std_logic);
END soma_1bit_Delay;
--------------------------------------
ARCHITECTURE delayflow OF soma_1bit_Delay IS

component XOR2_Delay PORT(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic);
end component;

component AND2_Delay PORT(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic);
end component;

component OR2_Delay PORT(
         i1   :in std_logic;
         i2   :in std_logic;
         y    :out std_logic
       );
end component;

signal fio_ain, fio_bin, fio_cin, fio_s, fio_cout	:std_logic; 
signal fio_d, fio_and1_out, fio_and2_out  	 	:std_logic;

BEGIN
-- Entrada soma_1bit_Delay
fio_ain <= a;
fio_bin <= b;
fio_cin <= cin;

-- Saida soma_1bit_Delay
s    <= fio_s;
cout <= fio_cout;

--Instancias de portas com Delay
U1: XOR2_Delay port map(i1=>fio_ain,     i2=>fio_bin,       y=>fio_d);
U2: XOR2_Delay port map(i1=>fio_ain,      i2=>fio_bin,      y=>fio_s);

U3: AND2_Delay port map(i1=>fio_d,        i2=>fio_cin,      y=>fio_and1_out);
U4: AND2_Delay port map(i1=>fio_ain,      i2=>fio_bin,      y=>fio_and2_out);

U5: OR2_Delay  port map(i1=>fio_and1_out, i2=>fio_and2_out, y=>fio_cout);
	
END delayflow;

