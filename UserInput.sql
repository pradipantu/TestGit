SET SERVEROUTPUT ON;
DECLARE

ID Number(8):=&EnterID;
Name Varchar(20):='&Entername';
BEGIN
DBMS_OUTPUT.PUT_LINE('ID:  ' ||ID || ' Name: ' ||Name);
END;
/
