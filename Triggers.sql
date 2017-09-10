set SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER LogRSChanges
  BEFORE INSERT OR DELETE OR UPDATE ON employee
 FOR EACH ROW
DECLARE
  v_ChangeType CHAR(1);
BEGIN
  /* Use 'I' for an INSERT, 'D' for DELETE, and 'U' for UPDATE. */
  IF INSERTING THEN
    v_ChangeType := 'I';
   ELSIF UPDATING THEN
   v_ChangeType := 'U';
  ELSE
   v_ChangeType := 'D';
 END IF;

 DBMS_OUTPUT.put_line(v_ChangeType ||' '|| USER ||' ' ||SYSDATE);
END LogRSChanges;
/    

CREATE TABLE UserTr( Name VARCHAR2(20));

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER user_tr
BEFORE INSERT ON UserTr
FOR EACH ROW
ENABLE
DECLARE
v_status VARCHAR(20);
BEGIN
    
    DBMS_Output.put_line('INSERTED');
END;
/


insert into usertr values('Sanket');