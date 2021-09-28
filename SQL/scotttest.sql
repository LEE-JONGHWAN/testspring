-- DDL 작성문

CREATE TABLE IF NOT EXISTS `BONUS` (
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `SAL` double DEFAULT NULL,
  `COMM` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `DEPT` (
  `DEPTNO` int(11) NOT NULL,
  `DNAME` varchar(14) DEFAULT NULL,
  `LOC` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `DEPT` (`DEPTNO`, `DNAME`, `LOC`) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');


CREATE TABLE IF NOT EXISTS `EMP` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` int(11) DEFAULT NULL,
  `HIREDATE` datetime DEFAULT NULL,
  `SAL` double DEFAULT NULL,
  `COMM` double DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPNO`),
  KEY `PK_EMP` (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `EMP` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17 00:00:00', 800, NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20 00:00:00', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22 00:00:00', 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02 00:00:00', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28 00:00:00', 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01 00:00:00', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09 00:00:00', 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19 00:00:00', 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17 00:00:00', 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08 00:00:00', 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, '1987-05-23 00:00:00', 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03 00:00:00', 950, NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03 00:00:00', 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23 00:00:00', 1300, NULL, 10);

CREATE TABLE IF NOT EXISTS `SALGRADE` (
  `GRADE` double DEFAULT NULL,
  `LOSAL` double DEFAULT NULL,
  `HISAL` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `SALGRADE` (`GRADE`, `LOSAL`, `HISAL`) VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);


ALTER TABLE `EMP`
ADD CONSTRAINT `PK_EMP` FOREIGN KEY (`DEPTNO`) 
REFERENCES `DEPT` (`DEPTNO`) ON DELETE SET NULL ON UPDATE CASCADE;

-- DDL 여기까지 

-- DDL : 정의(Create, alter, drop)
-- DML : 조작(select, insert, update, delete)
-- CRUD를 이용한 게시판만들기 
select * from EMP;  -- 사원테이블

-- 사원수 구하기?
select count(*) as "사원수" from emp;

-- emp테이블에서 사원명,사원번호, 급여(sal)를 조회
select ename as 사원명, empno as 사원번호, sal as 급여
from emp;

-- 사원명과 세금(급여%5)를 조회
select ename as 사원명, sal * 0.05 as 세금 from emp;

-- 최고급여는 누가?
select max(sal) as 최고급여 from emp;


-- 급여합계, 평균급여, 최대급여, 최소급여 조회
select sum(sal) as 급여합계, round(avg(sal),2) as 평균급여, 
max(sal) as 최대급여, min(sal) as 최소급여, count(sal) as 조회수
from emp;

-- 사원명이 'KING'인 급여와 사원명 조회
select sal as 급여,ename as 사원명 from
emp where ename in ('king');

-- [where 조건절 연습]
-- 부서번호가 10인 사원을 조회
select deptno as 부서번호, ename as 사원명 from emp
where deptno = 10;

-- 월 급여가 2500이상인 사원을 조회
select ename as 사원명, sal as 급여 from emp
where sal >= 2500;

-- 사원명이 S자로 시작하는 사원의 사원번호와 이름을 조회
select ename as 사원명, empno as 사원번호 
from emp where ename like "S%";


-- 데이터베이스 scott 사용
use scott;

-- 각 테이블 설정 조회
desc dept;
desc emp;
desc bonus;
desc salgrade;

-- emp 테이블을 조회(전체)
select * from emp;
select * from dept;

-- 사원명과 급여 및 세금(급여5%)를 조회
-- 오름차순 asc, 내림차순 desc (order by)
-- as 닉네임설정(이름부여)
select e.ename as '사원명', e.sal as '급여', e.sal*0.05 as '세금(급여5%)'
from emp as e
order by ENAME ; 

-- 최고급여?
select ename as 사원명, max(sal) as 최고급여 from emp;

-- 사원 몇명이지??????
select count(*) as 사원수 from emp; 

-- 급여합계, 평균급여, 최고급여, 최소급여, 개수 조회
select sum(sal) as 급여합계, round(avg(sal),2) as 평균급여, 
max(sal) as 최고급여, min(sal) as 최소급여, count(sal)
from emp;

-- 사원명이 'KING'인 급여와 사원명을 조회
select ename as 사원명, sal as 급여 
from emp
where ename = 'KING';

-- [where 조건절]
-- 부서번호가 10인 사원을 조회
SELECT * FROM emp
WHERE deptno = 10;

-- 월급여가 2500 이상인 사원을 조회
select * from emp
where sal >= 2500
order by ename;

-- 사원명이 S자로 시작하는 사원의 사원번호와 이름을 조회
select empno as 사원번호, ename as 사원명
from emp
where ename like 'S%';

-- 커미션이 300,500, 1400 인 사원의 사번,이름,커미션을 조회
SELECT empno AS 사원번호, ename AS 사원명, comm AS 커미션
FROM emp
WHERE comm IN(300,500,1400);
-- where comm = 300 or comm = 500 or comm = 1400;

-- 급여가 1200 초과, 3500 미만
select * from emp
-- where sal > 1200 and sal < 3500;
where sal between 1200 and 3500;
-- and, or : 우선순위 높은것 => and

-- 직급이 'MANAGER'이고 부서번호가 30인 사원의 이름,사번,직급,부서번호를 조회
select ename as 이름, empno as 사번, job as 직급, deptno as 부서번호
from emp
where job = 'MANAGER' and deptno = 30;

-- 부서번호가 30이 아닌 사원의 사번, 이름, 커미션을 조회
-- != 같지않다, <>
select empno as 사번, ename as 이름, comm as 커미션
from emp
where deptno != 30;

-- [group by] 구문
-- 부서별 평균월급여를 구하는 쿼리
select deptno as 부서번호, round(avg(sal),2) as 부서평균월급여
from emp
group by deptno;

-- 그룹에 대한 조건 : having 절
-- 부서별 평균월급여가 2000이상인 부서
select deptno as 부서번호, round(avg(sal),2) as 부서평균월급여
from emp
group by deptno
having avg(sal) >= 2000;
-- ASC (오름차순), DESC(내림차순)

-- join 
-- 사원번호, 사원명, 급여, 부서코드, 부서명, 주소를 조회
select e.empno as 사원번호, e.ename as 사원명, e.sal as 급여, 
d.deptno as 부서코드, d.dname as 부서명, d.loc as 주소
from emp e, dept d 
where e.deptno = d.deptno;


-- insert 
INSERT INTO scott.emp
(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



-- update
UPDATE scott.emp
SET ENAME=NULL, JOB=NULL, MGR=NULL, HIREDATE=NULL, SAL=NULL, COMM=NULL, DEPTNO=NULL
WHERE EMPNO=0;


-- "emp" 테이블의 전체사원수 : 결과가 int, 요청할것없음
select count(*) as 전체사원수 from emp;


















