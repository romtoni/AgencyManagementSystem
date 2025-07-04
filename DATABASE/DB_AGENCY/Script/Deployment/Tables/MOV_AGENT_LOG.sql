CREATE TABLE DB_AGENCY.MOV_AGENT_LOG
(
   MOVEMENT_LOG_ID      NUMBER,
   MOVEMENT_AGENT_ID    NUMBER,
   MOVEMENT_STATUS      NUMBER,
   MOVEMENT_FLAG        VARCHAR2 (3 BYTE),
   MOVEMENT_USER_VER    VARCHAR2 (20 BYTE),
   MOVEMENT_DATE_VER    VARCHAR2 (20 BYTE)
)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;