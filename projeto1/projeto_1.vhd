library IEEE;
use IEEE.std_logic_1164.all;

entity projeto1 is
port(	i_CLR:	in std_logic;		-- clear
		i_SET:	in std_logic;		-- set
		i_LD:		in std_logic;		-- parallel load
		i_SHL:	in std_logic;		-- shift left
		i_SHLIN:	in std_logic;		-- shift left in
		i_CLK:	in std_logic;		-- clock
		i_I0:		in std_logic;		-- entrada i0
		i_I1:		in std_logic;		-- entrada i1
		i_I2:		in std_logic;		-- entrada i2
		i_I3:		in std_logic;		-- entrada i3
		i_I4:		in std_logic;		-- entrada i4
		i_I5:		in std_logic;		-- entrada i5
		i_I6:		in std_logic;		-- entrada i6
		i_I7:		in std_logic;		-- entrada i7
		o_Q0:		out std_logic;		-- saída q0
		o_Q1:		out std_logic;		-- saída q1
		o_Q2:		out std_logic;		-- saída q2
		o_Q3:		out std_logic;		-- saída q3
		o_Q4:		out std_logic;		-- saída q4
		o_Q5:		out std_logic;		-- saída q5
		o_Q6:		out std_logic;		-- saída q6
		o_Q7:		out std_logic);	-- saída q7
end projeto1;

architecture arch_3 of projeto1 is
	
	component logic_comb is
	port(	i_CLR:	in std_logic;		
			i_SET:	in std_logic;
			i_LD:		in std_logic;
			i_SHL:	in std_logic;
			o_S0:		out std_logic;
			o_S1:		out std_logic;
			o_S2:		out std_logic);
	end component;
	
	component reg is
	port(	i_S0:		in std_logic;
			i_S1:		in std_logic;
			i_S2:		in std_logic;
			i_SHLIN:	in std_logic;
			i_CLK:	in std_logic;
			i_I0:		in std_logic;
			i_I1:		in std_logic;
			i_I2:		in std_logic;
			i_I3:		in std_logic;
			i_I4:		in std_logic;
			i_I5:		in std_logic;
			i_I6:		in std_logic;
			i_I7:		in std_logic;
			o_Q0:		out std_logic;
			o_Q1:		out std_logic;
			o_Q2:		out std_logic;
			o_Q3:		out std_logic;
			o_Q4:		out std_logic;
			o_Q5:		out std_logic;
			o_Q6:		out std_logic;
			o_Q7:		out std_logic);
	end component;
	
	signal w_S0, w_S1, w_S2: std_logic;
	
	begin 
	
	u_0: logic_comb port map(	i_CLR => i_CLR,
										i_SET => i_SET,
										i_LD 	=>	i_LD,
										i_SHL	=> i_SHL,
										o_S0 	=>	w_S0,
										o_S1	=> w_S1,
										o_S2	=> w_S2);
	
	u_1: reg port map(			i_S0 	=> w_S0,
										i_S1 	=> w_S1,
										i_S2 	=>	w_S2,
										i_SHLIN	=> i_SHLIN,
										i_CLK	=> i_CLK,
										i_I0 	=>	i_I0,
										i_I1	=> i_I1,
										i_I2	=> i_I2,
										i_I3 	=>	i_I3,
										i_I4	=> i_I4,
										i_I5	=> i_I5,
										i_I6	=> i_I6,
										i_I7	=> i_I7,
										o_Q0 	=>	o_Q0,
										o_Q1	=> o_Q1,
										o_Q2	=> o_Q2,
										o_Q3 	=>	o_Q3,
										o_Q4	=> o_Q4,
										o_Q5	=> o_Q5,
										o_Q6	=> o_Q6,
										o_Q7	=> o_Q7);
										
end arch_3;