SET SERVEROUTPUT ON;

DECLARE
    v_check BOOLEAN := TRUE;
BEGIN
    IF v_check THEN
        DBMS_OUTPUT.PUT_LINE('Condition is true. Skipping to the valid label outside.');
        GOTO valid_target;
    END IF;

  
    <<valid_target>>
    DBMS_OUTPUT.PUT_LINE('Success! The GOTO statement successfully targeted a valid label.');
END;
/
