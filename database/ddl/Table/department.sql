CREATE TABLE department (
   department_id   NUMBER(10) NOT NULL,
   department_name VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE department ADD CONSTRAINT department_pk PRIMARY KEY ( department_id );