create table member1
(
    user_id     varchar2(20)
        constraint mem_user_id_nn not null,
    user_pw     varchar2(200)
        constraint mem_user_pw_nn not null,
    user_name   varchar2(40)
        constraint mem_user_id_name_nn not null,
    user_birth  timestamp
        constraint mem_user_birth_nn not null,
    user_gender varchar2(1)
        constraint mem_gender_nn not null,
    user_addr   varchar2(200)
        constraint mem_user_addr_nn not null,
    user_ph1    varchar2(13)
        constraint mem__user_ph1_nn not null,
    user_ph2    varchar2(13),
    user_regist timestamp,
    user_email  varchar2(200),
    join_ok     varchar2(500)
);
alter table member1
    add (constraint mem_user_id_pk primary key (user_id),
         constraint mem_user_email_uu unique (user_email)
        );

create table ex3_6
(
    employee_id number(6),
    emp_name    varchar2(80),
    salary      number(8, 2),
    manager_id  number(6)
);

select min(salary) over (partition by DEPARTMENT_ID order by salary) from employees;
select rank,EMPLOYEE_ID from (select EMPLOYEE_ID, rank() over (partition by DEPARTMENT_ID order by salary asc) as rank from employees)
where rank = 1;

select count(*) from EMPLOyees
group by DEPARTMENT_ID;