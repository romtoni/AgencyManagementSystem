CREATE OR REPLACE PROCEDURE DB_AGENCY.SP_APP_UNLOCK_USER (P_USER_NAME       VARCHAR2,
                                                P_USERLOGIN       VARCHAR2,
                                                P_USERLOGIN_IP    VARCHAR2)
IS
   V_USER_ID                      NUMBER;
   V_USER_KICKER_ID               NUMBER;
   V_INVALID_UNLOCK_USER          VARCHAR2 (50 BYTE);
   V_INVALID_UNLOCK_USER_KICKER   VARCHAR2 (50 BYTE);
   V_INVALID_UNLOCK_DESCRIPTION   VARCHAR2 (120 BYTE);
BEGIN
   --INITIALIZE VARIABLE
   V_INVALID_UNLOCK_USER := NULL;
   V_INVALID_UNLOCK_USER_KICKER := NULL;

   --CHECK IF USERNAME IS REGISTERED OR NOT
   BEGIN
      SELECT   USER_ID
        INTO   V_USER_ID
        FROM   APP_USER
       WHERE   USER_NAME = P_USER_NAME;
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         V_USER_ID := NULL;
         V_INVALID_UNLOCK_USER := 'USER IS NOT REGISTERED';
   END;

   --CHECK IF USERNAME KICKER IS REGISTERED OR NOT
   BEGIN
      SELECT   USER_ID
        INTO   V_USER_KICKER_ID
        FROM   APP_USER
       WHERE   USER_NAME = P_USERLOGIN;
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         V_USER_KICKER_ID := NULL;
         V_INVALID_UNLOCK_USER_KICKER := 'USER KICKER IS NOT REGISTERED';
   END;

   --IF BOTH USERS ARE REGISTERED THEN PROCESS UNLOCK
   --IF NOT, PUT ERROR MESSAGE IN THE DESIRED TABLE
   IF V_USER_ID IS NOT NULL AND V_USER_KICKER_ID IS NOT NULL
   THEN
      DELETE FROM   APP_USER_SESSION
            WHERE   USER_ID = V_USER_ID;

      UPDATE   APP_USER_LOG
         SET   IS_LOGIN = 'N',
               IS_LOGOUT = 'Y',
               LAST_LOGOUT = SYSDATE,
               DATE_KICKER = SYSDATE,
               USER_ID_KICKER = V_USER_KICKER_ID,
               IP_ADDRESS_KICKER = P_USERLOGIN_IP
       WHERE   USER_ID = V_USER_ID AND IS_LOGIN = 'Y' AND IS_LOGOUT IS NULL;
   ELSE
      V_INVALID_UNLOCK_DESCRIPTION :=
         V_INVALID_UNLOCK_USER || ' AND/OR ' || V_INVALID_UNLOCK_USER_KICKER;

      INSERT INTO APP_USER_INVALID_UNLOCK (INVALID_UNLOCK_DESCRIPTION)
        VALUES   (V_INVALID_UNLOCK_DESCRIPTION);
   END IF;

   COMMIT;
END;
/


