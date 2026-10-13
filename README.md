# SQL20261013

1.) Időjárás

ÚTVONALAK
GET  ~/idojaras/osszes		
Visszaadja az adatbázisban lévő összes időjárási adatot

GET ~/idojaras/adat/{id}
pl. ~/idojaras/adat/3
Visszaadja egy ID-hoz tartozó időjárási adatokat

GET ~/idojaras/hely/{p}
pl. ~/idojaras/hely/Budapest
Visszaadja egy észlelési hely összes időjárási adatát

GET ~/idojaras/idopont/{p}
pl. ~/idojaras/idopont/2026-02-01
Visszaadja egy észlelési időpont összes időjárási adatát

POST ~/idojaras/add
Időjárási adat hozzáadása az adatbázishoz

VALIDÁLÁS
meresi_hely		kötelező, min 2 karakter
datum			kötelező, szabvány dátum formátum ev-honap-nap
idopont			kötelező, szabvány idő formátum óra:perc:másodperc
homerseklet		kötelező, egész szám, -100 és +100 között
paratartalom		kötelező, egész szám, 0 és 100 között
szelsebesseg 		kötelező, egész szám, nagyobb vagy egyenlő min nulla
egkep			kötelező, csak 'derült','gyengén felhős','közepesen felhős','erősen felhős','borult','köd','pára' lehet
csapadek		nem kötelező adat,  csak 'eső','zápor','zivatar','jégeső','havazás','havas eső','ónos eső' lehet 
			vagy alapértelmezetten üres marad
A validálás során értelemszerűen magyarítsa le a validálási üzeneteket, pl.: Kötelező megadni!, Számot adjon meg!, stb.

Készítse el hozzá a welcome.blade.php-ben az API dokumentációt!!


2.) Esküvő

ÚTVONALAK
GET  ~/eskuvo/osszes
Visszaadja az adatbázisban lévő összes esküvő adatait

GET  ~/eskuvo/adat/{id}
pl.  ~/eskuvo/adat/3
Visszaadja ID alapján egy esküvő adatait az adatbázisból

GET  ~/eskuvo/datum/{p}
pl.  ~/eskuvo/datum/2025-08-14
Visszaadja egy dátumhoz tartozó összes eskövő adatait az adatbázisból

GET  ~/eskuvo/nev/{p}
pl.  ~/eskuvo/nev/Diána
Visszaadja a megadott névhez vagy névrészlethez tartozó összes eskövő adatait az adatbázisból
A volegeny, menyasszony, tanu1 és tanu2 mezőkben keres!

POST ~/eskuvo/add
Eskövő hozzáadása az adatbázishoz

VALIDÁLÁS
volegeny		kötelező, minimum 6 karakter
menyasszony		kötelező, minimum 6 karakter
tanu1			kötelező, minimum 6 karakter
tanu2			kötelező, minimum 6 karakter
datum			kötelező, szabvány dátum formátum ev-honap-nap
vendegek		kötelező, 0 és 100 között
zenevalogatas		kötelezp, csak 'i' vagy 'n' lehet
A validálás során értelemszerűen magyarítsa le a validálási üzeneteket, pl.: Kötelező megadni!, Számot adjon meg!, stb.

Készítse el hozzá a welcome.blade.php-ben az API dokumentációt!!


3.) Taxi

GET  ~/taxi/osszes
Visszaadja az összes taxi összes adatát az adatbázisból

GET  ~/taxi/adat/{id}
pl.  ~/taxi/adat/3
Visszaadja ID alapján egy taxiút adatait az adatbázisból

GET  ~/taxi/rendszam/{p}
Visszaadja egy adott rendszámhoz tatozó taxi összes adatát az adatbázisból. Csak pontos rendszámegyezésre keressen!

GET  ~/taxi/sofor/{p}
pl.  ~/taxi/sofor/Diána
Visszaadja a megadott névhez vagy névrészlethez tartozó összes adatot az adatbázisból. 
A sofőr mezőben keres 


GET  ~/taxi/datum/{p}
pl.  ~/taxi/datum/2026-01-31
Visszaadja egy dátumhoz tartozó összes taxi összes adatát az adatbázisból

POST ~/taxi/add
Taxi út hozzáadása az adatbázishoz

VALIDÁLÁS
rendszam		kötelező, 7 és 9 karakter közt lehet
sofor			kötelező, minimum 6 karakter
datum			kötelező, szabvány dátum formátum ev-honap-nap
idopont			kötelező, szabvány idő formátum óra:perc:másodperc
honnan			kötelező
hova			kötelező
hossz			kötelező, szám adat, nullánál nagyobb
A validálás során értelemszerűen magyarítsa le a validálási üzeneteket, pl.: Kötelező megadni!, Számot adjon meg!, stb.

BACKEND-en számított mező
ar 	= alapdíj + kilóméterdíj * hossz (felfelé kerekítve)
	  alapdíj 1100 Ft
	  kilóméterdíj 440 Ft/km
          pl. 1,8 km út esetén: 1100 + 440*2 = 1980
          felfelé kerekítéshez használd a ceil() php függvényet https://www.w3schools.com/php/func_math_ceil.asp

Készítse el hozzá a welcome.blade.php-ben az API dokumentációt!!


4.) Vizsga

GET  ~/vizsga/osszes
Visszaadja az adatbázisból az összes vizsgázó összes adatát

GET  ~/vizsga/adat/{id}
pl.  ~/vizsga/adat/4
Visszaadja ID alapján egy vizsgázó adatait az adatbázisból

GET  ~/vizsga/nev/{p}
pl.  ~/vizsga/nev/Ida
Visszaadja a megadott névhez vagy névrészlethez tartozó összes vizsgázó adatait az adatbázisból

GET  ~/vizsga/osztaly/{p}
pl.  ~/vizsga/osztaly/13.B
Visszaadja a megadott osztályhoz tartozó összes vizsgázó adatait az adatbázisból. Pontos egyezést keresen!!

POST ~/vizsga/add
Egy vizsgázó adatainak hozzáadása az adatbázishoz


VALIDÁLÁS
vizsgazo_nev		kötelező, minimum 6 karakter
osztaly			kötelező, 4 és 6 karakter közötti érték
cli			kötelező, egész szám, 0 és 15 közötti érték
gui			kötelező, egész szám, 0 és 10 közötti érték
html			kötelező, egész szám, 0 és 10 közötti érték
backend			kötelező, egész szám, 0 és 15 közötti érték
frontend		kötelező, egész szám, 0 és 15 közötti érték
A validálás során értelemszerűen magyarítsa le a validálási üzeneteket, pl.: Kötelező megadni!, Számot adjon meg!, stb.

BACKEND-en számított mező
osszpont	= cli+gui+html+frontend+backend összege, egész szám
szazalek	= maximális pontból (65 pont) és osszpontból számított érték, egész szám
		  kerekítéshez használd a round() php függvényt 
		  https://www.w3schools.com/php/func_math_round.asp

Készítse el hozzá a welcome.blade.php-ben az API dokumentációt!!


5.) Horoszkóp

GET  ~/horoszkop/osszes
Visszaadja az adatbázisból az összes heti horoszkóp összes adatát

GET  ~/horoszkop/adat/{id}
pl.  ~/horoszkop/adat/6
Visszaadja az adott ID-hoz tartozó heti horoszkóp összes adatát

GET  ~/horoszkop/jegy/{p}
pl.  ~/horoszkop/jegy/skorpió
Visszaadja az adott csillagjegyhez tartozó összes heti horoszkó összes adatát.

GET  ~/horoszkop/het/{ev}/{het}
pl.  ~/horoszkop/het/2026/3
Visszaadja az adott év+hét-hez tartozó összes heti horoszkóp osszes adatát

POST ~/horoszkop/add
Egy új heti horoszkóp hozzáadása


VALIDÁLÁS
ev			kötelező, szabvány dátum formátum, csak év
het			kötelező, egész szám, 1 és 52 közötti érték lehet
csillagjegy		kötelező, csak 'kos','bika','ikrek','rák','oroszlán','szűz','mérleg','skorpió','nyilas','bak','vízöntő','halak' lehet
heti_joslat 		kötelező, minimum 100 karakter legyen
A validálás során értelemszerűen magyarítsa le a validálási üzeneteket, pl.: Kötelező megadni!, Számot adjon meg!, stb.


