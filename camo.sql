use CAMO_DB;

CREATE TABLE member (
member_id INT AUTO_INCREMENT,
email VARCHAR(50) NOT NULL,
name VARCHAR(10) NOT NULL,
password VARCHAR(30) NOT NULL,
phone VARCHAR(15),
member_type INT DEFAULT 0,
PRIMARY KEY(member_id));

CREATE TABLE cafe (
cafe_id INT,
member_id INT,
cafe_name VARCHAR(100) NOT NULL,
cafe_address VARCHAR(100) NOT NULL,
cafe_call_number VARCHAR(15),
stamps_number INT NOT NULL DEFAULT 10,
coupon_reward VARCHAR(30),
cafe_introduce VARCHAR(1000),
PRIMARY KEY(cafe_id),
FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE);

CREATE TABLE menu (
menu_id INT AUTO_INCREMENT,
cafe_id INT,
menu_name VARCHAR(30) NOT NULL,
menu_price INT,
PRIMARY KEY(menu_id),
FOREIGN KEY(cafe_id) REFERENCES cafe(cafe_id) ON DELETE CASCADE);

CREATE TABLE coupon (
coupon_id INT AUTO_INCREMENT,
member_id INT,
cafe_id INT,
stamps_number INT,
color_code VARCHAR(6) DEFAULT 'ffffff',
PRIMARY KEY(coupon_id),
FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
FOREIGN KEY(cafe_id) REFERENCES cafe(cafe_id) ON DELETE CASCADE);

CREATE TABLE review (
review_id INT AUTO_INCREMENT,
member_id INT,
cafe_id INT,
star_rating FLOAT,
reivew_description VARCHAR(1000),
review_date DATE,
PRIMARY KEY(review_id),
FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE SET NULL,
FOREIGN KEY(cafe_id) REFERENCES cafe(cafe_id) ON DELETE CASCADE);

show tables;

drop table coupon;

select * from member;

show variables like 'lower_case_table_names';
