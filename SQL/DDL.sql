-- 관리자 테이블 작성(일반유저,관리자유저 등)
CREATE TABLE scott.springuser (
	id varchar(20) NOT NULL,
	password varchar(100) NOT NULL,
	name varchar(20) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

