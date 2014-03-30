-- Generated by Oracle SQL Developer Data Modeler 4.0.0.833
--   at:        2014-03-30 02:55:51 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE BC_account CASCADE CONSTRAINTS ;

DROP TABLE BC_amendment CASCADE CONSTRAINTS ;

DROP TABLE BC_checklist CASCADE CONSTRAINTS ;

DROP TABLE BC_communication CASCADE CONSTRAINTS ;

DROP TABLE BC_contact CASCADE CONSTRAINTS ;

DROP TABLE BC_contract CASCADE CONSTRAINTS ;

DROP TABLE BC_cost CASCADE CONSTRAINTS ;

DROP TABLE BC_department CASCADE CONSTRAINTS ;

DROP TABLE BC_document CASCADE CONSTRAINTS ;

DROP TABLE BC_vendor CASCADE CONSTRAINTS ;

CREATE TABLE BC_account
  ( account_id NUMBER NOT NULL
  ) ;
ALTER TABLE BC_account ADD CONSTRAINT BC_account_PK PRIMARY KEY ( account_id ) ;

CREATE TABLE BC_amendment
  (
    amendment_id            NUMBER NOT NULL ,
    BC_contract_contract_id NUMBER NOT NULL
  ) ;
ALTER TABLE BC_amendment ADD CONSTRAINT BC_amendment_PK PRIMARY KEY ( amendment_id ) ;

CREATE TABLE BC_checklist
  (
    checklist_id                NUMBER NOT NULL ,
    BC_account_account_id       NUMBER NOT NULL ,
    BC_department_department_id NUMBER NOT NULL ,
    BC_contract_contract_id     NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX BC_checklist__IDX ON BC_checklist
  (
    BC_contract_contract_id ASC
  )
  ;
  ALTER TABLE BC_checklist ADD CONSTRAINT BC_checklist_PK PRIMARY KEY ( checklist_id ) ;

CREATE TABLE BC_communication
  (
    commincation_id       NUMBER NOT NULL ,
    "date"                DATE ,
    notes                 VARCHAR2 (4000) ,
    BC_contact_contact_id NUMBER NOT NULL
  ) ;
ALTER TABLE BC_communication ADD CONSTRAINT BC_communication_PK PRIMARY KEY ( commincation_id ) ;

CREATE TABLE BC_contact
  (
    contact_id                  NUMBER NOT NULL ,
    name                        VARCHAR2 (255) ,
    email                       VARCHAR2 (255) ,
    phone                       VARCHAR2 (50) ,
    fax                         VARCHAR2 (50) ,
    address                     VARCHAR2 (500) ,
    city                        VARCHAR2 (50) ,
    state                       VARCHAR2 (50) ,
    zip                         VARCHAR2 (50) ,
    country                     VARCHAR2 (50) ,
    BC_department_department_id NUMBER NOT NULL
  ) ;
ALTER TABLE BC_contact ADD CONSTRAINT BC_contact_PK PRIMARY KEY ( contact_id ) ;

CREATE TABLE BC_contract
  (
    contract_id                 NUMBER NOT NULL ,
    start_date                  DATE ,
    end_date                    VARCHAR2 ,
    purpose                     VARCHAR2 (4000) ,
    BC_contact_contact_id       NUMBER NOT NULL ,
    BC_vendor_vendor_id         NUMBER NOT NULL ,
    BC_account_account_id       NUMBER NOT NULL ,
    BC_department_department_id NUMBER NOT NULL ,
    BC_checklist_checklist_id   NUMBER NOT NULL ,
    BC_cost_cost_id             NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX BC_contract__IDX ON BC_contract
  (
    BC_checklist_checklist_id ASC
  )
  ;
CREATE UNIQUE INDEX BC_contract__IDXv1 ON BC_contract
  (
    BC_cost_cost_id ASC
  )
  ;
  ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_PK PRIMARY KEY ( contract_id ) ;

CREATE TABLE BC_cost
  (
    cost_id                 NUMBER NOT NULL ,
    amount                  NUMBER ,
    BC_account_account_id   NUMBER NOT NULL ,
    BC_contract_contract_id NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX BC_cost__IDX ON BC_cost
  (
    BC_contract_contract_id ASC
  )
  ;
  ALTER TABLE BC_cost ADD CONSTRAINT BC_cost_PK PRIMARY KEY ( cost_id ) ;

CREATE TABLE BC_department
  (
    department_id NUMBER NOT NULL ,
    name          VARCHAR2 (255)
  ) ;
ALTER TABLE BC_department ADD CONSTRAINT BC_department_PK PRIMARY KEY ( department_id ) ;

CREATE TABLE BC_document
  (
    document_id   NUMBER NOT NULL ,
    filename      VARCHAR2 (4000 BYTE) ,
    file_mimetype VARCHAR2 (512) ,
    file_charset  VARCHAR2 (512) ,
    file_blob BLOB ,
    file_comment            VARCHAR2 (4000) ,
    tags                    VARCHAR2 (4000) ,
    BC_contract_contract_id NUMBER NOT NULL
  ) ;
ALTER TABLE BC_document ADD CONSTRAINT BC_document_PK PRIMARY KEY ( document_id ) ;

CREATE TABLE BC_vendor
  (
    vendor_id NUMBER NOT NULL ,
    name      VARCHAR2 (255) ,
    address   VARCHAR2 (500) ,
    city      VARCHAR2 (50) ,
    state     VARCHAR2 (50) ,
    zip       VARCHAR2 (50)
  ) ;
ALTER TABLE BC_vendor ADD CONSTRAINT BC_vendor_PK PRIMARY KEY ( vendor_id ) ;

ALTER TABLE BC_amendment ADD CONSTRAINT BC_amendment_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_checklist ADD CONSTRAINT BC_checklist_BC_account_FK FOREIGN KEY ( BC_account_account_id ) REFERENCES BC_account ( account_id ) ;

ALTER TABLE BC_checklist ADD CONSTRAINT BC_checklist_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_checklist ADD CONSTRAINT BC_checklist_BC_department_FK FOREIGN KEY ( BC_department_department_id ) REFERENCES BC_department ( department_id ) ;

ALTER TABLE BC_communication ADD CONSTRAINT BC_communication_BC_contact_FK FOREIGN KEY ( BC_contact_contact_id ) REFERENCES BC_contact ( contact_id ) ;

ALTER TABLE BC_contact ADD CONSTRAINT BC_contact_BC_department_FK FOREIGN KEY ( BC_department_department_id ) REFERENCES BC_department ( department_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_account_FK FOREIGN KEY ( BC_account_account_id ) REFERENCES BC_account ( account_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_checklist_FK FOREIGN KEY ( BC_checklist_checklist_id ) REFERENCES BC_checklist ( checklist_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_contact_FK FOREIGN KEY ( BC_contact_contact_id ) REFERENCES BC_contact ( contact_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_cost_FK FOREIGN KEY ( BC_cost_cost_id ) REFERENCES BC_cost ( cost_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_department_FK FOREIGN KEY ( BC_department_department_id ) REFERENCES BC_department ( department_id ) ;

ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_BC_vendor_FK FOREIGN KEY ( BC_vendor_vendor_id ) REFERENCES BC_vendor ( vendor_id ) ;

ALTER TABLE BC_cost ADD CONSTRAINT BC_cost_BC_account_FK FOREIGN KEY ( BC_account_account_id ) REFERENCES BC_account ( account_id ) ;

ALTER TABLE BC_cost ADD CONSTRAINT BC_cost_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

ALTER TABLE BC_document ADD CONSTRAINT BC_document_BC_contract_FK FOREIGN KEY ( BC_contract_contract_id ) REFERENCES BC_contract ( contract_id ) ;

CREATE SEQUENCE BC_document_document_id_SEQ START WITH 1 NOCACHE ORDER ;
CREATE OR REPLACE TRIGGER BC_document_document_id_TRG BEFORE
  INSERT ON BC_document FOR EACH ROW WHEN (NEW.document_id IS NULL) BEGIN :NEW.document_id := BC_document_document_id_SEQ.NEXTVAL;
END;
/


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             4
-- ALTER TABLE                             25
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
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
-- CREATE SEQUENCE                          1
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
-- ERRORS                                   0
-- WARNINGS                                 0