CREATE TABLE location (
   location_id    NUMBER(10) NOT NULL,
   street_address VARCHAR2(50 CHAR) NOT NULL,
   postal_code    VARCHAR2(50 CHAR) NOT NULL,
   city           VARCHAR2(50 CHAR) NOT NULL,
   state_province VARCHAR2(50 CHAR) NOT NULL,
   country        VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE location ADD CONSTRAINT location_pk PRIMARY KEY ( location_id );

