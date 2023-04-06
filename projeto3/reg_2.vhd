library ieee;
use ieee.std_logic_1164.all;

entity reg_2 is
port(	i_I2:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN2:	in std_logic;								-- enable
		i_CLK2:	in std_logic;								-- clock
		i_CLR2:	in std_logic;								-- clear
		o_Q2:		out std_logic_vector (7 downto 0));	-- saída reg
end reg_2;

architecture arch_3 of reg_2 is
begin
	process(i_I2, i_EN2, i_CLK2, i_CLR2)
		begin
		-- clear em 1, zera o reg
		if(i_CLR2 = '1') then
			o_Q2 <= "00000000";
		-- enable e clock em 1, ele joga o vetor de entrada na saida
		elsif(rising_edge(i_CLK2)) then
			if(i_EN2 = '1') then
				o_Q2 <= i_I2;
			end if;
		end if;
	end process;
end arch_3;