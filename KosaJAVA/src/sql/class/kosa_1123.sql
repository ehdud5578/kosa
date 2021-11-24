-- 1. 성과 이름을 붙여서 출력하시오.
select LAST_NAME || FIRST_NAME
from EMPLOYEES;

select concat(LAST_NAME, FIRST_NAME)
from EMPLOYEES;

-- 2 성, 이름, 직무, 급여, 커미션을 포함한 연봉.
select LAST_NAME, FIRST_NAME, JOB_ID, SALARY, (SALARY + SALARY * nvl(COMMISSION_PCT, 0)) * 12 year_sal
from EMPLOYEES;

select LAST_NAME, FIRST_NAME, JOB_ID, SALARY, (SALARY + SALARY * nvl(COMMISSION_PCT, 0)) * 12 year_sal
from EMPLOYEES;

select JOB_ID, max(HIRE_DATE), min(hire_date)
from EMPLOYEES
group by JOB_ID;

select avg(SALARY), sum(salary)
from EMPLOYEES
where DEPARTMENT_ID = 90
group by JOB_ID;


select avg(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID
having avg(SALARY) >= 7000
order by avg(SALARY) desc;

commit;
select EMPLOYEE_ID, LAST_NAME, salary, HIRE_DATE, departments.DEPARTMENT_ID, departments.MANAGER_ID
from employees,
     departments
where EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
  and DEPARTMENTS.MANAGER_ID = EMPLOYEES.MANAGER_ID;

select jobs.JOB_TITLE, departments.MANAGER_ID, EMPLOYEES.JOB_ID
from DEPARTMENTS,
     EMPLOYEES,
     JOBS
where DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.EMPLOYEE_ID
  and EMPLOYEES.JOB_ID = JOBS.JOB_ID;

select FIRST_NAME,
       LAST_NAME,
       SALARY,
       e.DEPARTMENT_ID,
       d.department_id,
       d.DEPARTMENT_NAME
from employees e,
     DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select FIRST_NAME,
       LAST_NAME,
       SALARY,
       e.department_id,
       d.department_id,
       DEPARTMENT_NAME
from EMPLOYEES e
         left outer join DEPARTMENTS d
                         on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME,
       LAST_NAME,
       SALARY,
       e.department_id,
       d.department_id,
       DEPARTMENT_NAME
from departments d
         left outer join employees e
                         on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

SELECT count(*) from EMPLOYEES;