DECLARE
    v_number NUMBER := -5; -- You can change this test value
BEGIN
    DBMS_OUTPUT.PUT_LINE('Analyzing number cleanly: ' || v_number);

    -- Clean control structure using IF-ELSIF-ELSE
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Result: The number is Positive.');
    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Result: The number is Negative.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Result: The number is Zero.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Program execution finished cleanly without GOTO.');
END;
/
