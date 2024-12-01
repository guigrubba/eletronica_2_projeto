----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:56:26 11/30/2024 
-- Design Name: 
-- Module Name:    FF_T - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity FF_T is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q_bar : out  STD_LOGIC);
end FF_T;
 
ARCHITECTURE Behavioral OF FF_T IS
    signal sinal_q : STD_LOGIC;  
BEGIN
    process(clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (t = '1') THEN
                sinal_q <= not sinal_q; 
            END IF;
        END IF;
    END PROCESS;
 
    q <= sinal_q;         
    q_bar <= not sinal_q; 
END Behavioral;