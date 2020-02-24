------------------------------------------------
--	Author: Eng. William da Rosa Fröhlich
--
--	Company: Feevale University
--
--	Project: Counter
--
--	Date: 11.23.2018
------------------------------------------------

-------------//  Libraries  //------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

------------------------------------------------

-------------//  Variables  //------------------
ENTITY contador IS PORT
(
	clk				: in std_logic;							-- Variável do clock
	reset			: in std_logic;							-- Variável para reset
	s				: in std_logic;							-- Chave de Seleção entre números primos e não primos
	segmentos		: out std_logic_vector (6 downto 0);	-- Segmentos dos displays de 7 sementos
	displayon		: out std_logic_vector(3 downto 0)		-- Acionamento dos displays
	
);
END contador;
------------------------------------------------

------------//  Architecture //-----------------  
ARCHITECTURE behavioral OF contador IS
	
	signal counter0: std_logic_vector(2 downto 0) := (others => '0');		-- Variável contador para seleção 0
	signal counter1: std_logic_vector(2 downto 0) := (others => '0');		-- Variável contador para seleção 1
	signal scala: std_logic_vector(27 downto 0) := (others => '0');			-- Variável útilizada para ajustar o clock

BEGIN
	process_clock: PROCESS(reset, clk)										-- Processo de ajuste do clock
	BEGIN
		IF rising_edge(clk) THEN											-- Toda vez que o clock estiver em borda alta...
			IF reset = '1' THEN													-- Se o botão reset estiver em nível alto...
				scala <= (others => '0');											-- Zera a scala 
				counter0 <= (others => '0');										-- Zera o counter0
				counter1 <= (others => '0');										-- Zera o counter1
			ELSE																-- Se o botão reset estiver em nível baixo...
				IF scala < "101111101011110000100000000" THEN						-- Enquanto scala for menor que 100.000.000...
					scala <= scala + 1;													-- Scala soma mais um
				ELSE																-- Se scala superar 100.000.000...
					scala <= (others => '0');											-- Scala é zerado
					IF counter0 < "101" THEN											-- Enquanto counter0 for menor que 5...
						counter0 <= counter0 + 1;											-- Counter0 recebe mais um
					ELSE																-- Se counter0 atingir 5...
						counter0 <= (others => '0');										-- Counter0 será zerado
					END IF;
						
					IF counter1 < "11" THEN												-- Enquanto counter1 for menor que 3...
						counter1 <= counter1 + 1;											-- Counter1 recebe mais um
					ELSE																-- Se counter1 atingir 3...
						counter1 <= (others => '0');										-- Counter1 será zerado
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	process_contador: PROCESS(s)											-- Processo de acionamento dos segmentos
	BEGIN
		IF s = '0' THEN														-- Se s estiver em nível lógico baixo...
			CASE counter0 IS													-- Caso counter0...
				WHEN "000" => segmentos <= "1001111";								-- 0 aciona 1
				WHEN "001" => segmentos <= "0010010";								-- 1 aciona 2
				WHEN "010" => segmentos <= "0000110";								-- 2 aciona 3
				WHEN "011" => segmentos <= "0100100";								-- 3 aciona 5
				WHEN OTHERS => segmentos <= "0001111";								-- demais casos aciona 7
			END CASE;
		ELSE																-- Se s estiver em nível lógico alto...
			CASE counter1 IS													-- Caso counter1...
				WHEN "000" => segmentos <= "0000001";								-- 0 aciona 0
				WHEN "001" => segmentos <= "1001100";								-- 1 aciona 4
				WHEN OTHERS => segmentos <= "0100000";								-- 2 aciona 6
			END CASE;															-- Fim do case
		END IF;
	END PROCESS;
	
	displayon(3)<='1';														-- Desabilita display 4
	displayon(2)<='1';														-- Desabilita display 3
	displayon(1)<='1';														-- Desabilita display 2
	displayon(0)<='0';														-- Habilita display 1
   
END behavioral;
------------------------------------------------