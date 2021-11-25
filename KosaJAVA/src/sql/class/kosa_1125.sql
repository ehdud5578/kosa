select EMPLOYEE_ID, LAST_NAME, SALARY
from EMPLOYEES
where DEPARTMENT_ID = 80;

create view vw_80
as
select EMPLOYEE_ID, LAST_NAME, SALARY
from EMPLOYEES
where DEPARTMENT_ID = 80;

select *
from vw_80;

create view vw_70(eid, lname, sal)
as
select EMPLOYEE_ID, LAST_NAME, SALARY
from EMPLOYEES
where DEPARTMENT_ID = 80;

create or replace view vw_70(eid, lname, sal)
as
select EMPLOYEE_ID, LAST_NAME, SALARY
from EMPLOYEES
where DEPARTMENT_ID = 70;

select *
from vw_70;

create or replace view vw_tear_sal
    (eid, fname, hire_date, year_sal)
as
select EMPLOYEE_ID, FIRST_NAME, hire_date, (SALARY + (SALARY * nvl(COMMISSION_PCT, 0))) * 12
from EMPLOYEES;


-- create or replace view dept_salary(dname, minsal, maxsal, avgsal)
-- select DEPARTMENT_NAME, min(SALARY), max(SALARY), avg(SALARY)
-- from employees,
--      departments d
-- group by DEPARTMENT_NAME;

create or replace view vw_dept_dept (eid, fname, hire_date, salary, did, dname)
as
select EMPLOYEE_ID, FIRST_NAME, hire_date, SALARY, EMPLOYEES.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
from EMPLOYEES,
     DEPARTMENTS;

create or replace view vw_30
as
select EMPLOYEE_ID, LAST_NAME, EMAIL, hire_date, JOB_ID, DEPARTMENT_ID
from EMP
where DEPARTMENT_ID = 30;

select *
from vw_30;

insert into vw_30
values (310, 'Rhee', 'SRhee', sysdate, 'AP', 210);
-- view 를 통해서 실제 테이블에 값을 넣을 수 있음.
select *
from EMP
where DEPARTMENT_ID = 210;

-- insert into vw_30(EMPLOYEE_ID,LAST_NAME,EMAIL,hire_date,JOB_ID,DEPARTMENT_ID,manager_id)
-- values (320,'park','jparkt',sysdate,'ap',210,110);
-- view를 통해 보지 못하는 데이터에 접근은 불가능하다.

update vw_30
set hire_date = sysdate
where employee_id = 115;

-- update vw_30
-- set manager_id = 110
-- where employee_id = 115;
-- view 를 통해서 볼 수 없는 데이터는 수정이 불가능하다.

delete
from vw_30
where EMPLOYEE_ID = 115;

create view empvw80
as
select *
from EMPLOYEES
where DEPARTMENT_ID = 80
with read only;

delete
from empvw80
where EMPLOYEE_ID = 147;

-- 성, 급여, 부서번호, 부서의 최소 급여
select LAST_NAME, salary, e.DEPARTMENT_ID, minsal
from EMPLOYEES e,
     (select DEPARTMENT_ID, min(salary) minsal from employees group by DEPARTMENT_ID) b
where e.DEPARTMENT_ID = b.DEPARTMENT_ID;

-- 직원번호, 이름, 직무, 입사일, 급여 그리고 각 부서의 사원수 및 평균 급여를 출력
select EMPLOYEE_ID, FIRST_NAME, hire_date, salary, cntemp, avgsal
from EMPLOYEES a,
     (select count(EMPLOYEE_ID) as cntemp, avg(salary) as avgsal, DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID) b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select ROWNUM, EMPLOYEE_ID, FIRST_NAME, salary, DEPARTMENT_ID, JOB_ID
from (select EMPLOYEE_ID, FIRST_NAME, salary, DEPARTMENT_ID, JOB_ID
      from EMPLOYEES
      order by SALARY desc)
where rownum <= 5;


-- 급여를 가장 많이 받는 5명만 출력하시오.
select *
from (select ROWNUM rn, EMPLOYEE_ID, FIRST_NAME, salary, DEPARTMENT_ID, JOB_ID
      from (select EMPLOYEE_ID, FIRST_NAME, salary, DEPARTMENT_ID, JOB_ID
            from EMPLOYEES
            order by SALARY desc)
      where rownum between 1 and 15)
where rn >= 10
  and rn <= 15;

select rownum,
       rn,
       EMPLOYEE_ID,
       FIRST_NAME,
       salary,
       DEPARTMENT_ID,
       JOB_ID,
       COMMISSION_PCT,
       year_sal
from (select ROWNUM                                          rn,
             EMPLOYEE_ID,
             FIRST_NAME,
             salary,
             DEPARTMENT_ID,
             JOB_ID,
             COMMISSION_PCT,
             salary * ((1 + nvl(COMMISSION_PCT, 0)) * 12) as year_sal
      from employees
      order by year_sal desc
     )
where rn >= 6
  and rn <= 10;


-- group by 절의 향상된 기능
-- 부서별 직무에 대한 급여의 합계와 부서번호, 직무를 출력하세요.
select DEPARTMENT_ID, JOB_ID, sum(salary)
from EMPLOYEES
group by DEPARTMENT_ID, JOB_ID;
select DEPARTMENT_ID, avg(salary)
from EMPLOYEES
group by DEPARTMENT_ID
having avg(SALARY) >= 9500;

-- 부서별 직무의 급여의 평군과 부서별 급여의 평균과 부서별 급여의 평균 그리고 전체 평균을 출력하시오.
select DEPARTMENT_ID, JOB_ID, avg(salary), null, null
from EMPLOYEES
group by DEPARTMENT_ID, JOB_ID
union
select DEPARTMENT_ID, null, null, avg(salary), null
from EMPLOYEES
group by DEPARTMENT_ID
union
select null, null, null, null, avg(salary)
from EMPLOYEES;

select DEPARTMENT_ID, JOB_ID, avg(salary)
from EMPLOYEES
group by rollup (DEPARTMENT_ID, JOB_ID);

select DEPARTMENT_ID, JOB_ID, hire_date, count(*), avg(salary)
from EMPLOYEES
group by rollup (DEPARTMENT_ID, JOB_ID, hire_date);

select DEPARTMENT_ID, JOB_ID, sum(salary)
from EMPLOYEES
group by cube (DEPARTMENT_ID, JOB_ID);

select DEPARTMENT_ID, JOB_ID, hire_date, count(*), avg(salary)
from EMPLOYEES
group by cube (DEPARTMENT_ID, JOB_ID, hire_date);

select DEPARTMENT_ID, JOB_ID, sum(salary), grouping(DEPARTMENT_ID), grouping(JOB_ID)
from EMPLOYEES
group by rollup (DEPARTMENT_ID, JOB_ID);

select DEPARTMENT_ID, JOB_ID, MANAGER_ID, sum(salary)
from EMPLOYEES
group by rollup (DEPARTMENT_ID, ( JOB_ID, MANAGER_ID));

select *
from EMPLOYEES
where DEPARTMENT_ID = (select DEPARTMENT_ID from EMPLOYEES where EMPLOYEE_ID = 104)
  and MANAGER_ID = (select MANAGER_ID from EMPLOYEES where EMPLOYEE_ID = 104);

select *
from EMPLOYEES
where JOB_ID in (select JOB_ID from EMPLOYEES where DEPARTMENT_ID = 50);

select *
from EMPLOYEES
where MANAGER_ID = (select MANAGER_ID from EMPLOYEES where EMPLOYEE_ID = 178)
  and DEPARTMENT_ID = (select DEPARTMENT_ID from EMPLOYEES where EMPLOYEE_ID = 178)
union
select *
from EMPLOYEES
where MANAGER_ID = (select MANAGER_ID from EMPLOYEES where EMPLOYEE_ID = 174)
  and DEPARTMENT_ID = (select DEPARTMENT_ID from EMPLOYEES where EMPLOYEE_ID = 174);

-- 쌍비교

select *
from EMPLOYEES
where (MANAGER_ID, DEPARTMENT_ID) in (select MANAGER_ID, DEPARTMENT_ID from EMPLOYEES where EMPLOYEE_ID in (174, 178))
  and EMPLOYEE_ID not in (178, 174);

-- window 함수

select FIRST_NAME, salary, JOB_ID, RANK() over ( order by salary desc ) all_rank
from EMPLOYEES;

select rn, FIRST_NAME, salary, JOB_ID
from (select rownum rn, FIRST_NAME, salary, JOB_ID
      from EMPLOYEES
      order by SALARY desc)
order by rn
;
select *
from (select FIRST_NAME, salary, JOB_ID, rank() over (partition by JOB_ID order by SALARY desc) as rank
      from EMPLOYEES)
where rank <= 1;

select FIRST_NAME, JOB_ID, hire_date, rank() over (partition by DEPARTMENT_ID order by hire_date)
from EMPLOYEES;

select EMPLOYEE_ID,
       DEPARTMENT_ID,
       rank() over (order by salary)                            as all_rank,
       rank() over (partition by DEPARTMENT_ID order by salary) as dep_rank
from EMPLOYEES;

-- dense rank
select EMPLOYEE_ID,
       DEPARTMENT_ID,
       rank() over (order by salary)                                  as all_rank, -- 1 2 2 4 4 2등이 두명이면 3등 없음.
       dense_rank() over (partition by DEPARTMENT_ID order by salary) as dep_rank  -- 1 2 2 3 3 .. 으로 진행 2등이 2명이어도 다음 등수는 3등
from EMPLOYEES;

-- row_number 말 그래도 row_number
select EMPLOYEE_ID,
       DEPARTMENT_ID,
       rank() over (order by salary)                                  as all_rank,
       row_number() over (partition by DEPARTMENT_ID order by salary) as dep_rank
from EMPLOYEES;

-- 사번, 이름, 이메일, 직무, 부서의 평균 급여를 출력하시오.
select EMPLOYEE_ID, FIRST_NAME, EMAIL, JOB_ID, salary, e.DEPARTMENT_ID, avgsal
from EMPLOYEES e,
     (select DEPARTMENT_ID, avg(salary) as avgsal from EMPLOYEES group by DEPARTMENT_ID) d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select EMPLOYEE_ID, FIRST_NAME, email, JOB_ID, salary, avg(salary) over ( partition by DEPARTMENT_ID) avgsal
from EMPLOYEES;

