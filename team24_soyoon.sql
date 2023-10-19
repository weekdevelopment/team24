-- 강사 - 강사코드, 강사명, 연락처, 이메일
CREATE TABLE teacher (
	tid VARCHAR(50) PRIMARY KEY,
	teacher_name VARCHAR(50) NOT NULL,
	tel VARCHAR(200),
	email VARCHAR(150)
);

INSERT INTO teacher VALUES("park", "박정우", "01012341234", "park@academy.com");



CREATE TABLE course (
	cno INT AUTO_INCREMENT PRIMARY KEY, -- 강의 코드
	course_name VARCHAR(100) NOT NULL, -- 강의명
	price INT NOT NULL, -- 강의 가격
	start_date DATE NOT NULL ,  -- 개강일
	end_date DATE NOT NULL , -- 종강일
	total_num INT NOT NULL, -- 총 인원 수
	curr_num INT NOT NULL DEFAULT 0, -- 현재 신청 인원 수
	teacher_name VARCHAR(50) NOT NULL , -- 강사j명 ( teacher 테이블에서 조인)
	content VARCHAR(3000) NOT NULL, -- 강의 소개
	book_name VARCHAR(100) NOT NULL, -- 교재 이름
	book_price INT NOT NULL, -- 교재 가격
	imgsrc1 VARCHAR(256) DEFAULT 'noimg.jpg', -- 강의 사진
	imgsrc2 VARCHAR(256) DEFAULT 'noimg.jpg' -- 교재 사진
); 

INSERT INTO course VALUES(DEFAULT, "독해하이라이트", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북", 21000, DEFAULT, DEFAULT);
INSERT INTO course VALUES(DEFAULT, "독해하이라이트2", 320000, "2023-10-20", "2023-12-31", 1, DEFAULT, "park", "d", "독해하이라이트 리딩북2", 21000, DEFAULT, DEFAULT);

INSERT INTO course VALUES(DEFAULT, "독해하이라이트3", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북3", 21000, DEFAULT, DEFAULT);
INSERT INTO course VALUES(DEFAULT, "독해하이라이트4", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북4", 21000, DEFAULT, DEFAULT);


-- 수강 - 수강코드, 강의코드, 학생아이디, 수강총시간, 수강완료여부
CREATE TABLE enroll (
	eno INT AUTO_INCREMENT PRIMARY KEY, -- 수강코드
	cno int NOT NULL, -- 수강신청한 강의 코드
	id VARCHAR(20) NOT NULL, -- 수강신청한 회원의 아이디 
	-- total_time INT NOT NULL, -- 총 강의 시간 
	-- curr_time INT NOT NULL, -- 수강한 시간
	complete BOOLEAN NOT NULL DEFAULT 0, -- 수강 완료 여부
	book BOOLEAN NOT NULL DEFAULT 1, -- 교재 선택 여부 (기본값은 1이며, 0은 미선택 1은 선택)
	enroll_price INT NOT NULL, -- 총 수강 가격 (교재 선택 여부에 따라 달라짐)
	book_name VARCHAR(100) NOT NULL -- 교재 이름
);

INSERT INTO enroll VALUES(DEFAULT, 1, "park", DEFAULT, DEFAULT, 141000, "리딩북");
