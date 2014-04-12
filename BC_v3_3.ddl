DROP SEQUENCE BC_amendment_seq ; 
create sequence BC_amendment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_amendment_PK_trig 
before insert on BC_amendment
for each row 
begin 
select BC_amendment_seq.nextval into :new.amendment_id from dual; 
end; 
/
alter table BC_amendment add dflex date ; 
alter table BC_amendment add iflex1 integer ; 
alter table BC_amendment add iflex2 integer ; 
alter table BC_amendment add vflex1 VARCHAR2 (4000) ; 
alter table BC_amendment add vflex2 VARCHAR2 (4000) ; 
alter table BC_amendment add vflex3 VARCHAR2 (4000) ; 
alter table BC_amendment add created date ; 
alter table BC_amendment add created_by VARCHAR2 (255) ; 
alter table BC_amendment add row_version_number integer ; 
alter table BC_amendment add updated date ; 
alter table BC_amendment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_amendment_AUD_trig 
before insert or update on BC_amendment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_checklist_seq ; 
create sequence BC_checklist_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_checklist_PK_trig 
before insert on BC_checklist
for each row 
begin 
select BC_checklist_seq.nextval into :new.checklist_id from dual; 
end; 
/
alter table BC_checklist add dflex date ; 
alter table BC_checklist add iflex1 integer ; 
alter table BC_checklist add iflex2 integer ; 
alter table BC_checklist add vflex1 VARCHAR2 (4000) ; 
alter table BC_checklist add vflex2 VARCHAR2 (4000) ; 
alter table BC_checklist add vflex3 VARCHAR2 (4000) ; 
alter table BC_checklist add created date ; 
alter table BC_checklist add created_by VARCHAR2 (255) ; 
alter table BC_checklist add row_version_number integer ; 
alter table BC_checklist add updated date ; 
alter table BC_checklist add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_checklist_AUD_trig 
before insert or update on BC_checklist 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_communication_seq ; 
create sequence BC_communication_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_communication_PK_trig 
before insert on BC_communication
for each row 
begin 
select BC_communication_seq.nextval into :new.communication_id from dual; 
end; 
/
alter table BC_communication add dflex date ; 
alter table BC_communication add iflex1 integer ; 
alter table BC_communication add iflex2 integer ; 
alter table BC_communication add vflex1 VARCHAR2 (4000) ; 
alter table BC_communication add vflex2 VARCHAR2 (4000) ; 
alter table BC_communication add vflex3 VARCHAR2 (4000) ; 
alter table BC_communication add created date ; 
alter table BC_communication add created_by VARCHAR2 (255) ; 
alter table BC_communication add row_version_number integer ; 
alter table BC_communication add updated date ; 
alter table BC_communication add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_communication_AUD_trig 
before insert or update on BC_communication 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_contract_seq ; 
create sequence BC_contract_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_contract_PK_trig 
before insert on BC_contract
for each row 
begin 
select BC_contract_seq.nextval into :new.contract_id from dual; 
end; 
/
alter table BC_contract add dflex date ; 
alter table BC_contract add iflex1 integer ; 
alter table BC_contract add iflex2 integer ; 
alter table BC_contract add vflex1 VARCHAR2 (4000) ; 
alter table BC_contract add vflex2 VARCHAR2 (4000) ; 
alter table BC_contract add vflex3 VARCHAR2 (4000) ; 
alter table BC_contract add created date ; 
alter table BC_contract add created_by VARCHAR2 (255) ; 
alter table BC_contract add row_version_number integer ; 
alter table BC_contract add updated date ; 
alter table BC_contract add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_contract_AUD_trig 
before insert or update on BC_contract 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_department_seq ; 
create sequence BC_department_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_department_PK_trig 
before insert on BC_department
for each row 
begin 
select BC_department_seq.nextval into :new.department_id from dual; 
end; 
/
alter table BC_department add dflex date ; 
alter table BC_department add iflex1 integer ; 
alter table BC_department add iflex2 integer ; 
alter table BC_department add vflex1 VARCHAR2 (4000) ; 
alter table BC_department add vflex2 VARCHAR2 (4000) ; 
alter table BC_department add vflex3 VARCHAR2 (4000) ; 
alter table BC_department add created date ; 
alter table BC_department add created_by VARCHAR2 (255) ; 
alter table BC_department add row_version_number integer ; 
alter table BC_department add updated date ; 
alter table BC_department add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_department_AUD_trig 
before insert or update on BC_department 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_department_contact_seq ; 
create sequence BC_department_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_department_contact_PK_trig 
before insert on BC_department_contact
for each row 
begin 
select BC_department_contact_seq.nextval into :new.department_contact_id from dual; 
end; 
/
alter table BC_department_contact add dflex date ; 
alter table BC_department_contact add iflex1 integer ; 
alter table BC_department_contact add iflex2 integer ; 
alter table BC_department_contact add vflex1 VARCHAR2 (4000) ; 
alter table BC_department_contact add vflex2 VARCHAR2 (4000) ; 
alter table BC_department_contact add vflex3 VARCHAR2 (4000) ; 
alter table BC_department_contact add created date ; 
alter table BC_department_contact add created_by VARCHAR2 (255) ; 
alter table BC_department_contact add row_version_number integer ; 
alter table BC_department_contact add updated date ; 
alter table BC_department_contact add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_department_contact_AUD_trig 
before insert or update on BC_department_contact 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_document_seq ; 
create sequence BC_document_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_document_PK_trig 
before insert on BC_document
for each row 
begin 
select BC_document_seq.nextval into :new.document_id from dual; 
end; 
/
alter table BC_document add dflex date ; 
alter table BC_document add iflex1 integer ; 
alter table BC_document add iflex2 integer ; 
alter table BC_document add vflex1 VARCHAR2 (4000) ; 
alter table BC_document add vflex2 VARCHAR2 (4000) ; 
alter table BC_document add vflex3 VARCHAR2 (4000) ; 
alter table BC_document add created date ; 
alter table BC_document add created_by VARCHAR2 (255) ; 
alter table BC_document add row_version_number integer ; 
alter table BC_document add updated date ; 
alter table BC_document add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_document_AUD_trig 
before insert or update on BC_document 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_employee_seq ; 
create sequence BC_employee_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_employee_PK_trig 
before insert on BC_employee
for each row 
begin 
select BC_employee_seq.nextval into :new.employee_id from dual; 
end; 
/
alter table BC_employee add dflex date ; 
alter table BC_employee add iflex1 integer ; 
alter table BC_employee add iflex2 integer ; 
alter table BC_employee add vflex1 VARCHAR2 (4000) ; 
alter table BC_employee add vflex2 VARCHAR2 (4000) ; 
alter table BC_employee add vflex3 VARCHAR2 (4000) ; 
alter table BC_employee add created date ; 
alter table BC_employee add created_by VARCHAR2 (255) ; 
alter table BC_employee add row_version_number integer ; 
alter table BC_employee add updated date ; 
alter table BC_employee add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_employee_AUD_trig 
before insert or update on BC_employee 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_escalation_seq ; 
create sequence BC_escalation_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_escalation_PK_trig 
before insert on BC_escalation
for each row 
begin 
select BC_escalation_seq.nextval into :new.escalation_id from dual; 
end; 
/
alter table BC_escalation add dflex date ; 
alter table BC_escalation add iflex1 integer ; 
alter table BC_escalation add iflex2 integer ; 
alter table BC_escalation add vflex1 VARCHAR2 (4000) ; 
alter table BC_escalation add vflex2 VARCHAR2 (4000) ; 
alter table BC_escalation add vflex3 VARCHAR2 (4000) ; 
alter table BC_escalation add created date ; 
alter table BC_escalation add created_by VARCHAR2 (255) ; 
alter table BC_escalation add row_version_number integer ; 
alter table BC_escalation add updated date ; 
alter table BC_escalation add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_escalation_AUD_trig 
before insert or update on BC_escalation 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_invoices_seq ; 
create sequence BC_invoices_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_invoices_PK_trig 
before insert on BC_invoices
for each row 
begin 
select BC_invoices_seq.nextval into :new.invoice_id from dual; 
end; 
/
alter table BC_invoices add dflex date ; 
alter table BC_invoices add iflex1 integer ; 
alter table BC_invoices add iflex2 integer ; 
alter table BC_invoices add vflex1 VARCHAR2 (4000) ; 
alter table BC_invoices add vflex2 VARCHAR2 (4000) ; 
alter table BC_invoices add vflex3 VARCHAR2 (4000) ; 
alter table BC_invoices add created date ; 
alter table BC_invoices add created_by VARCHAR2 (255) ; 
alter table BC_invoices add row_version_number integer ; 
alter table BC_invoices add updated date ; 
alter table BC_invoices add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_invoices_AUD_trig 
before insert or update on BC_invoices 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_note_seq ; 
create sequence BC_note_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_note_PK_trig 
before insert on BC_note
for each row 
begin 
select BC_note_seq.nextval into :new.note_id from dual; 
end; 
/
alter table BC_note add dflex date ; 
alter table BC_note add iflex1 integer ; 
alter table BC_note add iflex2 integer ; 
alter table BC_note add vflex1 VARCHAR2 (4000) ; 
alter table BC_note add vflex2 VARCHAR2 (4000) ; 
alter table BC_note add vflex3 VARCHAR2 (4000) ; 
alter table BC_note add created date ; 
alter table BC_note add created_by VARCHAR2 (255) ; 
alter table BC_note add row_version_number integer ; 
alter table BC_note add updated date ; 
alter table BC_note add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_note_AUD_trig 
before insert or update on BC_note 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_payment_seq ; 
create sequence BC_payment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_payment_PK_trig 
before insert on BC_payment
for each row 
begin 
select BC_payment_seq.nextval into :new.payment_id from dual; 
end; 
/
alter table BC_payment add dflex date ; 
alter table BC_payment add iflex1 integer ; 
alter table BC_payment add iflex2 integer ; 
alter table BC_payment add vflex1 VARCHAR2 (4000) ; 
alter table BC_payment add vflex2 VARCHAR2 (4000) ; 
alter table BC_payment add vflex3 VARCHAR2 (4000) ; 
alter table BC_payment add created date ; 
alter table BC_payment add created_by VARCHAR2 (255) ; 
alter table BC_payment add row_version_number integer ; 
alter table BC_payment add updated date ; 
alter table BC_payment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_payment_AUD_trig 
before insert or update on BC_payment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_tickler_seq ; 
create sequence BC_tickler_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_tickler_PK_trig 
before insert on BC_tickler
for each row 
begin 
select BC_tickler_seq.nextval into :new.tickler_id from dual; 
end; 
/
alter table BC_tickler add dflex date ; 
alter table BC_tickler add iflex1 integer ; 
alter table BC_tickler add iflex2 integer ; 
alter table BC_tickler add vflex1 VARCHAR2 (4000) ; 
alter table BC_tickler add vflex2 VARCHAR2 (4000) ; 
alter table BC_tickler add vflex3 VARCHAR2 (4000) ; 
alter table BC_tickler add created date ; 
alter table BC_tickler add created_by VARCHAR2 (255) ; 
alter table BC_tickler add row_version_number integer ; 
alter table BC_tickler add updated date ; 
alter table BC_tickler add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_tickler_AUD_trig 
before insert or update on BC_tickler 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_vendor_seq ; 
create sequence BC_vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_vendor_PK_trig 
before insert on BC_vendor
for each row 
begin 
select BC_vendor_seq.nextval into :new.vendor_id from dual; 
end; 
/
alter table BC_vendor add dflex date ; 
alter table BC_vendor add iflex1 integer ; 
alter table BC_vendor add iflex2 integer ; 
alter table BC_vendor add vflex1 VARCHAR2 (4000) ; 
alter table BC_vendor add vflex2 VARCHAR2 (4000) ; 
alter table BC_vendor add vflex3 VARCHAR2 (4000) ; 
alter table BC_vendor add created date ; 
alter table BC_vendor add created_by VARCHAR2 (255) ; 
alter table BC_vendor add row_version_number integer ; 
alter table BC_vendor add updated date ; 
alter table BC_vendor add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_vendor_AUD_trig 
before insert or update on BC_vendor 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_vendor_contact_seq ; 
create sequence BC_vendor_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_vendor_contact_PK_trig 
before insert on BC_vendor_contact
for each row 
begin 
select BC_vendor_contact_seq.nextval into :new.contact_id from dual; 
end; 
/
alter table BC_vendor_contact add dflex date ; 
alter table BC_vendor_contact add iflex1 integer ; 
alter table BC_vendor_contact add iflex2 integer ; 
alter table BC_vendor_contact add vflex1 VARCHAR2 (4000) ; 
alter table BC_vendor_contact add vflex2 VARCHAR2 (4000) ; 
alter table BC_vendor_contact add vflex3 VARCHAR2 (4000) ; 
alter table BC_vendor_contact add created date ; 
alter table BC_vendor_contact add created_by VARCHAR2 (255) ; 
alter table BC_vendor_contact add row_version_number integer ; 
alter table BC_vendor_contact add updated date ; 
alter table BC_vendor_contact add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_vendor_contact_AUD_trig 
before insert or update on BC_vendor_contact 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP INDEX BC_contract_contract_i_FK_0 ;
CREATE INDEX BC_contract_contract_i_FK_0 ON BC_amendment(BC_contract_contract_id) ;
DROP INDEX BC_escalation_escalati_FK_1 ;
CREATE INDEX BC_escalation_escalati_FK_1 ON BC_amendment(BC_escalation_escalation_id) ;
DROP INDEX BC_contract_contract_i_FK_2 ;
CREATE INDEX BC_contract_contract_i_FK_2 ON BC_checklist(BC_contract_contract_id) ;
