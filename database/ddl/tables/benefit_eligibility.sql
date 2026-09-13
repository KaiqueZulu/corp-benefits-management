CREATE TABLE benefit_eligibility (
   benefit_id     NUMBER(10) NOT NULL,
   eligibility_id NUMBER(10) NOT NULL
);

ALTER TABLE benefit_eligibility
   ADD CONSTRAINT benefit_eligibility_benefit_fk FOREIGN KEY ( benefit_id )
      REFERENCES benefit ( benefit_id );

ALTER TABLE benefit_eligibility
   ADD CONSTRAINT benefit_eligibility_eligibility_fk FOREIGN KEY ( eligibility_id )
      REFERENCES eligibility ( eligibility_id );

ALTER TABLE benefit_eligibility ADD CONSTRAINT benefit_eligibility_pk PRIMARY KEY ( benefit_id,
                                                                                    eligibility_id );