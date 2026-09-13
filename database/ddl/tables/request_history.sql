CREATE TABLE request_history (
   request_history_id NUMBER(10) NOT NULL,
   created_by         VARCHAR2(50 CHAR) NOT NULL,
   changed_at         TIMESTAMP NOT NULL,
   event_type         VARCHAR2(30 CHAR) NOT NULL,
   field              VARCHAR2(30 CHAR) NOT NULL,
   old_value          VARCHAR2(30 CHAR),
   new_value          VARCHAR2(30 CHAR),
   request_id         NUMBER(10) NOT NULL
);

ALTER TABLE request_history ADD CONSTRAINT request_history_pk PRIMARY KEY ( request_history_id );

ALTER TABLE request_history
   ADD CONSTRAINT request_history_request_fk FOREIGN KEY ( request_id )
      REFERENCES request ( request_id );