/* Formatted on 24/02/2023 11:17:42 (QP5 v5.114.809.3010) */
CREATE OR REPLACE FORCE VIEW DB_AGENCY.V_APP_MENU_SELECTED
(
   MENU_ID,
   MENU_NAME,
   LINK,
   IS_SELECT
)
AS
     SELECT   A.MENU_ID,
              B.MENU_NAME,
              B.LINK,
              A.IS_SELECT
       FROM   APP_ROLE_MENU A, APP_MENU B
      WHERE       A.MENU_ID = B.MENU_ID
              AND A.IS_SELECT = ('Y')
              AND A.ROLE_ID IN (  SELECT   ROLE_ID FROM APP_ROLE)
   GROUP BY   A.MENU_ID,
              B.MENU_NAME,
              B.LINK,
              A.IS_SELECT
   ORDER BY   A.MENU_ID;


