CREATE TABLE request (
   request_id  NUMBER(10) NOT NULL,
   employee_id NUMBER(10) NOT NULL,
   benefit_id  NUMBER(10) NOT NULL
);

ALTER TABLE request ADD CONSTRAINT request_pk PRIMARY KEY ( request_id );

ALTER TABLE request
   ADD CONSTRAINT request_employee_fk FOREIGN KEY ( employee_id )
      REFERENCES employee ( employee_id );

ALTER TABLE request
   ADD CONSTRAINT request_benefit_fk FOREIGN KEY ( benefit_id )
      REFERENCES benefit ( benefit_id );