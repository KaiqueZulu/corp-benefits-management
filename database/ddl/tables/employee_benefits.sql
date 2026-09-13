CREATE TABLE employee_benefits (
   employee_id NUMBER(10) NOT NULL,
   benefit_id  NUMBER(10) NOT NULL
);

ALTER TABLE employee_benefits
   ADD CONSTRAINT employee_benefits_employee_fk FOREIGN KEY ( employee_id )
      REFERENCES employee ( employee_id );

ALTER TABLE employee_benefits
   ADD CONSTRAINT employee_benefits_benefit_fk FOREIGN KEY ( benefit_id )
      REFERENCES benefit ( benefit_id );

ALTER TABLE employee_benefits ADD CONSTRAINT employee_benefits_pk PRIMARY KEY ( employee_id,
                                                                                benefit_id );