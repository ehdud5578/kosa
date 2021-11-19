drop table DEPARTMENTS;
create table departments
(
    departmemt_id   number(4)
        constraint dep_depid_pk primary key,
    department_name varchar2(30) not null
        constraint dep_depname_NM not null,
    manager_id      number(6),
    location_id     number(4)
);
create table departments
(
    departmemt_id   number(4),
    department_name varchar2(30) not null,
    manager_id      number(6),
    location_id     number(4),
    constraint dep_depid_pk primary key (departmemt_id)
);

insert into departments
values (90, 'Executive', 100, 1700);

drop table departments;

create table departments
(
    departmemt_id   number(4),
    department_name varchar2(30) not null,
    manager_id      number(6) references EMPLOYEES (EMPLOYEE_ID),
    location_id     number(4),
    constraint dep_depid_pk primary key (departmemt_id)
);

drop table departments;

create table departments
(
    department_id   number(4)
        constraint dep_depid_pk primary key,
    department_name varchar2(30) not null,
    manager_id      number(6)
        constraint dep_mngid_fk references EMPLOYEES (EMPLOYEE_ID),
    location_id     number(4)
);
drop table departments;

create table departments
(
    department_id   number(4),
    department_name varchar2(30) not null,
    manager_id      number(6),
    location_id     number(4),
    constraint dep_depid_pk primary key (department_id),
    constraint dep_mngid_fk foreign key (manager_id)
        references EMPLOYEES (EMPLOYEE_ID)
);

select *
from employees;

insert into departments
values (90, 'executive', 100, 1700);

create table c1
(
    c1 number check ( c1 > 0 ),
    c2 number
);

insert into c1 (c1, c2)
values (-1, 1);

insert into c1 (c1, c2)
values (1, 1);

select *
from c1;

create table c2
(
    c1 number,
    c2 number,
    constraint c_c1_ck check ( c1 > 0 ),
    constraint c_c2_ck check ( c2 > c1 )
);

insert into c2
values (1, 2);
select *
from c2;

select *
from USER_CONSTRAINTS
where TABLE_NAME = 'C2';

create table c4
(
    c1 number check ( c1 between 1 and 100),
    c2 varchar2(20) check ( c2 in ('a', 'b', 'c')),
    c3 varchar2(20) check ( c3 in ('seoul', 'busan', 'daegu', 'daejeon') )
    -- c4 varchar2(20) check ( c4 like '[a-f]%')
);

drop table c4;
insert into c4
values (10, 'a', 'seoul');

create table c5
(
    c1 number,
    c2 number,
    c3 number
);

alter table c5 rename column c3 to name;

alter table c5
    modify name varchar(20);

alter table c5
    modify name number;

-- column add

alter table c5
    add (c4 number,c5 varchar2(30));

drop table departments;

create table departments
(
    department_id   number(4),
    department_name varchar2(30),
    manager_id      number(4)
);

alter table departments
    add(location_id number(4));


alter table departments
    modify department_id constraint dep_id_pk primary key;

drop table departments;

drop table EMPLOYEES;


create table employees
(
    employee_id    number(6),
    first_name     varchar2(20),
    last_name      varchar2(25),
    email          varchar2(25),
    phone_number   varchar2(20),
    hire_date      date,
    job_id         varchar2(10),
    salary         number(8, 2),
    commission_pct number(2, 2),
    manager_id     number(6),
    department_id  number(4)
);

alter table employees
    add constraint emp_empid_pk primary key (employee_id);

drop table JOB_HISTORY;
create table JOB_HISTORY
(
    employee_id   number(6),
    start_date    date,
    end_date      date         not null,
    job_id        varchar2(10) not null,
    department_id number(4),
    constraint job_history_pk primary key (employee_id, start_date)
);

drop table jobs;
create table JOBS
(
    job_id     varchar2(10)
        constraint job_jobs_pk primary key,
    job_title  varchar2(35),
    Min_salary number(6),
    max_salary number(6)
);

alter table JOB_HISTORY
    add constraint job_jobid_fk foreign key (job_id) references JOBS (job_id);
drop table departments;
create table departments
(
    department_id   number(4) primary key,
    department_name varchar2(30),
    manager_id      number(6),
    location_id     number(4)
);

select *
from departments;

select *
from employees
where job_id like '%MAN%';

select *
from employees
where department_id = '80'
order by hire_date;

select employee_id, first_name, salary as sal, department_id
from employees
order by 3 desc;

select department_id, job_id
from employees
order by department_id, job_id;

select department_id, job_id, salary
from employees
order by department_id, job_id desc, salary desc;

select *
from employees
order by department_id, job_id desc, salary desc, hire_date ;

