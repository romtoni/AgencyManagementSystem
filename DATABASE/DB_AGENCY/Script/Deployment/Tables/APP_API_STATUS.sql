CREATE TABLE DB_AGENCY.APP_API_STATUS
(
  API_STATUS_ID           NUMBER,
  API_STATUS_CODE         VARCHAR2(3 BYTE),
  API_STATUS_DESCRIPTION  VARCHAR2(50 BYTE),
  DATE_CREATE             DATE                  DEFAULT SYSDATE,
  USER_CREATE             VARCHAR2(20 BYTE)     DEFAULT 'DBA'
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;