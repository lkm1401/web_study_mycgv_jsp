/*********************************************
         MYCGV_MEMBMER 테이블 
*********************************************/
-- 회원가입, 로그인, 관리자(회원관리등)
-- 컬럼리스트 : ID, PASS, NAME, GENDER, EMAIL, ADDR, TEL, PNUMBER, HOBBYLIST, INTRO,MDATE;
-- ****  UI폼 NAME = VO 필드명 = 테이블 컬럼명
CREATE TABLE MYCGV_MEMBER(
    ID            VARCHAR2(30)    CONSTRAINT  PK_MYCGV_MEMBER_ID  PRIMARY KEY,
    PASS        VARCHAR2(30)  NOT NULL,
    NAME      VARCHAR2(30) NOT NULL,
    GENDER    VARCHAR2(1) NOT NULL,
    EMAIL       VARCHAR2(50)  NOT NULL,
    ADDR        VARCHAR2(150)  NOT NULL,
    TEL             VARCHAR2(10)   NOT NULL,
    PNUMBER   VARCHAR2(30)  NOT NULL,
    HOBBYLIST  VARCHAR2(50)  NOT NULL,
    INTRO        VARCHAR2(200) ,
    MDATE      DATE    
);

/*********************************************
         MYCGV_BOARD 테이블 
*********************************************/
-- 게시판
-- 컬럼리스트 : BID(게시글아이디), BTITLE(제목), BCONTENT(내용), BHITS(조회수), ID(회원아이디), BDATE(등록일자)
-- ** BID는 SEQUENCE를 생성하여 정의
CREATE TABLE MYCGV_BOARD(
  BID       VARCHAR2(30)    CONSTRAINT PK_MYCGV_BOARD_BID   PRIMARY KEY,
  BTITLE  VARCHAR2(100)   NOT NULL,
  BCONTENT  VARCHAR2(200),
  BHITS   NUMBER(4),
  ID       VARCHAR2(30)   NOT NULL,
  BDATE  DATE
);

CREATE SEQUENCE SEQU_MYCGV_BOARD
  START WITH 1
  INCREMENT BY 1;

SELECT * FROM USER_SEQUENCES;
SELECT * FROM USER_TABLES WHERE TABLE_NAME='MYCGV_BOARD';




SELECT * FROM USER_TABLES WHERE TABLE_NAME='MYCGV_MEMBER';
DESC MYCGV_MEMBER;
SELECT * FROM MYCGV_MEMBER;
DELETE  FROM MYCGV_MEMBER WHERE ID LIKE 'tet%';
commit;

SELECT COUNT(*) FROM MYCGV_MEMBER WHERE ID='test';
select count(*) from mycgv_member where id='hong' and pass='123dfdf4';








