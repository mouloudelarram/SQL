--create by EL ARRAM MOULOUD ESTE @2021.
create table Vol (
    Novol char(6) primary key,
    Vildep varchar(30),
    Vilar varchar(30),
    Dep_h number(2),
    Dep_mn number(2),
    Ar_h number(2),
    Ar_mn number(2),
    Ch_jour number(1)
    );

create table Pilote (
    nopilot char(4) primary key,
    nom varchar(35),
    Adresse varchar(30),
    sal number(8,2),
    comm number(8,2),
    embauche date
    );

create table Appareil (
    codetype char(3) primary key,
    Nbplace number(3),
    design varchar(50)
    );


create table avion (
    Nuavion char(4) primary key,
    Type char(3),
    Annserv number(4),
    Nom varchar(50),
    nbvol number(6),
     CONSTRAINT Type FOREIGN KEY (Type)
         REFERENCES Appareil(codetype)
    );

create table affectation (
    Vol char(6) ,
    Date_vol Date primary key,
    Pilote char(4),
    Avion char(4),
    nbpass number(3),
    CONSTRAINT Vol FOREIGN KEY (Vol) references Vol(novol), 
    CONSTRAINT Pilote FOREIGN KEY (Pilote) references pilote(nopilot), 
    CONSTRAINT Avion FOREIGN KEY (Avion) references avion(nuavion)
    );



--VOL
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('AF8810','PARIS','DJERBA',9,0,11,45,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('AF8809','DJERBA','PARIS',12,45,15,40,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('IW201','LYON','FORT DE FRANCE',9,45,15,25,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('IW655','LA HAVANE','PARIS',19,55,12,35,1);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('IW433','PARIS','ST-MARTIN',17,0,8,20,1);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('IW994','SYDNEY','COLOMBO',17,25,22,30,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('IT319','BORDEAUX','NICE',10,35,11,45,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('AF3218','MARSEILLE','FRANCFORT',16,45,19,10,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('AF3530','LYON','LONDRES',8,0,8,40,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('AF3538','LYON','LONDRES',18,35,19,15,0);
INSERT INTO Vol (novol,vildep,vilar,dep_h,dep_mn,ar_h,ar_mn,ch_jour) VALUES ('AF3570','MARSEILLE','LONDRES',9,35,10,20,0);

--PILOTE
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('1333', 'FEDOI', 'NANTES', 24000.00, 0.00, '15-MAR-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('6589', 'DUVAL', 'PARIS', 18600.00, 5580.00, '12-MAR-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('7100', 'MARTIN', 'LYON', 15600.00, 16000.00, '01-APR-93');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('3452', 'ANDRE', 'NICE', 22670.00, NULL, '16-DEC-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('3421', 'BERGER', 'REIMS', 18700.00, NULL, '28-DEC-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('6548', 'BARRE', 'LYON', 22680.00, 8600.00, '01-DEC-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('1243', 'COLLET', 'PARIS', 19000.00, 0.00, '01-FEB-90');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('5643', 'DELORME', 'PARIS', 21850.00, 9850.00, '1-FEB-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('6723', 'MARTIN', 'PARIS', 23150.00, NULL, '15-MAY-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('8843', 'GAUCHER', 'CACHAN', 17600.00, NULL, '20-NOV-92');
INSERT INTO Pilote (nopilot,nom,adresse,sal,comm,embauche) VALUES  ('3465', 'PIC', 'TOURS', 18650.00, NULL, '20-NOV-92');

--APPAREIL
INSERT INTO Appareil (codetype,nbplace,design) VALUES ('74E',150,'BOEING 747-400 COMBI');
INSERT INTO Appareil (codetype,nbplace,design) VALUES ('AB3',180,'AIRBUS A300');
INSERT INTO Appareil (codetype,nbplace,design) VALUES ('741',100,'BOEING 747-100');
INSERT INTO Appareil (codetype,nbplace,design) VALUES ('SSC',80,'CONCORDE');
INSERT INTO Appareil (codetype,nbplace,design) VALUES ('734',450,'BOEING 737-400');

--AVION
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES ('8832',1988,'Ville de Paris',1600,'734');
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES  ('8567',1988,'Ville de Reims',8000,'734');
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES ('8467',1995,'Le Sud',600,'734');
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES  ('7693',1988,'Pacifique',34000,'741');
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES ('8556',1989,null,12000,'AB3');
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES  ('8432',1991,'Malte',10600,'AB3');
INSERT INTO Avion (nuavion,annserv,nom,nbvol,type) VALUES ('8118',1992,NULL,11800,'74E');


--AFFECTATION
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('IW201','01-MAR-94','310','6723','8567');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('IW201','02-MAR-94','265','6723','8832');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('AF3218','12-JUN-94','83','6723','7693');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('AF3530','12-NOV-94','178','6723','8432');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('AF3530','13-NOV-94','156','6723','8432');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('AF3538','21-DEC-94','110','6723','8118');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('IW201','03-MAR-94','356','1333','8567');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('IW201','12-MAR-94','211','6589','8467');
insert into affectation (vol,date_vol,nbpass,pilote,avion) VALUES ('AF8810','04-MAR-94','160','7100','8556');






--SOLUTION DE LA TD01;
--01/
SELECT NOM,SAL FROM PILOTE WHERE SAL BETWEEN 15000 AND 19000;
--02/
SELECT NOVOL,VILDEP,DEP_H,AR_H FROM VOL WHERE VILAR='PARIS' AND AR_H<16 ORDER BY VILDEP, DEP_H;
--03/
SELECT NUAVION, TYPE FROM AVION WHERE TYPE LIKE '7%'; 
--04/
SELECT VOL FROM AFFECTATION WHERE DATE_VOL ='02-MAR-1994';
--05/
SELECT NOM,EMBAUCHE, ADRESSE FROM PILOTE WHERE ADRESSE = 'PARIS' AND EMBAUCHE NOT BETWEEN '01-JAN-91' AND '01-JAN-92' ORDER BY NOM ;
--06/
SELECT * FROM VOL ORDER BY VILDEP, DEP_H;
--07/
SELECT NOM, SAL FROM PILOTE WHERE COMM=0 AND SAL>20000;
--08/
SELECT NOM,NOVOL,VILDEP,VILAR FROM AFFECTATION,PILOTE,VOL WHERE AFFECTATION.VOL=VOL.NOVOL AND AFFECTATION.PILOTE = PILOTE.NOPILOT AND DATE_VOL='02-MAR-94' ;
--OR
SELECT NOM, NOVOL,VILDEP,VILAR FROM AFFECTATION JOIN PILOTE ON (PILOTE.NOPILOT=AFFECTATION.PILOTE) JOIN VOL ON (VOL.NOVOL=AFFECTATION.VOL) WHERE DATE_VOL = '02-MAR-94';
--09/
SELECT P.NOM,AP.DESIGN FROM PILOTE P,AVION A, APPAREIL AP,AFFECTATION AF WHERE AF.PILOTE=P.NOPILOT AND AF.AVION=A.NUAVION AND A.TYPE=AP.CODETYPE AND P.ADRESSE = 'NANTES' AND A.NBVOL<12000;
--OU
SELECT P.NOM,DESIGN FROM AFFECTATION AF JOIN PILOTE P ON (AF.PILOTE=P.NOPILOT) JOIN ( SELECT * FROM AVION JOIN APPAREIL ON AVION.TYPE=APPAREIL.CODETYPE ) ON (NUAVION = AF.AVION) WHERE P.ADRESSE = 'NANTES' AND NBVOL<12000;
--10/
SELECT P.NOPILOT,P.NOM,V.VILDEP FROM PILOTE P, VOL V, AFFECTATION A WHERE A.VOL=V.NOVOL AND A.PILOTE = P.NOPILOT ORDER BY 3,2,1;
--OU
SELECT NOPILOT, NOM, VILDEP FROM AFFECTATION JOIN PILOTE ON (PILOTE.NOPILOT=AFFECTATION.PILOTE) JOIN vOL ON (VOL.NOVOL=AFFECTATION.VOL);
--11/
SELECT DISTINCT NOPILOT, NOM, VILDEP FROM ( 
    (SELECT * FROM AFFECTATION NATURAL JOIN PILOTE NATURAL JOIN VOL) 
    MINUS
    (SELECT * FROM AFFECTATION AF NATURAL JOIN PILOTE P  NATURAL JOIN VOL V WHERE AF.PILOTE=P.NOPILOT AND V.NOVOL=AF.VOL)
);
--OU 
SELECT DISTINCT NOPILOT, NOM, VILDEP FROM ( 
    (SELECT * FROM AFFECTATION,PILOTE, VOL ) 
    MINUS
    (SELECT * FROM AFFECTATION AF , PILOTE P , VOL V WHERE AF.PILOTE=P.NOPILOT AND V.NOVOL=AF.VOL)
);
--12/
SELECT V1.NOVOL, V1.VILDEP, V1.VILAR FROM VOL V1, VOL V2 WHERE V1.VILDEP=V2.VILAR;
--13/
SELECT P.NOPILOT, P.NOM, V.NOVOL, AF.DATE_VOL FROM AFFECTATION AF, PILOTE P, VOL V WHERE AF.PILOTE=P.NOPILOT AND AF.VOL = V.NOVOL AND (V.VILDEP='PARIS' OR V.VILAR='PARIS');
--14/
SELECT CODETYPE , DESIGN FROM AFFECTATION AF , AVION AV, APPAREIL AP, VOL V WHERE AF.VOL=V.NOVOL AND AV.TYPE=AP.CODETYPE AND AF.AVION=AV.NUAVION AND ((V.VILDEP = 'PARIS' AND V.VILAR='DJERBA') OR (V.VILDEP ='DJERBA' AND V.VILAR='PARIS'));
--15/
SELECT NUAVION FROM AFFECTATION AF, AVION AV, VOL V WHERE AF.VOL=V.NOVOL AND AF.AVION = AV.NUAVION AND (V.VIDEP='PARIS' OR V.VIDEP='LYON');
--16/
SELECT P1.NOM, P1.ADRESSE FROM PILOTE P1 , PILOTE P2 WHERE P1.NOM=P2.NOM AND P1.ADRESSE <> P2.ADRESSE;
