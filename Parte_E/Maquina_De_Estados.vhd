

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Maquina_De_Estados IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        X : IN STD_LOGIC := '0';
        S1 : OUT STD_LOGIC;
        S2 : OUT STD_LOGIC;
        S3 : OUT STD_LOGIC;
        S4 : OUT STD_LOGIC
    );
END Maquina_De_Estados;

ARCHITECTURE BEHAVIOR OF Maquina_De_Estados IS
    TYPE type_fstate IS (A1,A2,A3,A4,A5);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,X)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= A1;
            S1 <= '0';
            S2 <= '0';
            S3 <= '0';
            S4 <= '0';
        ELSE
            S1 <= '0';
            S2 <= '0';
            S3 <= '0';
            S4 <= '0';
            CASE fstate IS
                WHEN A1 =>
                    reg_fstate <= A2;

                    IF ((X = '0')) THEN
                        S3 <= '1';
                    ELSIF ((X = '1')) THEN
                        S3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S3 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S1 <= '0';
                    ELSIF ((X = '1')) THEN
                        S1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S1 <= '0';
                    END IF;

                    IF ((X = '1')) THEN
                        S4 <= '0';
                    ELSIF ((X = '0')) THEN
                        S4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S4 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S2 <= '1';
                    ELSIF ((X = '1')) THEN
                        S2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S2 <= '0';
                    END IF;
                WHEN A2 =>
                    IF ((X = '0')) THEN
                        reg_fstate <= A4;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= A3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= A2;
                    END IF;

                    IF ((X = '0')) THEN
                        S3 <= '1';
                    ELSIF ((X = '1')) THEN
                        S3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S3 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S1 <= '1';
                    ELSIF ((X = '1')) THEN
                        S1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S1 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S4 <= '1';
                    ELSIF ((X = '1')) THEN
                        S4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S4 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S2 <= '1';
                    ELSIF ((X = '1')) THEN
                        S2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S2 <= '0';
                    END IF;
                WHEN A3 =>
                    reg_fstate <= A4;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S4 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S2 <= '0';
                    END IF;
                WHEN A4 =>
                    reg_fstate <= A5;

                    IF ((X = '0')) THEN
                        S3 <= '0';
                    ELSIF ((X = '1')) THEN
                        S3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S3 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S1 <= '1';
                    ELSIF ((X = '1')) THEN
                        S1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S1 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S4 <= '1';
                    ELSIF ((X = '1')) THEN
                        S4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S4 <= '0';
                    END IF;

                    IF ((X = '0')) THEN
                        S2 <= '0';
                    ELSIF ((X = '1')) THEN
                        S2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S2 <= '0';
                    END IF;
                WHEN A5 =>
                    reg_fstate <= A1;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S4 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        S2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        S2 <= '0';
                    END IF;
                WHEN OTHERS => 
                    S1 <= 'X';
                    S2 <= 'X';
                    S3 <= 'X';
                    S4 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
