CREATE TABLE employee_history (
   employee_history_id NUMBER(10) NOT NULL,
   created_by          VARCHAR2(50 CHAR) NOT NULL,
   changed_at          TIMESTAMP NOT NULL,
   event_type          VARCHAR2(30 CHAR) NOT NULL,
   field               VARCHAR2(30 CHAR) NOT NULL,
   old_value           VARCHAR2(30 CHAR),
   new_value           VARCHAR2(30 CHAR),
   employee_id         NUMBER(10) NOT NULL
);

ALTER TABLE employee_history ADD CONSTRAINT employee_history_pk PRIMARY KEY ( employee_history_id );

ALTER TABLE employee_history
   ADD CONSTRAINT employee_history_employee_fk FOREIGN KEY ( employee_id )
      REFERENCES employee ( employee_id );