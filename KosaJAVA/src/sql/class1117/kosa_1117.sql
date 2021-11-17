alter session set"_ORACLE_SCRIPT"=true;
create user kosa identified by oracle;
grant resuorce,create session,content,dba to kosa;
alter user kosa default tablespace users quota unlimited on users;

select * from dba_users;

CREATE TABLE EMPLOYEEs(
    EMPLOYEE_ID NUMBER(6),
    FIRST_NAME VARCHAR2(20),
    LAST_NAME VARCHAR2(25),
    EMAIL VARCHAR2(25),
    PHONE_NUMBER VARCHAR2(20),
    HIRE_DATE DATE,
    JOB_ID VARCHAR2(10),
    SALARY NUMBER(8,2),
    COMMISION_PCT NUMBER(2,2),
    MANAGER_ID NUMBER(6),
    DEPARTMEMT_ID NUMBER(4)
);

create table departments(
    DEPARTMENT_ID NUMBER(4) not null,
    department_name VARCHAR2(30) not null,
    manager_id NUMBER,
    LOCATION_ID NUMBER(4) default 1800
);

drop table departments;

SELECT * FROM DEPARTMENTS;

describe employees;

alter table employee rename to employees;

insert into departments(department_id,department_name,manager_id,location_id)
values (300,'Engineering',110,1700);

insert into departments(department_id,department_name,manager_id)
values (300,'Engineering',110);

select * from departments;

drop table departments;
create table departments(
    DEPARTMENT_ID NUMBER(4) not null,
    department_name VARCHAR2(30) not null,
    manager_id NUMBER,
    LOCATION_ID NUMBER(4)
);

insert into departments(department_id)
values (300);

drop table employees;

create table employees(
    employee_id number not null,
    first_name varchar2(255),
    last_name varchar2(255) not null,
    email varchar2(255) not null,
    phone varchar2(50) not null,
    hire_date date not null,
    manager_id varchar2(255),
    job_id varchar2(255),
    salary number(8,2),
    commision_pct number(2,2),
    department_id number(4)
);

insert into employees values(100,'doyoung','park','ehdud5578','010-1234-1234','1996-06-17',null,null,1000,null,10
);

select * from employees;

drop table employees;

select sysdate from dual; -- 가상의 테이블에서 가져옴.

create table employees(
    employee_id number not null,
    first_name varchar2(255),
    last_name varchar2(255) not null,
    email varchar2(255) not null,
    phone varchar2(50) not null,
    hire_date date default sysdate not null,
    manager_id varchar2(255),
    job_id varchar2(255),
    salary number(8,2),
    commision_pct number(2,2),
    department_id number(4)
);

insert into employees(employee_id,last_name,email,phone)
values(101,'asdf','ehdud@asdf','010-1234-1234');

select * from employees;
commit;

create table tb1(
    col1 varchar2(3),
    col2 varchar2(3 Byte),
    col3 varchar2(3 char)
);

insert into tb1(col1) values('abc');
insert into tb1(col1) values('박도영');
insert into tb1(col2) values('abc');
insert into tb1(col2) values('박도영');
insert into tb1(col3) values('abc');
insert into tb1(col3) values('박도영');

select * from tb1;

create table tb2(
    col1 Integer,
    col2 decimal,
    col3 number
);

select * from user_tab_cols
where table_name ='TB2';


create table tb3(
    col1 float(32),
    col2 float -- default 는 126 이다.
);

select * from user_tab_cols -- kosa - table - cols
where table_name='TB3';

create table tb4(
    cal1 date,
    col2 timestamp
);

insert into tb4 values(sysdate,sysdate);

select * from tb4;

insert into tb4 values(sysdate,systimestamp);

select * from tb4;

create table tb5(
    col1 number,
    col2 varchar2(20)
);

insert into tb5 values(1,'parkdoyoung');
insert into tb5 values(1,'parkdohyun');
select * from tb5 where col1 = 1;

-- 중복값을 허용하지 않음 unique 
drop table tb5;

create table tb5(
    col1 number unique,
    col2 varchar2(20)
);


create table tb9(
    col1 number primary key,
    email varchar2(20) unique,
    phone varchar2(13) unique not null,
    first_name varchar2(20)
);  

insert into tb9 values(1,'a','1234','firstname');
insert into tb9 values(2,null,'1235','firstname');
insert into tb9 values(3,null,'123','firstname');
insert into tb9 values(3,'','1235','firstname');
insert into tb9 values(4,'','','firstname');
select * from tb9;
drop table tb9;
commit;

