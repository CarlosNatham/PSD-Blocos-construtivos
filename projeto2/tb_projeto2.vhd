library ieee;
use ieee.std_logic_1164.all;

entity tb_projeto2 is

end tb_projeto2;

architecture tb of tb_projeto2 is

component projeto2 is
port( 		i_A:		in std_logic_vector (7 downto 0);	-- entrada A
		i_B:		in std_logic_vector (7 downto 0);	-- entrada B
		i_X:		in std_logic;				-- entrada X
		i_Y:		in std_logic;				-- entrada Y
		i_Z:		in std_logic;				-- entrada Z
		i_EN:		in std_logic;				-- enable
		i_CLK:		in std_logic;				-- clock
		i_CLR:		in std_logic;				-- clear
		o_LED:		out std_logic_vector (7 downto 0));	-- sa�da ula
end component; 

signal w_i_X, w_i_Y, w_i_Z, w_i_EN, w_i_CLK, w_i_CLR: std_logic; 
signal w_i_A, w_i_B, w_o_LED: std_logic_vector (7 downto 0);

begin
	DUV: projeto2 port map(	i_A	=> w_i_A,
    				i_B 	=> w_i_B,
                            	i_X	=> w_i_X,
                           	i_Y 	=> w_i_Y,
                            	i_Z 	=> w_i_Z,
                            	i_EN	=> w_i_EN,
                            	i_CLK	=> w_i_CLK,
				i_CLR 	=> w_i_CLR,
                            	o_LED	=> w_o_LED);
     process
     begin
     	w_i_A 	<= "00001111";
        w_i_B 	<= "00000101";
        w_i_EN 	<= '1';
        w_i_CLK <= '0';
	w_i_CLR <= '1';
        w_i_X	<= '0';
        w_i_Y	<= '0';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLR <= '0';
	w_i_CLK <= '1';
        w_i_X	<= '0';
        w_i_Y	<= '0';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLK <= '0';
	w_i_X	<= '0';
        w_i_Y	<= '0';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '1';
        w_i_X	<= '0';
        w_i_Y	<= '0';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '0';
	w_i_X	<= '0';
        w_i_Y	<= '1';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLK <= '1';
        w_i_X	<= '0';
        w_i_Y	<= '1';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLK <= '0';
        w_i_X	<= '0';
        w_i_Y	<= '1';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '1';
        w_i_X	<= '0';
        w_i_Y	<= '1';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '0';
        w_i_X	<= '1';
        w_i_Y	<= '0';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLK <= '1';
        w_i_X	<= '1';
        w_i_Y	<= '0';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLK <= '0';
        w_i_X	<= '1';
        w_i_Y	<= '0';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '1';
        w_i_X	<= '1';
        w_i_Y	<= '0';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '0';
        w_i_X	<= '1';
        w_i_Y	<= '1';
        w_i_Z	<= '0';
        wait for 10 ns;
        w_i_CLK <= '1';
        w_i_X	<= '1';
        w_i_Y	<= '1';
        w_i_Z	<= '0';
        wait for 10 ns;
	w_i_CLK <= '0';
        w_i_X	<= '1';
        w_i_Y	<= '1';
        w_i_Z	<= '1';
        wait for 10 ns;
	w_i_CLK <= '1';
        w_i_X	<= '1';
        w_i_Y	<= '1';
        w_i_Z	<= '1';
        wait for 10 ns;
     end process;
end tb;                     