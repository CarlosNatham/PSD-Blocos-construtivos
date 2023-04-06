library ieee;
use ieee.std_logic_1164.all;

entity reg_4 is
port(	i_I4:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN4:	in std_logic;								-- enable
		i_CLK4:	in std_logic;								-- clock
		i_CLR4:	in std_logic;								-- clear
		o_Q4:		out std_logic_vector (7 downto 0));	-- saída reg
end reg_4;

architecture arch_5 of reg_4 is
begin
	process(i_I4, i_EN4, i_CLK4, i_CLR4)
		begin
		-- clear em 1, zera o reg
		if(i_CLR4 = '1') then
			o_Q4 <= "00000000";
		-- enable e clock em 1, ele joga o vetor de entrada na saida
		elsif(rising_edge(i_CLK4)) then
			if(i_EN4 = '1') then
				o_Q4 <= i_I4;
			end if;
		end if;
	end process;
end arch_5;