CREATE TABLE eligibility (
   eligibility_id   NUMBER(10) NOT NULL,
   eligibility_name VARCHAR2(50 CHAR) NOT NULL,
   condition        VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE eligibility ADD CONSTRAINT eligibility_pk PRIMARY KEY ( eligibility_id );