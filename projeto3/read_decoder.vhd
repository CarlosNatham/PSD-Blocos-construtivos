library IEEE;
use IEEE.std_logic_1164.all;

entity read_decoder is
port(	i_I2:	in std_logic;	-- entrada I0
		i_I3:	in std_logic;	-- entrada I1
		i_EN:	in std_logic;	-- enable
		o_D4:	out std_logic;	-- saída D0
		o_D5: out std_logic;	-- saída D1
		o_D6: out std_logic;	-- saída D2
		o_D7: out std_logic);-- saída D3
end read_decoder;

architecture arch_6 of read_decoder is
begin
	process(i_I2, i_I3, i_EN)
		begin
			if(i_EN = '1') then
				if(i_I2 = '0' and i_I3 = '0') then
					o_D4 <= '1';
					o_D5 <= '0';
					o_D6 <= '0';
					o_D7 <= '0';
				elsif(i_I2 = '0' and i_I3 = '1') then
					o_D4 <= '0';
					o_D5 <= '1';
					o_D6 <= '0';
					o_D7 <= '0';
				elsif(i_I2 = '1' and i_I3 = '0') then
					o_D4 <= '0';
					o_D5 <= '0';
					o_D6 <= '1';
					o_D7 <= '0';
				elsif(i_I2 = '1' and i_I3 = '1') then
					o_D4 <= '0';
					o_D5 <= '0';
					o_D6 <= '0';
					o_D7 <= '1';
				end if;
			else
				o_D4 <= '0';
				o_D5 <= '0';
				o_D6 <= '0';
				o_D7 <= '0';
		end if;
	end process;
end arch_6;