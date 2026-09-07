CREATE TABLE benefit (
   benefit_id   NUMBER(10) NOT NULL,
   benefit_name VARCHAR2(50) NOT NULL
);

ALTER TABLE benefit ADD CONSTRAINT benefit_pk PRIMARY KEY ( benefit_id );