CREATE TABLE DB_AGENCY.APP_USER
(
  USER_ID      NUMBER                           NOT NULL,
  USER_NAME    VARCHAR2(20 BYTE)                NOT NULL,
  PASSWORD     VARCHAR2(20 BYTE)                NOT NULL,
  ROLE_ID      NUMBER                           NOT NULL,
  EMAIL        VARCHAR2(100 BYTE)               NOT NULL,
  USER_STATUS  VARCHAR2(1 BYTE),
  DATE_CREATE  DATE,
  USER_CREATE  VARCHAR2(20 BYTE),
  DATE_MODIFY  DATE,
  USER_MODIFY  VARCHAR2(20 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;