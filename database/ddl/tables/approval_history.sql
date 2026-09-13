CREATE TABLE approval_history (
   approval_history_id NUMBER(10) NOT NULL,
   created_by          VARCHAR2(50 CHAR) NOT NULL,
   changed_at          TIMESTAMP NOT NULL,
   event_type          VARCHAR2(30 CHAR) NOT NULL,
   field               VARCHAR2(30 CHAR) NOT NULL,
   old_value           VARCHAR2(30 CHAR),
   new_value           VARCHAR2(30 CHAR),
   approval_id         NUMBER(10) NOT NULL
);

ALTER TABLE approval_history ADD CONSTRAINT approval_history_pk PRIMARY KEY ( approval_history_id );

ALTER TABLE approval_history
   ADD CONSTRAINT approval_history_approval_fk FOREIGN KEY ( approval_id )
      REFERENCES approval ( approval_id );