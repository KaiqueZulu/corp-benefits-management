CREATE OR REPLACE TRIGGER trg_audit_employees_benefits
AFTER INSERT OR UPDATE OR DELETE ON employees_benefits
FOR EACH ROW
DECLARE
  v_audit audit_employees_benefits%ROWTYPE;
BEGIN
  IF INSERTING THEN
    v_audit.action_type :=  'INSERT';
    v_audit.employee_id := :NEW.employee_id ; 
    v_audit.benefit_id := :NEW.benefit_id ; 
    v_audit.concession_date := :NEW.concession_date ; 
    v_audit.granted_value := :NEW.granted_value ; 
    v_audit.status := :NEW.status ; 
    
  ELSIF UPDATING THEN
    v_audit.action_type := 'UPDATE';
    v_audit.employee_id := :NEW.employee_id ; 
    v_audit.benefit_id := :NEW.benefit_id ; 
    v_audit.concession_date := :NEW.concession_date ; 
    v_audit.granted_value := :NEW.granted_value ; 
    v_audit.status := :NEW.status ;
  ELSIF DELETING THEN
     v_audit.action_type := 'DELETE';
    v_audit.employee_id := :OLD.employee_id ; 
    v_audit.benefit_id := :OLD.benefit_id ; 
    v_audit.concession_date := :OLD.concession_date ; 
    v_audit.granted_value := :OLD.granted_value ; 
    v_audit.status := :OLD.status ;
  END IF;

  v_audit.modified_at := SYSDATE;
  v_audit.modified_by := SYS_CONTEXT('USERENV', 'OS_USER');

  INSERT INTO audit_employees_benefits(employee_id, 
    benefit_id, 
    concession_date, 
    granted_value, 
    status, 
    action_type,
    modified_at, 
    modified_by)
    VALUES(v_audit.employee_id, 
    v_audit.benefit_id, 
    v_audit.concession_date, 
    v_audit.granted_value, 
    v_audit.status, 
    v_audit.action_type,
    v_audit.modified_at, 
    v_audit.modified_by);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error in the trg_audit_employees_benefits trigger: ' || SQLCODE ||' - ' || SQLERRM);
END trg_audit_employees_benefits;