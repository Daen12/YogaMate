DROP DATABASE IF EXISTS `ssafy_yoga`;
CREATE DATABASE IF NOT EXISTS `ssafy_yoga`;
USE `ssafy_yoga`;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
`id` VARCHAR(20) NOT NULL,
`password` VARCHAR(20) NOT NULL,
`name` VARCHAR(20) NOT NULL,
`nickname` VARCHAR(20) NOT NULL,
PRIMARY KEY (`id`)
);

insert into `users` (id, password, name, nickname)
values ("ssafy", "1234", "김싸피", "왕십리 야식");

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `board` (
`idx` BIGINT AUTO_INCREMENT,
`class_num` INT NOT NULL,
`title` VARCHAR(20) NOT NULL,
`content` VARCHAR(50) NOT NULL,
`writer` VARCHAR(20) NOT NULL,
`view_cnt` INT DEFAULT 0,
`reg_date` TIMESTAMP DEFAULT now(),
PRIMARY KEY (`idx`)
);

insert into `board` (class_num, title, content, writer)
values (1, "게시판 테스트 제목입니다.", "게시판 테스트 내용입니다.", "왕십리 야식");

-- -----------------------------------------------------
-- Table `comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comment` (
`idx` BIGINT AUTO_INCREMENT,
`article_idx` BIGINT NOT NULL,
`content` VARCHAR(50) NOT NULL,
`writer` VARCHAR(20) NOT NULL,
`reg_date` TIMESTAMP DEFAULT now(),
PRIMARY KEY (`idx`)
);

insert into `comment` (article_idx, content, writer)
values (1, "댓글 테스트 내용입니다 ㅎㅎ", "ssafy");
-- -----------------------------------------------------
-- Verify Table
-- -----------------------------------------------------
SELECT * FROM users;
SELECT * FROM board;
SELECT * FROM comment;