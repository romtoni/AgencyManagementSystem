CREATE TABLE DB_AGENCY.APP_STATISTIC_HIT
(
  HIT_ID      NUMBER,
  DATE_HIT    DATE,
  IP_ADDRESS  VARCHAR2(15 BYTE),
  COUNTRY     VARCHAR2(100 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;