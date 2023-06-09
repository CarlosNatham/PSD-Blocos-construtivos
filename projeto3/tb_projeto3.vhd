library IEEE;
use IEEE.std_logic_1164.all;

entity tb_projeto3 is

end tb_projeto3;

architecture tb of tb_projeto3 is

component projeto3 is 
port(		i_WDATA:	in std_logic_vector (7 downto 0);	-- entrada palavra
		i_WADDR0:	in std_logic;				-- entrada de sele��o 1
		i_WADDR1:	in std_logic;				-- entrada de sele��o 2
		i_WEN:		in std_logic;				-- enable do write
		i_RADDR2:	in std_logic;				-- entrada de sele��o 3
		i_RADDR3:	in std_logic;				-- entrada de sele��o 4
		i_REN:		in std_logic;				-- enable do read
        	i_CLK:		in std_logic;				-- clock
		i_CLR:		in std_logic;				-- clear
		o_RDATA:	out std_logic_vector (7 downto 0));	-- sa�da palavra
end component;

signal w_i_WDATA, w_o_RDATA: std_logic_vector (7 downto 0);
signal w_i_WADDR0, w_i_WADDR1, w_i_WEN, w_i_RADDR2, w_i_RADDR3, w_i_REN, w_i_CLK, w_i_CLR: std_logic;

begin
	DUV: projeto3 port map(	i_WDATA 	=> w_i_WDATA,
                            	i_WADDR0 	=> w_i_WADDR0,
                            	i_WADDR1	=> w_i_WADDR1,
                            	i_WEN		=> w_i_WEN,
                            	i_RADDR2	=> w_i_RADDR2,
                            	i_RADDR3	=> w_i_RADDR3,
                            	i_REN		=> w_i_REN,
                           	i_CLK		=> w_i_CLK,
				i_CLR		=> w_i_CLR,
                           	o_RDATA		=> w_o_RDATA);
                            
     process
     	begin
            w_i_CLK <= '0';
            w_i_WEN <= '1';
            w_i_REN <= '1';
	    w_i_CLR <= '1';
            w_i_WDATA <= "00000001";
            w_i_WADDR0 <= '0';
            w_i_WADDR1 <= '0';
            w_i_RADDR2 <= '0';
            w_i_RADDR3 <= '0';
            wait for 10 ns;
	    w_i_CLK <= '1';
	    w_i_CLR <= '0';
            wait for 10 ns;
	    w_i_CLK <= '0';
            w_i_WDATA <= "00000010";
            w_i_WADDR0 <= '0';
            w_i_WADDR1 <= '1';
            w_i_RADDR2 <= '0';
            w_i_RADDR3 <= '1';
            wait for 10 ns;
	    w_i_CLK <= '1';
	    wait for 10 ns;
	    w_i_CLK <= '0';
            w_i_WDATA <= "00000011";
            w_i_WADDR0 <= '1';
            w_i_WADDR1 <= '0';
            w_i_RADDR2 <= '1';
            w_i_RADDR3 <= '0';
            wait for 10 ns;
	    w_i_CLK <= '1';
	    wait for 10 ns;
	    w_i_CLK <= '0';
            w_i_WDATA <= "00000100";
            w_i_WADDR0 <= '1';
            w_i_WADDR1 <= '1';
            w_i_RADDR2 <= '1';
            w_i_RADDR3 <= '1';
            wait for 10 ns;
	    w_i_CLK <= '1';
	    wait for 10 ns;
     end process;
end tb;