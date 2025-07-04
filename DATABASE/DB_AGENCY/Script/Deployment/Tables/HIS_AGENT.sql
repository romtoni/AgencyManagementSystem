CREATE TABLE DB_AGENCY.HIS_AGENT
(
   HIS_AGENT_ID         NUMBER,
   AGENT_ID             NUMBER,
   SELECTION_AGENT_ID   NUMBER,
   DATE_CREATE          DATE DEFAULT SYSDATE ,
   USER_CREATE          VARCHAR2 (50 BYTE) DEFAULT 'DBA' ,
   DATE_MODIFY          DATE,
   USER_MODIFY          VARCHAR2 (20 BYTE),
   AGENT_NO             VARCHAR2 (10 BYTE),
   AGENT_STATUS         VARCHAR2 (1 BYTE),
   FIRST_NAME           VARCHAR2 (100 BYTE),
   MIDDLE_NAME          VARCHAR2 (100 BYTE),
   LAST_NAME            VARCHAR2 (100 BYTE),
   FRONT_TITLE          VARCHAR2 (100 BYTE),
   REAR_TITLE           VARCHAR2 (100 BYTE),
   PLACE_OF_BIRTH       VARCHAR2 (255 BYTE),
   DATE_OF_BIRTH        DATE,
   PHOTO                VARCHAR2 (255 BYTE) DEFAULT NULL ,
   PHOTO_BLOB           BLOB,
   GENDER_CODE          VARCHAR2 (1 BYTE),
   RELIGION_CODE        VARCHAR2 (3 BYTE),
   REGISTRATION_DATE    DATE,
   FLAG_INPUT           VARCHAR2 (10 BYTE),
   EXCEL_AGENT_ID       NUMBER,
   REFERENCE_AGENT_ID   NUMBER
)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;