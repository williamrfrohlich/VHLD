-----------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Adder 1 bit
--
--	Date: 05.20.2018
-----------------------------------------------

----------------------------------------------
--  Circuito: Somador completo:(soma_1bit.vhd)
--		  a Entrada 1
--                b Entrada 2
--		  s Saída = a + b
--		  cin   vem um
--	          cout  vai um 
-----------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY soma_1bit IS PORT (
	a    : in std_logic;
        b    : in std_logic;
        cin  : in std_logic;
	s    : out std_logic;
	cout : out std_logic);
END soma_1bit;
--------------------------------------
ARCHITECTURE dataflow OF soma_1bit IS
BEGIN
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (a AND cin) OR (b AND cin);
END dataflow;
--------------------------------------
--ARCHITECTURE dataflow OF soma_1bit IS
--
--Signal d :std.standard.bit;
--
--BEGIN
--	d <= a XOR b;
--	s <= d XOR cin;
--	cout <= (a AND b) OR (d AND cin);
--	
--END dataflow;
