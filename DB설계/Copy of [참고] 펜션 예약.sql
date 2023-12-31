﻿CREATE TABLE `CLIENT` (
	`C_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	`C_PW`	VARCHAR2(1000)	NULL	COMMENT '비밀번호',
	`C_NAME`	VARCHAR2(30)	NULL	COMMENT '이름',
	`C_BIRTH`	DATE	NULL	COMMENT '생년월일',
	`C_GENDER`	CHAR(2)	NULL	COMMENT '성별',
	`C_EMAIL`	VARCHAR2(50)	NULL	COMMENT '이메일',
	`C_PHONE`	VARCHAR2(11)	NULL	COMMENT '전화번호',
	`C_ADDR`	VARCHAR2(100)	NULL	COMMENT '거주지',
	`C_ED`	DATE	NULL	COMMENT '가입일',
	`C_BLCOUNT`	NUMBER	NULL	COMMENT '블랙리스트카운트(회원)',
	`AUTHORITY`	NUMBER	NULL	COMMENT '유저접근권한',
	`READSTATUS`	VARCHAR2(5)	NULL	COMMENT '알림읽음상태'
);

CREATE TABLE `OWNER` (
	`O_ID`	VARCHAR2(30)	NOT NULL	COMMENT '업체아이디',
	`O_PW`	VARCHAR2(1000)	NULL	COMMENT '비밀번호',
	`O_NAME`	VARCHAR2(30)	NULL	COMMENT '이름',
	`O_BIRTH`	DATE	NULL	COMMENT '생년월일',
	`O_GENDER`	CHAR(2)	NULL	COMMENT '성별',
	`O_EMAIL`	VARCHAR(50)	NULL	COMMENT '이메일',
	`O_PHONE`	VARCHAR2(11)	NULL	COMMENT '전화번호',
	`O_ADDR`	VARCHAR2(100)	NULL	COMMENT '거주지',
	`O_ED`	DATE	NULL	COMMENT '가입일',
	`O_EAYN`	CHAR(2)	NULL	COMMENT '가입승인여부',
	`O_BLCOUNT`	NUMBER	NULL	COMMENT '가입승인여부',
	`AUTHORITY`	NUMBER	NULL	COMMENT '업주접근권한'
);

CREATE TABLE `PENSION` (
	`P_CODE`	VARCHAR2(100)	NOT NULL	COMMENT '펜션 코드',
	`P_NAME`	VARCHAR2(30)	NULL	COMMENT '펜션 이름',
	`P_ADDR`	VARCHAR2(100)	NULL	COMMENT '주소',
	`P_TEL`	VARCHAR2(20)	NULL	COMMENT '펜션전화번호',
	`O_ID`	VARCHAR2(30)	NOT NULL	COMMENT '업체아이디',
	`ENROLLYN`	CHAR(2)	NULL	COMMENT '등록허가',
	`P_BLCOUNT`	NUMBER	NULL	COMMENT '신고카운트',
	`P_ENROLLDATE`	DATE	NULL	COMMENT '펜션등록날짜'
);

CREATE TABLE `ROOM` (
	`R_NO`	VARCHAR2(100)	NOT NULL	COMMENT '방 번호',
	`R_NAME`	VARCHAR2(30)	NULL	COMMENT '방 이름',
	`R_PRICE`	NUMBER	NULL	COMMENT '가격',
	`R_NOP`	NUMBER	NULL	COMMENT '인원수',
	`R_MAXNOP`	NUMBER	NULL	COMMENT '최대인원',
	`R_SIZE`	VARCHAR2(30)	NULL	COMMENT '평수',
	`P_CODE`	VARCHAR2(10)	NOT NULL	COMMENT '펜션 코드',
	`R_STRUC`	VARCHAR2(1000)	NULL	COMMENT '객실구조',
	`R_INFO`	VARCHAR2(4000)	NULL	COMMENT '객실설명',
	`R_ADDPRICE`	NUMBER	NULL	COMMENT '추가인원당요금'
);

CREATE TABLE `PAYMENT` (
	`PAY_CODE`	VARCHAR2(10)	NOT NULL	COMMENT '결제코드(번호)',
	`PAY_DATE`	DATE	NULL	COMMENT '결제날짜',
	`PAY_METHOD`	VARCHAR2(20)	NULL	COMMENT '결제수단',
	`RES_CODE`	VARCHAR2(10)	NOT NULL	COMMENT '예매코드'
);

CREATE TABLE `RESERVATION` (
	`RES_CODE`	VARCHAR2(10)	NOT NULL	COMMENT '예매코드',
	`RES_CHECKIN`	DATE	NULL	COMMENT '체크인',
	`RES_CHECKOUT`	DATE	NULL	COMMENT '체크아웃',
	`RES_STATE`	VARCHAR2(20)	NULL	COMMENT '결제상태',
	`RES_NOP`	NUMBER	NULL	COMMENT '예약인원수',
	`TOTAL_PRICE`	NUMBER	NULL	COMMENT '결제예정금액',
	`R_NO`	VARCHAR2(100)	NOT NULL	COMMENT '방 번호',
	`C_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	`RES_DATE`	DATE	NULL	COMMENT '예약날짜'
);

CREATE TABLE `COMMUNITY` (
	`CMM_NO`	NUMBER	NOT NULL	COMMENT '커뮤니티글 번호',
	`C_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	`TITLE`	VARCHAR2(100)	NULL	COMMENT '제목',
	`ENT_DATE`	DATE	NULL	COMMENT '등록일',
	`CONTENT`	VARCHAR2(2000)	NULL	COMMENT '내용',
	`CATEGORY`	VARCHAR2(30)	NULL	COMMENT '카테고리',
	`ORIGINAL_FILENAME`	VARCHAR2(500)	NULL	COMMENT '파일명',
	`RENAME_FILENAME`	VARCHAR2(500)	NULL	COMMENT '변경파일명',
	`COMMU_CNT`	NUMBER	NULL	COMMENT '신고카운트',
	`VIEW_CNT`	NUMBER	NULL	COMMENT '조회수',
	`STATUS`	CHAR(2)	NULL	COMMENT '삭제여부'
);

CREATE TABLE `C_COMMENT` (
	`CO_NO`	NUMBER	NOT NULL	COMMENT '댓글번호',
	`COMMENT`	VARCHAR2(4000)	NULL	COMMENT '댓글내용',
	`COMMENT_DATE`	DATE	NULL	COMMENT '댓글작성일',
	`C_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	`COMMENT_LEVEL`	NUMBER	NULL	COMMENT '댓글레벨',
	`COMMENT_REF`	NUMBER	NULL	COMMENT '댓글참조번호',
	`CMM_NO`	NUMBER	NOT NULL	COMMENT '커뮤니티글 번호'
);

CREATE TABLE `NOTICE` (
	`N_NO`	NUMBER	NOT NULL	COMMENT '공지사항 번호',
	`N_TITLE`	VARCHAR2(100)	NULL	COMMENT '제목',
	`N_ENT_DATE`	DATE	NULL	COMMENT '등록일',
	`N_MOD_DATE`	DATE	NULL	COMMENT '수정일',
	`N_CONTENT`	VARCHAR2(2000)	NULL	COMMENT '내용',
	`N_ORIGINAL_FILE`	VARCHAR2(500)	NULL	COMMENT '원본파일',
	`N_RENAME_FILE`	VARCHAR2(500)	NULL	COMMENT '변경파일',
	`N_VIEW_CNT`	NUMBER	NULL	COMMENT '조회수',
	`N_STATUS`	CHAR(2)	NULL	COMMENT '삭제여부',
	`M_ID`	VARCHAR2(30)	NOT NULL	COMMENT '관리자아이디'
);

CREATE TABLE `REVIEW` (
	`R_NO`	NUMBER	NOT NULL	COMMENT '후기글번호',
	`C_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	`R_TITLE`	VARCHAR2(100)	NULL	COMMENT '제목',
	`R_ENT_DATE`	DATE	NULL	COMMENT '등록일',
	`R_CONTENT`	VARCHAR2(2000)	NULL	COMMENT '내용',
	`R_BOARD_CNT`	NUMBER	NULL	COMMENT '신고카운트',
	`R_VIEW_CNT`	NUMBER	NULL	COMMENT '조회수',
	`R_STATUS`	CHAR(2)	NULL	COMMENT '삭제여부',
	`P_CODE`	VARCHAR2(10)	NOT NULL	COMMENT '펜션 코드'
);

CREATE TABLE `PEN_FAC` (
	`P_CODE`	VARCHAR2(100)	NOT NULL	COMMENT '펜션 코드',
	`STORE`	VARCHAR2(3)	NULL	COMMENT '매점',
	`WIFI`	VARCHAR2(3)	NULL	COMMENT '와이파이',
	`PET`	VARCHAR2(3)	NULL	COMMENT '애견가능',
	`POOL`	VARCHAR2(3)	NULL	COMMENT '공용수영장',
	`S_POOL`	VARCHAR2(3)	NULL	COMMENT '어린이풀장',
	`SLIDE`	VARCHAR2(3)	NULL	COMMENT '워터슬라이드',
	`OPEN_BATH`	VARCHAR2(3)	NULL	COMMENT '노천탕',
	`GRILL`	VARCHAR2(3)	NULL	COMMENT '그릴',
	`SMOKED`	VARCHAR2(3)	NULL	COMMENT '바베큐',
	`CAFE`	VARCHAR2(3)	NULL	COMMENT '카페',
	`SING`	VARCHAR2(3)	NULL	COMMENT '노래방',
	`FOOT`	VARCHAR2(3)	NULL	COMMENT '족구장',
	`HAND`	VARCHAR2(3)	NULL	COMMENT '농구장',
	`CAR`	VARCHAR2(3)	NULL	COMMENT '주차장'
);

CREATE TABLE `PEN_FILE` (
	`P_FILE_NO`	NUMBER	NOT NULL	COMMENT '첨부파일번호',
	`P_ORIGINAL_FILE`	VARCHAR2(500)	NULL	COMMENT '원본파일명',
	`P_RENAME_FILE`	VARCHAR2(500)	NULL	COMMENT '변경파일명',
	`P_CODE`	VARCHAR2(100)	NOT NULL	COMMENT '펜션 코드'
);

CREATE TABLE `ROOM_FILE` (
	`R_FILE_NO`	NUMBER	NOT NULL	COMMENT '첨부파일번호',
	`R_ORIGINAL_FILE`	VARCHAR2(500)	NULL	COMMENT '원본파일명',
	`R_RENAME_FILE`	VARCHAR2(500)	NULL	COMMENT '변경파일명',
	`R_NO`	VARCHAR2(100)	NOT NULL	COMMENT '방 번호'
);

CREATE TABLE `ROOM_FAC` (
	`R_NO`	VARCHAR2(100)	NOT NULL	COMMENT '방 번호',
	`BED`	VARCHAR2(3)	NULL	COMMENT '침대',
	`DRESS_TABLE`	VARCHAR2(3)	NULL	COMMENT '화장대',
	`TABLE`	VARCHAR2(3)	NULL	COMMENT '테이블',
	`SOFA`	VARCHAR2(3)	NULL	COMMENT '소파',
	`DRESS_CASE`	VARCHAR2(3)	NULL	COMMENT '옷장',
	`BATH`	VARCHAR2(3)	NULL	COMMENT '욕조',
	`SPA`	VARCHAR2(3)	NULL	COMMENT '스파',
	`WASH_KIT`	VARCHAR2(3)	NULL	COMMENT '세면도구',
	`TV`	VARCHAR2(3)	NULL	COMMENT '티비',
	`BEAM`	VARCHAR2(3)	NULL	COMMENT '빔프로젝터',
	`AIRCON`	VARCHAR2(3)	NULL	COMMENT '에어컨',
	`FRIDGE`	VARCHAR2(3)	NULL	COMMENT '냉장고',
	`COOK_FAC`	VARCHAR2(3)	NULL	COMMENT '조리시설',
	`COOK_UTEN`	VARCHAR2(3)	NULL	COMMENT '조리기구',
	`RICE`	VARCHAR2(3)	NULL	COMMENT '밥솥',
	`MICROWAVE`	VARCHAR2(3)	NULL	COMMENT '전자레인지',
	`R_SMOKED`	VARCHAR2(3)	NULL	COMMENT '개별바베큐',
	`CHILD`	VARCHAR2(3)	NULL	COMMENT '유아시설',
	`O_VIEW`	VARCHAR2(3)	NULL	COMMENT '오션뷰',
	`I_POOL`	VARCHAR2(3)	NULL	COMMENT '인피니티풀'
);

CREATE TABLE `REVIEW_FILE` (
	`R_FILE_NO`	NUMBER	NOT NULL	COMMENT '첨부파일번호',
	`R_ORIGINAL_FILE`	VARCHAR2(500)	NULL	COMMENT '원본파일명',
	`R_RENAME_FILE`	VARCHAR2(500)	NULL	COMMENT '변경파일명',
	`R_NO`	NUMBER	NOT NULL	COMMENT '후기글번호'
);

CREATE TABLE `NOTICE_COMMENT` (
	`N_COMMENT_NO`	NUMBER	NOT NULL	COMMENT '공지사항댓글번호',
	`N_COMMENT_LEVEL`	NUMBER	NULL	COMMENT '댓글레벨',
	`N_COMMENT_WIRTER`	VARCHAR2(30)	NOT NULL	COMMENT '작성자아이디',
	`N_COMMENT_CONTENT`	VARCHAR2(2000)	NULL	COMMENT '댓글내용',
	`N_NO`	NUMBER	NOT NULL	COMMENT '참조원글번호',
	`N_COMMENT_REF`	NUMBER	NULL	COMMENT '댓글참조번호',
	`N_COMMENT_DATE`	DATE	NULL	COMMENT '게시판댓글 작성일'
);

CREATE TABLE `BOARD112` (
	`REP_NO`	NUMBER	NOT NULL	COMMENT '신고번호(시퀀스)',
	`CATEGORY`	VARCHAR2(100)	NULL	COMMENT '신고유형(사유)',
	`CONTENT`	VARCHAR2(2000)	NULL	COMMENT '신고내용',
	`C_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	`CMM_NO`	NUMBER	NOT NULL	COMMENT '커뮤니티글 번호',
	`CO_NO`	NUMBER	NOT NULL	COMMENT '댓글번호'
);

ALTER TABLE `CLIENT` ADD CONSTRAINT `PK_CLIENT` PRIMARY KEY (
	`C_ID`
);

ALTER TABLE `OWNER` ADD CONSTRAINT `PK_OWNER` PRIMARY KEY (
	`O_ID`
);

ALTER TABLE `PENSION` ADD CONSTRAINT `PK_PENSION` PRIMARY KEY (
	`P_CODE`
);

ALTER TABLE `ROOM` ADD CONSTRAINT `PK_ROOM` PRIMARY KEY (
	`R_NO`
);

ALTER TABLE `PAYMENT` ADD CONSTRAINT `PK_PAYMENT` PRIMARY KEY (
	`PAY_CODE`
);

ALTER TABLE `RESERVATION` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`RES_CODE`
);

ALTER TABLE `COMMUNITY` ADD CONSTRAINT `PK_COMMUNITY` PRIMARY KEY (
	`CMM_NO`
);

ALTER TABLE `C_COMMENT` ADD CONSTRAINT `PK_C_COMMENT` PRIMARY KEY (
	`CO_NO`
);

ALTER TABLE `NOTICE` ADD CONSTRAINT `PK_NOTICE` PRIMARY KEY (
	`N_NO`
);

ALTER TABLE `REVIEW` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`R_NO`
);

ALTER TABLE `PEN_FAC` ADD CONSTRAINT `PK_PEN_FAC` PRIMARY KEY (
	`P_CODE`
);

ALTER TABLE `PEN_FILE` ADD CONSTRAINT `PK_PEN_FILE` PRIMARY KEY (
	`P_FILE_NO`
);

ALTER TABLE `ROOM_FILE` ADD CONSTRAINT `PK_ROOM_FILE` PRIMARY KEY (
	`R_FILE_NO`
);

ALTER TABLE `ROOM_FAC` ADD CONSTRAINT `PK_ROOM_FAC` PRIMARY KEY (
	`R_NO`
);

ALTER TABLE `REVIEW_FILE` ADD CONSTRAINT `PK_REVIEW_FILE` PRIMARY KEY (
	`R_FILE_NO`
);

ALTER TABLE `NOTICE_COMMENT` ADD CONSTRAINT `PK_NOTICE_COMMENT` PRIMARY KEY (
	`N_COMMENT_NO`
);

ALTER TABLE `BOARD112` ADD CONSTRAINT `PK_BOARD112` PRIMARY KEY (
	`REP_NO`
);

ALTER TABLE `PEN_FAC` ADD CONSTRAINT `FK_PENSION_TO_PEN_FAC_1` FOREIGN KEY (
	`P_CODE`
)
REFERENCES `PENSION` (
	`P_CODE`
);

ALTER TABLE `ROOM_FAC` ADD CONSTRAINT `FK_ROOM_TO_ROOM_FAC_1` FOREIGN KEY (
	`R_NO`
)
REFERENCES `ROOM` (
	`R_NO`
);

