-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 01. 20:34
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `post-gyakorlo2`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eskuvo`
--

CREATE TABLE `eskuvo` (
  `eskuvo_id` int(11) NOT NULL,
  `volegeny` text NOT NULL,
  `menyasszony` text NOT NULL,
  `tanu1` text NOT NULL,
  `tanu2` text NOT NULL,
  `datum` date NOT NULL,
  `vendegek` int(11) NOT NULL,
  `zenevalogatas` enum('i','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `eskuvo`
--

INSERT INTO `eskuvo` (`eskuvo_id`, `volegeny`, `menyasszony`, `tanu1`, `tanu2`, `datum`, `vendegek`, `zenevalogatas`) VALUES
(1, 'Kovács Gábor', 'Csillag Diána', 'Nagy Péter', 'Fülöp Kitti', '2026-05-01', 30, 'i'),
(2, 'Tóth László', 'Új Ida', 'Benedek Máté', 'Szalai Viktória', '2026-07-10', 0, 'n'),
(3, 'Török Dániel', 'Papp Lilla', 'Fülöp Anna', 'Lukács Viktória', '2026-08-07', 80, 'i'),
(4, 'Horváth Bence', 'Németh Katalin', 'Molnár Zoltán', 'Horváth Dóra', '2026-08-14', 50, 'n');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `horoszkop`
--

CREATE TABLE `horoszkop` (
  `horoszkop_id` int(11) NOT NULL,
  `ev` year(4) NOT NULL,
  `het` int(11) NOT NULL,
  `csillagjegy` enum('kos','bika','ikrek','rák','oroszlán','szűz','mérleg','skorpió','nyilas','bak','vízöntő','halak') NOT NULL,
  `heti_joslat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `horoszkop`
--

INSERT INTO `horoszkop` (`horoszkop_id`, `ev`, `het`, `csillagjegy`, `heti_joslat`) VALUES
(1, '2026', 2, 'bak', 'Nem tudhatod az összes választ, ahogyan azt sem, mi következik ezután. Azt viszont tudod, hol tartasz most, milyen érzés ez, és mi felé vonzódsz. Maradj jelen azzal, amit itt és most tudsz, hogy ebből kiindulva feltérképezhesd, mi igényel figyelmet, mikor és hogyan. Ezen a héten bölcs dolog az önrendelkezésedhez kapcsolódni, ahelyett hogy arra várnál, hogy a dolgok megtörténjenek veled vagy érted, Bak.'),
(2, '2026', 2, 'mérleg', 'A kapcsolataid mindig fontosak számodra, de ezen a héten túlterheltnek érezheted magad, vagy egyszerűen eleged lehet. A határok egészségesek, de a te felelősséged, hogy őszintén kifejezd őket azok felé, akikkel kapcsolatban állsz. Ne hagyd, hogy a konfliktustól való félelmed visszatartson attól, hogy kérd, amire szükséged van, vagy hogy elismerd azt, amit még nem tudsz. Az egészséges kapcsolatok nem követelik meg, hogy tökéletes légy, de sokkal gördülékenyebbek, ha őszinte vagy, és teret hagysz mások őszinteségének is, Mérleg.'),
(3, '2026', 3, 'ikrek', 'A frusztráció az élet része, és nincs igazán mód arra, hogy kikerüld, de az, ahogyan kapcsolatba lépsz azzal, ami frusztrál, és azokkal az érzelmekkel, amelyeket átélsz – az valóban rólad ad képet. Ezen a héten az a feladatod, hogy elismerd, mit érzel, különösen akkor, amikor nehéz, és megvizsgáld, mennyire őszinte és fenntartható az a mód, ahogyan az érzelmeidhez viszonyulsz. Keress igaz kérdéseket, és a válaszok követni fognak.'),
(4, '2026', 3, 'szűz', 'Ezen a héten az az érdeked, hogy ne csak lassíts, hanem földelté válj, és kapcsolódj a testedhez és a jelen pillanathoz, Szűz. Valószínűleg szorongásokkal kell megküzdened. Ez nemcsak kellemetlen, hanem eltávolít a gondolkodásod legjobb részeitől és az intuíciódhoz való hozzáféréstől is. Sok minden történhetne, de a legnagyobb ráhatásod azokra a dolgokra van, amelyek már most, itt és most zajlanak – és arra, ahogyan ezekhez viszonyulsz.'),
(5, '2026', 3, 'skorpió', 'Kapcsolódj a legnagyobb érzelmeidhez ezen a héten! Valami nagyon fontos módon mozdul el az életedben, de könnyen elsiklathatsz felette, ha nem figyelsz. Ez az időszak arról szól, hogy befelé figyelj, és az érzéseidet tettekkel párosítva tiszteld meg őket, Skorpió. Ha a prioritásaid és az, ami igazán fontos számodra, tükröződik abban, amire az idődet és energiádat fordítod, akkor jó úton jársz.'),
(6, '2026', 4, 'vízöntő', 'A február 1-jei Telihold, amikor a Nap a jegyedben áll, valószínűleg tisztánlátást hoz, de nem feltétlenül könnyedséget. Ha hajlandó vagy elfogadással táplálni azt, ahol a dolgok éppen tartanak, meglepődnél, milyen gyorsan haladsz előre, Vízöntő. Nem kell máshol lenned, mint ahol most vagy, mert ebben a jelen pillanatban képes vagy bölcsességet érlelni, változtatni, és javítani mindazon, amin javítani kell.'),
(7, '2026', 4, 'skorpió', 'A skorpió mélyebb átalakuláson megy keresztül. A munkában hosszabb távú folyamatok indulnak el, amelyek később hozzák meg gyümölcsüket. Kapcsolatban az őszinteség elengedhetetlen, egyedülállóknak pedig komoly szándékú közeledés érkezhet. A belső feszültség oldása most különösen fontos. A hét tanácsa: nem kell mindent irányítani ahhoz, hogy kézben maradjanak a dolgok.'),
(8, '2026', 5, 'oroszlán', 'A Telihold valószínűleg elég intenzív érzelmeket kavar fel, és teljesen rendben van, ha intenzíven érzel. Amit viszont érdemes elkerülnöd, az az, hogy védekezésből vagy ingerültségből magad vagy mások ellen fordulj. Megváltoztál, Oroszlán – talán nem is te változtál a legtöbbet, de ha az emberek és helyzetek körülötted igen, és te nem alkalmazkodtál, az önmagában is egy fontos tény. Ezen a héten lényeges, hogy készen állva jelenj meg mindannál, ami felbukkan, és alkalmazkodj, ahelyett hogy megszokásból még inkább ragaszkodnál a régiekhez.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `idojaras`
--

CREATE TABLE `idojaras` (
  `idojaras_id` int(11) NOT NULL,
  `meresi_hely` text NOT NULL,
  `datum` date NOT NULL,
  `idopont` time NOT NULL,
  `homerseklet` int(11) NOT NULL,
  `paratartalom` int(11) NOT NULL,
  `szelsebesseg` int(11) NOT NULL,
  `egkep` enum('derült','gyengén felhős','közepesen felhős','erősen felhős','borult','köd','pára') NOT NULL,
  `csapadek` enum('eső','zápor','zivatar','jégeső','havazás','havas eső','ónos eső','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `idojaras`
--

INSERT INTO `idojaras` (`idojaras_id`, `meresi_hely`, `datum`, `idopont`, `homerseklet`, `paratartalom`, `szelsebesseg`, `egkep`, `csapadek`) VALUES
(1, 'Budapest', '2026-01-31', '17:15:00', 1, 95, 7, 'borult', 'havazás'),
(2, 'Erdőkertes', '2026-02-01', '20:00:00', -2, 90, 4, 'köd', ''),
(3, 'Szigethalom', '2026-02-01', '23:00:00', -4, 93, 4, 'köd', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `taxi`
--

CREATE TABLE `taxi` (
  `taxi_id` int(11) NOT NULL,
  `rendszam` text NOT NULL,
  `sofor` text NOT NULL,
  `datum` date NOT NULL,
  `idopont` time NOT NULL,
  `honnan` text NOT NULL,
  `hova` text NOT NULL,
  `hossz` double NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `taxi`
--

INSERT INTO `taxi` (`taxi_id`, `rendszam`, `sofor`, `datum`, `idopont`, `honnan`, `hova`, `hossz`, `ar`) VALUES
(1, 'TX AA-001', 'Kocsis Máté', '2026-01-14', '16:40:00', 'Nyugati pu.', 'Király utca 5.', 1.8, 1980),
(2, 'EBC-555', 'Nguyễn Văn Minh', '2026-01-28', '08:50:00', 'Blaha Lujza tér', 'Üteg utca 13-15', 6.6, 4180),
(3, 'TX CC-999', 'Hoàng Anh Tuấn', '2026-01-31', '23:00:00', 'Jászai Mari tér', 'Oktogon', 1.6, 1980);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vizsga`
--

CREATE TABLE `vizsga` (
  `vizsga_id` int(11) NOT NULL,
  `vizsgazo_nev` text NOT NULL,
  `osztaly` text NOT NULL,
  `cli` int(11) NOT NULL,
  `gui` int(11) NOT NULL,
  `html` int(11) NOT NULL,
  `backend` int(11) NOT NULL,
  `frontend` int(11) NOT NULL,
  `osszpont` int(11) NOT NULL,
  `szazalek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `vizsga`
--

INSERT INTO `vizsga` (`vizsga_id`, `vizsgazo_nev`, `osztaly`, `cli`, `gui`, `html`, `backend`, `frontend`, `osszpont`, `szazalek`) VALUES
(1, 'Új Ida', '13.C', 8, 6, 5, 2, 4, 25, 38),
(2, 'Csillag Diána', '13.A', 10, 10, 9, 12, 14, 55, 85),
(3, 'Hajnal Csillag', '14.eSz', 8, 8, 8, 10, 10, 44, 68);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `eskuvo`
--
ALTER TABLE `eskuvo`
  ADD PRIMARY KEY (`eskuvo_id`);

--
-- A tábla indexei `horoszkop`
--
ALTER TABLE `horoszkop`
  ADD PRIMARY KEY (`horoszkop_id`);

--
-- A tábla indexei `idojaras`
--
ALTER TABLE `idojaras`
  ADD PRIMARY KEY (`idojaras_id`);

--
-- A tábla indexei `taxi`
--
ALTER TABLE `taxi`
  ADD PRIMARY KEY (`taxi_id`);

--
-- A tábla indexei `vizsga`
--
ALTER TABLE `vizsga`
  ADD PRIMARY KEY (`vizsga_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `eskuvo`
--
ALTER TABLE `eskuvo`
  MODIFY `eskuvo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `horoszkop`
--
ALTER TABLE `horoszkop`
  MODIFY `horoszkop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `idojaras`
--
ALTER TABLE `idojaras`
  MODIFY `idojaras_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `taxi`
--
ALTER TABLE `taxi`
  MODIFY `taxi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `vizsga`
--
ALTER TABLE `vizsga`
  MODIFY `vizsga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
