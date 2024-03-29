CREATE USER HOME_CREDIT
  IDENTIFIED BY password
  PROFILE DEFAULT
  ACCOUNT UNLOCK;
  
ALTER USER HOME_CREDIT DEFAULT ROLE ALL;

create tablespace homecredit
  logging
  datafile 'homecredit.dat' 
  size 32m 
  autoextend on 
  next 32m maxsize 2048m
  extent management local;

BEGIN
SYS.DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SYSTEM_PRIVILEGE
  (GRANTEE_NAME   => 'HOME_CREDIT', 
   PRIVILEGE_NAME => 'ADMINISTER_RESOURCE_MANAGER',
   ADMIN_OPTION   => FALSE);
END;
/

GRANT ALTER ANY PROCEDURE TO HOME_CREDIT;
GRANT ANALYZE ANY TO HOME_CREDIT;
GRANT CREATE ANY PROCEDURE TO HOME_CREDIT;
GRANT CREATE SESSION TO HOME_CREDIT;
GRANT CREATE TABLE TO HOME_CREDIT;
GRANT CREATE VIEW TO HOME_CREDIT;
GRANT EXECUTE ANY PROCEDURE TO HOME_CREDIT;
GRANT UNLIMITED TABLESPACE TO HOME_CREDIT;
ALTER USER HOME_CREDIT QUOTA UNLIMITED ON homecredit;