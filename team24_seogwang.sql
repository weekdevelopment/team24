USE haebeop;

create TABLE USER(
id VARCHAR(20) PRIMARY KEY,
pw VARCHAR(350) NOT NULL,
name VARCHAR(50) NOT NULL,
email VARCHAR(150),
tel VARCHAR(20),
addr1 VARCHAR(200),
addr2 VARCHAR(200),
postcode VARCHAR(20),
regdate DATETIME DEFAULT CURRENT_TIME,
birth DATE,
pt INT DEFAULT 500000,
visited INT DEFAULT 0
);

SELECT * FROM user;

INSERT INTO USER(id, pw, NAME) VALUES('admin','1234','관리자');
INSERT INTO USER VALUES ('seo', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서광', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('shin', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '신수현', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('seo2', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서준혁', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('kim', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '김민준', 'kim@haebeop.com', '010-1234-1234', '서울', '서구', '00002', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('lee', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '이주원', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00003', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('park', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '박지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00004', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jo', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '조지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00005', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('choi', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '최민준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00006', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jeong', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '정지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00007', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('son', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '손유사', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00008', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('kang', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '강호영', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00009', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('lim', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '임시우', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00010', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('shin2', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '신지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00011', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jang', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '장지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00012', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('yoon', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '윤지후', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00013', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('oh1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '오서준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00014', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('gwon1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '권도현', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00015', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jeon1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '전재황', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00016', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('ryu1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '류지호', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00017', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('oh1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '오서준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00018', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('han1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '한지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00019', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('seo3', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서주원', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00020', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('ahn1', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '안지호', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00021', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);


INSERT INTO USER VALUES ('seo9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서광', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('shin9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '신수현', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('seo29', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서준혁', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('kim9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '김민준', 'kim@haebeop.com', '010-1234-1234', '서울', '서구', '00002', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('lee9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '이주원', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00003', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('park9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '박지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00004', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jo9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '조지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00005', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('choi9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '최민준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00006', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jeong9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '정지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00007', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('son9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '손유사', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00008', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('kang9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '강호영', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00009', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('lim9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '임시우', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00010', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('shin29', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '신지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00011', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jang9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '장지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00012', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('yoon9', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '윤지후', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00013', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('oh19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '오서준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00014', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('gwon19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '권도현', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00015', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jeon19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '전재황', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00016', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('ryu19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '류지호', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00017', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('oh19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '오서준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00018', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('han19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '한지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00019', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('seo39', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서주원', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00020', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('ahn19', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '안지호', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00021', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);


INSERT INTO USER VALUES ('seo98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서광', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('shin98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '신수현', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('seo298', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서준혁', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00001', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('kim98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '김민준', 'kim@haebeop.com', '010-1234-1234', '서울', '서구', '00002', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('lee98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '이주원', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00003', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('park98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '박지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00004', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jo98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '조지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00005', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('choi98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '최민준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00006', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jeong98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '정지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00007', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('son98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '손유사', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00008', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('kang98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '강호영', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00009', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('lim98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '임시우', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00010', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('shin298', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '신지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00011', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jang98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '장지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00012', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('yoon98', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '윤지후', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00013', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('oh198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '오서준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00014', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('gwon198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '권도현', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00015', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('jeon198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '전재황', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00016', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('ryu198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '류지호', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00017', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('oh198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '오서준', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00018', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('han198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '한지훈', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00019', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('seo398', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '서주원', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00020', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);
INSERT INTO USER VALUES ('ahn198', '$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte', '안지호', 'seo@haebeop.com', '010-1234-1234', '서울', '동구', '00021', DEFAULT, '2000-01-01', DEFAULT, DEFAULT);


DROP TABLE user;

COMMIT;

UPDATE USER set pw='$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte';