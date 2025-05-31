SET DEFINE OFF;
--
--SQL Statement which produced this data:
--  SELECT * FROM DB_AGENCY.APP_PROFILE
--
Insert into DB_AGENCY.APP_PROFILE
   (ID_PROFILE, FIRST_NAME, PHOTO, EMAIL, DATE_CREATE, USER_CREATE)
 Values
   (1, 'ROMTONI', 'img/about/default.png', 'romtoni21@gmail.com', TO_DATE('11/09/2019 09:22:00', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
COMMIT;
