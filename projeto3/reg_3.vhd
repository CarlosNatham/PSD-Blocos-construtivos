library ieee;
use ieee.std_logic_1164.all;

entity reg_3 is
port(	i_I3:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN3:	in std_logic;								-- enable
		i_CLK3:	in std_logic;								-- clock
		i_CLR3:	in std_logic;								-- clear
		o_Q3:		out std_logic_vector (7 downto 0));	-- saída reg
end reg_3;

architecture arch_4 of reg_3 is
begin
	process(i_I3, i_EN3, i_CLK3, i_CLR3)
		begin
		-- clear em 1, zera o reg
		if(i_CLR3 = '1') then
			o_Q3 <= "00000000";
		-- enable e clock em 1, ele joga o vetor de entrada na saida
		elsif(rising_edge(i_CLK3)) then
			if(i_EN3 = '1') then
				o_Q3 <= i_I3;
			end if;
		end if;
	end process;
end arch_4;