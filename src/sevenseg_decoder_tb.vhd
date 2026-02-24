----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 12:42:04 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    component sevenseg_decoder is
            port (
                sw_input : in  std_logic_vector (3 downto 0);
                o_seg_n : out std_logic_vector (6 downto 0)
            );
        end component;

    -- 2. Create signals to connect to the component
    signal sw_inputs : std_logic_vector(3 downto 0) := (others => '0');
    signal segments  : std_logic_vector(6 downto 0);
begin
    
    test: sevenseg_decoder port map (
        sw_input => sw_inputs,
        o_seg_n => segments
    );
    
    test_process : process
    begin
        sw_inputs <= x"0"; wait for 10 ns;
        sw_inputs <= x"1"; wait for 10 ns;
        sw_inputs <= x"2"; wait for 10 ns;
        sw_inputs <= x"3"; wait for 10 ns;
        sw_inputs <= x"4"; wait for 10 ns;
        sw_inputs <= x"5"; wait for 10 ns;
        sw_inputs <= x"6"; wait for 10 ns;
        sw_inputs <= x"7"; wait for 10 ns;
        sw_inputs <= x"8"; wait for 10 ns;
        sw_inputs <= x"9"; wait for 10 ns;
        sw_inputs <= x"A"; wait for 10 ns;
        sw_inputs <= x"B"; wait for 10 ns;
        sw_inputs <= x"C"; wait for 10 ns;
        sw_inputs <= x"D"; wait for 10 ns;
        sw_inputs <= x"E"; wait for 10 ns;
        sw_inputs <= x"F"; wait for 10 ns;
        
        wait;
     end process;
end Behavioral;
