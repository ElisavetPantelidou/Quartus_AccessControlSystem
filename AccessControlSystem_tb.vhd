-- Testbench for AccessControlSystem

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AccessControlSystem_tb is
end AccessControlSystem_tb;

architecture tb of AccessControlSystem_tb is
    -- Signals to connect to DUT
    signal T1, T2, S1, S2, SupervisorVerify, FinalAccess : STD_LOGIC := '0';
    signal Time : INTEGER := 0;

    -- Instantiate the Device Under Test (DUT)
    component AccessControlSystem
        Port ( T1, T2 : in STD_LOGIC;
               S1, S2 : in STD_LOGIC;
               Time : in INTEGER;
               SupervisorVerify : in STD_LOGIC;
               FinalAccess : out STD_LOGIC);
    end component;

begin
    -- DUT instance
    DUT: AccessControlSystem
        port map (
            T1 => T1,
            T2 => T2,
            S1 => S1,
            S2 => S2,
            Time => Time,
            SupervisorVerify => SupervisorVerify,
            FinalAccess => FinalAccess
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: No keys pressed, no supervisor verification
        T1 <= '0'; T2 <= '0'; S1 <= '0'; S2 <= '0'; SupervisorVerify <= '0'; Time <= 10;
        wait for 10 ns;
        
        -- Test Case 2: Correct morning shift keys and supervisor verification
        T1 <= '1'; S1 <= '1'; SupervisorVerify <= '1'; Time <= 10;
        wait for 10 ns;
        
        -- Test Case 3: Correct afternoon shift keys and supervisor verification
        T2 <= '1'; S2 <= '1'; SupervisorVerify <= '1'; Time <= 18;
        wait for 10 ns;
        
        -- Test Case 4: Valid shift but missing supervisor verification
        T1 <= '1'; S1 <= '1'; SupervisorVerify <= '0'; Time <= 10;
        wait for 10 ns;
        
        -- Test Case 5: Invalid time
        T1 <= '1'; S1 <= '1'; SupervisorVerify <= '1'; Time <= 5;
        wait for 10 ns;

        -- End simulation
        wait;
    end process;
end tb;