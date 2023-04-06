library IEEE;
use IEEE.std_logic_1164.all;

entity reg is
port(	i_S0:		in std_logic;		-- entrada s0
		i_S1:		in std_logic;		-- entrada s1
		i_S2:		in std_logic;		-- entrada s2
		i_SHLIN:	in std_logic;		-- shift left
		i_CLK:	in std_logic;		-- clock
		i_I0:		in std_logic;		-- entrada i0
		i_I1:		in std_logic;		-- entrada i1
		i_I2:		in std_logic;		-- entrada i2
		i_I3:		in std_logic;		-- entrada i3
		i_I4:		in std_logic;		-- entrada i4
		i_I5:		in std_logic;		-- entrada i5
		i_I6:		in std_logic;		-- entrada i6
		i_I7:		in std_logic;		-- entrada i7
		o_Q0:		out std_logic;		-- saída q0
		o_Q1:		out std_logic;		-- saída q1
		o_Q2:		out std_logic;		-- saída q2
		o_Q3:		out std_logic;		-- saída q3
		o_Q4:		out std_logic;		-- saída q4
		o_Q5:		out std_logic;		-- saída q5
		o_Q6:		out std_logic;		-- saída q6
		o_Q7:		out std_logic);	-- saída q7
end reg;

architecture arch_2 of reg is
	
	begin 								
	process(i_CLK, i_I0, i_I1, i_I2, i_I3, i_I4, i_I5, i_I6, i_I7, i_S0, i_S1, i_S2)
		begin
		-- enable e clock em 1, ele joga o vetor de entrada na saida
		if(rising_edge(i_CLK)) then
		-- entradas s em 011, todas as saídas em 0
			if(i_S0 = '1' and i_S1 = '1' and i_S2 = '0') then
				o_Q0	<= '0';
				o_Q1	<= '0';
				o_Q2	<= '0';
				o_Q3	<= '0';
				o_Q4	<= '0';
				o_Q5	<= '0';
				o_Q6	<= '0';
				o_Q7	<= '0';
			-- entradas s em 100, todas as saídas em 1
			elsif(i_S0 = '0' and i_S1 = '0' and i_S2 = '1') then
				o_Q0	<= '1';
				o_Q1	<= '1';
				o_Q2	<= '1';
				o_Q3	<= '1';
				o_Q4	<= '1';
				o_Q5	<= '1';
				o_Q6	<= '1';
				o_Q7	<= '1';
			-- entradas s em 001, carga paralela
			elsif(i_S0 = '1' and i_S1 = '0' and i_S2 = '0') then
				o_Q0	<= i_I0;
				o_Q1	<= i_I1;
				o_Q2	<= i_I2;
				o_Q3	<= i_I3;
				o_Q4	<= i_I4;
				o_Q5	<= i_I5;
				o_Q6	<= i_I6;
				o_Q7	<= i_I7;
			-- entradas s em 010, desloca pra esquerda
			elsif(i_S0 = '0' and i_S1 = '1' and i_S2 = '0') then
				o_Q0	<= i_I1;
				o_Q1	<= i_I2;
				o_Q2	<= i_I3;
				o_Q3	<= i_I4;
				o_Q4	<= i_I5;
				o_Q5	<= i_I6;
				o_Q6	<= i_I7;
				o_Q7	<= '0';
			-- entradas s em 000, mantem o valor atual
			else
			end if;
		end if;
	end process;
end arch_2;