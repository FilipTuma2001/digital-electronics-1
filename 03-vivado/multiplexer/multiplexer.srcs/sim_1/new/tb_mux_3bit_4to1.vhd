----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 12:23:55 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
--  Port ( );
    
end tb_mux_3bit_4to1;

architecture testbench of tb_mux_3bit_4to1 is
--signals
    signal s_a          : std_logic_vector(3 - 1 downto 0);
    signal s_b          : std_logic_vector(3 - 1 downto 0);
    signal s_c          : std_logic_vector(3 - 1 downto 0);
    signal s_d          : std_logic_vector(3 - 1 downto 0);
    signal s_sel          : std_logic_vector(1 downto 0);
    signal s_f          : std_logic_vector(3 - 1 downto 0);
    
begin
    uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
        port map(
            a_i         => s_a,
            b_i         => s_b,
            c_i         => s_c,
            d_i         => s_d,
            sel_i           => s_sel,
            f_o         => s_f
        );

--Data generation
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        --First case
        s_a <= "011";
        s_b <= "101";
        s_c <= "001";
        s_d <= "111";
        s_sel <= "01";
        wait for 100 ns;
        --Output expected
        assert (s_f = "001")
        --if false
        report "Input combination failed" severity error;
        
        --other cases
        s_a <= "011";
        s_b <= "111";
        s_c <= "011";
        s_d <= "100";
        s_sel <= "11";
        wait for 100ns;
        s_a <= "011";
        s_b <= "100";
        s_c <= "000";
        s_d <= "110";
        s_sel <= "00";
        wait for 100ns;
        
        report "Stimulus process finished";
        wait;
    end process p_stimulus;

end architecture testbench;
