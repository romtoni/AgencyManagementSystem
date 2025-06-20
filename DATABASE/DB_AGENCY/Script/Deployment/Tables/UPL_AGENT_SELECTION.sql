CREATE TABLE DB_AGENCY.UPL_AGENT_SELECTION
(
   EXCEL_AGENT_ID          NUMBER,
   DATE_CREATE             DATE DEFAULT SYSDATE ,
   USER_CREATE             VARCHAR2 (50 BYTE) DEFAULT 'DBA' ,
   DATE_MODIFY             DATE,
   USER_MODIFY             VARCHAR2 (20 BYTE),
   EXCEL_AGENT_FILE        VARCHAR2 (255 BYTE) DEFAULT NULL ,
   EXCEL_AGENT_FILE_BLOB   BLOB
)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;