create table exam_table
as
select *
from employees;
-- 위와 같이 만들경우 not null 제약조건만 만들어짐.

create table emp3_8
as
select *
from employees
where 1 = 2;
-- 다음과 같이 한다면 모든 컬럼이 false 이므로 테이블 구조만 생성됨.

-- employees 에 있는 데이터를 emp3_8에 복사
insert into emp3_8
select *
from employees;

declare
    Myname varchar2(20);
begin
    dbms_output.PUT_LINE('my name is : ' || Myname);
    Myname := 'John';
    dbms_output.PUT_LINE('my name is : ' || Myname);
end;

variable deptno number
set autoprint on
begin
    select department_id
    into :deptno
    from employees
    where EMPLOYEE_ID = 100;
end;
;

declare
    type emp_record_type is record
                            (
                                employee_id number not null := 100,
                                last_name   employees.last_name%type,
                                job_id      employees.job_id%type
                            );
    emp_record emp_record_type;
begin
    emp_record.employee_id := 10;
    emp_record.last_name := 'Rhee';
    emp_record.job_id := 'AP';
    DBMS_OUTPUT.PUT_LINE(emp_record.employee_id);
    DBMS_OUTPUT.PUT_LINE(emp_record.last_name);
    DBMS_OUTPUT.PUT_LINE(emp_record.job_id);
end;

declare
    type emp_record_type is record
                            (
                                employee_id number not null := 100,
                                last_name   employees.last_name%type,
                                job_id      employees.job_id%type
                            );
    emp_record emp_record_type;
begin
    select EMPLOYEE_ID, LAST_NAME, JOB_ID
    into emp_record.employee_id,emp_record.last_name,emp_record.job_id
    from EMPLOYEES
    where EMPLOYEE_ID = 100;
    DBMS_OUTPUT.PUT_LINE(emp_record.employee_id);
    DBMS_OUTPUT.PUT_LINE(emp_record.last_name);
    DBMS_OUTPUT.PUT_LINE(emp_record.job_id);
end;
/

begin
    for emp_record in ( select EMPLOYEE_ID, LAST_NAME from employees where DEPARTMENT_ID = 30)
        loop
            DBMS_OUTPUT.PUT_LINE(emp_record.EMPLOYEE_ID || '  ' || emp_record.LAST_NAME);
        end loop;
end;

declare
    cursor emp_cursor (deptno number ) is
        select *
        from EMPLOYEES
        where DEPARTMENT_ID = deptno;
    emp employees%rowtype;
begin
    open emp_cursor(10);
    loop
        fetch emp_cursor into emp;
        exit when emp_cursor%notfound;
        DBMS_OUTPUT.PUT_LINE(emp.EMPLOYEE_ID || '  ' || emp.LAST_NAME);
    end loop;
end;
declare
    cursor dep_cursor(deptno number, jobid varchar2) is
        select *
        from EMPLOYEES
        where DEPARTMENT_ID = deptno
          and JOB_ID = jobid;
    emp employees%rowtype;
begin
    open dep_cursor(30, 'PU_CLERK');
    loop
        fetch dep_cursor into emp;
        exit when dep_cursor%notfound;
        DBMS_OUTPUT.PUT_LINE(emp.EMPLOYEE_ID || '  ' || emp.LAST_NAME);
    end loop;
end;

select *
from EMPLOYEES
where DEPARTMENT_ID = 10;

create or replace procedure emp_del_proc(empid in number)
    is
begin
    delete
    from emp3_8
    where employee_id = empid;
    commit;
end;

-- create or replace procedure my_new_job_proc (emp_id in varchar2,minsalary in number, maxsalary in number)
-- is
-- begin
--     create table jobs_exam
-- end;