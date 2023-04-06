library IEEE;
use IEEE.std_logic_1164.all;

entity tb_projeto1 is

end tb_projeto1;

architecture tb of tb_projeto1 is

component projeto1 is
port(	i_CLR:	in std_logic;		
	i_SET:	in std_logic;
	i_LD:	in std_logic;
	i_SHL:	in std_logic;
	i_SHLIN:in std_logic;
	i_CLK:	in std_logic;
	i_I0:	in std_logic;
	i_I1:	in std_logic;
	i_I2:	in std_logic;
	i_I3:	in std_logic;
	i_I4:	in std_logic;
	i_I5:	in std_logic;
	i_I6:	in std_logic;
	i_I7:	in std_logic;
	o_Q0:	out std_logic;
	o_Q1:	out std_logic;
	o_Q2:	out std_logic;
	o_Q3:	out std_logic;
	o_Q4:	out std_logic;
	o_Q5:	out std_logic;
	o_Q6:	out std_logic;
	o_Q7:	out std_logic);
end component;

signal w_i_CLR, w_i_SET, w_i_LD, w_i_SHL, w_i_SHLIN, w_i_CLK, w_i_I0, w_i_I1, w_i_I2, w_i_I3, w_i_I4, w_i_I5, w_i_I6, w_i_I7, w_o_Q0, w_o_Q1, w_o_Q2, w_o_Q3, w_o_Q4, w_o_Q5, w_o_Q6, w_o_Q7: std_logic;

begin

	DUV: projeto1 port map(	i_CLR	=> w_i_CLR,		
				i_SET	=> w_i_SET,
				i_LD	=> w_i_LD,
				i_SHL	=> w_i_SHL,
				i_SHLIN	=> w_i_SHLIN,
				i_CLK	=> w_i_CLK,
				i_I0	=> w_i_I0,
				i_I1	=> w_i_I1,
				i_I2	=> w_i_I2,
				i_I3	=> w_i_I3,
				i_I4	=> w_i_I4,
				i_I5	=> w_i_I5,
				i_I6	=> w_i_I6,
				i_I7	=> w_i_I7,
				o_Q0	=> w_o_Q0,
				o_Q1	=> w_o_Q1,
				o_Q2	=> w_o_Q2,
				o_Q3	=> w_o_Q3,
				o_Q4	=> w_o_Q4,
				o_Q5	=> w_o_Q5,
				o_Q6	=> w_o_Q6,
				o_Q7	=> w_o_Q7);
	process
	begin
		w_i_CLK	<= '0';	
		w_i_CLR <= '1';		
		w_i_SET <= '0';
		w_i_LD 	<= '0';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '1';	
		w_i_CLR <= '1';	
		w_i_SET <= '0';
		w_i_LD 	<= '0';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '0';	
		w_i_CLR <= '0';		
		w_i_SET <= '1';
		w_i_LD 	<= '0';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '1';	
		w_i_CLR <= '0';			
		w_i_SET <= '1';
		w_i_LD 	<= '0';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '0';
		w_i_CLR <= '0';			
		w_i_SET <= '0';
		w_i_LD 	<= '1';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '1';
		w_i_CLR <= '0';		
		w_i_SET <= '0';
		w_i_LD 	<= '1';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '0';
		w_i_CLR <= '0';		
		w_i_SET <= '0';
		w_i_LD 	<= '0';
		w_i_SHL <= '1';
		w_i_SHLIN <= '1';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '1';
		w_i_CLR <= '0';		
		w_i_SET <= '0';
		w_i_LD 	<= '0';
		w_i_SHL <= '1';
		w_i_SHLIN <= '1';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '0';
		w_i_CLR <= '0';		
		w_i_SET <= '0';
		w_i_LD 	<= '0';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;
		w_i_CLK	<= '1';
		w_i_CLR <= '0';		
		w_i_SET <= '0';
		w_i_LD 	<= '0';
		w_i_SHL <= '0';
		w_i_SHLIN <= '0';
		w_i_I0 <= '1';
		w_i_I1 <= '1';
		w_i_I2 <= '1';
		w_i_I3 <= '1';
		w_i_I4 <= '0';
		w_i_I5 <= '0';
		w_i_I6 <= '0';
		w_i_I7 <= '0';
		wait for 10 ns;      	
	end process;
end tb;