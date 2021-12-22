--PL/SQL EL ARRAM MOULOUD



 ------PL/SQL 
 --LANGAGE DE PROGRAMMATION ORACLE.

 --PROCEDURAL LANGUAGE SQL
 

 --SECION DECLARATION 
 DECLARE
 --SECTION CORPS DU BLOC 
 BEGIN 
 END;
--SECTION TRAITEMENT DES ERREURS
EXCEPTION;


DECLARE
--
BEGIN--
EXCEPTION
--
END;

--SCRIPT;
SET SERVEROUTPUT ON
DECLARE 
X VARCHAR(10);
I INT;
BEGIN
X:='BOUNJOOUR';
DBMS_OUTPUT.PUT_LINE(X);
END;
/

--VARIABLE SCALAIRE
--SQL,PL/SQL
--VARIABLE COMPOSER.
--TABLE,ENREGESTEMENTS

SET SERVEROUTPUT ON
DECLARE
VAR_NOM VARCHAR(20);
VAR_DATE DATE;
VAR_AGE NUMBER;
BEGIN
VAR_NOM := 'SALAMI';
VAR_AGE := 23;
VAR_DATE := '01/JUN/2020';
DBMS_OUTPUT.PUT_LINE('LE NOM : '||VAR_NOM);
DBMS_OUTPUT.PUT_LINE('LA DATE : '||VAR_DATE);
DBMS_OUTPUT.PUT_LINE('L''AGE : '||VAR_AGE);
END;

--DECLARATION POUR DES ENREGISTREMENTS
SET SERVEROUTPUT ON
DECLARE 
TYPE REVENU IS RECORD(
NOM PILOTE.NOM%TYPE,
SALAIRE NUMBER(9,2));
REV_PILOTE REVENU;
BEGIN
rev_pilote.NOM:='MOULOUD';
rev_pilote.SALAIRE := 1245;
DBMS_OUTPUT.PUT_LINE(REV_PILOTE.NOM||' '||REV_PILOTE.SALAIRE);
END;

SET SERVEROUTPUT ON;
ACCEPT NOM_ENTRE PROMPT 'ENTREZ LE NOM DE PILOTE';
DECLARE 
TYPE REVENU IS RECORD (
NOM PILOTE.NOM%TYPE:='&NOM_ENTRE',
SALAIRE NUMBER(9,2):=8000.00);
REV_PILOTE REVENU;
BEGIN
DBMS_OUTPUT.PUT_LINE('LE NOM DU PILOTE EST '||REV_PILOTE.NOM||' LE SALAIRE EST : '||rev_pilote.SALAIRE);
END;

--LES TABLES.
SET SERVEROUTPUT ON;
TYPE TABNOM IS TABLE OF VARCHAR2(20)
INDEX BY BINARY_INTEGER
-----------------------------------------------------------
set seRVEROUTPUT ON
DECLARE
TYPE T_EMPREC IS RECORD(
R_NOM PILOTE.NOM%TYPE,
R_SAL PILOTE.SAL%TYPE);
EMPREC T_EMPREC;
BEGIN 
SELECT NOM,SAL INTO EMPREC.R_NOM,EMPREC.R_SAL FROM PILOTE WHERE NOPILOT = '1333';
DBMS_OUTPUT.PUT_LINE(EMPREC.R_NOM||' '||EMPREC.R_SAL);
END;


set seRVEROUTPUT ON
DECLARE
TYPE T_EMPREC IS RECORD(
R_NOM PILOTE.NOM%TYPE,
R_SAL PILOTE.SAL%TYPE);
EMPREC T_EMPREC;
BEGIN 
SELECT NOM,SAL INTO EMPREC FROM PILOTE WHERE NOPILOT = '1333';
DBMS_OUTPUT.PUT_LINE(EMPREC.R_NOM||' '||EMPREC.R_SAL);
END;

set seRVEROUTPUT ON
DECLARE
X VARCHAR(5);
BEGIN 
X:='M1';
IF X = 'M' THEN DBMS_OUTPUT.PUT_LINE(X);
ELSE DBMS_OUTPUT.PUT_LINE('J');
END IF;
END;

set seRVEROUTPUT ON
DECLARE
X VARCHAR(5);
BEGIN 
X:='M';
IF X = 'M' THEN 
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(X);
    END LOOP; 
ELSE DBMS_OUTPUT.PUT_LINE('J');
END IF;
END;


SET SERVEROUTPUT ON
DECLARE 
VAR_NUMBER NUMBER:=90;
BEGIN 
IF (VAR_NUMBER >10) THEN
DBMS_OUTPUT.PUT_LINE('>10');
ELSIF (VAR_NUMBER <10) THEN
DBMS_OUTPUT.PUT_LINE('<10');
ELSE
DBMS_OUTPUT.PUT_LINE('=10');
END IF;
END;

ACCEPT VAR_P PROMPT 'ENTEZ UN MONBRE';
SET SERVEROUTPUT ON
DECLARE 
VAR_NUMBER NUMBER:='&VAR_P';
BEGIN 
IF (VAR_NUMBER >10) THEN
DBMS_OUTPUT.PUT_LINE('>10');
ELSIF (VAR_NUMBER <10) THEN
DBMS_OUTPUT.PUT_LINE('<10');
ELSE
DBMS_OUTPUT.PUT_LINE('=10');
END IF;
END;


LOOP INST; END LOOP;

LOOP INST;
EXIT WHEN COND;

END LOOP;


set seRVEROUTPUT on;
DECLARE
    i number := 0;
    BEGIN
    LOOP
    DBMS_OUTPUT.put_line(i);
    i:=i+1;
    exit when (i>5);
    end loop;
    end;


set seRVEROUTPUT on;
DECLARE
    i number := 0;
BEGIN
for i in 1..5
loop dbms_output.put_line(i);end loop;
end;


set seRVEROUTPUT on;
DECLARE
    i number := 0;
BEGIN
while(i<5)
loop dbms_output.put_line(i);
i:=i+2;
end loop;
end;


set seRVEROUTPUT on;
DECLARE
    nom varchar(30);
    salaire pilotr.sal%TYPE := 1000;
    i number :=0;
BEGIN
update pilote 
set pilote.sal := llsal + salaire where ;
-----??????////
delete ----????????
end;

--cURSEUR TABLE TEMPORIRE

SET SERVEROUTPUT ON

DECLARE 
    CURSOR C_EMP
    IS 
        SELECT first_name, SALARY,  from employees where department_id = 90;
        v_name employees.first_name% Type;
        SALAIRE employees.SALARY% Type;
BEGIN
    Open C_EMP;
    LOOP
        FETCH C_EMP INTO v_name , SALAIRE;
        DBMS_OUTPUT.PUT_LINE('NOM: '||v_name || ' sal: '||SALAIRE);
        EXIT WHEN C_EMP%NOTFOUND;
    END LOOP;
    CLOSE C_EMP;
END;


SET SERVEROUTPUT ON

DECLARE 
    type t_emp IS RECORD (
        v_name employees.first_name% Type,
        SALAIRE employees.SALARY% Type,
        JOB_ID employees.JOB_ID%Type        
    );
    V_EMP t_emp;
    CURSOR C_EMP
    IS 
        SELECT first_name, SALARY, JOB_ID  from employees where department_id = 90;
BEGIN
    Open C_EMP;
    LOOP
        FETCH C_EMP INTO V_EMP;
        DBMS_OUTPUT.PUT_LINE('NOM: '||V_EMP.v_name || ' sal: '||V_EMP.SALAIRE||' JOB : '||V_EMP.JOB_ID);
        EXIT WHEN C_EMP%NOTFOUND;
    END LOOP;
    CLOSE C_EMP;
END;



SET SERVEROUTPUT ON

DECLARE 
    CURSOR C_EMP
    IS 
        SELECT * from employees where department_id = 90;
        v_name c_emp% rowtype; --avec record
BEGIN
    Open C_EMP;
    LOOP
        FETCH C_EMP INTO v_name;
        DBMS_OUTPUT.PUT_LINE('NOM: '||v_name.first_name || ' sal: '||v_name.SALARy||'--'||v_name.hire_DATE);
        EXIT WHEN C_EMP%NOTFOUND;
    END LOOP;
    CLOSE C_EMP;
END;



SET SERVEROUTPUT ON

DECLARE 
    CURSOR C_EMP
    IS 
        SELECT * from employees where department_id = 30;
BEGIN
    for v_name in C_EMP
    LOOP
        DBMS_OUTPUT.PUT_LINE('NOM: '||v_name.first_name || ' sal: '||v_name.SALARy||'--'||v_name.hire_DATE||'--'||v_name.employee_id);
    END LOOP;
END;

SET SERVEROUTPUT ON

DECLARE 
    CURSOR C_EMP
    IS 
        SELECT * from employees where department_id = 30 FOR UPDATE;
BEGIN
    for v_name in C_EMP
    LOOP
        DBMS_OUTPUT.PUT_LINE('NOM: '||v_name.first_name || ' sal: '||v_name.SALARy||'--'||v_name.hire_DATE||'--'||v_name.employee_id);
    END LOOP;
    
END;




SET SERVEROUTPUT ON

DECLARE 
    CURSOR C1
    IS 
        SELECT * from employees FOR UPDATE;
BEGIN
    for r in C1
    LOOP
    update employees set salary = salary + 1000;    
    END LOOP;
    
END;





SET SERVEROUTPUT ON

DECLARE 
    CURSOR C1
    IS 
        SELECT * from employees FOR UPDATE;
BEGIN
    for r in C1
    LOOP
    update employees set salary = salary + 1000
    where CURRENT of C1;    
    END LOOP;
    
END;



--les exceptions :

SET SERVEROUTPUT ON

DECLARE 
    V_1_name employees.last_name%type;
BEGIN
    select last_name into V_1_name from employees
    where first_name = 'Steven';
    dbms_output.put_line(V_1_name);
    
exception 
    when no_data_found then 
    dbms_output.put_line('le nom de emp n''existe pas');
    when too_many_rows then
    dbms_output.put_line('too many');
    
END;



SET SERVEROUTPUT ON

DECLARE 
    V_1_name employees.last_name%type;
BEGIN
    select last_name into V_1_name from employees
    where first_name = '&first_name';
    dbms_output.put_line(V_1_name);
    
exception 
    when no_data_found then 
    dbms_output.put_line('le nom de emp n''existe pas');
    when too_many_rows then
    dbms_output.put_line('too many');
    
END;


SET SERVEROUTPUT ON

DECLARE 
    V_1_name employees.last_name%type;
BEGIN
    select last_name into V_1_name from employees
    where first_name = '&first_name';
    dbms_output.put_line(V_1_name);
    
exception 
    when no_data_found then 
    dbms_output.put_line('le nom de emp n''existe pas');
    when too_many_rows then
    dbms_output.put_line('too many');
    when others then
    dbms_output.put_line('other');
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
END;




SET SERVEROUTPUT ON

DECLARE 
    V_1_name employees.last_name%type;
    ex exception;
    pragma exception_init(ex, 100);
BEGIN
    select last_name into V_1_name from employees
    where first_name = '&first_name';
    dbms_output.put_line(V_1_name);
    
exception 
    
    when ex then
    dbms_output.put_line('data not found');
    
END;




SET SERVEROUTPUT ON

DECLARE 
    V_1_name employees.last_name%type;
    ex exception;
    pragma exception_init(ex, -1422);
BEGIN
    select last_name into V_1_name from employees
    where first_name = '&first_name';
    dbms_output.put_line(V_1_name);
    
exception 
    
    when ex then
    dbms_output.put_line('many rows');
    
END;

SET SERVEROUTPUT ON

DECLARE 
    V_1_name employees.last_name%type;
    ex exception;
    pragma exception_init(ex, -1422);
    ex_data exception;
    pragma exception_init(ex_data, 100);
BEGIN
    select last_name into V_1_name from employees
    where first_name = '&first_name';
    dbms_output.put_line(V_1_name);
    
exception 
    when ex_data then
    dbms_output.put_line('no data found');
    
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
    when ex then
    dbms_output.put_line('many rows');
    
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
    
END;





---exception standard et ex utilisateur

SET SERVEROUTPUT ON

DECLARE 
    v_comm employees.commission_pct%type;
    ex_null exception;
BEGIN
    select commission_pct into v_comm from employees
    where employee_id = '&emp_id';
    if v_comm is not null then
        dbms_output.put_line(v_comm);
    else 
        raise ex_null;
    end if;
    
exception 
    when ex_null then
    dbms_output.put_line('l''employe n''a pas de commission');
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
    
END;




SET SERVEROUTPUT ON

DECLARE 
    v_comm employees.commission_pct%type;
    ex_null exception;
BEGIN
    select commission_pct into v_comm from employees
    where employee_id = '&emp_id';
    if v_comm is not null then
        dbms_output.put_line(v_comm);
    else 
       raise ex_null;
    end if;
    
exception 
      when ex_null then
    dbms_output.put_line('l''employe n''a pas de commission');
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
    
END;





SET SERVEROUTPUT ON

DECLARE 
    v_comm employees.commission_pct%type;
--    ex_null exception;
BEGIN
    select commission_pct into v_comm from employees
    where employee_id = '&emp_id';
    if v_comm is not null then
        dbms_output.put_line(v_comm);
--    else 
--       raise ex_null;
    end if;
    
--exception 
--      when ex_null then
--   dbms_output.put_line('l''employe n''a pas de commission');
--    dbms_output.put_line(sqlcode);
--    dbms_output.put_line(sqlerrm);
    
    
END;




SET SERVEROUTPUT ON

DECLARE 
    v_comm employees.commission_pct%type;
--    ex_null exception;
BEGIN
    select commission_pct into v_comm from employees
    where employee_id = '&emp_id';
    if v_comm is not null then
        dbms_output.put_line(v_comm);
    else 
       raise ex_null;
    end if;
/*   
exception 
      when ex_null then
    dbms_output.put_line('l''employe n''a pas de commission');
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);*/
    
    
END;







SET SERVEROUTPUT ON

DECLARE 
    v_comm employees.commission_pct%type;
BEGIN
    select commission_pct into v_comm from employees
    where employee_id = '&emp_id';
    if v_comm is not null then
        dbms_output.put_line(v_comm);
    else 
       RAISE_APPLICATION_ERROR(-20000, 'l''employe n''a pas de commission.');
    end if;
    
exception 
      when others then
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
    
END;



---les procedure:
CREATE OR REPLACE PROCEDURE modifier_nom(emp_id IN employees.employee_id%Type)
IS 
BEGIN 
    UPDATE employees set first_name= 'jad' where employee_id = emp_id;
END modifier_nom;


--main
declare
entier integer := 141;
BEGIN
modifier_nom(entier);
END;


--
CREATE OR REPLACE PROCEDURE Aff_comm(emp_id IN employees.employee_id%Type, comm OUT employees.Commission_pct%Type )
IS 
BEGIN 
    select Commission_pct into comm from employees where employee_id = emp_id;
END Aff_comm;


declare
entier integer := 145;
out  employees.Commission_pct%Type;
BEGIN
Aff_comm(entier , out);
dbms_output.put_line(out);
END;


CREATE OR REPLACE PROCEDURE Aff_comm(emp_id IN employees.employee_id%Type, comm OUT employees.Commission_pct%Type )
IS 
BEGIN 
    select Commission_pct into comm from employees where employee_id = emp_id;
END Aff_comm;

--comm
variable x number;
execute Aff_comm(145,:x);
print x;




CREATE OR REPLACE PROCEDURE Aff_comm(x in OUT varchar2)
IS 
BEGIN 
    x:='('||Substr(x,1,3)||')'||substr(x,4,3)||'-'||substr(x,7,4);
END Aff_comm;



declare
out varchar(15) := '1234567891';
BEGIN
Aff_comm(out);
dbms_output.put_line(out);
END;








CREATE OR REPLACE PROCEDURE Aff_comm(emp_id IN employees.employee_id%Type, v_comm OUT employees.Commission_pct%Type )
IS 
ex_null exception;
BEGIN
    select commission_pct into v_comm from employees
    where employee_id = emp_id;
    if v_comm is not null then
        dbms_output.put_line(v_comm);
   else 
      raise ex_null;
    end if;
    
exception 
      when ex_null then
   dbms_output.put_line('l''employe n''a pas de commission');
    dbms_output.put_line(sqlcode);
    dbms_output.put_line(sqlerrm);
    
    
END;


declare
entier integer := 121;
out  employees.Commission_pct%Type;
BEGIN
Aff_comm(entier , out);
dbms_output.put_line(out);
END;





drop procedure Modifier_nom;


--fonction.
--procedure avec retour
create or replace function get_salaire (p_id IN employees.employee_id%type)
return number
is 
    v_salaire employees.salary%type:=0;
BEGIN
    select salary into v_salaire from employees where employee_id = p_id;
    return v_salaire;
ENd get_salaire;



--EXECUTION C'EST UN VRAIS CODE PL/SQL.
VARIABLE SAL NUMBER
EXECUTE :SAL := GET_SALAIRE(101)

PRINT SAL


CREATE OR REPLACE FUNCTION TAX (P_VALUE IN NUMBER)
    RETURN NUMBER
IS 
BEGIN 
    RETURN (P_VALUE*0.08);
END TAX;


SELECT TAX(SALARY),SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID = 100;





CREATE OR REPLACE PROCEDURE AFFICHE_INFO(N INTEGER)
IS 
    VAR_NOM EMPLOYEES.LAST_NAME%TYPE;
    VAR_PRENOM EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    IF TAX(N)<500 THEN
        SELECT FIRST_NAME, LAST_NAME INTO VAR_PRENOM, VAR_NOM FROM EMPLOYEES WHERE EMPLOYEE_ID = N;
        DBMS_OUTPUT.PUT_LINE(VAR_NOM||' '||VAR_PRENOM);
    ELSE
        DBMS_OUTPUT.PUT_LINE('<500');
    END IF;
END AFFICHE_INFO;


--ON UTILISE LES TYPE SQL PAR PL/SQL

DROP FUNCTION GET_SALAIRE;




















































---EXERCICE:
CREATE TABLE CLIENT(
    NC INT PRIMARY KEY,
    NOM VARCHAR(25),
    PRENOM VARCHAR(25),
    AGE INT,
    VILLE VARCHAR(25)
);

DROP TABLE CLIENT;

CREATE TABLE PRODUIT(
    NP INT ,
    MARQUE VARCHAR(25),
    PRIX FLOAT,
    NC INT,
    CONSTRAINT NC FOREIGN KEY (NC)
         REFERENCES CLIENT(NC)
);


INSERT INTO CLIENT VALUES('1','Nejjar','Ahmed',19,'Fes');

INSERT INTO CLIENT VALUES('2','Samah','Kawtar',20,'Casa');
INSERT INTO CLIENT VALUES('3','Aourir','Tarik',34,'Settat');
INSERT INTO CLIENT VALUES('4','Ahmadi','Adil',40,'Rabat');
INSERT INTO CLIENT VALUES('5','Jawad','Sofia',40,'Marrakech');






INSERT INTO PRODUIT VALUES ('15','LEXMARK','1200','4');
INSERT INTO PRODUIT VALUES ('14','COMPAQ','10000','5');
INSERT INTO PRODUIT VALUES ('11','EPSON','3200','1');
INSERT INTO PRODUIT VALUES ('12','HP','2300','2');
INSERT INTO PRODUIT VALUES ('14','HP','2500','3');
INSERT INTO PRODUIT VALUES ('15','MAC','15000','1');
INSERT INTO PRODUIT VALUES ('17','MAC','10000','2');
INSERT INTO PRODUIT VALUES ('18','SUMSUNG','1000','4');




--1/
create table TABLE_CA_CLIENT (
    Nclient number, total_achat number
    );


create or replace procedure insert_achat_client()
is 
DECLARE 
    type tab IS RECORD (
        NC TABLE_CA_CLIENT.Nclient% Type,
        total TABLE_CA_CLIENT.total_achat%Type     
    );
    Tab_achat tab;
    CURSOR CURSEUR
    IS 
        SELECT NC, SUM(prix)  from PRODUIT GROUP BY(NC);
BEGIN
    Open CURSEUR;
    LOOP
        FETCH CURSEUR INTO Tab_achat;
        EXIT WHEN CURSEUR%NOTFOUND;
    END LOOP;
    CLOSE CURSEUR;
end insert_achat_client;


--2/
create or replace function calc_total_achat(NC number)
return number
is 
    total number;
begin 
    select SUM(Prix) into total from produit where NC = NC;
    RETURN total;
end calc_total_achat;

--3/
create or replace PROCEDURE DELETE_CLIENT()
is 
begin 
    DELETE FROM CLIENT WHERE  calc_total_achat(NC)<3000;
end DELETE_CLIENT;

--4/

create or replace function calc_NBR_PRODS(NC number)
return number
is 
    NBR number;
begin 
    select COUNT(NC) into NBR from produit where NC = NC GROUP BY (NC);
    RETURN NBR;
end calc_NBR_PRODS;

--5/


create or replace procedure STOCK()
is 
DECLARE 
    TYPE TABNOM IS TABLE OF VARCHAR2(20)
    INDEX NUMBER;
    CURSOR CURSEUR
    IS 
        SELECT NOM  from CLIENT WHERE calc_NBR_PRODS(NC) > 2;
BEGIN
    Open CURSEUR;
    LOOP
        FETCH CURSEUR INTO TABNOM;
        EXIT WHEN CURSEUR%NOTFOUND;
    END LOOP;
    CLOSE CURSEUR;
    EXCEPTION
    WHEN no_data_found THEN DBMS_OUTPUT.PUT_LINE('NON DATA FOUND');
end STOCK;
























--CORRICTION;
create or replace procedure insert_achat_client
IS 
    CURSOR CURSEUR
    IS 
        SELECT NC, SUM(prix) AS P  from PRODUIT GROUP BY NC;
BEGIN
   FOR V IN CURSEUR 
   LOOP
   INSERT INTO TABLE_CA_CLIENT VALUES(V.NC,V.P);
   END LOOP;
end insert_achat_client;





BEGIN
    insert_achat_client();
END;

--2/
create or replace function calc_total_achat(NC number)
return number
is 
    total number;
begin 
    select SUM(Prix) into total from produit where NC = NC;
    RETURN total;
end calc_total_achat;

--SELECT * ..;

SET SERVEROUTPUT ON;
DECLARE A NUMBER ;
BEGIN
    A := calc_total_achat(4);
    DBMS_OUTPUT.put_line(A);
    
END;




create or replace function calc_total_achat(NC1 number)
return number
is 
    total number;
begin 
    select SUM(Prix) into total from produit where NC = NC1 group by NC;
    RETURN total;
end calc_total_achat;

SELECT calc_total_achat(4) from dual;

SET SERVEROUTPUT ON;
DECLARE A NUMBER ;
BEGIN
    A := calc_total_achat(2);
    DBMS_OUTPUT.put_line(A);
END;


--3/

--3/
create or replace PROCEDURE DELETE_CLIENT
is 
    cursor cr is select NC from client;
begin 
    for v in cr
    loop
    if (calc_total_achat(v.NC) < 3000) then
        DELETE FROM produit WHERE  nc=v.NC;
        DELETE FROM CLIENT WHERE  nc=v.NC; 
    end if;
    end loop;
end DELETE_CLIENT;



begin
    DELETE_CLIENT();
end;







--LES PACKAGES;

CREATE OR REPLACE PACKAGE NOMPAHAGE
IS
    --
END NOMPAHAGE;



CREATE OR REPLACE NOMPAHAGE BODY BODY_NAME;


--EXEMPLE
CREATE OR REPLACE PACKAGE PACKAGE_SALAIRE
IS
    GLOBAL_V NUMBER := 0.1;
    PROCEDURE PUBLIC_PROCEDURE(P_COM IN NUMBER);
END PACKAGE_SALAIRE;


CREATE OR REPLACE PACKAGE BODY AGE_PACKAGE
IS
    FUNCTION VALIDATE_AGE (PAR_AGE IN NUMBER)
        RETURN BOOLEAN
    IS
        V_MAX_AGE NUMBER;
    BEGIN
        SELECT MAX(AGE) INTO V_MAX_AGE  FROM CLIENT;
        IF PAR_AGE > V_MAX_AGE THEN RETURN (FALSE);
        ELSE RETURN(TRUE);
        END IF;
    END VALIDATE_AGE;
    PROCEDURE INITIELISER_AGE(P_AGE IN NUMBER)
    IS
    BEGIN
        IF VALIDATE_AGE(P_AGE)
        THEN G_AGE := P_AGE;
        DBMS_OUTPUT.PUT_LINE('AGE ''EST PAS VALIDE');
        END IF;
    END INITIELISER_AGE;
END AGE_PACKAGE;


EXECUTE AGE_PACKAGE.VALIDATE_AGE(22);

DROP PACKAGE AGE_PACKAGE;
DROP PACKAGE BODY AGE_PACKAGE;

SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME = 'NOM PACKAGE';
























--EXECRICE 1
--1
CREATE OR REPLACE PROCEDURE INSERT_TOTALE_ACHAT
IS 
    CURSOR MYC
    IS SELECT SUM(PRIX) AS T, NC FROM PRODUIT GROUP BY (NC);
BEGIN
    FOR V IN MYC
    LOOP
    INSERT INTO TABLE_CA_CLIENT VALUES(V.NC, V.T);
    END LOOP;
END INSERT_TOTALE_ACHAT;

BEGIN
    INSERT_TOTALE_ACHAT();
END;

--2
CREATE OR REPLACE FUNCTION CLACULE_TOTAL_ACHAT_CLIENT(P_NC NUMBER)
RETURN NUMBER
IS 
    TOTAL NUMBER;
BEGIN
    SELECT SUM(PRIX) INTO TOTAL FROM PRODUIT WHERE NC = P_NC;
    RETURN TOTAL;
END CLACULE_TOTAL_ACHAT_CLIENT;

SET SERVEROUTPUT ON;
DECLARE 
V NUMBER;
BEGIN
V:= CLACULE_TOTAL_ACHAT_CLIENT(4);
    DBMS_OUTPUT.PUT_LINE(V);
END;

--3

CREATE OR REPLACE PROCEDURE DELETE_CLIENT
IS 
    CURSOR MYC
    IS SELECT NC FROM CLIENT;
BEGIN
    FOR V IN MYC
    LOOP
        IF( CLACULE_TOTAL_ACHAT_CLIENT(V.NC)<3000) THEN
            DELETE FROM PRODUIT WHERE NC = V.NC;
            DELETE FROM CLIENT  WHERE NC = V.NC;
        END IF;
    END LOOP;
END DELETE_CLIENT;

BEGIN
    DELETE_CLIENT();
END;

--3/ error
/* CREATE OR REPLACE PROCEDURE DELETE_CLIENT
IS 
BEGIN
            DELETE FROM PRODUIT WHERE CLACULE_TOTAL_ACHAT_CLIENT(NC)<3000);
            DELETE FROM CLIENT  WHERE CLACULE_TOTAL_ACHAT_CLIENT(NC)<3000);
END DELETE_CLIENT;

BEGIN
    DELETE_CLIENT();
END;
 */
--4
CREATE OR REPLACE FUNCTION NOMBRE_PRODUIT(P_NC CLIENT.NC%TYPE)
RETURN NUMBER
IS 
    NBR NUMBER;
BEGIN
    SELECT COUNT(DISTINCT NP) INTO NBR FROM PRODUIT  WHERE NC = P_NC GROUP BY NC;
    RETURN NBR;
END NOMBRE_PRODUIT;


SET SERVEROUTPUT ON
BEGIN
    DBMS_OUTPUT.PUT_LINE(NOMBRE_PRODUIT(1));
END;


--5
CREATE OR REPLACE PROCEDURE STOCKE_NAME
IS 
    TYPE TABLE1 IS TABLE OF CLIENT.NOM%TYPE
    INDEX BY BINARY_INTEGER;
    MYTABLE TABLE1;
    I  BINARY_INTEGER :=0;
    CURSOR MYC
    IS SELECT NOM FROM CLIENT WHERE NOMBRE_PRODUIT(NC)>=2;
BEGIN
    FOR V IN MYC
    LOOP
    MYTABLE(I) := V.NOM;
    I:=I+1;
    END LOOP;
    FOR A IN 0..2
    LOOP
    DBMS_OUTPUT.PUT_LINE(MYTABLE(A));
    END LOOP;
    --COMMIT 
EXCEPTION 
WHEN NO_DATA_FOUND THEN  DBMS_OUTPUT.PUT_LINE('NO DATA FOUND');
WHEN INVALID_CURSORE THEN DBMS_OUTPUT.PUT_LINE('INVALID CURSOR');
WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('ERROR ');
END STOCKE_NAME;

BEGIN
STOCKE_NAME();
END;







----LES PACKAGE ----
CREATE OR REPLACE PACKAGE MYPACKAGE
IS 
    VAR NUMBER := 1001;
    PROCEDURE ADD_CLIENT(NC CLIENT.NC%TYPE, NOM CLIENT.NOM%TYPE,PRENOM CLIENT.PRENOM%TYPE,AGE CLIENT.AGE%TYPE,VILLE CLIENT.VILLE%TYPE);
    PROCEDURE ADD_CLIENT(NC CLIENT.NC%TYPE, NOM CLIENT.NOM%TYPE,PRENOM CLIENT.PRENOM%TYPE,AGE CLIENT.AGE%TYPE);
    PROCEDURE GET_CLIENT(P_NC CLIENT.NC%TYPE);
    FUNCTION GET_AGE(NC_P CLIENT.NC%TYPE) RETURN CLIENT.AGE%TYPE;
    PROCEDURE DELETE_CLIENT(P_NC CLIENT.NC%TYPE);
    PROCEDURE DELETE_CLIENT;
END MYPACKAGE;
    
    
CREATE OR REPLACE PACKAGE BODY MYPACKAGE  
IS 
    PROCEDURE ADD_CLIENT(NC CLIENT.NC%TYPE, NOM CLIENT.NOM%TYPE,PRENOM CLIENT.PRENOM%TYPE,AGE CLIENT.AGE%TYPE,VILLE CLIENT.VILLE%TYPE)
    IS 
    BEGIN
        INSERT INTO CLIENT VALUES (NC , NOM ,PRENOM,AGE,VILLE);
    END ADD_CLIENT;

    PROCEDURE ADD_CLIENT(NC CLIENT.NC%TYPE, NOM CLIENT.NOM%TYPE,PRENOM CLIENT.PRENOM%TYPE,AGE CLIENT.AGE%TYPE)
    IS 
    BEGIN
        INSERT INTO CLIENT VALUES (NC , NOM ,PRENOM,AGE,NULL);
    END ADD_CLIENT;
    
    PROCEDURE GET_CLIENT(P_NC CLIENT.NC%TYPE)
    IS 
        CURSOR MYC
        IS SELECT * FROM CLIENT WHERE CLIENT.NC = P_NC;
        VAR MYC%ROWTYPE;
    BEGIN 
        OPEN MYC;
        FETCH MYC INTO VAR;
        DBMS_OUTPUT.PUT_LINE(VAR.NC||'-'||VAR.NOM||'-'||VAR.VILLE||'-'||VAR.AGE);
        CLOSE MYC;
    END GET_CLIENT;
    
    FUNCTION GET_AGE(NC_P CLIENT.NC%TYPE) RETURN CLIENT.AGE%TYPE
    IS 
        AGE CLIENT.AGE%TYPE;
    BEGIN 
        SELECT AGE INTO AGE FROM CLIENT WHERE CLIENT.NC = NC_P;
        RETURN AGE ;
    END GET_AGE;
    
    PROCEDURE DELETE_CLIENT(P_NC CLIENT.NC%TYPE)
    IS 
    BEGIN
        DELETE FROM PRODUIT WHERE NC = P_NC;
        DELETE FROM CLIENT WHERE CLIENT.NC=P_NC;
    END DELETE_CLIENT;
    
    PROCEDURE DELETE_CLIENT
    IS 
    BEGIN
        DELETE FROM PRODUIT WHERE NC IN (SELECT NC FROM CLIENT WHERE CLIENT.AGE IN (10,20,30));
        DELETE FROM CLIENT WHERE CLIENT.AGE IN (10,20,30);
    END DELETE_CLIENT;
END MYPACKAGE;
    
    
SET SERVEROUTPUT ON;
BEGIN
    --DBMS_OUTPUT.PUT_LINE(MYPACKAGE.GET_AGE(1));
    --MYPACKAGE.ADD_CLIENT('20','mouloud','elarram','19','essaouira');
    --MYPACKAGE.ADD_CLIENT('21','mouloud','elarram','19');
    --MYPACKAGE.GET_CLIENT(20);
    --MYPACKAGE.DELETE_CLIENT(20);
    --MYPACKAGE.DELETE_CLIENT();
END;








--les declancheur trigger
CREATE OR REPLACE TRIGGER TRIGGER_NAME
BEFORE INSERT OR DELETE ON CLIENT
BEGIN
    IF (TO_CHAR(SYSDATE,'DY') IN ('TUE','SUN')) OR (TO_CHAR(SYSDATE,'HH24:MI') NOT BETWEEN '08:00' AND '18:00')
     THEN    
        RAISE_APPLICATION_ERROR(-20011,'VOUS NE PEUVEZ PAR FAIRE DES MODIFECATION');
    END IF;
END;
   


DROP TRIGGER TRIGGER_NAME;
--

CREATE OR REPLACE TRIGGER TRIGGER_NAME
BEFORE INSERT OR DELETE ON CLIENT
BEGIN
    IF (TO_CHAR(SYSDATE,'DY') IN ('TUE','SUN')) OR (TO_CHAR(SYSDATE,'HH24:MI') NOT BETWEEN '08:00' AND '18:00')
     THEN    
        IF DELETING then
            RAISE_APPLICATION_ERROR(-20011,'DELETE');
        END IF;
         IF INSERTING then
            RAISE_APPLICATION_ERROR(-20012,'INSERT');
        END IF;
         IF UPDATING then
            RAISE_APPLICATION_ERROR(-20013,'UPDATE');
        END IF;
    END IF;
END;
   


CREATE OR REPLACE TRIGGER TRIGGER_NAME
BEFORE INSERT OR DELETE ON CLIENT
BEGIN
    IF (TO_CHAR(SYSDATE,'DY') IN ('TUE','SUN')) OR (TO_CHAR(SYSDATE,'HH24:MI') NOT BETWEEN '08:00' AND '18:00')
     THEN    
        RAISE_APPLICATION_ERROR(-20011,'VOUS NE PEUVEZ PAR FAIRE DES MODIFECATION');
    END IF;
END;