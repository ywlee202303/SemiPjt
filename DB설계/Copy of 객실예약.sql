DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
	`room_id`	number(4)	NOT NULL,
	`room_name`	varchar2(50)	NULL,
	`price`	number(10)	NULL,
	`description`	varchar2(4000)	NULL,
	`thumbnail_path`	varchar2(100)	NULL,
	`default_head`	number(2)	NULL
);

DROP TABLE IF EXISTS `book_info`;

CREATE TABLE `book_info` (
	`book_info_id`	number(4)	NOT NULL,
	`name`	varchar2(10)	NULL,
	`tel`	varchar2(20)	NULL,
	`email`	varchar2(20)	NULL,
	`porint`	number(10)	NULL
);

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
	`resv_id`	numver(4)	NOT NULL,
	`room_id`	number(4)	NOT NULL,
	`user_id`	number(4)	NOT NULL,
	`date_in`	date	NULL,
	`date_out`	date	NULL,
	`price`	number(10)	NULL,
	`head_count`	number(2)	NULL,
	`memo`	varchar2(4000)	NULL,
	`status_code`	number(2)	NOT NULL
);

DROP TABLE IF EXISTS `status_code`;

CREATE TABLE `status_code` (
	`status_code`	number(2)	NOT NULL,
	`status`	varcher2(100)	NULL
);

ALTER TABLE `room` ADD CONSTRAINT `PK_ROOM` PRIMARY KEY (
	`room_id`
);

ALTER TABLE `book_info` ADD CONSTRAINT `PK_BOOK_INFO` PRIMARY KEY (
	`book_info_id`
);

ALTER TABLE `reservation` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`resv_id`
);

ALTER TABLE `status_code` ADD CONSTRAINT `PK_STATUS_CODE` PRIMARY KEY (
	`status_code`
);

