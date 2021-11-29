-- pl/sql (procedure language)

declare
    v_fname varchar2(20);
begin
    select FIRST_NAME
    into v_fname
    from employees
    where employee_id = 100;
    DBMS_OUTPUT.PUT_LINE(v_fname);
end;
/
declare
    emp_hiredate    date;
    vn_num1         number             := 1; --- 초기값
    emp_deptno      number(2) not null := 10;
    c_comm constant number             := 1400; -- 상수
begin
end;

declare
    vn_num1 number := 1;
    vn_num2 number := 2;
begin
    if vn_num1 >= vn_num2 then
        DBMS_OUTPUT.PUT_LINE(vn_num1 || '이 큰 수 입니다.');
    else
        DBMS_OUTPUT.PUT_LINE(vn_num2 || '이 큰 수 입니다.');
    end if;
end;
/

declare
    employee_id number(6); -- 같은 이름의 식별자는 사용하지 않는것이 좋다.
begin
    select employee_id
    into employee_id
    from EMPLOYEES
    where LAST_NAME = 'kochhar';
    DBMS_OUTPUT.PUT_LINE(employee_id);
end;
declare
    num1   number(10, 3);
    bf_var binary_float;
    bd_var binary_double;
begin
    num1 := 270 / 35;
    bf_var := 270 / 35 f;
    bd_var := 140 d/0.35;
    dbms_output.put_line('number: ' || num1);
    dbms_output.put_line('bf: ' || bf_var);
    dbms_output.put_line('bd: ' || bd_var);
end;

declare
    v_lastname  employees.last_name%type;
    v_firstname employees.first_name%type;
begin
    select last_name, FIRST_NAME
    into v_lastname,v_firstname
    from EMPLOYEES
    where EMPLOYEE_ID = 143;
    DBMS_OUTPUT.PUT_LINE(v_firstname);
    DBMS_OUTPUT.PUT_LINE(v_lastname);
end;

declare
    flag boolean := false;
begin
    flag := true;
    DBMS_OUTPUT.PUT_LINE('flag');
end;

-- 바인드 변수 or 호스트 변수라고도 함.

VARIABLE emp_salary NUMBER
SET AUTOPRINT ON
begin
    select SALARY
    into :emp_salary
    from EMPLOYEES
    where EMPLOYEE_ID = 143;
end;
/

variable emp_salary number
SET AUTOPRINT ON
declare
    empno number(6) := &empno;
begin
    select salary
    into :emp_salary
    from employees
    where employee_id = empno;
end;

set verify off
    variable emp_salary number
    accept empno prompt '사원번호를 입력해주세요';
SET AUTOPRINT ON
declare
    empno number(6) := &empno;
begin
    select salary
    into :emp_salary
    from employees
    where employee_id = empno;
end;

declare
    outer_variable varchar2(20) := 'GLOBLAL VARIABLE';
begin
    declare
        inner_variable varchar2(20) := 'LOCAL VARIABLE';
    begin
        dbms_output.put_line(inner_variable);
        dbms_output.put_line(outer_variable);
    end;
    -- dbms_output.put_line(inner_variable); -- 내부 변수 사용 불가능
    dbms_output.put_line(outer_variable);
end;

begin
    <<outer>>
        declare
        fname varchar2(20) := 'patrick';
        hdate date         := '2000-01-20';
    begin
        declare
            lname varchar2(20) := 'Mike';
            hdate date         := '2000-12-25';
        begin
            dbms_output.put_line(lname);
            dbms_output.put_line(hdate);
            dbms_output.put_line(outer.hdate);
        end;
        dbms_output.put_line(fname);
        dbms_output.put_line(hdate);
    end;
end outer;
/

set serveroutput on
declare
    sum_sal number(10, 2);
    deptno  number not null := 60;
begin
    select sum(salary)
    into sum_sal
    from employees
    where department_id = deptno;
    dbms_output.put_line('The sum of salary is ' || sum_sal);
end;

-- 모호성을 방지하기 위해
-- 데이터베이스 열이름을 식별자로 사용하지 않는다.
-- 아래와 같이 사용하면 오
declare
    hire_date   employees.hire_date%type;
    sysdate     hire_date%type;
    employee_id employees.employee_id%type := 류176;
begin
    select hire_date, sysdate
    into hire_date, sysdate
    from employees
    where employee_id = employee_id;
end;

set verify off
    accept fname prompt 'fname';
accept lname prompt 'lname';
accept mail prompt ' mail';
accept hdate prompt ' hdate';
accept jid prompt'jid';
accept sal prompt ' salary';
declare
    fname employees.first_name%type := &fname;
    lname employees.last_name%type  := &lname;
    mail  employees.email%type      := &mail;
    hdate employees.hire_date%type  := &hdate;
    jid   employees.job_id%type     := &jid;
    sal   employees.salary%type     := &sal;
begin
    insert into emp(employee_id, first_name, last_name, email, hire_date, job_id, salar)
    values (employees.seq.NEXTVAL, fname, lname, mail, hdate, jid, sal);
end;

select *
from employees
where job_id = 'ST_CLERK';

declare
    sal_increse employees.salary%type := 800;
begin
    update employees
    set salary = salary + sal_increse
    where job_id = 'ST_CLERK';
    dbms_output.put_line('수정');
end;

declare
    empno emp.employee_id%type := 100;
begin
    merge into ex3_6 a
    using (select *
           from emp
           where employee_id = empno) b
    on (a.employee_id = b.employee_id)
    when matched then
        update
        set salary = salary * 1.1
    when not matched then
        insert (a.employee_id, a.emp_name, a.salary, a.manaer_id)
        values (b.employee_id, b.first_name, 15000, 100);
end;

declare
    sal number;
begin
    select salary
    into sal
    from employees
    where employee_id = 130;
    if sal / 1000 < 3 then
        dbms_output.put_line('사원');
    elsif sal / 1000 < 5 then
        dbms_output.put_line('주임');
    elsif sal / 1000 < 7 then
        dbms_output.put_line('대리');
    elsif sal / 1000 < 9 then
        dbms_output.put_line('과장');
    elsif sal / 1000 < 10 then
        dbms_output.put_line('차장');
    elsif sal / 1000 < 13 then
        dbms_output.put_line('부장');
    elsif sal / 1000 < 15 then
        dbms_output.put_line('본부장');
    else
        dbms_output.put_line('이사');
    end;

    declare
        sal number(6);
    begin
        select trunc(salary / 1000)
        into sal
        from employees
        where employee_id = 130;
        if sal < 3 then
            dbms_output.put_line('사원');
        elsif sal < 5 then
            dbms_output.put_line('주임');
        elsif sal < 7 then
            dbms_output.put_line('대리');
        elsif sal < 9 then
            dbms_output.put_line('과장');
        elsif sal < 10 then
            dbms_output.put_line('차장');
        elsif sal < 13 then
            dbms_output.put_line('부장');
        elsif sal < 15 then
            dbms_output.put_line('본부장');
        else
            dbms_output.put_line('이사');
        end if;
    end;

    declare
        sal number(6);
    begin
        select trunc(salary / 1000)
        into sal
        from employees
        where employee_id = 130;
        if sal < 3 then
            dbms_output.put_line('사원');
        elsif sal < 5 then
            dbms_output.put_line('주임');
        elsif sal < 7 then
            dbms_output.put_line('대리');
        elsif sal < 9 then
            dbms_output.put_line('과장');
        elsif sal < 10 then
            dbms_output.put_line('차장');
        elsif sal < 13 then
            dbms_output.put_line('부장');
        elsif sal < 15 then
            dbms_output.put_line('본부장');
        else
            dbms_output.put_line('이사');
        end if;
    end;
    /
    declare
        grade varchar2(20);
        empid emp.employee_id%type := 130;
    begin
        select case
                   when trunc(salary / 1000) < 3 then '사원'
                   when trunc(salary / 1000) < 5 then '주임'
                   when trunc(salary / 1000) < 7 then '대리'
                   when trunc(salary / 1000) < 9 then '차장'
                   when trunc(salary / 1000) < 10 then '부장'
                   when trunc(salary / 1000) < 13 then '본부장'
                   when trunc(salary / 1000) < 15 then '이사'
        into grade
        from employees
        where employee_id = empid;
        dbms_output.put_line(grade);
    end;


    declare
        grade   char(1) := upper('&grade');
        result1 varchar2(30);
    begin
        result1 :=
                case grade
                    when 'A' then '90'
                    when 'B' then '80'
                    when 'C' then '70'
                    when 'D' then '60'
                    when 'F' then '50'
                    end;
        dbms_output.put_line('grade' || grade || '일 때 ' || result1);
    end;

    declare
        sal     number;
        empid   employees.employee_id%type;
        result1 varchar2(30);
    begin
        select trunc(salary / 1000)
        into sal
        from EMPLOYEES
        where EMPLOYEE_ID = empid;
        result1 :=
                case
                    when sal <= 3 then '사원'
                    when sal <= 5 then '주임'
                    when sal <= 7 then '대리'
                    when sal <= 9 then '차장'
                    when sal <= 10 then '부장'
                    when sal <= 13 then '본부장'
                    when sal <= 15 then '이사'
                    end;
        DBMS_OUTPUT.PUT_LINE(result1);
    end;


    declare
        grade char(1) := upper('&grade');
    begin
        case when grade = 'A' then DBMS_OUTPUT.PUT_LINE('Excellent');
            when grade in ('B', 'C') then DBMS_OUTPUT.PUT_LINE('Good');
            else DBMS_OUTPUT.PUT_LINE('No such grade');
            end case;
    end;


    declare
        deptid   number;
        deptname varchar2(20);
        emps     number;
        mngid    number := &mngid;
    begin
        case mngid
            when 200 then select department_id, department_name
                          into deptid,deptname
                          from departments
                          where MANAGER_ID = mngid;
                          select count(*)
                          into emps
                          from employees
                          where department_id = deptid;
            when 100 then select department_id, department_name
                          into deptid,deptname
                          from departments
                          where MANAGER_ID = mngid;
                          select count(*)
                          into emps
                          from employees
                          where department_id = deptid;
            when 300 then select department_id, department_name
                          into deptid,deptname
                          from departments
                          where MANAGER_ID = mngid;
                          select count(*)
                          into emps
                          from employees
                          where department_id = deptid;
            when 114 then select department_id, department_name
                          into deptid,deptname
                          from departments
                          where MANAGER_ID = mngid;
                          select count(*)
                          into emps
                          from employees
                          where department_id = deptid;
            end case;
        DBMS_OUTPUT.PUT_LINE(emps);
        DBMS_OUTPUT.PUT_LINE(mngid);
    end;
end;
declare
    counter number(2) := 1;
    empid   number(6) := &empid;
    eid     employees.employee_id%type;
    fname   employees.first_name%type;
    sal     employees.salary%type;
    mngid   employees.manager_id%type;
begin
    loop
        select employee_id, FIRST_NAME, SALARY, MANAGER_ID
        into eid,fname,sal,mngid
        from employees
        where EMPLOYEE_ID = empid + counter;
        counter := counter + 1;
        exit when counter > 3;
        insert into EX3_6 (employee_id, FIRST_NAME, SALARY, MANAGER_ID)
        values (eid, fname, sal, mngid);
    end loop;
end;

commit;

delete
from ex3_6;

declare
    counter number(2) := 1;
    empid   number(6) := &empid;
    eid     employees.employee_id%type;
    fname   employees.first_name%type;
    sal     employees.salary%type;
    mngid   employees.manager_id%type;
begin
    while counter <= 3
        loop
            select EMPLOYEE_ID, FIRST_NAME, SALARY, MANAGER_ID
            into eid,fname,sal,mngid
            from EMPLOYEES
            where EMPLOYEE_ID = empid + counter;
            insert into EX3_6(EMPLOYEE_ID, FIRST_NAME, SALARY, MANAGER_ID)
            values (eid, fname, sal, mngid);
        end loop;
end;

declare
    empid   number(6) := &empid;
    eid     employees.employee_id%type;
    fname   employees.first_name%type;
    sal     employees.salary%type;
    mngid   employees.manager_id%type;
begin
    for i in 1..3
        loop
            select EMPLOYEE_ID, FIRST_NAME, SALARY, MANAGER_ID
            into eid,fname,sal,mngid
            from EMPLOYEES
            where EMPLOYEE_ID = empid + i;
            insert into EX3_6(EMPLOYEE_ID, FIRST_NAME, SALARY, MANAGER_ID)
            values (eid, fname, sal, mngid);
        end loop;
end;

begin
    for i in 1..9
    loop
        for j in 1..9 loop
            DBMS_OUTPUT.PUT_LINE(i||' * '||j||' = '|| i*j);
            end loop;
        end loop;
end;