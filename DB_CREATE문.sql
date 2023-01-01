-- create database webProject default character set utf8 collate utf8_general_ci;
use webProject;
show tables;
drop table tbl_member;
drop table tbl_room;
drop table tbl_reserve;
drop table tbl_payment;
drop table tbl_review;
drop table tbl_goods;
drop table tbl_goodspay;

select * from tbl_member;
select * from tbl_room;
select * from tbl_reserve;
select * from tbl_payment;
select * from tbl_review;
select * from tbl_goods;
select * from tbl_goodspay;


# 유저
CREATE TABLE tbl_member (
	id varchar(20) PRIMARY KEY, # 유저 아이디
    password varchar(15) not null, # 비밀번호 
    name varchar(20) not null, # 이름
    email varchar(50) not null, # 이메일
    phoneNumber varchar(15) not null, # 휴대폰 번호
    address varchar(120) not null, # 주소
    manager varchar(5) not null # 매니저 직위 판별
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter database webProject default character set utf8 collate utf8_general_ci;

# 방 정보
CREATE TABLE tbl_room (
 id	varchar(20), # 룸 고유 id (번호)
 cost     int(4), # 비용
 view    VARCHAR(20), # 뷰
 person   int(4), # 최대수용인원
 size    VARCHAR(20), # 크기
  PRIMARY KEY(id)
)DEFAULT CHARSET=utf8;

# 예약
CREATE TABLE tbl_reserve (
 id	varchar(20), # 예약번호
 start_date     date, # 시작일
 end_date    date, # 끝일
 room_id   VARCHAR(20), # 대상 룸
 state    VARCHAR(20),  # 상태 ex) 예약중, 예약취소, 완료
  PRIMARY KEY(id),
  FOREIGN KEY (room_id) REFERENCES tbl_room(id)
)DEFAULT CHARSET=utf8;

# 결제
CREATE TABLE tbl_payment (
 id	varchar(20), # 결제 번호
 reserve_id   VARCHAR(20), # 예약 번호 fk
 total    int(4), # 총액
 means   VARCHAR(20), # 결제방법
 date    datetime, # 결제일시
 member_id VARCHAR(10), # 결제한 사람
  PRIMARY KEY(id),
  FOREIGN KEY (reserve_id) REFERENCES tbl_reserve(id),
  FOREIGN KEY (member_id) REFERENCES tbl_member(id)
)DEFAULT CHARSET=utf8;

# 리뷰
CREATE TABLE tbl_review (
	reserve_id varchar(20) primary key,
	id varchar(20),
    room_id varchar(20),
    comment varchar(1000),
    star int,
    FOREIGN KEY (reserve_id) REFERENCES tbl_reserve(id),
    FOREIGN KEY (id) REFERENCES tbl_member(id),
    FOREIGN KEY (room_id) REFERENCES tbl_room(id)
) DEFAULT CHARSEt=utf8;

# 상품
CREATE TABLE tbl_goods (
 id   varchar(20), # 굿즈 고유 id (번호)
 cost     int(4), # 비용
 quantity int(4), # 수량
 inform   VARCHAR(50), #제품소개
  PRIMARY KEY(id)
)DEFAULT CHARSET=utf8;

# 상품 결제
CREATE TABLE tbl_goodspay (
 id   varchar(20), # 굿즈결제번호
 goods varchar(20), # 구매한 굿즈 아이디
 quantity int(4), # 수량
 total     int(4), # 총비용
 means   VARCHAR(20), # 결제방법
 date    datetime, # 결제일시
 member_id VARCHAR(10), # 결제한 사람
 PRIMARY KEY(id),
 foreign key (goods) references tbl_goods(id),
 FOREIGN KEY (member_id) REFERENCES tbl_member(id)
)DEFAULT CHARSET=utf8;

# 방 옵션 insert 구문
insert into tbl_room values('마운틴뷰1', 230000, 'mount', 6, '30');
insert into tbl_room values('마운틴뷰2', 420000, 'mount', 6, '60');
insert into tbl_room values('시티뷰1', 190000, 'city', 6, '30');
insert into tbl_room values('시티뷰2', 350000, 'city', 6, '60');
insert into tbl_room values('한강뷰1', 250000, 'ocean', 6, '30');
insert into tbl_room values('한강뷰2', 470000, 'ocean', 6, '60');

# 상품 insert 구문
insert tbl_goods values('세서시 에코백',18000,100,'세서시 호텔의 로고가 그려진 편리한 에코백');
insert tbl_goods values('세서시 머그컵',16000,100,'세서시 호텔의 혼이 담긴 머그컵');
insert tbl_goods values('세서시 원두',24000,100,'세서시 호텔의 향기가 담긴 원두');
insert tbl_goods values('세서시 펜',9000,100,'세서시의 로고가 그려진 편리한 펜');