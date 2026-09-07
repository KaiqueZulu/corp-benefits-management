CREATE TABLE approval (
   approval_id    NUMBER(10) NOT NULL,
   approval_date  TIMESTAMP NOT NULL,
   approved_by_id NUMBER(10) NOT NULL,
   justification  CLOB NOT NULL,
   request_id     NUMBER(10) NOT NULL
);

ALTER TABLE approval ADD CONSTRAINT approval_pk PRIMARY KEY ( approval_id );

ALTER TABLE approval ADD CONSTRAINT approval_request_uq UNIQUE ( request_id );

ALTER TABLE approval
   ADD CONSTRAINT approval_request_fk FOREIGN KEY ( request_id )
      REFERENCES request ( request_id );

ALTER TABLE approval
   ADD CONSTRAINT approval_approved_by_fk FOREIGN KEY ( approved_by_id )
      REFERENCES employee ( employee_id );