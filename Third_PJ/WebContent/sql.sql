DROP TABLE Member;

CREATE TABLE Member(
    ID VARCHAR2(20), 
    PW             VARCHAR2(20)    NOT NULL, 
    Mileage        NUMBER          NOT NULL, 
    Nickname       VARCHAR2(20)    NOT NULL, 
    Premium        NUMBER          NOT NULL, 
    Country        VARCHAR2(20)    NOT NULL, 
    Share_Agree    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT Member_ID_PK PRIMARY KEY(ID)
);
