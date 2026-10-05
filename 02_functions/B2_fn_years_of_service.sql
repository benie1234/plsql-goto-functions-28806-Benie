CREATE OR REPLACE FUNCTION fn_years_of_service (p_hire_date IN DATE) 
RETURN NUMBER IS
    v_years_of_service NUMBER(5, 2);
BEGIN
    -- Calculate difference in years between current date and hire date
    v_years_of_service := MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12;
    
    -- Return rounded value to 2 decimal places
    RETURN ROUND(v_years_of_service, 2);
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END fn_years_of_service;
/
SET SERVEROUTPUT ON;
BEGIN
    -- Testing with an employee's hire date (e.g., June 15, 2020)
    DBMS_OUTPUT.PUT_LINE('Years of Service: ' || fn_years_of_service(TO_DATE('2020-06-15', 'YYYY-MM-DD')));
END;
/
