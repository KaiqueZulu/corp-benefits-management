CREATE TABLE position (
   position_id   NUMBER(10) NOT NULL,
   position_name VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE position ADD CONSTRAINT position_pk PRIMARY KEY ( position_id );