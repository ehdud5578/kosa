drop table employees;

create table employees
(
    employee_id   number(6) primary key,
    first_name    varchar2(20),
    last_name     varchar2(25)         not null,
    email         varchar2(25)         not null unique,
    phone_number  varchar2(20),
    hire_date     date default sysdate not null,
    job_id        varchar(10)          not null,
    salary        number(7, 2),
    commision_pct number(2, 2),
    manager_id    number(6),
    department_id number(4)
);

insert into employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,
                       department_id)
values (100, 'king', 'steven', 'sking', '515.123.4567', '2003 / 06 / 17', 'AD_PRES', 24000, 90);
insert into employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,
                       department_id, manager_id)
values (101, 'Neena', 'kochhar', 'nkochhar', '515.123.4568', '2005 / 09 / 21', 'AD_VP', 17000, 90, 100);
insert into employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,
                       commision_pct, manager_id, department_id)
values (148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.1344.619268', '2007-10-15', 'SA_MAN', 11000, 0.3, 100, 80);
select *
from employees;
commit;