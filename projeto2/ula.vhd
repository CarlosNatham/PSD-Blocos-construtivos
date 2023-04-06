library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity projeto2 is
port( i_A:		in std_logic_vector (7 downto 0);	-- entrada A
		i_B:		in std_logic_vector (7 downto 0);	-- entrada B
		i_X:		in std_logic;								-- entrada X
		i_Y:		in std_logic;								-- entrada Y
		i_Z:		in std_logic;								-- entrada Z
		i_EN:		in std_logic;								-- enable
		i_CLK:	in std_logic;								-- clock
		i_CLR:	in std_logic;								-- clear
		o_LED:	out std_logic_vector (7 downto 0));	-- saída ula
end projeto2;

architecture arch_3 of projeto2 is

component mux_op is
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
end component;

component reg_op is
port(	i_I0:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN:		in std_logic;								-- enable
		i_CLK:	in std_logic;								-- clock
		i_CLR:	in std_logic;								-- clear
		o_Q1:		out std_logic_vector (7 downto 0));	-- saída reg
end component;

signal w_S1, w_i_I0, w_i_I1, w_i_I2, w_i_I3, w_i_I4, w_i_I5, w_i_I6, w_i_I7: std_logic_vector (7 downto 0);

begin
-- sinais para fazerem as operações antes de jogar elas no mux
w_i_I0 <= i_A + i_B;
w_i_I1 <= i_A - i_B;
w_i_I2 <= i_A + 1;
w_i_I3 <= i_A;
w_i_I4 <= i_A AND i_B;
w_i_I5 <= i_A OR i_B;
w_i_I6 <= i_A XOR i_B;
w_i_I7 <= NOT i_A;

u_0: mux_op port map(	i_X 	=> i_X,
								i_Y 	=> i_Y,
								i_Z 	=> i_Z,
								i_I0 	=> w_i_I0,
								i_I1	=> w_i_I1,
								i_I2	=> w_i_I2,
								i_I3	=> w_i_I3,
								i_I4	=> w_i_I4,
								i_I5	=> w_i_I5,
								i_I6	=>	w_i_I6,
								i_I7	=> w_i_I7,
								o_Q0	=> w_S1);
								
u_1: reg_op port map(	i_I0	=>	w_S1,
								i_EN	=> i_EN,
								i_CLK	=> i_CLK,
								i_CLR => i_CLR,
								o_Q1	=>	o_LED);
								
end arch_3;
	