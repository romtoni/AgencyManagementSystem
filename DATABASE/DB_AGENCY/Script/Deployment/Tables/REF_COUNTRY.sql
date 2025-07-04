CREATE TABLE DB_AGENCY.REF_COUNTRY
(
   COUNTRY_ID                NUMBER,
   DATE_CREATE               DATE DEFAULT SYSDATE ,
   USER_CREATE               VARCHAR2 (50 BYTE) DEFAULT 'DBA' ,
   DATE_MODIFY               DATE,
   USER_MODIFY               VARCHAR2 (20 BYTE),
   COUNTRY_NAME              VARCHAR2 (255 BYTE),
   COUNTRY_NAME_OFFICIAL     VARCHAR2 (255 BYTE),
   COUNTRY_FLAG_PHOTO        VARCHAR2 (255 BYTE),
   COUNTRY_FLAG_PHOTO_BLOB   BLOB,
   COUNTRY_LONGITUDE         NUMBER,
   COUNTRY_LATITUDE          NUMBER,
   COUNTRY_DIAL_CODE         VARCHAR2 (3 BYTE),
   COUNTRY_ABBREVIATIONS     VARCHAR2 (3 BYTE),
   COUNTRY_CAPITAL           VARCHAR2 (255 BYTE),
   COUNTRY_TIMEZONE_TOTAL    NUMBER
)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;