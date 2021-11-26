create table teacher
(
    teach_no    number        not null,
    teach_name  varchar2(10)  not null,
    teach_tel   varchar2(11)  not null,
    teach_email varchar2(30)  not null,
    teach_addr  varchar2(255) not null,
    teach_carr  varchar2(1000),
    teach_viol  varchar2(1000),
    teach_certi varchar2(1000)
);

create table subject
(
    subj_no    number        not null,
    subj_name  varchar2(100) not null,
    subj_cnt   varchar2(1000),
    subj_group number        not null,
    subj_day   number        not null,
    subj_time  number        not null
);

create table employment
(
    employment_no   number         not null,
    emp_no          number         not null,
    employment_sign varchar2(1000) not null,
    employment_sal  number         not null,
    employment_posi varchar2(10)   not null,
    employment_date timestamp      not null
);

create table leceval
(
    leceval_no      number not null,
    emp_no          number not null,
    lec_no          number not null,
    leceval_substfy number not null,
    leceval_relate  number not null,
    leceval_lecstfy number not null,
    leceval_etc     varchar2(1000)
);

create table leccontract
(
    lec_no   number         not null,
    teach_no number,
    subj_no  number,
    jec_date timestamp      not null,
    lec_pay  number         not null,
    lec_sign varchar2(1000) not null,
    lec_unit number
);

create table jobintv -- job interview
(
    jobintv_no     number not null,
    emp_no         number not null,
    lobintv_lang   number not null,
    lobintv_serv   number not null,
    lobintv_task   number not null,
    lobintv_social number not null,
    lobintv_solve  number not null
);

create table employee
(
    emp_no    number       not null,
    dept_no   number,
    emp_name  varchar2(10) not null,
    emp_tel   varchar2(11) not null,
    emp_email varchar2(30) not null,
    emp_addr  varchar2(30) not null,
    emp_date  timestamp,
    emp_carr  varchar2(1000),
    emp_certi varchar2(1000)
);

create table attend
(
    attend_no   number    not null,
    emp_no      number    not null,
    lec_no      number    not null,
    attend_date timestamp not null,
    attend_time number    not null,
    compl_date  timestamp not null
);

create table department(
    dept_no number not null ,
    dept_name varchar2(100) not null ,
    dept_tel varchar2(11) not null ,
    dept_addr varchar2(255) not null
);

commit ;