library ieee;
use ieee.std_logic_1164.all;

entity reg_1 is
port(	i_I1:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN1:	in std_logic;								-- enable
		i_CLK1:	in std_logic;								-- clock
		i_CLR1:	in std_logic;								-- clear
		o_Q1:		out std_logic_vector (7 downto 0));	-- saída reg
end reg_1;

architecture arch_2 of reg_1 is
begin
	process(i_I1, i_EN1, i_CLK1, i_CLR1)
		begin
		-- clear em 1, zera o reg
		if(i_CLR1 = '1') then
			o_Q1 <= "00000000";
		-- enable e clock em 1, ele joga o vetor de entrada na saida
		elsif(rising_edge(i_CLK1)) then
			if(i_EN1 = '1') then
				o_Q1 <= i_I1;
			end if;
		end if;
	end process;
end arch_2;