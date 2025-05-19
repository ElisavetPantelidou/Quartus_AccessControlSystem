library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity access_control_system is
    Port ( 
        T1, S1, T2, S2, E : in STD_LOGIC;
        B1Gate, B2Gate, B1Valid, B2Valid, P1 : out STD_LOGIC
    );
end access_control_system;

architecture Behavioral of access_control_system is
    signal tempB1Gate, tempB2Gate : STD_LOGIC;
    signal tempB1Valid, tempB2Valid : STD_LOGIC;
    signal bothGatesActive : STD_LOGIC;
begin
    -- Πρώτο επίπεδο: Άνοιγμα βασικών πορτών
    tempB1Gate <= T1 and S1;
    tempB2Gate <= T2 and S2;

    -- Έξοδοι για τις βασικές πόρτες
    B1Gate <= tempB1Gate;
    B2Gate <= tempB2Gate;

    -- Δεύτερο επίπεδο: Επαλήθευση επόπτη
    tempB1Valid <= tempB1Gate and E;
    tempB2Valid <= tempB2Gate and E;

    -- Έξοδοι εγκυρότητας βάρδιας
    B1Valid <= tempB1Valid;
    B2Valid <= tempB2Valid;

    -- Ανίχνευση ταυτόχρονης ενεργοποίησης και από τις δύο βάρδιες
    bothGatesActive <= tempB1Gate and tempB2Gate;

    -- Τελική πόρτα P1
    P1 <= (tempB1Valid or tempB2Valid) and (not bothGatesActive);

end Behavioral;
