/* Formatted on 24/02/2023 11:17:38 (QP5 v5.114.809.3010) */
CREATE OR REPLACE FORCE VIEW DB_AGENCY.V_APP_MENU
(
   MENU_ID,
   MENU_NAME,
   LINK,
   SORT_NO,
   PARENT_MENU_ID,
   IS_CRUD,
   IS_NEW,
   NAMA_FILE
)
AS
   SELECT   MENU_ID,
            MENU_NAME,
            LINK,
            SORT_NO,
            PARENT_MENU_ID,
            IS_CRUD,
            IS_NEW,
            F_APP_LAST_TOKEN (LINK) AS NAMA_FILE
     FROM   APP_MENU;


