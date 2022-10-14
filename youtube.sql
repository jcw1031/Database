create table member
(
    member_id      varchar(50) not null,
    member_name    varchar(30),
    member_phone   varchar(30),
    member_address varchar(100),
    primary key (member_id)
);

select * from member;

alter table member
add member_id varchar(50) not null;

drop table member;