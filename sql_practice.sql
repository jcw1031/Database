select 제품명, (단가 + 500) as '조정 단가' from 제품;


select * from 주문;

select 주문제품, 주문고객, sum(수량) as 총주문수량
from 주문
group by 주문제품, 주문고객;

select 제품.제품명
from 제품, 주문
where 주문.주문고객 = 'banana' and 주문.주문제품 = 제품.제품번호;

select 제품.제품명
from 고객, 제품, 주문
where 고객.고객이름 = '고명석' and 주문.주문고객 = 고객.고객아이디 and 주문.주문제품 = 제품.제품번호;

select * from 주문 left outer join 고객 on 고객.고객아이디 = 주문.주문고객;

select * from 주문, 고객 where 고객.고객아이디 = 주문.주문고객;

select * from 고객;

select 고객이름, 적립금
from 고객
where 적립금 = (select max(적립금)
             from 고객
);

select 제품명, 제조업체
from 제품
where 제품번호 not in (select 주문제품
               from 주문
               where 주문고객 = 'banana');

select * from 주문;

select * from 제품;

select 제품명, 단가, 제조업체
from 제품
where 단가 > (select max(단가)
            from 제품
            where 제조업체 = '대한식품');

select 고객이름
from 고객
where 고객아이디 = (select 주문고객
               from 주문
               where 주문일자 = '2019-03-15');

select 고객이름
from 고객
where 고객아이디 in (select 주문고객
             from 주문
             where 주문일자 = '2019-03-15');

select 고객이름
from 고객
where 고객아이디 not in (select 주문고객
                    from 주문
                    where 주문일자 = '2019-03-15');

insert into 고객
values ('strawberry', '최유경', 30, 'vip', '공무원', 100);

select * from 고객;

insert into 한빛제품(제품명, 재고량, 단가)
select 제품명, 재고량, 단가
from 제품
where 제조업체 = '한빛제과';

create table 한빛제품
(
    제품명 varchar(30),
    재고량 int,
    단가 int,
    primary key (제품명)
);

select * from 한빛제품;

update 제품
set 제품명 = '통큰파이'
where 제품번호 = 'p03';

select * from 제품;

update 제품
set 단가 = 단가*1.1;

update 주문
set 수량 = 5
where 주문고객 IN (select 고객아이디
               from 고객
               where 고객이름 = '정소화');

select * from 주문;

delete
from 주문
where 주문일자 = '2019-05-22';

delete
from 주문
where 주문고객 IN (select 고객아이디
               from 고객
               where 고객이름 = '정소화');

delete from 주문;

select * from 주문;

create view 업체별제품수(제조업체, 제품수)
as select 제조업체, count(*)
from 제품
group by 제조업체
with check option;

