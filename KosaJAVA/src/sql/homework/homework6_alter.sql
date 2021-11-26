alter table teacher
    add constraint teach_teach_no primary key (TEACH_NO);

alter table SUBJECT
    add constraint subject_subj_no_pk primary key (SUBJ_NO);

alter table EMPLOYMENT
    add constraint emp_mnt_no_emp_no_pk primary key (EMPLOYMENT_NO, EMP_NO);

alter table LECEVAL
    add constraint leceval_lece_no_emp_no_lec_no_pk primary key (leceval_no, EMP_NO, LEC_NO);

alter table LECCONTRACT
    add constraint leccontract_lec_no_pk primary key (LEC_NO);

alter table JOBINTV
    add constraint jobintv_no_emp_no_pk primary key (JOBINTV_NO, EMP_NO);

alter table EMPLOYEE
    add constraint employee_emp_no_pk primary key (EMP_NO);

alter table ATTEND
    add constraint attend_no_emp_no_lec_no_pk primary key (attend_no, EMP_NO, LEC_NO);

alter table department
    add constraint dept_no_pk primary key (DEPT_NO);

------------------------------------------------------------------
-- foreign

alter table EMPLOYMENT
    add constraint employent_emp_no_fk foreign key (EMP_NO) references employee (emp_no)
        on delete cascade; --지워지면 같이 지워짐

alter table leceval
    add (constraint leceval_emp_no_fk foreign key (EMP_NO) references employee (emp_no)
        on delete cascade,
         constraint leveval_lec_no_fk foreign key (LEC_NO) references LECCONTRACT (lec_no)
             on delete cascade
        );

alter table LECCONTRACT
    add(constraint leccontract_teach_teach_no_fk foreign key (TEACH_NO) references TEACHER (TEACH_NO)
        on delete set null,
        constraint leccnstract_subj_no_fk foreign key (SUBJ_NO) references SUBJECT (SUBJ_NO) on delete set null);

alter table JOBINTV
    add(constraint jobintv_emp_no_fk foreign key (EMP_NO) references employee (emp_no) on delete cascade);

alter table employee
    add constraint employee_dept_no_fk foreign key (DEPT_NO) references department(dept_no) on delete set null;

alter table ATTEND
add (constraint attend_emp_no_fk foreign key (EMP_NO) references employee(emp_no) on delete cascade ,
    constraint attend_lec_no_fk foreign key (LEC_NO) references LECCONTRACT(LEC_NO) on delete cascade
    )


