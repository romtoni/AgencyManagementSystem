CREATE OR REPLACE PROCEDURE DB_AGENCY.SP_APP_DEL_USER (
   P_ROLE_ID      NUMBER,
   P_USERLOGIN    VARCHAR2,
   P_REASON       VARCHAR2
)
IS
BEGIN
   INSERT INTO APP_USER_DEL
      SELECT   A.*,
               SYSDATE AS DATE_DELETE,
               P_USERLOGIN AS USER_DELETE,
               P_REASON AS REASON_DELETE
        FROM   APP_USER A
       WHERE   A.ROLE_ID = P_ROLE_ID;

   DELETE FROM   APP_USER
         WHERE   ROLE_ID = P_ROLE_ID;

   COMMIT;
END;
/


