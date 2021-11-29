-- 1. 다음 PL/SQL 블록 중 성공적으로 실행되는 블록은 무엇입니까?
-- a. BEGIN
-- END;
--
-- b. DECLARE
-- amount INTEGER(10);
-- END;
--
-- c. DECLARE
-- BEGIN
-- END;
--
-- d. DECLARE
-- amount INTEGER(10);
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE(amount);
-- END;
-- answer : d
-- 나머지는 실행 x

-- 2.  "Hello World"를 출력하는 간단한 익명 블록을 생성하여 실행합니다
declare
    word varchar2(30) := 'Hello World';
begin
    DBMS_OUTPUT.PUT_LINE(word);
end;

-- 3.  다음 익명 블록을 검토하고 올바른 문장을 선택합니다.
-- SET SERVEROUTPUT ON
-- DECLARE
-- fname VARCHAR2(20);
-- lname VARCHAR2(15) DEFAULT 'fernandez';
-- BEGIN
-- DBMS_OUTPUT.PUT_LINE( FNAME ||' ' ||lname);
-- END;
-- /
-- a. 블록이 성공적으로 실행되고 "fernandez"가 출력됩니다.
-- b. fname 변수가 초기화하지 않고 사용되었기 때문에 오류가 발생합니다.
-- c. 블록이 성공적으로 실행되고 "null fernandez"가 출력됩니다.
-- d. VARCHAR2 유형의 변수를 초기화하는 데 DEFAULT 키워드를 사용할 수 없기 때문에 오류가 발생합니다.
-- e. 블록에서 FNAME 변수가 선언되지 않았기 때문에 오류가 발생합니다.
-- answer : a 실행시 fernandez 가 출력됨.

--4. 익명 블록을 생성합니다.
-- a. 이 PL/SQL 블록에 선언 섹션을 추가합니다. 선언 섹션에서 다음 변수를 선언합니다.
-- 1. DATE 유형의 today 변수. today를 SYSDATE로 초기화합니다.
-- 2. today 유형의 tomorrow 변수. %TYPE 속성을 사용하여 이 변수를 선언합니다.
-- b. 실행 섹션에서 내일 날짜를 계산하는 표현식(today 값에 1 추가)을 사용하여 tomorrow 변수를 초기화합니다.
--    "Hello World"를 출력한 후 today와 tomorrow의 값을 출력합니다.
-- c. 예제의 출력 결과는 다음과 같습니다

declare
    today    date := sysdate;
    tomorrow today%type;
begin
    DBMS_OUTPUT.PUT_LINE('hello World');
    DBMS_OUTPUT.PUT_LINE('Today is ' || to_char(today));
    tomorrow := today + 1;
    DBMS_OUTPUT.PUT_LINE('tomorrow is ' || to_char(tomorrow));
end;


-- 5. 익명 블록을 생성합니다.
-- a. 두 개의 바인드 변수를 생성하는 코드를 추가합니다. NUMBER 유형의 바인드 변수
-- basic_percent 및 pf_percent를 생성합니다.
-- b. PL/SQL 블록의 실행 섹션에서 basic_percent와 pf_percent에 각각 값 45와
-- 12를 할당합니다.
-- c. "/"로 PL/SQL 블록을 종료하고 PRINT 명령을 사용하여 바인드 변수 값을 표시합니다.
-- d. 예제의 출력 결과는 다음과 같습니다
declare
    basic_percent number;
    pf_percent    number;
begin
    basic_percent := 45;
    pf_percent := 12;
    DBMS_OUTPUT.PUT_LINE('basic_percent');
    DBMS_OUTPUT.PUT_LINE('--');
    DBMS_OUTPUT.PUT_LINE(basic_percent);
    DBMS_OUTPUT.PUT_LINE('pf_percent');
    DBMS_OUTPUT.PUT_LINE('--');
    DBMS_OUTPUT.PUT_LINE(pf_percent);
end;

-- 6. 위에 제시된 PL/SQL 블록을 검토하여 범위 지정 규칙에 따라 다음 각 변수의 데이터 유형
-- 및 값을 판별합니다.
-- a. 1 위치에서의 weight 값:2
-- b. 1 위치에서의 new_locn 값: Western Europe
-- c. 2 위치에서의 weight 값: 601
-- d. 2 위치에서의 message 값: product 10012 is in stock
-- e. 2 위치에서의 new_locn 값: Western

-- 7. 익명 블록을 생성하시오,
-- a. 단일 행 주석 구문을 사용하여 바인드 변수를 생성하는 행을 주석 처리합니다.
-- b. 실행 섹션에서 다중 행 주석을 사용하여 바인드 변수에 값을 할당하는 행을 주석 처리합니다.
-- c. 데이터 유형이 VARCHAR2이고 크기가 15인 fname 및 데이터 유형이 NUMBER이고 크기가 10인 emp_sal이라는 두 변수를 선언합니다.
-- d. 다음 SQL 문을 실행 섹션에 포함시킵니다.
-- SELECT first_name, salary
-- INTO fname, emp_sal FROM employees
-- WHERE employee_id=110;
-- e. 'Hello World'를 출력하는 행을 'Hello'와 이름을 출력하도록 변경합니다. 필요한 경우 날짜를 표시하고 바인드 변수를 출력하는 행을 주석 처리합니다.
-- f. 적립 기금(PF)에 대한 사원의 부담금을 계산합니다. PF는 기본 급여의 12%이며 기본 급여는 급여의 45%입니다. 계산할 때는 바인드 변수를 사용합니다. 표현식을 하나만 사용하여 PF를 계산합니다. 사원의 급여 및 PF 부담금을 출력합니다.
-- g. 예제의 출력 결과는 다음과 같습니다.

declare
    fname   varchar2(15);
    emp_sal varchar2(15);
begin
    select first_name, salary
    into fname,emp_sal
    from employees
    where employee_id = 110;
    DBMS_OUTPUT.PUT_LINE('Hello' || fname);
    DBMS_OUTPUT.PUT_LINE('YOUR SALARY ' || emp_sal);
    DBMS_OUTPUT.PUT_LINE('YOUR CONTRIBUTION TOWARDS PF' || emp_sal * 0.45 * 0.12);
end;

-- 8. 익명 블록을 생성하시오.
-- a. employee 및 employee_details 테이블에는 동일한 데이터가 있습니다.
-- employee_details 테이블의 데이터를 갱신합니다. employees 테이블의 데이터는 갱신하거나 변경하지 마십시오.
-- b. 이 코드는 유저가 입력한 사원 번호 및 부서 번호를 받아들입니다.

declare
    empid number := &empid;
    depid number := &depid;
    empno number;
    deptno number;
    empname varchar2(30);
    emptel varchar2(30);
    empemail varchar2(30);
    empaddr varchar2(30);
    empdate date;
    empcarr varchar2(30);
    empcarti varchar2(30);
begin
    select emp_no,
           dept_no,
           emp_name,
           emp_tel,
           emp_email,
           emp_addr,
           emp_date,
           emp_carr,
           emp_certi
    into empno,deptno,empname,emptel,empemail,empaddr,empdate,empcarr,empcarti
    from EMPLOYEE
    where EMP_NO = empid and
          DEPT_NO = depid;
    insert into EMPLOYEE_DETAILS values (empno,deptno,empname,emptel,empemail,empaddr,empdate,empcarr,empcarti);
end;

create table employee_details as select * from employee;

delete from EMPLOYEE;

select * from EMPLOYEE;

commit;

insert into EMPLOYEE values (10,20,'empname','emptel','empemail','empaddr',sysdate,'empcarr','empcarti');