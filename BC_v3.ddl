-- Generated by Oracle SQL Developer Data Modeler 4.0.1.836
--   at:        2014-04-12 14:21:44 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE BC_amendment CASCADE CONSTRAINTS ;

DROP TABLE BC_checklist CASCADE CONSTRAINTS ;

DROP TABLE BC_communication CASCADE CONSTRAINTS ;

DROP TABLE BC_contract CASCADE CONSTRAINTS ;

DROP TABLE BC_department CASCADE CONSTRAINTS ;

DROP TABLE BC_department_contact CASCADE CONSTRAINTS ;

DROP TABLE BC_document CASCADE CONSTRAINTS ;

DROP TABLE BC_employee CASCADE CONSTRAINTS ;

DROP TABLE BC_escalation CASCADE CONSTRAINTS ;

DROP TABLE BC_invoices CASCADE CONSTRAINTS ;

DROP TABLE BC_note CASCADE CONSTRAINTS ;

DROP TABLE BC_payment CASCADE CONSTRAINTS ;

DROP TABLE BC_tickler CASCADE CONSTRAINTS ;

DROP TABLE BC_vendor CASCADE CONSTRAINTS ;

DROP TABLE BC_vendor_contact CASCADE CONSTRAINTS ;

CREATE TABLE BC_amendment
  (
    amendment_id                NUMBER NOT NULL ,
    reason                      VARCHAR2 (255) ,
    start_date                  DATE ,
    end_date                    DATE ,
    date_created                DATE ,
    BC_contract_contract_id     NUMBER ,
    BC_escalation_escalation_id NUMBER
  ) ;
CREATE UNIQUE INDEX BC_amendment__IDX ON BC_amendment
  (
    BC_escalation_escalation_id ASC
  )
  ;
  ALTER TABLE BC_amendment ADD CONSTRAINT BC_amendment_PK PRIMARY KEY ( amendment_id ) ;

CREATE TABLE BC_checklist
  (
    checklist_id            NUMBER NOT NULL ,
    BC_contract_contract_id NUMBER
  ) ;
CREATE UNIQUE INDEX BC_checklist__IDX ON BC_checklist
  (
    BC_contract_contract_id ASC
  )
  ;
  ALTER TABLE BC_checklist ADD CONSTRAINT BC_checklist_PK PRIMARY KEY ( checklist_id ) ;

CREATE TABLE BC_communication
  (
    communication_id             NUMBER NOT NULL ,
    reason                       VARCHAR2 (255) ,
    BC_contract_contract_id      NUMBER ,
    BC_vendor_contact_contact_id NUMBER ,
    BC_employee_employee_id      NUMBER
  ) ;
ALTER TABLE BC_communication ADD CONSTRAINT BC_communication_PK PRIMARY KEY ( communication_id ) ;

CREATE TABLE BC_contract
  (
    contract_id                 NUMBER NOT NULL ,
    start_date                  DATE ,
    end_date                    DATE ,
    purpose                     VARCHAR2 (4000) ,
    contract_administrator      VARCHAR2 (255) ,
    departmental_contact        VARCHAR2 (255) ,
    received_date               DATE ,
    ongoing                     CHAR (1) ,
    renewable                   CHAR (1) ,
    FOREIGN                     CHAR (1) ,
    notes                       VARCHAR2 (4000) ,
    facility_use_of_UT_building CHAR (1) ,
    service_type                VARCHAR2 (64) ,
    status                      VARCHAR2 (255) ,
    reviewed_by                 VARCHAR2 (255) ,
    signed_by                   VARCHAR2 (255) ,
    signed_date                 DATE ,
    programatic_approval        VARCHAR2 (255) ,
    return_date                 DATE ,
    BC_vendor_vendor_id         NUMBER ,
    BC_department_department_id NUMBER ,
    BC_checklist_checklist_id   NUMBER
  ) ;
CREATE UNIQUE INDEX BC_contract__IDX ON BC_contract
  (
    BC_checklist_checklist_id ASC
  )
  ;
  ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_PK PRIMARY KEY ( contract_id ) ;

CREATE TABLE BC_department
  (
    department_id           NUMBER NOT NULL ,
    name                    VARCHAR2 (255) ,
    BC_employee_employee_id NUMBER
  ) ;
CREATE UNIQUE INDEX BC_department__IDX ON BC_department
  (
    BC_employee_employee_id ASC
  )
  ;
  ALTER TABLE BC_department ADD CONSTRAINT BC_department_PK PRIMARY KEY ( department_id ) ;

CREATE TABLE BC_department_contact
  (
    department_contact_id   NUMBER NOT NULL ,
    BC_contract_contract_id NUMBER ,
    BC_employee_employee_id NUMBER
  ) ;
ALTER TABLE BC_department_contact ADD CONSTRAINT BC_department_contact_PK PRIMARY KEY ( department_contact_id ) ;

CREATE TABLE BC_document
  (
    document_id   NUMBER NOT NULL ,
    filename      VARCHAR2 (4000 BYTE) ,
    file_mimetype VARCHAR2 (512) ,
    file_charset  VARCHAR2 (512) ,
    file_blob BLOB ,
    file_comment              VARCHAR2 (4000) ,
    tags                      VARCHAR2 (4000) ,
    BC_contract_contract_id   NUMBER ,
    BC_amendment_amendment_id NUMBER
  ) ;
ALTER TABLE BC_document ADD CONSTRAINT BC_document_PK PRIMARY KEY ( document_id ) ;

CREATE TABLE BC_employee
  (
    employee_id                 NUMBER NOT NULL ,
    first_name                  VARCHAR2 (255) ,
    last_name                   VARCHAR2 (255) ,
    email                       VARCHAR2 (255) ,
    phone                       NUMBER (7) ,
    fax                         NUMBER (7) ,
    BC_department_department_id NUMBER
  ) ;
CREATE UNIQUE INDEX BC_employee__IDX ON BC_employee
  (
    BC_department_department_id ASC
  )
  ;
  ALTER TABLE BC_employee ADD CONSTRAINT BC_employee_PK PRIMARY KEY ( employee_id ) ;

CREATE TABLE BC_escalation
  (
    escalation_id             NUMBER NOT NULL ,
    new_amount                NUMBER (10,2) ,
    old_amount                NUMBER (10,2) ,
    percentage                NUMBER (5,2) ,
    BC_amendment_amendment_id NUMBER
  ) ;
CREATE UNIQUE INDEX BC_escalation__IDX ON BC_escalation
  (
    BC_amendment_amendment_id ASC
  )
  ;
  ALTER TABLE BC_escalation ADD CONSTRAINT BC_escalation_PK PRIMARY KEY ( escalation_id ) ;

CREATE TABLE BC_invoices
  (
    invoice_id              NUMBER NOT NULL ,
    total                   NUMBER (10,2) ,
    balance                 NUMBER (10,2) ,
    due_date                DATE ,
    BC_contract_contract_id NUMBER
  ) ;
ALTER TABLE BC_invoices ADD CONSTRAINT BC_invoices_PK PRIMARY KEY ( invoice_id ) ;

CREATE TABLE BC_note
  (
    note_id                 NUMBER NOT NULL ,
    date_created            DATE ,
    notes                   VARCHAR2 (255) ,
    BC_contract_contract_id NUMBER ,
    --  ERROR: Column name length exceeds maximum allowed length(30)
    BC_communication_communication_id NUMBER ,
    BC_employee_employee_id           NUMBER
  ) ;
ALTER TABLE BC_note ADD CONSTRAINT BC_note_PK PRIMARY KEY ( note_id ) ;

CREATE TABLE BC_payment
  (
    payment_id             NUMBER NOT NULL ,
    amount                 NUMBER (10,2) ,
    payment_date           DATE ,
    account_number         NUMBER ,
    account_type           NUMBER (2) ,
    BC_invoices_invoice_id NUMBER
  ) ;
ALTER TABLE BC_payment ADD CONSTRAINT BC_payment_PK PRIMARY KEY ( payment_id ) ;

CREATE TABLE BC_tickler
  (
    tickler_id              NUMBER NOT NULL ,
    due_date                DATE ,
    notes_reminder          VARCHAR2 (255) ,
    BC_contract_contract_id NUMBER
  ) ;
ALTER TABLE BC_tickler ADD CONSTRAINT BC_tickler_PK PRIMARY KEY ( tickler_id ) ;

CREATE TABLE BC_vendor
  (
    vendor_id NUMBER NOT NULL ,
    name      VARCHAR2 (255) ,
    address   VARCHAR2 (500) ,
    city      VARCHAR2 (50) ,
    state     VARCHAR2 (50) ,
    zip       VARCHAR2 (50) ,
    country   VARCHAR2 (255)
  ) ;
ALTER TABLE BC_vendor ADD CONSTRAINT BC_vendor_PK PRIMARY KEY ( vendor_id ) ;

CREATE TABLE BC_vendor_contact
  (
    contact_id          NUMBER NOT NULL ,
    first_name          VARCHAR2 (255) ,
    last_name           VARCHAR2 (255) ,
    email               VARCHAR2 (255) ,
    phone               VARCHAR2 (50) ,
    fax                 VARCHAR2 (50) ,
    address             VARCHAR2 (500) ,
    city                VARCHAR2 (50) ,
    state               VARCHAR2 (50) ,
    zip                 VARCHAR2 (50) ,
    country             VARCHAR2 (50) ,
    BC_vendor_vendor_id NUMBER
  ) ;
ALTER TABLE BC_vendor_contact ADD CONSTRAINT BC_vendor_contact_PK PRIMARY KEY ( contact_id ) ;

ALTER TABLE BC_amendment ADD CONSTRAINT BC_amendment_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_amendment ADD CONSTRAINT BC_amendment_BC_escalation_FK FOREIGN KEY ( BC_escalation_escalation_id ) REFERENCES BC_escalation ( escalation_id ) ;

ALTER TABLE BC_checklist ADD CONSTRAINT BC_checklist_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE BC_communication ADD CONSTRAINT BC_communication_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE BC_communication ADD CONSTRAINT BC_communication_BC_employee_FK FOREIGN KEY ( BC_employee_employee_id ) REFERENCES BC_employee ( employee_id ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE BC_communication ADD CONSTRAINT BC_communication_BC_vendor_contact_FK FOREIGN KEY ( BC_vendor_contact_contact_id ) REFERENCES BC_vendor_contact ( contact_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_checklist_FK FOREIGN KEY ( BC_checklist_checklist_id ) REFERENCES BC_checklist ( checklist_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_department_FK FOREIGN KEY ( BC_department_department_id ) REFERENCES BC_department ( department_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_vendor_FK FOREIGN KEY ( BC_vendor_vendor_id ) REFERENCES BC_vendor ( vendor_id ) ;

ALTER TABLE BC_department ADD CONSTRAINT BC_department_BC_employee_FK FOREIGN KEY ( BC_employee_employee_id ) REFERENCES BC_employee ( employee_id ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE BC_department_contact ADD CONSTRAINT BC_department_contact_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE BC_department_contact ADD CONSTRAINT BC_department_contact_BC_employee_FK FOREIGN KEY ( BC_employee_employee_id ) REFERENCES BC_employee ( employee_id ) ;

ALTER TABLE BC_document ADD CONSTRAINT BC_document_BC_amendment_FK FOREIGN KEY ( BC_amendment_amendment_id ) REFERENCES BC_amendment ( amendment_id ) ;

ALTER TABLE BC_document ADD CONSTRAINT BC_document_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_employee ADD CONSTRAINT BC_employee_BC_department_FK FOREIGN KEY ( BC_department_department_id ) REFERENCES BC_department ( department_id ) ;

ALTER TABLE BC_escalation ADD CONSTRAINT BC_escalation_BC_amendment_FK FOREIGN KEY ( BC_amendment_amendment_id ) REFERENCES BC_amendment ( amendment_id ) ;

ALTER TABLE BC_invoices ADD CONSTRAINT BC_invoices_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_note ADD CONSTRAINT BC_note_BC_communication_FK FOREIGN KEY ( BC_communication_communication_id ) REFERENCES BC_communication ( communication_id ) ;

ALTER TABLE BC_note ADD CONSTRAINT BC_note_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_note ADD CONSTRAINT BC_note_BC_employee_FK FOREIGN KEY ( BC_employee_employee_id ) REFERENCES BC_employee ( employee_id ) ;

ALTER TABLE BC_payment ADD CONSTRAINT BC_payment_BC_invoices_FK FOREIGN KEY ( BC_invoices_invoice_id ) REFERENCES BC_invoices ( invoice_id ) ;

ALTER TABLE BC_tickler ADD CONSTRAINT BC_tickler_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_vendor_contact ADD CONSTRAINT BC_vendor_contact_BC_vendor_FK FOREIGN KEY ( BC_vendor_vendor_id ) REFERENCES BC_vendor ( vendor_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            15
-- CREATE INDEX                             6
-- ALTER TABLE                             38
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   6
-- WARNINGS                                 0
