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

DROP SEQUENCE BC_department_contact_seq ;
create sequence BC_department_contact_seq
start with 100
increment by 1
nomaxvalue
;
DROP TRIGGER BC_department_contact_PK_trig
;

create or replace trigger BC_department_contact_PK_trig
before insert on BC_department_contact
for each row
begin
select BC_department_contact_seq.nextval into :new.department_contact_id from dual;
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

DROP SEQUENCE BC_vendor_contact_seq ;
create sequence BC_vendor_contact_seq
start with 100
increment by 1
nomaxvalue
;
DROP TRIGGER BC_vendor_contact_PK_trig
;

create or replace trigger BC_vendor_contact_PK_trig
before insert on BC_vendor_contact
for each row
begin
select BC_vendor_contact_seq.nextval into :new.contact_id from dual;
end;
/

DROP INDEX BC_contract_contract_i_FK_0 ;
CREATE INDEX BC_contract_contract_i_FK_0 ON BC_amendment(BC_contract_contract_id) ;
DROP INDEX BC_escalation_escalati_FK_1 ;
CREATE INDEX BC_escalation_escalati_FK_1 ON BC_amendment(BC_escalation_escalation_id) ;
DROP INDEX BC_contract_contract_i_FK_2 ;
CREATE INDEX BC_contract_contract_i_FK_2 ON BC_checklist(BC_contract_contract_id) ;