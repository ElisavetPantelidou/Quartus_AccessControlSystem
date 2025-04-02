-- Library declarations for the KeyVerification entity
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Key Verification Entity
entity KeyVerification is
    Port ( T1, T2 : in STD_LOGIC;  -- Technician Keys
           S1, S2 : in STD_LOGIC;  -- Security Keys
           AccessB1, AccessB2 : out STD_LOGIC);  -- Access for each shift
end KeyVerification;

architecture Behavioral of KeyVerification is
begin
    AccessB1 <= T1 and S1;  -- Morning shift access
    AccessB2 <= T2 and S2;  -- Afternoon shift access
end Behavioral;

-- Library declarations for the ShiftIdentification entity
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Shift Identification Entity
entity ShiftIdentification is
    Port ( Time : in INTEGER;  -- Time of entry
           ShiftValid : out STD_LOGIC);  -- Shift validation output
end ShiftIdentification;

architecture Behavioral of ShiftIdentification is
begin
    process(Time)
    begin
        if (Time >= 9 and Time <= 17) then
            ShiftValid <= '1';  -- Morning Shift
        elsif ((Time >= 17 and Time < 24) or (Time >= 0 and Time <= 1)) then
            ShiftValid <= '1';  -- Afternoon Shift
        else
            ShiftValid <= '0';  -- Invalid time
        end if;
    end process;
end Behavioral;

-- Library declarations for the AccessControl entity
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Final Access Control Entity
entity AccessControl is
    Port ( AccessB1, AccessB2 : in STD_LOGIC;  -- Shift Accesses
           ShiftValid : in STD_LOGIC;  -- Valid Shift
           SupervisorVerify : in STD_LOGIC;  -- Supervisor verification
           FinalAccess : out STD_LOGIC);  -- Final access signal
end AccessControl;

architecture Behavioral of AccessControl is
begin
    process(AccessB1, AccessB2, ShiftValid, SupervisorVerify)
    begin
        -- Explicitly check for '1' to treat as Boolean
        if (AccessB1 = '1' and ShiftValid = '1' and SupervisorVerify = '1') then
            FinalAccess <= '1';  -- Grant access for morning shift
        elsif (AccessB2 = '1' and ShiftValid = '1' and SupervisorVerify = '1') then
            FinalAccess <= '1';  -- Grant access for afternoon shift
        else
            FinalAccess <= '0';  -- Deny access
        end if;
    end process;
end Behavioral;

-- Library declarations for the AccessControlSystem entity
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Top-Level Entity (AccessControlSystem)
entity AccessControlSystem is
    Port ( T1, T2 : in STD_LOGIC;  -- Technician Keys
           S1, S2 : in STD_LOGIC;  -- Security Keys
           Time : in INTEGER;  -- Time of entry
           SupervisorVerify : in STD_LOGIC;  -- Supervisor verification
           FinalAccess : out STD_LOGIC);  -- Final access signal
end AccessControlSystem;

architecture Behavioral of AccessControlSystem is
    -- Signals for internal modules
    signal AccessB1, AccessB2 : STD_LOGIC;
    signal ShiftValid : STD_LOGIC;
begin
    -- Instantiate KeyVerification
    KeyVerification_inst : entity work.KeyVerification
        Port map (
            T1 => T1,
            T2 => T2,
            S1 => S1,
            S2 => S2,
            AccessB1 => AccessB1,
            AccessB2 => AccessB2
        );

    -- Instantiate ShiftIdentification
    ShiftIdentification_inst : entity work.ShiftIdentification
        Port map (
            Time => Time,
            ShiftValid => ShiftValid
        );

    -- Instantiate AccessControl
    AccessControl_inst : entity work.AccessControl
        Port map (
            AccessB1 => AccessB1,
            AccessB2 => AccessB2,
            ShiftValid => ShiftValid,
            SupervisorVerify => SupervisorVerify,
            FinalAccess => FinalAccess
        );
end Behavioral;
