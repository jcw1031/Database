create database swing_test;

use swing_test;

create table member
(
    member_id int not null auto_increment,
    id        varchar(20),
    password  varchar(20),
    primary key (member_id)
);

insert into member (id, password) values('jcw1031', 'jcw1234');

show databases;

use DB_programming;

show tables;

create table Book(
    bookid int(5) not null auto_increment,
    bookname varchar(30),
    publisher varchar(30),
    price int(10),
    primary key(bookid)
);

select * from Book;

create table Customer(
    custid int(5) not null auto_increment,
    name varchar(10),
    address varchar(50),
    phone varchar(15),
    primary key(custid)
);

select * from Customer;

create table Orders(
    orderid int(5) not null auto_increment,
    custid int(5),
    bookid int(5),
    saleprice int(10),
    orderdate varchar(15),
    primary key(orderid),
    foreign key(custid) references Customer(custid) on update cascade on delete cascade ,
    foreign key(bookid) references Book(bookid) on update cascade on delete cascade
);

select * from Orders;


select distinct publisher
from Book;

select * from book where price between 7000 and 15000;

select * from Customer where custid not in (
    select Orders.custid
    from Orders
    where custid = 3
    );

select * from Orders where custid = 3;

select * from Book order by price, bookname;

select * from book order by price desc, publisher;

select custid as 주문고객, sum(saleprice) as 총주문금액

from Orders
group by custid;

select custid, count(*)
from Orders
where saleprice >= 8000
group by custid
having count(*) >= 2;

select name
from Customer
where custid in (select custid
                from Orders);
