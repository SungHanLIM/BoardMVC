# BoardMVC
user 에게 원격 접속 권한 추가

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '6411';
flush privileges;



CREATE TABLE MEMBER(
	NUM INT(10) NOT NULL AUTO_INCREMENT,
	ID varchar(10),
	NAME VARCHAR(20),
	PASSWORD VARCHAR(8),
	ROLE VARCHAR(5),
	PRIMARY KEY(NUM)
);

INSERT INTO MEMBER(id, password, name, role) VALUES('sunghan', '6411', 'Lim Sung Han', 'Admin');
INSERT INTO MEMBER(id, password, name, role) VALUES('user', 'user', 'user', 'User');

CREATE TABLE BOARD(
	SEQ INT(5) PRIMARY KEY  AUTO_INCREMENT,
	TITLE VARCHAR(200),
	WRITER VARCHAR(20),
	CONTENT VARCHAR(2000),
	REGDATE  DATETIME default now(),
	CNT INT(5) DEFAULT 0
);

INSERT INTO BOARD( TITLE, WRITER, CONTENT) 
VALUES( 'test01', 'sunghan', 'contents');
INSERT INTO BOARD( TITLE, WRITER, CONTENT) 
VALUES( 'test02', 'sunghan', 'contents');
INSERT INTO BOARD( TITLE, WRITER, CONTENT) 
VALUES( 'test03', 'user', 'contents');
INSERT INTO BOARD( TITLE, WRITER, CONTENT) 
VALUES( 'test04', 'user', 'contents');

select * from BOARD;
select * from MEMBER;
