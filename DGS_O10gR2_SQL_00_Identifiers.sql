--------------------------------
-- DGS_O10gR2_SQL_00_Identifiers
--------------------------------
---------------------------------------------------------------------------------------------------
CREATE TABLE emp
( eno     NUMBER
, ename   VARCHAR(5)
, dob     DATE
, sal     NUMBER(5)
, com     NUMBER
);

Table created.

CREATE TABLE emp
( eno     NUMBER
, ename   VARCHAR(5)
);
CREATE TABLE emp
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object
---------------------------------------------------------------------------------------------------
SQL>  CREATE TABLE A12345678901234567890123456789
  2   ( eno     NUMBER
  3   , ename   VARCHAR(5)
  4   , sal     NUMBER(5)
  5   );

Table created.

SQL>  CREATE TABLE A123456789012345678901234567890
  2   ( eno     NUMBER
  3   , ename   VARCHAR(5)
  4   , sal     NUMBER(5)
  5   );
CREATE TABLE A123456789012345678901234567890
             *
ERROR at line 1:
ORA-00972: identifier is too long

SQL> CREATE TABLE WSFASDFASHJASDJKFHJKSHDFJKHASDKJ
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );
CREATE TABLE WSFASDFASHJASDJKFHJKSHDFJKHASDKJ
             *
ERROR at line 1:
ORA-00972: identifier is too long

CREATE TABLE emp details
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE emp details
                 *
ERROR at line 1:
ORA-00922: missing or invalid option

CREATE TABLE 2emp
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE 2emp
             *
ERROR at line 1:
ORA-00903: invalid table name

CREATE TABLE $emp
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE $emp
             *
ERROR at line 1:
ORA-00911: invalid character

CREATE TABLE #emp
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE #emp
             *
ERROR at line 1:
ORA-00911: invalid character

CREATE TABLE _emp
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE _emp
             *
ERROR at line 1:
ORA-00911: invalid character

CREATE TABLE EMP9
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);

Table created.

CREATE TABLE COLUMN
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE COLUMN
             *
ERROR at line 1:
ORA-00903: invalid table name

CREATE TABLE SELECT
( eno     NUMBER
, ename   VARCHAR(5)
, sal     NUMBER(5)
);
CREATE TABLE SELECT
             *
ERROR at line 1:
ORA-00903: invalid table name
---------------------------------------------------------------------------------------------------
SQL>  CREATE TABLE "B12345678901234567890123456789"
     ( eno     NUMBER
     , ename   VARCHAR(5)
     , sal     NUMBER(5)
   );

Table created.

SQL>  CREATE TABLE B12345678901234567890123456789
  2   ( eno     NUMBER
  3   , ename   VARCHAR(5)
  4   , sal     NUMBER(5)
  5   );
CREATE TABLE B12345678901234567890123456789
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object

SQL>  CREATE TABLE A12345678901234567890123456789
  2   ( eno     NUMBER
  3   , ename   VARCHAR(5)
  4   , sal     NUMBER(5)
  5   );

Table created.

SQL> CREATE TABLE "A12345678901234567890123456789"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );
CREATE TABLE "A12345678901234567890123456789"
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object

SQL>  CREATE TABLE "B123456789012345678901234567890"
  2   ( eno     NUMBER
  3   , ename   VARCHAR(5)
  4   , sal     NUMBER(5)
  5   );
CREATE TABLE "B123456789012345678901234567890"
             *
ERROR at line 1:
ORA-00972: identifier is too long

SQL>  CREATE TABLE "emp details"
  2   ( eno     NUMBER
  3   , ename   VARCHAR(5)
  4   , sal     NUMBER(5)
  5   );

Table created.

SQL> CREATE TABLE "2emp"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "$emp"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "#emp"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "_emp"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE " dd"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "dd*()"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "table"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "select"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "column"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> CREATE TABLE "COLUMN"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  );

Table created.

SQL> CREATE TABLE "COLUMN"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  );
CREATE TABLE "COLUMN"
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object

SQL> desc column
ERROR:
ORA-00931: missing identifier


SQL> desc COLUMN
ERROR:
ORA-00931: missing identifier


SQL> desc "column"
 Name      Null?    Type
 --------- -------- -----------
 ENO                NUMBER
 ENAME              VARCHAR2(5)
 SAL                NUMBER(5)

SQL> desc "COLUMN"
 Name     Null?    Type
 -------- -------- -----------
 ENO               NUMBER
 ENAME             VARCHAR2(5)

 
SQL> SELECT * FROM column;
SELECT * FROM column
              *
ERROR at line 1:
ORA-00903: invalid table name


SQL> SELECT * FROM COLUMN;
SELECT * FROM COLUMN
              *
ERROR at line 1:
ORA-00903: invalid table name

SQL> SELECT * FROM "column";

no rows selected

SQL> SELECT * FROM "COLUMN";

no rows selected

SQL> CREATE TABLE "emp123"
  2  ( eno     NUMBER
  3  , ename   VARCHAR(5)
  4  , sal     NUMBER(5)
  5  );

Table created.

SQL> desc emp123
ERROR:
ORA-04043: object emp123 does not exist


SQL> desc "emp123"
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                                NUMBER
 ENAME                                              VARCHAR2(5)
 SAL                                                NUMBER(5)

SQL> desc "EMP123";
ERROR:
ORA-04043: object "EMP123" does not exist


SQL> INSERT INTO "emp123" VALUES(1, 'A', 100);

1 row created.

SQL> INSERT INTO "emp123" VALUES(2, 'B', 200);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM "emp13";
SELECT * FROM "emp13"
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT * FROM "emp123";

       ENO ENAME        SAL
---------- ----- ----------
         1 A            100
         2 B            200

2 rows selected.

SQL> SELECT * FROM "EMP123";
SELECT * FROM "EMP123"
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT * FROM emp123;
SELECT * FROM emp123
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> DELETE FROM emp123;
DELETE FROM emp123
            *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> DELETE FROM "EMP123";
DELETE FROM "EMP123"
            *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> DELETE FROM "emp123";

2 rows deleted.

SQL> DESC "emp123";
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------
 ENO                                                NUMBER
 ENAME                                              VARCHAR2(5)
 SAL                                                NUMBER(5)

SQL> ROLLBCK;

Rollback complete.


SQL> SELECT * FROM "emp123";

       ENO ENAME        SAL
---------- ----- ----------
         1 A            100
         2 B            200

2 rows selected.
-
SQL> DROP TABLE EMP;
--------------------------------------------------------------------------------------------------
