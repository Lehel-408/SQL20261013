--osszes adat
select * from 'idojaras';

--ID alapján
select * from 'idojaras' where idojaras.id = 3;

--helyszin alapjan kereses, pontos egyezes
select * from 'idojaras' where 'meresi_hely' = 'Budapest';

--idopont alapjan kereses, pontos egyezes
select * from 'idojaras' where 'datum' = '2026-02-01';

--uj idojaras adat
INSERT INTO `idojaras`(`meresi_hely`, `datum`, `idopont`, `homerseklet`, `paratartalom`, `szelsebesseg`, `egkep`, `csapadek`) 
VALUES ('Budapest', '2026-10-13', '14-20-00', '15', '42', '12', 'borult', "")

--ESKUVO
--osszes adat
select * from 'eskuvo';

--ID alapjan nevrekord
SELECT * FROM `eskuvo` WHERE `eskuvo_id` = 2

--idopont alapjan kereses, pontos egyezes
select * from 'eskuvo' where 'datum' = '2026-05-01';

--nev kereses, reszleges egyezes
SELECT * FROM `eskuvo` WHERE `volegeny` LIKE '%D%' OR `menyasszony` LIKE '%D%' OR `tanu1` LIKE '%D%' OR `tanu2` LIKE '%D%';

--eskuvo hozzaadas
INSERT INTO `eskuvo`(`volegeny`, `menyasszony`, `tanu1`, `tanu2`, `datum`, `vendegek`, `zenevalogatas`) 
VALUES ('Tihamér Alajos', 'Vad Virág', 'Tipli Tibor', 'Konvektor Károly', '2026-10-17', '25', 'i');

--TAXI
--osszes adat
select * from 'taxi';