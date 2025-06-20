CREATE TABLE DB_AGENCY.REF_COMPANY
(
   COMPANY_ID                NUMBER,
   DATE_CREATE               DATE DEFAULT SYSDATE ,
   USER_CREATE               VARCHAR2 (50 BYTE) DEFAULT 'DBA' ,
   DATE_MODIFY               DATE,
   USER_MODIFY               VARCHAR2 (20 BYTE),
   COMPANY_CODE              VARCHAR2 (3 BYTE),
   COMPANY_NAME              VARCHAR2 (20 BYTE),
   COMPANY_LEVEL             NUMBER,
   COMPANY_ADDRESS           VARCHAR2 (4000 BYTE),
   COMPANY_POSTAL_CODE       VARCHAR2 (10 BYTE),
   COMPANY_MOBILE_NO         VARCHAR2 (15 BYTE),
   COMPANY_PHONE_NO          VARCHAR2 (15 BYTE),
   COMPANY_EMAIL             VARCHAR2 (255 BYTE),
   COMPANY_LOGO_PHOTO        VARCHAR2 (255 BYTE),
   COMPANY_LOGO_PHOTO_BLOB   BLOB,
   PROVINCE_ID               NUMBER,
   CITY_ID                   NUMBER,
   STATE_ID                  NUMBER
)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;