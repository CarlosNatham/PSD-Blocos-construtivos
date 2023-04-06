library IEEE;
use IEEE.std_logic_1164.all;

entity mux8_1 is
port(	i_A:	in std_logic_vector (7 downto 0);	-- entrada a
		i_B:	in std_logic_vector (7 downto 0);	-- entrada b
		i_C:	in std_logic_vector (7 downto 0);	-- entrada c
		i_D:	in std_logic_vector (7 downto 0);	-- entrada d
		i_E:	in std_logic;								-- entrada e
		i_F:	in std_logic;								-- entrada f
		i_G:	in std_logic;								-- entrada g
		i_H:	in std_logic;								-- entrada h
		o_I:	out std_logic_vector (7 downto 0));	-- saida i
end mux8_1;

architecture arch_7 of mux8_1 is
begin
	process(i_A, i_B, i_C, i_D, i_E, i_F, i_G, i_H)
		begin
			if(i_E = '1') then
				o_I <= i_A;
			elsif(i_F = '1') then
				o_I <= i_B;
			elsif(i_G = '1') then
				o_I <= i_C;
			elsif(i_H = '1') then
				o_I <= i_D;
		end if;
	end process;
end arch_7;
		