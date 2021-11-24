-- 1. 성이 Abel 인 사원의 직무를 출력하세요
select job_id
from employees
where LAST_NAME = 'Abel';

-- 2. 성이 Abel 인 사원과 같은 직무를 하는 사원들을 출력하시오.
select job_id
from employees
where LAST_NAME = 'Abel';

-- 성이 Abel 인 사원과 같이 일하는 사람들
select *
from employees
where JOB_ID = (select job_id from employees where LAST_NAME = 'Abel');

-- 3. 106번인 사원의 급여를 구하시오.
select SALARY
from EMPLOYEES
where EMPLOYEE_ID = 106;

-- 4. 106번인 사원과 같은 급여를 받는 사원들은?
select salary
from EMPLOYEES
where SALARY = (select SALARY from EMPLOYEES where EMPLOYEE_ID = 106);

-- 5. 성이 austin 이라는 사원과 같이 일하는 사람들
select *
from EMPLOYEES
where DEPARTMENT_ID = (select DEPARTMENT_ID from EMPLOYEES where LAST_NAME = 'Austin');

-- 6. 141 번의 직무
select JOB_ID
from EMPLOYEES
where EMPLOYEE_ID = 141;

--7. 143번의 급여
select SALARY
from EMPLOYEES
where EMPLOYEE_ID = 143;

-- 7. 141번의 직무와 같고 143버의 급여가 같은 사원?
select *
from EMPLOYEES
where JOB_ID = (select JOB_ID from EMPLOYEES where EMPLOYEE_ID = 141)
  and SALARY = (select SALARY from EMPLOYEES where EMPLOYEE_ID = 143);

-- 최저 급여를 받는 사원
select *
from EMPLOYEES
where SALARY = (select min(salary) from EMPLOYEES);

-- 90 인 부서의 평균 급여보다 많은 급여를 받는 사원
select avg(SALARY)
from EMPLOYEES
where DEPARTMENT_ID = 90;

select *
from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES where DEPARTMENT_ID = 90);


select HIRE_DATE
from EMPLOYEES
where EMPLOYEE_ID = 178;

select *
from EMPLOYEES
where HIRE_DATE > (select HIRE_DATE from EMPLOYEES where EMPLOYEE_ID = 178);

-- 50 인 부서의 평균 급여
select avg(salary)
from EMPLOYEES
where DEPARTMENT_ID = 50;

select DEPARTMENT_ID
from EMPLOYEES
where salary > (select avg(salary) from EMPLOYEES where DEPARTMENT_ID = 50)
group by DEPARTMENT_ID;

select DEPARTMENT_ID, avg(salary)
from EMPLOYEES
group by DEPARTMENT_ID
having avg(salary) > (select avg(salary) from EMPLOYEES where DEPARTMENT_ID = 50);


select min(SALARY)
from EMPLOYEES
where DEPARTMENT_ID = 60;
select *
from EMPLOYEES
where salary < (select min(SALARY) from EMPLOYEES where DEPARTMENT_ID = 60);

-- 15 50,60,70 인 부서의 최저 금액과 같은 급여 받는 사원들?

select *
from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES where DEPARTMENT_ID = 50)
   or SALARY = (select min(SALARY) from EMPLOYEES where DEPARTMENT_ID = 60)
   or SALARY = (select min(SALARY) from EMPLOYEES where DEPARTMENT_ID = 70);

select *
from EMPLOYEES
where SALARY in (select min(SALARY)
                 from EMPLOYEES
                 where DEPARTMENT_ID in (50, 60, 70)
                 group by DEPARTMENT_ID);

select *
from EMPLOYEES
where SALARY in (
    select min(SALARY)
    from EMPLOYEES
    group by DEPARTMENT_ID
)
order by SALARY;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(salary) = (select min(avg(salary)) from EMPLOYEES group by JOB_ID);

select SALARY
from EMPLOYEES
where DEPARTMENT_ID = 50
order by salary;

select *
from EMPLOYEES
where SALARY > any (select SALARY from EMPLOYEES where DEPARTMENT_ID = 50);

select *
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES where DEPARTMENT_ID = 50);

select *
from EMPLOYEES
where SALARY < (select min(SALARY) from EMPLOYEES where DEPARTMENT_ID = 50);

select *
from EMPLOYEES
where SALARY > all (select min(SALARY) from EMPLOYEES where DEPARTMENT_ID = 50);

select SALARY
from EMPLOYEES
where DEPARTMENT_ID = 50;

select *
from EMPLOYEES
where SALARY in (select SALARY from EMPLOYEES where DEPARTMENT_ID = 50);

create table testa
(
    a1 number(6),
    a2 number(6)
);

select *
from testa;
select max(a1) + 1
from testa;

insert into testa
values ((select max(a1) + 1 from testa), 3);
select *
from testa;

select MANAGER_ID
from EMPLOYEES
where EMPLOYEE_ID = 108;

select MANAGER_ID
from DEPARTMENTS
where DEPARTMENT_ID = 80;

-- 108 번의 상사와 80번 부서의 부서장을 출력하라
select MANAGER_ID
from EMPLOYEES
where EMPLOYEE_ID = 108
union
select MANAGER_ID
from DEPARTMENTS
where DEPARTMENT_ID = 80;

select EMPLOYEE_ID, JOB_ID
from EMPLOYEES; -- 107

select EMPLOYEE_ID, JOB_ID
from JOB_HISTORY; -- 10

select EMPLOYEE_ID, JOB_ID
from EMPLOYEES -- 115 개 행이 나옴 중복이 제거됨.
union
select EMPLOYEE_ID, JOB_ID
from JOB_HISTORY;

-- 사원테이블에 있는 작속 상사와 직무그리고 직무엔역테이블의 직원번호와 직무를 출력
select MANAGER_ID, JOB_ID
from EMPLOYEES
union
select EMPLOYEE_ID, JOB_ID
from JOB_HISTORY;

-- 27 사원테이블에서는 이름, 급여 출력 and 부서 테이블에서는 부서명과 부서장을 출력하시오.
-- 각 열의 데이터 타입,열 수만 일치하면됨
select FIRST_NAME, SALARY
from EMPLOYEES
union
select DEPARTMENT_NAME, MANAGER_ID
from DEPARTMENTS;

-- 28 첫번째 테이벌의 열이름에 별칭 주기
select FIRST_NAME as dname, SALARY as mng
from EMPLOYEES
union
select DEPARTMENT_NAME, MANAGER_ID
from DEPARTMENTS;

-- 29 사원테이블에서는 급여와 부서번호를 출력하고, 부서 테이블에서는 부서장과 부서번호를 출력하라
-- select SALARY, DEPARTMENT_ID from EMPLOYEES
-- union
-- select MANAGER_ID, DEPARTMENT_NAME from DEPARTMENTS;
-- 데이터 타입이 일치하지 않기 때문에 오류가 발생한다. -> 데이터 타입을 맞춰주면된다.
select SALARY, to_char(DEPARTMENT_ID) as DEPARTMENT_ID
from EMPLOYEES
union
select MANAGER_ID, DEPARTMENT_NAME
from DEPARTMENTS;

select SALARY, DEPARTMENT_ID, null as DEPARTMENT_ID
from EMPLOYEES
union
select MANAGER_ID, null, DEPARTMENT_NAME
from DEPARTMENTS;

-- 31. 사원테이블에서 부서번호, 입사일 그리고 부서테이블에서 부서번호, 지역번호 출력
select DEPARTMENT_ID, HIRE_DATE, null
from EMPLOYEES
union
select DEPARTMENT_ID, null, LOCATION_ID
from DEPARTMENTS;

-- 32. 부서테이블에는 존재하지 않는 직원테이블에만 존재하는 관리자.
select distinct MANAGER_ID
from EMPLOYEES
where MANAGER_ID not in (select MANAGER_ID from DEPARTMENTS where MANAGER_ID is not null);
select MANAGER_ID
from EMPLOYEES
minus
select MANAGER_ID
from DEPARTMENTS;

-- 33. 부서장인 상사번호를 출력하시오.
select MANAGER_ID
from EMPLOYEES
intersect
select MANAGER_ID
from DEPARTMENTS;

create table aa1
(
    a1 number primary key,
    a2 number
);
insert into aa1
values (1, 1);

create table bb1
(
    a1 number references aa1 (a1),
    b1 number
);

insert into bb1
values (1, 11);

select *
from bb1;

drop table aa1;
create table emp as
select *
from EMPLOYEES;
-- 34
delete
from emp
where salary = (select SALARY from EMPLOYEES where FIRST_NAME = 'Meena');

create table dept as
select *
from DEPARTMENTS;

select *
from dept;

-- 부서명에 public이 포함된 부서의 사원들을 모두 삭제하시오.
select DEPARTMENT_ID
from dept
where DEPARTMENT_NAME like '%Public%';
delete
from emp
where DEPARTMENT_ID = (select DEPARTMENT_ID from dept where DEPARTMENT_NAME like '%Public%');

select *
from emp
where DEPARTMENT_ID in (
    select DEPARTMENT_ID
    from dept
    where DEPARTMENT_NAME like '%Public'
);
rollback;

truncate table emp;
rollback;
select *
from emp;

insert into emp
select *
from EMPLOYEES;

select *
from emp;
commit;

select *
from emp
where DEPARTMENT_ID = 120;
-- 60 인 부서를 120으로 변경
update emp
set DEPARTMENT_ID = 120
where DEPARTMENT_ID = 60;

-- 38 120인 부서를 다시 60으로 변경
update emp
set DEPARTMENT_ID = 60
where DEPARTMENT_ID = 120;

-- 사원번호 113 인 사원의 부서를 70부서로 변경
update emp
set DEPARTMENT_ID = 70
where EMPLOYEE_ID = 113;
select *
from emp
where EMPLOYEE_ID = 113;

update emp
set DEPARTMENT_ID = 130;
select *
from emp;
rollback;

-- 40. 205번 사원의 직무를 출력
select *
from emp
where EMPLOYEE_ID = 205;
-- 205번 사원의 급여를 출력
select SALARY
from emp
where EMPLOYEE_ID = 205;
-- 이때, 114번의 직무와 급여를 205번의 직무와 급여로 변경하시오.
update emp
set JOB_ID = (select JOB_ID from emp where EMPLOYEE_ID = 205),
    SALARY = (select SALARY
              from emp
              where EMPLOYEE_ID = 205)
where EMPLOYEE_ID = 114;

-- 200번 사원의 직무와 140번 사원
update emp
set MANAGER_ID = (select MANAGER_ID from emp where EMPLOYEE_ID = 140),
    JOB_ID     = (select JOB_ID from emp where EMPLOYEE_ID = 200)
where EMPLOYEE_ID = 130;

rollback;

update emp
set salary = (select salary from employees where EMPLOYEE_ID = 100),
    JOB_ID = (select JOB_ID from EMPLOYEES where EMPLOYEE_ID = 114)
where EMPLOYEE_ID = 130;

--- 43. 200번 사원이 가진 직무와 같은 사원들의 부서를 114인 부서로 변경하시오.
update emp
set DEPARTMENT_ID = (select DEPARTMENT_ID from emp where EMPLOYEE_ID = 114)
where JOB_ID = (select JOB_ID from emp where EMPLOYEE_ID = 200);

-- 44. 114번의 직무와 급여를 205번 사원과 같게 변경하시오.
update emp
set JOB_ID = (select JOB_ID from emp where EMPLOYEE_ID = 205),
    SALARY = (select SALARY from emp where EMPLOYEE_ID = 205)
where EMPLOYEE_ID = 114;
-- 45. 부서명에 대소문자 구분 없이 pu 가 포함되어 있는 부서의 직원들을 120번 사원의 급여로 변경하시오.
update emp
set SALARY = (select SALARY from emp where EMPLOYEE_ID = 120)
where DEPARTMENT_ID in (select DEPARTMENT_ID from dept where lower(DEPARTMENT_NAME) like '%pu%');
rollback;
insert into (select employee_id,
                    FIRST_NAME,
                    LAST_NAME,
                    HIRE_DATE,
                    SALARY,
                    DEPARTMENT_ID,
                    email,
                    JOB_ID
             from emp
             where DEPARTMENT_ID = 30)
values (310, 'soongmoo', 'rhee', sysdate, 15000, 10, 'highlans0', 'sp');

-- DML : insert, select, update, delete
-- DDL : create, alter, drop
-- TCL : rollback, commit
-- DCL : grant, revoke
select EMPLOYEE_ID,
       FIRST_NAME,
       EMAIL,
       HIRE_DATE,
       COMMISSION_PCT,
       (salary + SALARY * nvl(COMMISSION_PCT, 0)) * 12 as year_sal
from emp
where DEPARTMENT_ID in (select DEPARTMENT_ID from dept where lower(DEPARTMENT_NAME) like '%pu%')

create view view_pu
as
select EMPLOYEE_ID,
       FIRST_NAME,
       EMAIL,
       HIRE_DATE,
       COMMISSION_PCT,
       (salary + SALARY * nvl(COMMISSION_PCT, 0)) * 12 as year_sal
from emp
where DEPARTMENT_ID in (select DEPARTMENT_ID from dept where lower(DEPARTMENT_NAME) like '%pu%')

select *
from view_pu;

select FIRST_NAME, PHONE_NUMBER, DEPARTMENT_ID, EMPLOYEE_ID
from EMPLOYEES
where DEPARTMENT_ID = 90;
create view vw_90
as
select FIRST_NAME, PHONE_NUMBER, DEPARTMENT_ID, EMPLOYEE_ID
from EMPLOYEES
where DEPARTMENT_ID = 90;

select * from vw_90;
select *
from vw_90;