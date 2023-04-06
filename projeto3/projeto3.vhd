library IEEE;
use IEEE.std_logic_1164.all;

entity projeto3 is 
port(	i_WDATA:		in std_logic_vector (7 downto 0);	-- entrada palavra
		i_WADDR0:	in std_logic;								-- entrada de seleção 1
		i_WADDR1:	in std_logic;								-- entrada de seleção 2
		i_WEN:		in std_logic;								-- enable do write
		i_RADDR2:	in std_logic;								-- entrada de seleção 3
		i_RADDR3:	in std_logic;								-- entrada de seleção 4
		i_REN:		in std_logic;								-- enable do read
		i_CLK:		in std_logic;								-- clock
		i_CLR:		in std_logic;								-- clear
		o_RDATA:		out std_logic_vector (7 downto 0));	-- saída palavra
end projeto3;

architecture arch_8 of projeto3 is

component write_decoder is
port(	i_I0:	in std_logic;	-- entrada I0
		i_I1:	in std_logic;	-- entrada I1
		i_EN:	in std_logic;	-- enable
		o_D0:	out std_logic;	-- saída D0
		o_D1: out std_logic;	-- saída D1
		o_D2: out std_logic;	-- saída D2
		o_D3: out std_logic);-- saída D3
end component;

component reg_1 is
port(	i_I1:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN1:	in std_logic;								-- enable
		i_CLK1:	in std_logic;								-- clock
		i_CLR1:	in std_logic;								-- clear
		o_Q1:		out std_logic_vector (7 downto 0));	-- saída reg
end component;

component reg_2 is
port(	i_I2:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN2:	in std_logic;								-- enable
		i_CLK2:	in std_logic;								-- clock
		i_CLR2:	in std_logic;								-- clear
		o_Q2:		out std_logic_vector (7 downto 0));	-- saída reg
end component;

component reg_3 is
port(	i_I3:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN3:	in std_logic;								-- enable
		i_CLK3:	in std_logic;								-- clock
		i_CLR3:	in std_logic;								-- clear
		o_Q3:		out std_logic_vector (7 downto 0));	-- saída reg
end component;

component reg_4 is
port(	i_I4:		in std_logic_vector (7 downto 0);	-- entrada regsitrador
		i_EN4:	in std_logic;								-- enable
		i_CLK4:	in std_logic;								-- clock
		i_CLR4:	in std_logic;								-- clear
		o_Q4:		out std_logic_vector (7 downto 0));	-- saída reg
end component;

component read_decoder is
port(	i_I2:	in std_logic;	-- entrada I0
		i_I3:	in std_logic;	-- entrada I1
		i_EN:	in std_logic;	-- enable
		o_D4:	out std_logic;	-- saída D0
		o_D5: out std_logic;	-- saída D1
		o_D6: out std_logic;	-- saída D2
		o_D7: out std_logic);-- saída D3
end component;

component mux8_1 is
port(	i_A:	in std_logic_vector (7 downto 0);	-- entrada a
		i_B:	in std_logic_vector (7 downto 0);	-- entrada b
		i_C:	in std_logic_vector (7 downto 0);	-- entrada c
		i_D:	in std_logic_vector (7 downto 0);	-- entrada d
		i_E:	in std_logic;								-- entrada e
		i_F:	in std_logic;								-- entrada f
		i_G:	in std_logic;								-- entrada g
		i_H:	in std_logic;								-- entrada h
		o_I:	out std_logic_vector (7 downto 0));	-- saida i
end component;

signal w_D0, w_D1, w_D2, w_D3, w_D4, w_D5, w_D6, w_D7: std_logic;
signal w_Q1, w_Q2, w_Q3, w_Q4: std_logic_vector (7 downto 0);

begin

u_0: write_decoder port map(	i_I0 => i_WADDR0,
										i_I1 => i_WADDR1,
										i_EN => i_WEN,
										o_D0 => w_D0,
										o_D1 => w_D1,
										o_D2 => w_D2,
										o_D3 => w_D3);
									
u_1: reg_1 port map(	i_I1 		=> i_WDATA,
							i_EN1 	=> w_D0,
							i_CLK1 	=> i_CLK,
							i_CLR1 	=> i_CLR,
							o_Q1		=> w_Q1);

u_2: reg_2 port map(	i_I2 		=> i_WDATA,
							i_EN2 	=> w_D1,	
							i_CLK2 	=> i_CLK,
							i_CLR2 	=> i_CLR,
							o_Q2		=> w_Q2);				

u_3: reg_3 port map(	i_I3 		=> i_WDATA,
							i_EN3 	=> w_D2,	
							i_CLK3 	=> i_CLK,
							i_CLR3 	=> i_CLR,
							o_Q3		=> w_Q3);

u_4: reg_4 port map(	i_I4 		=> i_WDATA,
							i_EN4 	=> w_D3,
							i_CLK4 	=> i_CLK,
							i_CLR4 	=> i_CLR,
							o_Q4		=> w_Q4);
							
u_5: read_decoder port map( 	i_I2 => i_RADDR2,
										i_I3 => i_RADDR3,
										i_EN => i_REN,
										o_D4 => w_D4,
										o_D5 => w_D5,
										o_D6 => w_D6,
										o_D7 => w_D7);
	
u_6: mux8_1 port map( 	i_A => w_Q1,
								i_B => w_Q2,
								i_C => w_Q3,
								i_D => w_Q4,
								i_E => w_D4,
								i_F => w_D5,
								i_G => w_D6,
								i_H => w_D7,
								o_I => o_RDATA);
								
end arch_8;								