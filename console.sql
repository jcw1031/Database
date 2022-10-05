show databases;

use CAMO_DB;

show tables;

CREATE TABLE 회원정보 (
회원번호 INT,
회원ID VARCHAR(50) NOT NULL,
회원이름 VARCHAR(10) NOT NULL,
회원비밀번호 VARCHAR(30) NOT NULL,
회원전화번호 INT,
회원역할 INT DEFAULT 0,
PRIMARY KEY(회원번호));


CREATE TABLE 카페정보 (
사업자번호 INT,
사장번호 INT,
카페이름 VARCHAR(100) NOT NULL,
카페주소 VARCHAR(100) NOT NULL,
카페전화번호 INT,
PRIMARY KEY(사업자번호),
FOREIGN KEY(사장번호) REFERENCES 회원정보(회원번호) ON DELETE CASCADE);

CREATE TABLE 카페메뉴 (
사업자번호 INT,
메뉴번호 INT,
메뉴이름 VARCHAR(30) NOT NULL,
쿠폰사용가능여부 VARCHAR(10),
PRIMARY KEY(사업자번호, 메뉴번호),
FOREIGN KEY(사업자번호) REFERENCES 카페정보(사업자번호) ON DELETE CASCADE);

CREATE TABLE 쿠폰 (
회원번호 INT,
사업자번호 INT,
스탬프개수 INT,
PRIMARY KEY(회원번호, 사업자번호),
FOREIGN KEY(회원번호) REFERENCES 회원정보(회원번호) ON DELETE CASCADE,
FOREIGN KEY(사업자번호) REFERENCES 카페정보(사업자번호) ON DELETE CASCADE);

/*CREATE TABLE 고용 (
사업자번호 INT,
사장번호 INT,
직원번호 INT,
직원이름 VARCHAR(10) NOT NULL,
PRIMARY KEY(직원번호),
FOREIGN KEY(직원번호) REFERENCES 회원정보(회원번호) ON DELETE CASCADE,
FOREIGN KEY(사장번호) REFERENCES 카페정보(사장번호) ON DELETE CASCADE,
FOREIGN KEY(사업자번호) REFERENCES 카페정보(사업자번호) ON DELETE CASCADE);*/

CREATE TABLE 리뷰 (
리뷰번호 INT,
회원번호 INT,
사업자번호 INT,
별점 DECIMAL,
리뷰 VARCHAR(500),
작성날짜 DATE,
PRIMARY KEY(리뷰번호),
FOREIGN KEY(회원번호) REFERENCES 회원정보(회원번호) ON DELETE SET NULL,
FOREIGN KEY(사업자번호) REFERENCES 카페정보(사업자번호) ON DELETE CASCADE);

select * from 회원정보;
