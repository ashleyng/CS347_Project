alter table BC_contract
add BC_system_approval_id number;

create table BC_system_approval
	(
		system_approval_id number NOT NULL,
		OGC char(1),
		EVC char(1),
		BOR char(1),
		Docket char(1),
		docket_date date,
		system_notes varchar2(4000),
		BC_contract_id number
	);
CREATE UNIQUE INDEX BC_system_approval__IDX ON BC_system_approval
  (
    BC_contract_id ASC
  )
  ;
ALTER TABLE BC_system_approval ADD CONSTRAINT BC_system_approval_PK PRIMARY KEY ( system_approval_id ) ;
ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_system_notes_FK FOREIGN KEY ( BC_system_approval_id ) REFERENCES BC_system_approval ( system_approval_id ) ;

DROP SEQUENCE BC_system_approval_seq ; 
create sequence BC_system_approval_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_system_approval_PK_trig 
; 

create or replace trigger BC_system_approval_PK_trig 
before insert on BC_system_approval
for each row 
begin 
select BC_system_approval_seq.nextval into :new.system_approval_id from dual; 
end; 
/

DROP SEQUENCE BC_system_approval_seq ; 
create sequence BC_system_approval_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_system_approval_PK_trig 
before insert on BC_system_approval
for each row 
begin 
select BC_system_approval_seq.nextval into :new.system_approval_id from dual; 
end; 
/
alter table BC_system_approval add dflex date ; 
alter table BC_system_approval add iflex1 integer ; 
alter table BC_system_approval add iflex2 integer ; 
alter table BC_system_approval add vflex1 VARCHAR2 (4000) ; 
alter table BC_system_approval add vflex2 VARCHAR2 (4000) ; 
alter table BC_system_approval add vflex3 VARCHAR2 (4000) ; 
alter table BC_system_approval add created date ; 
alter table BC_system_approval add created_by VARCHAR2 (255) ; 
alter table BC_system_approval add row_version_number integer ; 
alter table BC_system_approval add updated date ; 
alter table BC_system_approval add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_system_approval_AUD_trig 
before insert or update on BC_system_approval
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