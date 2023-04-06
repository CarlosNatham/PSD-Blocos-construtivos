library ieee;
use ieee.std_logic_1164.all;

entity reg_op is
port(	i_I0:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN:		in std_logic;								-- enable
		i_CLK:	in std_logic;								-- clock
		i_CLR:	in std_logic;								-- clear
		o_Q1:		out std_logic_vector (7 downto 0));	-- saída reg
end reg_op;

architecture arch_2 of reg_op is
begin
	process(i_I0, i_EN, i_CLK, i_CLR)
		begin
		-- clear em 1, zera a saida
		if(i_CLR = '1') then
			o_Q1 <= "00000000";
		-- enable e clock em 1, ele joga o vetor de entrada na saida
		elsif(rising_edge(i_CLK)) then
			if(i_EN = '1') then
			 o_Q1 <= i_I0;
			 end if;
		end if;
	end process;
end arch_2;