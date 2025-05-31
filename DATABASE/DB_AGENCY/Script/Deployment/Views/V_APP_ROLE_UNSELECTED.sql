/* Formatted on 24/02/2023 11:17:43 (QP5 v5.114.809.3010) */
CREATE OR REPLACE FORCE VIEW DB_AGENCY.V_APP_ROLE_UNSELECTED
(
   ROLE_ID,
   ROLE_NAME
)
AS
   SELECT   ROLE_ID, ROLE_NAME
     FROM   APP_ROLE
    WHERE   ROLE_NAME NOT IN (  SELECT   B.ROLE_NAME
                                  FROM   APP_USER A, APP_ROLE B
                                 WHERE   B.ROLE_ID = A.ROLE_ID
                              GROUP BY   B.ROLE_NAME);


