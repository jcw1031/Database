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

