use youtube;

create table member
(
    member_id    int not null auto_increment,
    member_name  varchar(10),
    member_phone varchar(15),
    member_address varchar(30),
    primary key (member_id)
);

show tables;

drop table member;

select * from member;
