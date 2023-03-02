----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2023 01:48:12 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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
  use ieee.numeric_std.all; -- Definition of "to_unsigned"

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top is
--  Port ( );
end tb_top;

architecture testbench of tb_top is
    signal sig_led   : std_logic_vector(7 downto 0);
    signal sig_SW :  STD_LOGIC_VECTOR (3 downto 0);
    signal sig_BTNC :  STD_LOGIC
;         
                      
           

begin

uut_top : entity work.top
    port map (
      led => sig_led,
      sw => sig_SW,
      BTNC => sig_BTNC
    );

stimulus : process is
  begin

    report "Stimulus process started";

    for ii in 0 to 15 loop

 
      sig_SW <= std_logic_vector(to_unsigned(ii, 4));
      wait for 50 ns;

    end loop;


    report "Stimulus process finished";
    wait;

  end process stimulus;    

end architecture testbench;
