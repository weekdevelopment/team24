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
pt INT DEFAULT 0,
visited INT DEFAULT 0
);

SELECT * FROM user;

INSERT INTO USER(id, pw, NAME) VALUES('admin','1234','관리자');
INSERT INTO USER(id, pw, NAME) VALUES('seo','1234','서광');
INSERT INTO USER(id, pw, NAME) VALUES('shin','1234','신수현');
INSERT INTO USER(id, pw, NAME) VALUES('jun','1234','서준혁');

COMMIT;
UPDATE USER set pw='$2a$10$s2kwVax17AmPs1E7ScEf/e8aU/r0cPrrKuN6rTAc9B22Ho/7mPvte';