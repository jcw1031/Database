show databases;

create table employee
(
    empno   int not null,
    empname varchar(10),
    title   varchar(10),
    manager int,
    salary  int,
    dno     int,
    primary key (empno)
);

create table department
(
    deptno   int not null,
    deptname varchar(10),
    floor    int,
    primary key (deptno)
);


insert into employee
values (2106, '김창섭', '대리', 1003, 2500000, 2);

insert into employee
values (3426, '박영권', '과장', 4377, 3000000, 1);

insert into employee
values (3011, '이수민', '부장', 4377, 4000000, 3);

insert into employee
values (1003, '조민희', '과장', 4377, 3000000, 2);

insert into employee
values (3427, '최종철', '사원', 3011, 1500000, 3);

insert into employee
values (1365, '김상원', '사원', 3426, 1500000, 1);

insert into employee
values (4377, '이성래', '사장', null, 5000000, 2);

select * from employee;