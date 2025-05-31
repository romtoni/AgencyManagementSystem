SET DEFINE OFF;
--
--SQL Statement which produced this data:
--  SELECT * FROM DB_AGENCY.APP_MENU
--
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (1, 'Home', 'app/frontend/index.php', 1, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:37:18', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, SORT_NO, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (2, 'User Management', 2, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:43:40', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, PARENT_MENU_ID, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (3, 'Users', 'app/frontend/app_users.php', 1, 2, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:44:24', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, PARENT_MENU_ID, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (4, 'Roles', 'app/frontend/app_roles.php', 2, 2, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:45:01', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, PARENT_MENU_ID, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (5, 'Menus', 'app/frontend/app_menus.php', 3, 2, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:45:35', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, SORT_NO, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (6, 'Access Management', 3, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:47:20', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, PARENT_MENU_ID, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (7, 'Clients', 'app/frontend/app_clients.php', 1, 6, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:47:28', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, PARENT_MENU_ID, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (8, 'API Keys', 'app/frontend/app_api_keys.php', 2, 6, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:48:09', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, PARENT_MENU_ID, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (9, 'App Statistics', 'app/frontend/app_statistics.php', 3, 6, 'N', 'Y', 'A', TO_DATE('11/09/2019 08:48:53', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (10, 'About Us', 'app/frontend/app_about_us.php', 4, 'N', 'Y', 'A', TO_DATE('11/09/2019 09:00:08', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
Insert into DB_AGENCY.APP_MENU
   (MENU_ID, MENU_NAME, LINK, SORT_NO, IS_CRUD, IS_NEW, MENU_STATUS, DATE_CREATE, USER_CREATE)
 Values
   (11, 'Contact Us', 'app/frontend/app_contact_us.php', 5, 'N', 'Y', 'A', TO_DATE('11/09/2019 09:00:47', 'MM/DD/YYYY HH24:MI:SS'), 'DBA');
COMMIT;
