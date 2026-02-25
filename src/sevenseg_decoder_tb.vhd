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
        assert (segments = "1000000") report "Test Failed on input x0" severity error;

        sw_inputs <= x"1"; wait for 10 ns;
        assert (segments = "1111001") report "Test Failed on input x1" severity error;

        sw_inputs <= x"2"; wait for 10 ns;
        assert (segments = "0100100") report "Test Failed on input x2" severity error;

        -- Test x"3"
        sw_inputs <= x"3"; wait for 10 ns;
        assert (segments = "0110000") report "Test Failed on input x3" severity error;

        sw_inputs <= x"4"; wait for 10 ns;
        assert (segments = "0011001") report "Test Failed on input x4" severity error;

        sw_inputs <= x"5"; wait for 10 ns;
        assert (segments = "0010010") report "Test Failed on input x5" severity error;

        sw_inputs <= x"6"; wait for 10 ns;
        assert (segments = "0000010") report "Test Failed on input x6" severity error;

        sw_inputs <= x"7"; wait for 10 ns;
        assert (segments = "1111000") report "Test Failed on input x7" severity error;

        sw_inputs <= x"8"; wait for 10 ns;
        assert (segments = "0000000") report "Test Failed on input x8" severity error;

        sw_inputs <= x"9"; wait for 10 ns;
        assert (segments = "0011000") report "Test Failed on input x9" severity error;

        sw_inputs <= x"A"; wait for 10 ns;
        assert (segments = "0001000") report "Test Failed on input xA" severity error;

        sw_inputs <= x"B"; wait for 10 ns;
        assert (segments = "0000011") report "Test Failed on input xB" severity error;

        sw_inputs <= x"C"; wait for 10 ns;
        assert (segments = "0111001") report "Test Failed on input xC" severity error;

        sw_inputs <= x"D"; wait for 10 ns;
        assert (segments = "0100001") report "Test Failed on input xD" severity error;

        sw_inputs <= x"E"; wait for 10 ns;
        assert (segments = "0000110") report "Test Failed on input xE" severity error;

        sw_inputs <= x"F"; wait for 10 ns;
        assert (segments = "0001110") report "Test Failed on input xF" severity error;

        report "Simulation complete! If no errors printed above, all tests passed.";
        
        wait;
     end process;
end Behavioral;
