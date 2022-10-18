create table member
(
    member_id      varchar(50) not null,
    member_name    varchar(30),
    member_phone   varchar(30),
    member_address varchar(100),
    primary key (member_id)
);

select * from member;

create table goods
(
    goods_id    int not null auto_increment,
    goods_name  varchar(50),
    goods_stock int,
    primary key (goods_id)
);


create table orders
(
    order_id     int not null auto_increment,
    member_id    varchar(50),
    goods_id     int,
    order_amount int,
    order_date   varchar(20),
    primary key (order_id),
    foreign key (member_id) references member (member_id) on delete cascade on update cascade,
    foreign key (goods_id) references goods (goods_id) on delete cascade on update cascade
);

select * from goods;

delete from goods where goods_id = 5;

select * from orders;

alter table orders drop column order_date;

alter table orders add order_date varchar(50);

alter table orders auto_increment = 10000;

delete from orders where order_id = 1;