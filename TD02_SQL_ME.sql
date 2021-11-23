--CREATE BY EL ARRAM MOULOUD 
--TD02 SQL
--1/
select nuavion, nom from affectation af, avion av where af.avion = av.nuavion and af.date_vol = '02-MAR-1994';
--2/
select nopilot, nom from pilote p where p.embauche > (select embauche from pilote where nopilot = '3452') ;
--3/
select nuavion, nom from affectation af, avion av, vol v 
where af.vol = v.novol and af.avion = av.nuavion and (v.vildep = 'PARIS' or v.vildep = 'LYON');
--OU
SELECT DISTINCT NUAVION, NOM FROM AFFECTATION AF,AVION AV, VOL V 
WHERE AF.VOL IN (SELECT NOVOL FROM VOL WHERE VILDEP='PARIS' OR VILDEP='LYON') AND AF.AVION = AV.NUAVION ;
--4/
select novol, vildep, vilar from affectation af, vol v, pilote p 
where af.vol = v.novol and af.pilote = p.nopilot and v.vilar = p.adresse;
--5/
SELECT DISTINCT P.NOPILOT FROM AFFECTATION AF, PILOTE P 
WHERE P.NOPILOT IN((SELECT NOPILOT FROM PILOTE) MINUS (SELECT PILOTE FROM AFFECTATION ));
--OU
SELECT P.NOPILOT FROM PILOTE P, VOL V, AFFECTATION AF 
MINUS SELECT P.NOPILOT FROM PILOTE P, VOL V, AFFECTATION AF WHERE P.NOPILOT = AF.PILOTE AND V.NOVOL = AF.VOL;
--6/
SELECT NOPILOT, NOM, SAL FROM PILOTE WHERE sal = (SELECT MAX(SAL) FROM PILOTE);
--7/
select nopilot, nom, comm from pilote where comm = (select min(comm) from pilote);
--8/
select nopilot, nom, To_char((NVL(sal,0)+ NVL (comm,0)),'99999.99') As montRevenu 
from pilote Order by (montRevenu);
--9/
select max(embauche) - min(embauche) from pilote;
--10/
select count(type), avg(nbvol) from avion group by (type);
--11/
select to_char(avg(af.nbpass*100/ap.nbplace),'99.99') from affectation af, appareil ap , avion av
where af.avion = av.nuavion and av.type = ap.codetype and type='734';
--12/
select nopilot, nom from pilote where embauche = (select max(embauche) from pilote);
--13/
select count(af.vol),af.vol from affectation af where af.pilote = '6723' group by(af.vol);
--14/
select temp.nbrPilote,temp.avion,av.nom from(select count(avion) as nbrPilote, avion from affectation group by(avion)) temp, avion av 
where temp.avion = av.nuavion and nbrPilote>=2;
--15/
select count(vol),sum(nbpass),To_char(date_vol,'mm-yy') from affectation group by(To_char(date_vol,'mm-yy'));
