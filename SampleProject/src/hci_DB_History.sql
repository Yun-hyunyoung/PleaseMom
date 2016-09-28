select sysdate from dual;

select * from airport_info where country_kr = '¥Î«—πŒ±π';
select * from airport_info order by 1;
select * from airport_info where name_kr like '%'||'±Ë'||'%' and rownum <= 5;

create table requester
( req_num      varchar2(10) CONSTRAINT REQ_REQ_NUM_PK PRIMARY KEY,
  req_id       varchar2(30) NOT NULL,
  req_passwd   varchar2(20) NOT NULL,
  req_name     varchar2(10) NOT NULL,
  req_birth    date         NOT NULL,
  req_phone    number(11),
  req_picture  varchar2(30),
  req_email_ck char(1)      DEFAULT 'N' CONSTRAINT REQ_REQ_EMAIL_CK CHECK(req_email_ck IN ('Y','N')),
  req_phone_ck char(1)      DEFAULT 'N' CONSTRAINT REQ_REQ_PHONE_CK CHECK(req_phone_ck IN ('Y','N'))
);
create sequence req_seq;

alter table requester
modify (req_phone varchar2(11));
alter table guider
modify (gui_phone varchar2(11));

create table guider
( gui_num       varchar2(10) CONSTRAINT GUI_GUI_NUM_PK PRIMARY KEY,
  gui_id        varchar2(30) NOT NULL,
  gui_passwd    varchar2(20) NOT NULL,
  gui_name      varchar2(10) NOT NULL,
  gui_birth     date         NOT NULL,
  gui_phone     number(11),
  gui_picture   varchar2(30),
  gui_email_ck  char(1)      DEFAULT 'N' CONSTRAINT GUI_GUI_EMAIL_CK CHECK(gui_email_ck IN ('Y','N')),
  gui_phone_ck  char(1)      DEFAULT 'N' CONSTRAINT GUI_GUI_PHONE_CK CHECK(gui_phone_ck IN ('Y','N'))
);
create sequence gui_seq;

create table schedule_board
( scb_num       number(5)    CONSTRAINT SCB_SCB_NUM_PK PRIMARY KEY,
  scb_gui_num   varchar2(30) CONSTRAINT SCB_SCB_GUI_NUM_FK REFERENCES guider(gui_num),
  scb_from      varchar2(30) NOT NULL,
  scb_via       varchar2(100),
  scv_to        varchar2(30) NOT NULL,
  scb_sdata     date         NOT NULL,
  scb_airport   varchar2(30) NOT NULL,
  scb_content   varchar2(1000),
  scb_wdata     date         DEFAULT SYSDATE,
  scb_case      varchar2(10) DEFAULT 'WAIT' CONSTRAINT SCB_SCB_CASE_CK CHECK(scb_case IN('WAIT','DURING','CONFIRM'))
);
create sequence scb_seq;

create table member
( mem_req_num   varchar2(10) CONSTRAINT MEM_MEM_REQ_NUM_FK REFERENCES requester(req_num) ON DELETE CASCADE,
  mem_gui_num   varchar2(10) CONSTRAINT MEM_MEM_GUI_NUM_FK REFERENCES guider(gui_num) ON DELETE CASCADE,
  mem_case      varchar2(10) CONSTRAINT MEM_MEM_CASE_CK CHECK(mem_case IN('DURING', 'CONFIRM')),
  CONSTRAINT MEM_REQ_GUI_NUM_PK PRIMARY KEY(mem_req_num, mem_gui_num)
);

select *
from tab;

select *
from airport_info;

create table member
( mem_num       number(5) CONSTRAINT mem_mem_num_PK PRIMARY KEY,
  mem_id        varchar2(30) constraint mem_mem_id_nn NOT NULL,
  mem_passwd    varchar2(20) constraint mem_mem_passwd_nn NOT NULL,
  mem_name      varchar2(10) constraint mem_mem_name_nn NOT NULL,
  mem_birth     date         constraint mem_mem_birth_nn NOT NULL,
  mem_phone     varchar2(11),
  mem_picture   varchar2(30),
  mem_email_ck  char(1)      DEFAULT 'N' CONSTRAINT mem_mem_EMAIL_CK CHECK(mem_email_ck IN ('Y','N')),
  mem_phone_ck  char(1)      DEFAULT 'N' CONSTRAINT mem_mem_PHONE_CK CHECK(mem_phone_ck IN ('Y','N')),
  mem_case varchar2(10)      default 'DURING' constraint mem_mem_case_ck check(mem_case in ('DURING', 'CONFIRM'))
);
create sequence mem_seq;

create table schedule_board
( scb_num       number(5)    CONSTRAINT SCB_SCB_NUM_PK PRIMARY KEY,
  scb_title varchar2(50),
  scb_mem_num   number(5) CONSTRAINT SCB_SCB_mem_NUM_FK REFERENCES member(mem_num),
  scb_from      number(5) constraint scb_scb_from_fk references airport_info(airport_num),
  scb_via       varchar2(100),
  scb_to        number(5) constraint scb_scb_to_fk references airport_info(airport_num),
  scb_sdate     date         constraint scb_scb_sdate_nn NOT NULL,
  scb_content   varchar2(1000),
  scb_wdate     date         DEFAULT SYSDATE,
  scb_case      varchar2(10) DEFAULT 'WAIT' CONSTRAINT SCB_SCB_CASE_CK CHECK(scb_case IN('WAIT','DURING','CONFIRM'))
);
create sequence scb_seq;

create table Travel_History
(
  th_num number(5) constraint th_th_num_pk primary key,
  th_req_num number(5) constraint th_th_req_num_fk references member(mem_num),
  th_gui_num number(5) constraint th_th_gui_num_fk references member(mem_num),
  th_scb_num number(5) constraint th_th_scb_num_fk references schedule_board(scb_num),
  th_case char(1) default 'N' constraint th_th_case_ck check(th_case in('Y','N'))
);
create sequence th_seq;

create table review
(
  review_num number(5) constraint review_review_num_pk primary key,
  review_content varchar2(1000),
  review_mem_num number(5) constraint review_review_mem_num_fk references member(mem_num),
  review_star number(2)
);

create sequence review_seq;

commit;

select *
from schedule_board;

drop table schedule_board purge;

select *
from tab;
drop table tt purge;
alter table airport_info
drop constraint SYS_C0011938;

select constraint_name, table_name, column_name
from user_cons_columns;

alter table airport_info
add ( constraint airport_info_airport_num_pk primary key(airport_num));

alter table schedule_board
modify ( scb_via varchar2(10) default 0 );

commit;

select *
from airport_info;

select *
from schedule_board;

select *
from member;

update member
set mem_email_ck = 'N'
where mem_num = 5;

commit;

desc schedule_board;

select *
from tab;

drop table test purge;