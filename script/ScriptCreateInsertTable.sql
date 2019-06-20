=============================================================================================================================================
														CREATE AND INSERT TABLE USER
=============================================================================================================================================

CREATE TABLE "HOME_CREDIT"."USER" (
"ID" VARCHAR2(40 CHAR) NOT NULL, 
"USER_ID" VARCHAR2(40 CHAR), 
"USER_NAME" VARCHAR2(40 CHAR),
"CREATED_BY" VARCHAR2(40 CHAR), 
"CREATED_DT" DATE, 
"UPDATED_BY" VARCHAR2(40 CHAR), 
"UPDATED_DT" DATE,
CONSTRAINT "USER_PK" PRIMARY KEY ("ID")
);

Insert into "HOME_CREDIT"."USER"
(ID, USER_ID, USER_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'UserA', 'UserA', 'SYSTEM', sysdate, null, null);
Insert into "HOME_CREDIT"."USER"
(ID, USER_ID, USER_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'UserB', 'UserB', 'SYSTEM', sysdate, null, null);
Insert into "HOME_CREDIT"."USER"
(ID, USER_ID, USER_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'UserC', 'UserC', 'SYSTEM', sysdate, null, null);

=============================================================================================================================================
																	END
=============================================================================================================================================

=============================================================================================================================================
														CREATE AND INSERT TABLE MODULE
=============================================================================================================================================

CREATE TABLE "HOME_CREDIT"."MODULE" (
"ID" VARCHAR2(40 CHAR) NOT NULL, 
"MODULE_NAME" VARCHAR2(40 CHAR),
"CREATED_BY" VARCHAR2(40 CHAR), 
"CREATED_DT" DATE, 
"UPDATED_BY" VARCHAR2(40 CHAR), 
"UPDATED_DT" DATE,
CONSTRAINT "MODULE_PK" PRIMARY KEY ("ID")
);

Insert into "HOME_CREDIT"."MODULE"
(ID, MODULE_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'PromoCard', 'SYSTEM', sysdate, null, null);
Insert into "HOME_CREDIT"."MODULE"
(ID, MODULE_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'CategoryCard', 'SYSTEM', sysdate, null, null);
Insert into "HOME_CREDIT"."MODULE"
(ID, MODULE_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'FlashSaleCard', 'SYSTEM', sysdate, null, null);
Insert into "HOME_CREDIT"."MODULE"
(ID, MODULE_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values 
(SYS_GUID(), 'HistoryCard', 'SYSTEM', sysdate, null, null);
Insert into "HOME_CREDIT"."MODULE"
(ID, MODULE_NAME, CREATED_BY, CREATED_DT, UPDATED_BY, UPDATED_DT) values  
(SYS_GUID(), 'NewsCard', 'SYSTEM', sysdate, null, null);

=============================================================================================================================================
																	END
=============================================================================================================================================

=============================================================================================================================================
														CREATE AND INSERT TABLE USER_MODULE
=============================================================================================================================================

CREATE TABLE "HOME_CREDIT"."USER_MODULE" (
"ID" VARCHAR2(40 CHAR) NOT NULL,
"USERCD" VARCHAR2(40 CHAR), 
"MODULE" VARCHAR2(40 CHAR),
"SEQ" NUMBER(2),
"CREATED_BY" VARCHAR2(40 CHAR), 
"CREATED_DT" DATE, 
"UPDATED_BY" VARCHAR2(40 CHAR), 
"UPDATED_DT" DATE, 
FOREIGN KEY ("USERCD")
REFERENCES "HOME_CREDIT"."USERCD" ("ID") ENABLE, 
FOREIGN KEY ("MODULE")
REFERENCES "HOME_CREDIT"."MODULE" ("ID") ENABLE
);

=============================================================================================================================================
																	END
=============================================================================================================================================