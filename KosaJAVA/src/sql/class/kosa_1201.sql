create or replace procedure proc_insert(
    empid in number,
    lname in varchar2,
    mail in varchar2,
    hdate in varchar2,
    jid in varchar2
)
    is
begin
    insert into EMP3_8(EMPLOYEE_ID, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID) values (empid, lname, mail, hdate, jid);
end;
/

exec proc_insert(310,'park','park',sysdate,'AP');

create table jobs_exam
as
select *
from jobs;

create or replace procedure my_new_job_proc(
    jid in number,
    minsal number,
    maxsal number
)
    is
    cnt number;
begin
    select count(*) into cnt from jobs_exam where JOB_ID = jid;
    if cnt = 0 then
        insert into jobs_exam
        select *
        from jobs
        where JOB_ID = jid;
    else
        update jobs_exam
        set MIN_SALARY = minsal,
            MAX_SALARY = maxsal
        where JOB_ID = jid;
    end if;
end;

exec my_new_job_proc('AD_PRES',2000,6000);

create or replace function check_sal
    return boolean
    is
    dept_id employees.department_id%type;
    emp_no  employees.employee_id%type;
    sal     employees.salary%type;
    avg_sal employees.salary%type;
begin
    emp_no := 250;
    select salary, DEPARTMENT_ID
    into
        sal,dept_id
    from employees
    where EMPLOYEE_ID = emp_no;
    select avg(salary)
    into avg_sal
    from employees
    where DEPARTMENT_ID = dept_id;
    if sal > avg_sal then
        return true;
    else
        return false;
    end if;
end;