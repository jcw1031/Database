use java_team_project;

create table member
(
    member_key              int         not null auto_increment,
    member_id       varchar(20) not null,
    member_password varchar(30) not null,
    member_name     varchar(20),
    member_phone    varchar(20),
    member_age      int,
    primary key (member_key)
);

select * from member;

alter table member change id member_key int;

drop table member;

select * from item;