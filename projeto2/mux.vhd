library ieee;
use ieee.std_logic_1164.all;

entity mux_op is
port(	i_X:	in std_logic;	-- seletor x
		i_Y:	in std_logic;	-- seletor y
		i_Z:	in std_logic;	-- seletor z
		i_I0:	in std_logic_vector (7 downto 0);	-- entrada 0
		i_I1:	in std_logic_vector (7 downto 0);	-- entrada 1
		i_I2:	in std_logic_vector (7 downto 0);	-- entrada 2
		i_I3:	in std_logic_vector (7 downto 0);	-- entrada 3
		i_I4:	in std_logic_vector (7 downto 0);	-- entrada 4
		i_I5:	in std_logic_vector (7 downto 0);	--	entrada 5
		i_I6:	in std_logic_vector (7 downto 0);	-- entrada 6
		i_I7:	in std_logic_vector (7 downto 0);	--	entrada 7
		o_Q0:	out std_logic_vector (7 downto 0));	-- saída Q
end mux_op;

architecture arch_1 of mux_op is
begin
	process(i_X, i_Y, i_Z, i_I0, i_I1, i_I2, i_I3, i_I4, i_I5, i_I6, i_I7)
		begin
		-- xyz em 000, saída recebe entrada i0, que seria a soma
		  if(i_X = '0' and i_Y = '0' and i_Z = '0') then
			  o_Q0 <= i_I0;
		-- xyz em 001, saída recebe entrada i1, que seria a subtração
		  elsif(i_X = '0' and i_Y = '0' and i_Z = '1') then
			  o_Q0 <= i_I1;
		-- xyz em 010, saída recebe entrada i2, que seria a soma com 1
		  elsif(i_X = '0' and i_Y = '1' and i_Z = '0') then
			  o_Q0 <= i_I2;
		-- xyz em 011, saída recebe entrada i3, que seria a entrada A
		  elsif(i_X = '0' and i_Y = '1' and i_Z = '1') then
			  o_Q0 <= i_I3;
		-- xyz em 100, saída recebe entrada i4, que seria a operação de and
		  elsif(i_X = '1' and i_Y = '0' and i_Z = '0') then
			  o_Q0 <= i_I4;
		-- xyz em 101, saída recebe entrada i5, que seria a operação de or
		  elsif(i_X = '1' and i_Y = '0' and i_Z = '1') then
			  o_Q0 <= i_I5;
		-- xyz em 110, saída recebe entrada i6, que seria a operação de xor
		  elsif(i_X = '1' and i_Y = '1' and i_Z = '0') then
			  o_Q0 <= i_I6;
		-- xyz em 111, saída recebe entrada i4, que seria a operação de not
		  else
			  o_Q0 <= i_I7;
		end if;
	end process;
end arch_1;