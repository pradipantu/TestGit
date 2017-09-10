CREATE OR REPLACE PROCEDURE find(c_id IN NUMBER, res OUT varchar)
IS

BEGIN
    select name into res from employee where id=c_id;
END;
/
set SERVEROUTPUT ON;

DECLARE
v_name VARCHAR(20);
BEGIN
find(33,v_name);
dbms_output.put_line(v_name);
END;
/