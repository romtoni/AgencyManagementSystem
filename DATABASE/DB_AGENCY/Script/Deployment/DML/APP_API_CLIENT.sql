SET DEFINE OFF;
--
--SQL Statement which produced this data:
--  SELECT * FROM DB_AGENCY.APP_API_CLIENT
--
Insert into DB_AGENCY.APP_API_CLIENT
   (CLIENT_ID, CLIENT_NAME, CLIENT_BUSINESS_TYPE, ACCESS_TYPE_ID, IS_ACTIVE, DATE_CREATE, USER_CREATE)
 Values
   (1, 'FUNATIVE', 'ENTERTAINMENT', 1, 'Y', TO_DATE('11/09/2019 09:44:43', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
COMMIT;
