CREATE TABLE DB_AGENCY.LOG_AGENT_PROCESS
(
   LOG_PROCESS_ID         NUMBER,
   LOG_PROCESS_DATE       DATE,
   LOG_PROCESS_USER       VARCHAR2 (20 BYTE),
   LOG_PROCESS_CODE       VARCHAR2 (10 BYTE),
   LOG_PROCESS_FROM       VARCHAR2 (3 BYTE),
   LOG_PROCESS_NAV_MENU   VARCHAR2 (4000 BYTE),
   LOG_PROCESS_NAV_LINK   VARCHAR2 (4000 BYTE),
   LOG_PROCESS_NAV_USER   VARCHAR2 (4000 BYTE),
   LOG_PROCESS_NAV_SP     VARCHAR2 (4000 BYTE),
   AGENT_NO               VARCHAR2 (10 BYTE)
)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;