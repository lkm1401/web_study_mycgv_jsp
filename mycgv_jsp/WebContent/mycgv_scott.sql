/*********************************************
         MYCGV_MEMBMER ���̺� 
*********************************************/
-- ȸ������, �α���, ������(ȸ��������)
-- �÷�����Ʈ : ID, PASS, NAME, GENDER, EMAIL, ADDR, TEL, PNUMBER, HOBBYLIST, INTRO,MDATE;
-- ****  UI�� NAME = VO �ʵ�� = ���̺� �÷���
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
SELECT * FROM USER_TABLES WHERE TABLE_NAME='MYCGV_MEMBER';
DESC MYCGV_MEMBER;
SELECT * FROM MYCGV_MEMBER;
DELETE  FROM MYCGV_MEMBER WHERE ID LIKE 'tet%';
commit;