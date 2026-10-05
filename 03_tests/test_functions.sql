SET SERVEROUTPUT ON;

DECLARE
    v_emp_id          employees.emp_id%TYPE := 101;
    v_emp_name        VARCHAR2(100);
    v_hire_date       employees.hire_date%TYPE;
    v_annual_sal      NUMBER(12, 2);
    v_years           NUMBER(5, 2);
    v_tax             NUMBER(12, 2);
