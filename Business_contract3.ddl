DROP SEQUENCE BC_account_seq ;
create sequence BC_account_seq
start with 100
increment by 1
nomaxvalue
;

create or replace trigger BC_account_PK_trig
before insert on BC_account
for each row
begin
select BC_account_seq.nextval into :new.account_id from dual;
end;
/
alter table BC_account add dflex date ;
alter table BC_account add iflex1 integer ;
alter table BC_account add iflex2 integer ;
alter table BC_account add vflex1 VARCHAR2 (4000) ;
alter table BC_account add vflex2 VARCHAR2 (4000) ;
alter table BC_account add vflex3 VARCHAR2 (4000) ;
alter table BC_account add created date ;
alter table BC_account add created_by VARCHAR2 (255) ;
alter table BC_account add row_version_number integer ;
alter table BC_account add updated date ;
alter table BC_account add updated_by VARCHAR2 (255) ;
/
create or replace trigger BC_account_AUD_trig
before insert or update on BC_account
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
select BC_communication_seq.nextval into :new.commincation_id from dual;
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

DROP SEQUENCE BC_contact_seq ;
create sequence BC_contact_seq
start with 100
increment by 1
nomaxvalue
;

create or replace trigger BC_contact_PK_trig
before insert on BC_contact
for each row
begin
select BC_contact_seq.nextval into :new.contact_id from dual;
end;
/
alter table BC_contact add dflex date ;
alter table BC_contact add iflex1 integer ;
alter table BC_contact add iflex2 integer ;
alter table BC_contact add vflex1 VARCHAR2 (4000) ;
alter table BC_contact add vflex2 VARCHAR2 (4000) ;
alter table BC_contact add vflex3 VARCHAR2 (4000) ;
alter table BC_contact add created date ;
alter table BC_contact add created_by VARCHAR2 (255) ;
alter table BC_contact add row_version_number integer ;
alter table BC_contact add updated date ;
alter table BC_contact add updated_by VARCHAR2 (255) ;
/
create or replace trigger BC_contact_AUD_trig
before insert or update on BC_contact
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

DROP SEQUENCE BC_cost_seq ;
create sequence BC_cost_seq
start with 100
increment by 1
nomaxvalue
;

create or replace trigger BC_cost_PK_trig
before insert on BC_cost
for each row
begin
select BC_cost_seq.nextval into :new.cost_id from dual;
end;
/
alter table BC_cost add dflex date ;
alter table BC_cost add iflex1 integer ;
alter table BC_cost add iflex2 integer ;
alter table BC_cost add vflex1 VARCHAR2 (4000) ;
alter table BC_cost add vflex2 VARCHAR2 (4000) ;
alter table BC_cost add vflex3 VARCHAR2 (4000) ;
alter table BC_cost add created date ;
alter table BC_cost add created_by VARCHAR2 (255) ;
alter table BC_cost add row_version_number integer ;
alter table BC_cost add updated date ;
alter table BC_cost add updated_by VARCHAR2 (255) ;
/
create or replace trigger BC_cost_AUD_trig
before insert or update on BC_cost
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

DROP INDEX BC_contract_contract_i_FK_0 ;
CREATE INDEX BC_contract_contract_i_FK_0 ON BC_amendment(BC_contract_contract_id) ;
DROP INDEX BC_account_account_id_FK_1 ;
CREATE INDEX BC_account_account_id_FK_1 ON BC_checklist(BC_account_account_id) ;
DROP INDEX BC_contract_contract_i_FK_2 ;
CREATE INDEX BC_contract_contract_i_FK_2 ON BC_checklist(BC_contract_contract_id) ;
DROP INDEX BC_department_departme_FK_3 ;
CREATE INDEX BC_department_departme_FK_3 ON BC_checklist(BC_department_department_id) ;
DROP INDEX BC_contact_contact_id_FK_4 ;
CREATE INDEX BC_contact_contact_id_FK_4 ON BC_communication(BC_contact_contact_id) ;
DROP INDEX BC_department_departme_FK_5 ;
CREATE INDEX BC_department_departme_FK_5 ON BC_contact(BC_department_department_id) ;
DROP INDEX BC_account_account_id_FK_6 ;
CREATE INDEX BC_account_account_id_FK_6 ON BC_contract(BC_account_account_id) ;
DROP INDEX BC_checklist_checklist_FK_7 ;
CREATE INDEX BC_checklist_checklist_FK_7 ON BC_contract(BC_checklist_checklist_id) ;
DROP INDEX BC_contact_contact_id_FK_8 ;
CREATE INDEX BC_contact_contact_id_FK_8 ON BC_contract(BC_contact_contact_id) ;
DROP INDEX BC_cost_cost_id_FK_9 ;
CREATE INDEX BC_cost_cost_id_FK_9 ON BC_contract(BC_cost_cost_id) ;
DROP INDEX BC_department_departme_FK_10 ;
CREATE INDEX BC_department_departme_FK_10 ON BC_contract(BC_department_department_id) ;
DROP INDEX BC_vendor_vendor_id_FK_11 ;
CREATE INDEX BC_vendor_vendor_id_FK_11 ON BC_contract(BC_vendor_vendor_id) ;
DROP INDEX BC_account_account_id_FK_12 ;
CREATE INDEX BC_account_account_id_FK_12 ON BC_cost(BC_account_account_id) ;
DROP INDEX BC_contract_contract_i_FK_13 ;
CREATE INDEX BC_contract_contract_i_FK_13 ON BC_cost(BC_contract_contract_id) ;
DROP INDEX BC_contract_contract_i_FK_14 ;
CREATE INDEX BC_contract_contract_i_FK_14 ON BC_document(BC_contract_contract_id) ;