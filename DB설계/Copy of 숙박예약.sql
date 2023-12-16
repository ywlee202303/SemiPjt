DROP TABLE IF EXISTS `stay`;

CREATE TABLE `stay` (
	`staySeq`	varchar2(300)	NOT NULL	COMMENT '숙소seq',
	`member_id`	varchar2(20)	NOT NULL	COMMENT '등록호스트아이디',
	`stayName`	varchar2(20)	NOT NULL	COMMENT '숙소명',
	`stayLoc`	varchar2(20)	NOT NULL	COMMENT '위치',
	`stayAdress`	varchar2(30)	NOT NULL	COMMENT '주소',
	`stayInfo`	varchar2(500)	NOT NULL	COMMENT '숙소 설명',
	`stayType`	varchar2(10)	NOT NULL	COMMENT '분류',
	`badge`	varchar2(10)	NULL	COMMENT '뱃지',
	`mainPic1`	varchar2(100)	NOT NULL	COMMENT '메인사진1',
	`mainPic2`	varchar2(100)	NOT NULL	COMMENT '메인사진2',
	`latitude`	number(10,10)	NOT NULL	COMMENT '위도',
	`longitude`	number(10,10)	NOT NULL	COMMENT '경도'
);

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
	`roomSeq`	varchar2(300)	NOT NULL	COMMENT '객실seq',
	`staySeq`	varchar2(300)	NOT NULL	COMMENT '숙소seq',
	`roomName`	varchar2(20)	NOT NULL	COMMENT '객실명',
	`std_person`	number(10,0)	NOT NULL	COMMENT '기준인원',
	`over_person`	number(10,0)	NOT NULL	COMMENT '최대인원',
	`roomInfo`	varchar(500)	NOT NULL	COMMENT '객실정보',
	`price`	number(10,3)	NOT NULL	COMMENT '가격',
	`roomType`	varchar2(10)	NOT NULL	COMMENT '객실유형',
	`info`	varchar2(50)	NOT NULL	COMMENT '객실소제목'
);

DROP TABLE IF EXISTS `roomOptionYN`;

CREATE TABLE `roomOptionYN` (
	`roomSeq`	varchar(300)	NOT NULL	COMMENT '객실seq',
	`staySeq`	varchar2(300)	NOT NULL	COMMENT '숙소seq',
	`bathroom`	char(1)	NOT NULL	COMMENT '화장실',
	`kitchen`	char(1)	NOT NULL	COMMENT '부엌',
	`parking`	char(1)	NOT NULL	COMMENT '주차장',
	`babiqu`	char(1)	NOT NULL	COMMENT '바베큐',
	`pet`	char(1)	NOT NULL	COMMENT '반려동물',
	`viewRoom`	varchar(10)	NOT NULL	COMMENT '뷰(바다/ 산)',
	`terrace`	char(1)	NOT NULL	COMMENT '테라스',
	`pool`	char(1)	NOT NULL	COMMENT '풀장',
	`bed`	number(10,0)	NOT NULL	COMMENT '침구갯수'
);

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
	`Payment_No`	varchar2(300)	NOT NULL	COMMENT '결제 Seq',
	`Reservation_No`	varchar2(300)	NOT NULL	COMMENT '예약 Seq',
	`regdate`	Date	NOT NULL	COMMENT '결제 시간',
	`paymentMethod`	varchar2(40)	NOT NULL	COMMENT '결제 수단',
	`error_code`	varchar2(100)	NULL	COMMENT '에러 코드',
	`cancleYN`	char(1)	NOT NULL	DEFAULT 'N'	COMMENT '환불 유무',
	`imp_uid`	varchar2(20)	NOT NULL	COMMENT '거래 번호',
	`error_msg`	varchar2(200)	NULL	COMMENT '에러 메세지'
);

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
	`Reservation_No`	varchar2(300)	NOT NULL	COMMENT '예약 Seq',
	`roomSeq`	varchar2(300)	NOT NULL	COMMENT '객실 Seq',
	`member_id`	varchar2(20)	NOT NULL	COMMENT '회원아이디',
	`regDate`	date	NOT NULL	COMMENT '예약일',
	`check_in`	date	NOT NULL	COMMENT '체크인 날짜',
	`check_out`	date	NOT NULL	COMMENT '체크아웃 날짜',
	`memberCount`	varchar2(10)	NOT NULL	COMMENT '예약인원'
);

DROP TABLE IF EXISTS `roomPhoto`;

CREATE TABLE `roomPhoto` (
	`roomSeq`	varchar2(300)	NOT NULL	COMMENT '객실seq',
	`staySeq`	varchar2(300)	NOT NULL	COMMENT '숙소seq',
	`roomImg`	varchar2(100)	NOT NULL	COMMENT '객실사진',
	`Field`	varchar2(100)	NOT NULL	COMMENT '사진위치'
);

DROP TABLE IF EXISTS `MemberRole`;

CREATE TABLE `MemberRole` (
	`member_id`	varchar2(20)	NOT NULL	COMMENT 'member 외래키 아이디',
	`role_id`	varchar2(20)	NOT NULL	COMMENT 'role_id'
);

DROP TABLE IF EXISTS `likestay`;

CREATE TABLE `likestay` (
	`staySeq`	varchar2(300)	NOT NULL	COMMENT '숙소seq',
	`member_id`	varchar2(20)	NOT NULL	COMMENT '회원아이디'
);

DROP TABLE IF EXISTS `refund`;

CREATE TABLE `refund` (
	`refundSeq`	varchar2(300)	NOT NULL	COMMENT '환불 시퀀스',
	`Payment_No`	varchar2(300)	NOT NULL	COMMENT '결제 Seq',
	`amount`	varchar2(20)	NOT NULL	COMMENT '환불 금액',
	`regDate`	Date	NOT NULL	COMMENT '환불 날짜',
	`fee`	varchar2(20)	NOT NULL	COMMENT '환불 수수료'
);

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
	`que_seq`	varchar(100)	NOT NULL	COMMENT '질문seq',
	`member_id`	varchar2(20)	NOT NULL	COMMENT '회원아이디',
	`title`	varchar(50)	NOT NULL	COMMENT '제목',
	`content`	varchar2(300)	NOT NULL	COMMENT '내용',
	`contentDate`	date	NOT NULL	COMMENT '게시일'
);

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
	`member_id`	varchar2(20)	NOT NULL	COMMENT '회원아이디',
	`member_name`	varchar2(10)	NOT NULL	COMMENT '회원명',
	`birthday`	date	NOT NULL	COMMENT '생년월일',
	`member_pwd`	varchar2(20)	NOT NULL	COMMENT '비밀번호',
	`member_email`	varchar2(45)	NULL	COMMENT '이메일',
	`registration_date`	date	NULL	COMMENT '회원가입일',
	`snsCk`	char(1)	NULL	COMMENT '체크',
	`profile`	varchar2(200)	NULL	COMMENT '프로필 사진',
	`gender`	char(1)	NULL	COMMENT '성별'
);

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
	`que_seq`	varchar(100)	NOT NULL	COMMENT '질문seq',
	`answerInfo`	varchar2(300)	NOT NULL	COMMENT '답변',
	`answerDate`	date	NOT NULL	COMMENT '답변일'
);

ALTER TABLE `stay` ADD CONSTRAINT `PK_STAY` PRIMARY KEY (
	`staySeq`,
	`member_id`
);

ALTER TABLE `room` ADD CONSTRAINT `PK_ROOM` PRIMARY KEY (
	`roomSeq`,
	`staySeq`
);

ALTER TABLE `roomOptionYN` ADD CONSTRAINT `PK_ROOMOPTIONYN` PRIMARY KEY (
	`roomSeq`,
	`staySeq`
);

ALTER TABLE `payment` ADD CONSTRAINT `PK_PAYMENT` PRIMARY KEY (
	`Payment_No`,
	`Reservation_No`
);

ALTER TABLE `reservation` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`Reservation_No`,
	`roomSeq`,
	`member_id`
);

ALTER TABLE `roomPhoto` ADD CONSTRAINT `PK_ROOMPHOTO` PRIMARY KEY (
	`roomSeq`,
	`staySeq`
);

ALTER TABLE `likestay` ADD CONSTRAINT `PK_LIKESTAY` PRIMARY KEY (
	`staySeq`,
	`member_id`
);

ALTER TABLE `refund` ADD CONSTRAINT `PK_REFUND` PRIMARY KEY (
	`refundSeq`,
	`Payment_No`
);

ALTER TABLE `question` ADD CONSTRAINT `PK_QUESTION` PRIMARY KEY (
	`que_seq`,
	`member_id`
);

ALTER TABLE `member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`member_id`
);

ALTER TABLE `answer` ADD CONSTRAINT `PK_ANSWER` PRIMARY KEY (
	`que_seq`
);

ALTER TABLE `stay` ADD CONSTRAINT `FK_member_TO_stay_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `room` ADD CONSTRAINT `FK_stay_TO_room_1` FOREIGN KEY (
	`staySeq`
)
REFERENCES `stay` (
	`staySeq`
);

ALTER TABLE `roomOptionYN` ADD CONSTRAINT `FK_room_TO_roomOptionYN_1` FOREIGN KEY (
	`roomSeq`
)
REFERENCES `room` (
	`roomSeq`
);

ALTER TABLE `roomOptionYN` ADD CONSTRAINT `FK_room_TO_roomOptionYN_2` FOREIGN KEY (
	`staySeq`
)
REFERENCES `room` (
	`staySeq`
);

ALTER TABLE `payment` ADD CONSTRAINT `FK_reservation_TO_payment_1` FOREIGN KEY (
	`Reservation_No`
)
REFERENCES `reservation` (
	`Reservation_No`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_room_TO_reservation_1` FOREIGN KEY (
	`roomSeq`
)
REFERENCES `room` (
	`roomSeq`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_member_TO_reservation_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `roomPhoto` ADD CONSTRAINT `FK_room_TO_roomPhoto_1` FOREIGN KEY (
	`roomSeq`
)
REFERENCES `room` (
	`roomSeq`
);

ALTER TABLE `roomPhoto` ADD CONSTRAINT `FK_room_TO_roomPhoto_2` FOREIGN KEY (
	`staySeq`
)
REFERENCES `room` (
	`staySeq`
);

ALTER TABLE `likestay` ADD CONSTRAINT `FK_stay_TO_likestay_1` FOREIGN KEY (
	`staySeq`
)
REFERENCES `stay` (
	`staySeq`
);

ALTER TABLE `likestay` ADD CONSTRAINT `FK_member_TO_likestay_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `refund` ADD CONSTRAINT `FK_payment_TO_refund_1` FOREIGN KEY (
	`Payment_No`
)
REFERENCES `payment` (
	`Payment_No`
);

ALTER TABLE `question` ADD CONSTRAINT `FK_member_TO_question_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `answer` ADD CONSTRAINT `FK_question_TO_answer_1` FOREIGN KEY (
	`que_seq`
)
REFERENCES `question` (
	`que_seq`
);

