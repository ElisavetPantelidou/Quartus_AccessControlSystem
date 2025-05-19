library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_access_control_system is
end tb_access_control_system;

architecture test of tb_access_control_system is
    -- Signals for inputs
    signal T1, S1, T2, S2, E : STD_LOGIC := '0';
    -- Signals for outputs
    signal B1Gate, B2Gate, B1Valid, B2Valid, P1 : STD_LOGIC;

    -- Component Declaration
    component access_control_system
        Port (
            T1, S1, T2, S2, E : in STD_LOGIC;
            B1Gate, B2Gate, B1Valid, B2Valid, P1 : out STD_LOGIC
        );
    end component;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: access_control_system
        port map (
            T1 => T1, S1 => S1, T2 => T2, S2 => S2, E => E,
            B1Gate => B1Gate, B2Gate => B2Gate,
            B1Valid => B1Valid, B2Valid => B2Valid,
            P1 => P1
        );

    -- Test process
    stim_proc: process
    begin
        -- Test 1: No one present
        T1 <= '0'; S1 <= '0'; T2 <= '0'; S2 <= '0'; E <= '0';
        wait for 10 ns;

        -- Test 2: Only T1 and S1 (no E)
        T1 <= '1'; S1 <= '1'; T2 <= '0'; S2 <= '0'; E <= '0';
        wait for 10 ns;
        T1 <= '0'; S1 <= '0'; T2 <= '0'; S2 <= '0'; E <= '0';
        wait for 10 ns;

        -- Test 3: T1, S1, and E (B1 open, P1 = 1)
        T1 <= '1'; S1 <= '1'; T2 <= '0'; S2 <= '0'; E <= '1';
        wait for 10 ns;
        T1 <= '0'; S1 <= '0'; T2 <= '0'; S2 <= '0'; E <= '0';
        wait for 10 ns;

        -- Test 4: T2, S2, and E (B2 open, P1 = 1)
        T1 <= '0'; S1 <= '0'; T2 <= '1'; S2 <= '1'; E <= '1';
        wait for 10 ns;
        T1 <= '0'; S1 <= '0'; T2 <= '0'; S2 <= '0'; E <= '0';
        wait for 10 ns;

        -- Test 5: All active (B1 & B2 valid, P1 = 0)
        T1 <= '1'; S1 <= '1'; T2 <= '1'; S2 <= '1'; E <= '1';
        wait for 10 ns;
        T1 <= '0'; S1 <= '0'; T2 <= '0'; S2 <= '0'; E <= '0';
        wait for 10 ns;

        -- Test 6: Only E present
        T1 <= '0'; S1 <= '0'; T2 <= '0'; S2 <= '0'; E <= '1';
        wait for 10 ns;

        wait; -- Τέλος προσομοίωσης
    end process;

end test;
