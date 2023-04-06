library IEEE;
use IEEE.std_logic_1164.all;

entity logic_comb is
port(	i_CLR:	in std_logic;		-- clear
		i_SET:	in std_logic;		-- set
		i_LD:		in std_logic;		-- paralell load
		i_SHL:	in std_logic;		-- shift left
		o_S0:		out std_logic;		-- saída 0
		o_S1:		out std_logic;		-- saída 1
		o_S2:		out std_logic);	-- saída 2
end logic_comb;

architecture arch_1 of logic_comb is
	begin
	process(i_CLR, i_SET, i_LD, i_SHL)
		begin
		-- clear em 1, coloca as saidas para por todas as saídas do reg em 1
		if(i_CLR = '1') then
			o_S0 <= '1';
			o_S1 <= '1';
			o_S2 <= '0';
		-- set em 1, coloca as saidas para por todas as saídas do reg em 0
		elsif(i_SET = '1') then
			o_S0 <= '0';
			o_S1 <= '0';
			o_S2 <= '1';
		-- ld em 1, coloca as saidas para fazer carga paralela no reg
		elsif(i_LD = '1') then
			o_S0 <= '1';
			o_S1 <= '0';
			o_S2 <= '0';
		-- shl em 1, coloca as saidas para fazer deslocamento pra esquerda no reg
		elsif(i_SHL = '1') then
			o_S0 <= '0';
			o_S1 <= '1';
			o_S2 <= '0';
		-- todas em 0, coloca as saidas para manter o valor da saidas no reg
		else
			o_S0 <= '0';
			o_S1 <= '0';
			o_S2 <= '0';
		end if;
	end process;
end arch_1;