
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rtl is
    Port (
        T1 : in STD_LOGIC;
        S1 : in STD_LOGIC;
        T2 : in STD_LOGIC;
        S2 : in STD_LOGIC;
        E  : in STD_LOGIC;
        P1 : out STD_LOGIC
    );
end rtl;

architecture Behavioral of rtl is
    signal B1Gate, B2Gate : STD_LOGIC;
    signal B1Valid, B2Valid : STD_LOGIC;
    signal Conflict : STD_LOGIC;
begin
    -- First level gates
    B1Gate <= T1 and S1;
    B2Gate <= T2 and S2;

    -- Supervisor validation
    B1Valid <= B1Gate and E;
    B2Valid <= B2Gate and E;

    -- Conflict detection
    Conflict <= B1Gate and B2Gate;

    -- Final access control
    P1 <= (B1Valid or B2Valid) and (not Conflict);

end Behavioral;
