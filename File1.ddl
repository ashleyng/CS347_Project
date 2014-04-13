DROP SEQUENCE BC_amendment_seq ; 
create sequence BC_amendment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_amendment_PK_trig 
; 

create or replace trigger BC_amendment_PK_trig 
before insert on BC_amendment
for each row 
begin 
select BC_amendment_seq.nextval into :new.amendment_id from dual; 
end; 
/

DROP SEQUENCE BC_checklist_seq ; 
create sequence BC_checklist_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_checklist_PK_trig 
; 

create or replace trigger BC_checklist_PK_trig 
before insert on BC_checklist
for each row 
begin 
select BC_checklist_seq.nextval into :new.checklist_id from dual; 
end; 
/

DROP SEQUENCE BC_communication_seq ; 
create sequence BC_communication_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_communication_PK_trig 
; 

create or replace trigger BC_communication_PK_trig 
before insert on BC_communication
for each row 
begin 
select BC_communication_seq.nextval into :new.communication_id from dual; 
end; 
/

DROP SEQUENCE BC_contact_seq ; 
create sequence BC_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_contact_PK_trig 
; 

create or replace trigger BC_contact_PK_trig 
before insert on BC_contact
for each row 
begin 
select BC_contact_seq.nextval into :new.contact_id from dual; 
end; 
/

DROP SEQUENCE BC_contract_seq ; 
create sequence BC_contract_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_contract_PK_trig 
; 

create or replace trigger BC_contract_PK_trig 
before insert on BC_contract
for each row 
begin 
select BC_contract_seq.nextval into :new.contract_id from dual; 
end; 
/

DROP SEQUENCE BC_department_seq ; 
create sequence BC_department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_department_PK_trig 
; 

create or replace trigger BC_department_PK_trig 
before insert on BC_department
for each row 
begin 
select BC_department_seq.nextval into :new.department_id from dual; 
end; 
/

DROP SEQUENCE BC_document_seq ; 
create sequence BC_document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_document_PK_trig 
; 

create or replace trigger BC_document_PK_trig 
before insert on BC_document
for each row 
begin 
select BC_document_seq.nextval into :new.document_id from dual; 
end; 
/

DROP SEQUENCE BC_employee_seq ; 
create sequence BC_employee_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_employee_PK_trig 
; 

create or replace trigger BC_employee_PK_trig 
before insert on BC_employee
for each row 
begin 
select BC_employee_seq.nextval into :new.employee_id from dual; 
end; 
/

DROP SEQUENCE BC_escalation_seq ; 
create sequence BC_escalation_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_escalation_PK_trig 
; 

create or replace trigger BC_escalation_PK_trig 
before insert on BC_escalation
for each row 
begin 
select BC_escalation_seq.nextval into :new.escalation_id from dual; 
end; 
/

DROP SEQUENCE BC_invoices_seq ; 
create sequence BC_invoices_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_invoices_PK_trig 
; 

create or replace trigger BC_invoices_PK_trig 
before insert on BC_invoices
for each row 
begin 
select BC_invoices_seq.nextval into :new.invoice_id from dual; 
end; 
/

DROP SEQUENCE BC_note_seq ; 
create sequence BC_note_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_note_PK_trig 
; 

create or replace trigger BC_note_PK_trig 
before insert on BC_note
for each row 
begin 
select BC_note_seq.nextval into :new.note_id from dual; 
end; 
/

DROP SEQUENCE BC_payment_seq ; 
create sequence BC_payment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_payment_PK_trig 
; 

create or replace trigger BC_payment_PK_trig 
before insert on BC_payment
for each row 
begin 
select BC_payment_seq.nextval into :new.payment_id from dual; 
end; 
/

DROP SEQUENCE BC_tickler_seq ; 
create sequence BC_tickler_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_tickler_PK_trig 
; 

create or replace trigger BC_tickler_PK_trig 
before insert on BC_tickler
for each row 
begin 
select BC_tickler_seq.nextval into :new.tickler_id from dual; 
end; 
/

DROP SEQUENCE BC_vendor_seq ; 
create sequence BC_vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_vendor_PK_trig 
; 

create or replace trigger BC_vendor_PK_trig 
before insert on BC_vendor
for each row 
begin 
select BC_vendor_seq.nextval into :new.vendor_id from dual; 
end; 
/

DROP INDEX BC_contract_id_FK_0 ;
CREATE INDEX BC_contract_id_FK_0 ON BC_amendment(BC_contract_id) ;
DROP INDEX BC_employee_id_FK_1 ;
CREATE INDEX BC_employee_id_FK_1 ON BC_amendment(BC_employee_id) ;
DROP INDEX BC_escalation_id_FK_2 ;
CREATE INDEX BC_escalation_id_FK_2 ON BC_amendment(BC_escalation_id) ;
DROP INDEX BC_contract_id_FK_3 ;
CREATE INDEX BC_contract_id_FK_3 ON BC_checklist(BC_contract_id) ;
DROP INDEX BC_contact_id_FK_4 ;
CREATE INDEX BC_contact_id_FK_4 ON BC_communication(BC_contact_id) ;
DROP INDEX BC_contract_id_FK_5 ;
CREATE INDEX BC_contract_id_FK_5 ON BC_communication(BC_contract_id) ;
DROP INDEX BC_employee_id_FK_6 ;
CREATE INDEX BC_employee_id_FK_6 ON BC_communication(BC_employee_id) ;
DROP INDEX BC_department_id_FK_7 ;
CREATE INDEX BC_department_id_FK_7 ON BC_contact(BC_department_id) ;
DROP INDEX BC_vendor_id_FK_8 ;
CREATE INDEX BC_vendor_id_FK_8 ON BC_contact(BC_vendor_id) ;
DROP INDEX BC_checklist_id_FK_9 ;
CREATE INDEX BC_checklist_id_FK_9 ON BC_contract(BC_checklist_id) ;
DROP INDEX BC_vendor_contact_id_FK_10 ;
CREATE INDEX BC_vendor_contact_id_FK_10 ON BC_contract(BC_vendor_contact_id) ;
DROP INDEX BC_dept_contact_id_FK_11 ;
CREATE INDEX BC_dept_contact_id_FK_11 ON BC_contract(BC_dept_contact_id) ;
DROP INDEX BC_department_id_FK_12 ;
CREATE INDEX BC_department_id_FK_12 ON BC_contract(BC_department_id) ;
DROP INDEX BC_employee_id_FK_13 ;
CREATE INDEX BC_employee_id_FK_13 ON BC_contract(BC_employee_id) ;
DROP INDEX BC_vendor_id_FK_14 ;
CREATE INDEX BC_vendor_id_FK_14 ON BC_contract(BC_vendor_id) ;
DROP INDEX BC_amendment_id_FK_15 ;
CREATE INDEX BC_amendment_id_FK_15 ON BC_document(BC_amendment_id) ;
DROP INDEX BC_contract_id_FK_16 ;
CREATE INDEX BC_contract_id_FK_16 ON BC_document(BC_contract_id) ;
DROP INDEX BC_amendment_amendment_FK_17 ;
CREATE INDEX BC_amendment_amendment_FK_17 ON BC_escalation(BC_amendment_amendment_id) ;
DROP INDEX BC_contract_id_FK_18 ;
CREATE INDEX BC_contract_id_FK_18 ON BC_invoices(BC_contract_id) ;
DROP INDEX BC_communication_id_FK_19 ;
CREATE INDEX BC_communication_id_FK_19 ON BC_note(BC_communication_id) ;
DROP INDEX BC_contract_contract_i_FK_20 ;
CREATE INDEX BC_contract_contract_i_FK_20 ON BC_note(BC_contract_contract_id) ;
DROP INDEX BC_employee_id_FK_21 ;
CREATE INDEX BC_employee_id_FK_21 ON BC_note(BC_employee_id) ;
DROP INDEX BC_invoice_id_FK_22 ;
CREATE INDEX BC_invoice_id_FK_22 ON BC_payment(BC_invoice_id) ;
DROP INDEX BC_contract_id_FK_23 ;
CREATE INDEX BC_contract_id_FK_23 ON BC_tickler(BC_contract_id) ;
