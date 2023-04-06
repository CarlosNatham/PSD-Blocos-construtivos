library IEEE;
use IEEE.std_logic_1164.all;

entity write_decoder is
port(	i_I0:	in std_logic;	-- entrada I0
		i_I1:	in std_logic;	-- entrada I1
		i_EN:	in std_logic;	-- enable
		o_D0:	out std_logic;	-- saída D0
		o_D1: out std_logic;	-- saída D1
		o_D2: out std_logic;	-- saída D2
		o_D3: out std_logic);-- saída D3
end write_decoder;

architecture arch_1 of write_decoder is
begin
	process(i_I0, i_I1, i_EN)
		begin
			if(i_EN = '1') then
				if(i_I0 = '0' and i_I1 = '0') then
					o_D0 <= '1';
					o_D1 <= '0';
					o_D2 <= '0';
					o_D3 <= '0';
				elsif(i_I0 = '0' and i_I1 = '1') then
					o_D0 <= '0';
					o_D1 <= '1';
					o_D2 <= '0';
					o_D3 <= '0';
				elsif(i_I0 = '1' and i_I1 = '0') then
					o_D0 <= '0';
					o_D1 <= '0';
					o_D2 <= '1';
					o_D3 <= '0';
				elsif(i_I0 = '1' and i_I1 = '1') then
					o_D0 <= '0';
					o_D1 <= '0';
					o_D2 <= '0';
					o_D3 <= '1';
				end if;
			else
				o_D0 <= '0';
				o_D1 <= '0';
				o_D2 <= '0';
				o_D3 <= '0';
		end if;
	end process;
end arch_1;