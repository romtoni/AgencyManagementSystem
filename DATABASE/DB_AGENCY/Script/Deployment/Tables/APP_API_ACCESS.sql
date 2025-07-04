CREATE TABLE DB_AGENCY.APP_API_ACCESS
(
  ACCESS_ID       NUMBER,
  ACCESS_TYPE_ID  NUMBER,
  CLIENT_ID       NUMBER,
  TOKEN           VARCHAR2(255 BYTE),
  IS_ACTIVE       VARCHAR2(1 BYTE),
  DATE_CREATE     DATE                          DEFAULT SYSDATE,
  USER_CREATE     VARCHAR2(20 BYTE)             DEFAULT 'DBA',
  DATE_MODIFY     DATE,
  USER_MODIFY     VARCHAR2(20 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;