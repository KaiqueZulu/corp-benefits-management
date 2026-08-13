CREATE TABLE employee (
   employee_id   NUMBER(10) NOT NULL,
   first_name    VARCHAR2(30 CHAR) NOT NULL,
   last_name     VARCHAR2(50 CHAR) NOT NULL,
   email         VARCHAR2(100 CHAR),
   phone         VARCHAR2(15 CHAR),
   date_of_birth DATE NOT NULL,
   date_of_hire  DATE NOT NULL,
   salary        NUMBER(10,2) NOT NULL,
   position_id   NUMBER(10) NOT NULL,
   department_id NUMBER(10) NOT NULL,
   location_id   NUMBER(10) NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( employee_id );

ALTER TABLE employee
   ADD CONSTRAINT employee_position_fk FOREIGN KEY ( position_id )
      REFERENCES position ( position_id );

ALTER TABLE employee
   ADD CONSTRAINT employee_department_fk FOREIGN KEY ( department_id )
      REFERENCES department ( department_id );

ALTER TABLE employee
   ADD CONSTRAINT employee_location_fk FOREIGN KEY ( location_id )
      REFERENCES location ( location_id );