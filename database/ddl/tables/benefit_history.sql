CREATE TABLE benefit_history (
   benefit_history_id NUMBER(10) NOT NULL,
   created_by         VARCHAR2(50 CHAR) NOT NULL,
   changed_at         TIMESTAMP NOT NULL,
   event_type         VARCHAR2(30 CHAR) NOT NULL,
   field              VARCHAR2(30 CHAR) NOT NULL,
   old_value          VARCHAR2(30 CHAR),
   new_value          VARCHAR2(30 CHAR),
   benefit_id         NUMBER(10) NOT NULL
);

ALTER TABLE benefit_history ADD CONSTRAINT benefit_history_pk PRIMARY KEY ( benefit_history_id );

ALTER TABLE benefit_history
   ADD CONSTRAINT benefit_history_benefit_fk FOREIGN KEY ( benefit_id )
      REFERENCES benefit ( benefit_id );