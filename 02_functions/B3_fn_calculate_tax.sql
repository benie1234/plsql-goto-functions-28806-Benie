CREATE OR REPLACE FUNCTION fn_calculate_tax (p_annual_salary IN NUMBER) 
RETURN NUMBER IS
    v_tax_amount NUMBER(12, 2);
BEGIN
    -- Apply tax brackets based on annual salary
    IF p_annual_salary <= 500000 THEN
        v_tax_amount := p_annual_salary * 0.10; -- 10% tax for lower tier
    ELSIF p_annual_salary <= 1000000 THEN
        v_tax_amount := p_annual_salary * 0.15; -- 15% tax for mid tier
    ELSE
        v_tax_amount := p_annual_salary * 0.20; -- 20% tax for high tier
    END IF;
    
    RETURN ROUND(v_tax_amount, 2);
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END fn_calculate_tax;
/
SET SERVEROUTPUT ON;
BEGIN
    -- Testing with a sample annual salary of 1,200,000
    DBMS_OUTPUT.PUT_LINE('Calculated Tax: ' || fn_calculate_tax(1200000));
END;
/
