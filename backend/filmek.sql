-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Jún 01. 14:23
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `filmek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(255) NOT NULL,
  `nev` varchar(1000) NOT NULL,
  `jelszo` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film_listak`
--

CREATE TABLE `film_listak` (
  `id` int(255) NOT NULL,
  `filmekID` int(255) NOT NULL,
  `felhasznalokID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `film_listak`
--

INSERT INTO `film_listak` (`id`, `filmekID`, `felhasznalokID`) VALUES
(0, 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `meta_adat`
--

CREATE TABLE `meta_adat` (
  `id` int(100) NOT NULL,
  `borito` varchar(1000) NOT NULL,
  `cim` varchar(1000) NOT NULL,
  `rendezo` varchar(1000) NOT NULL,
  `kiadas` date NOT NULL,
  `mufaj` varchar(1000) NOT NULL,
  `ido` time NOT NULL,
  `hatter` varchar(1000) NOT NULL,
  `leiras` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `meta_adat`
--

INSERT INTO `meta_adat` (`id`, `borito`, `cim`, `rendezo`, `kiadas`, `mufaj`, `ido`, `hatter`, `leiras`) VALUES
(0, 'https://media.themoviedb.org/t/p/w220_and_h330_face/hbWu7RZNBdWOExLEt3umpbTkmsl.jpg', 'Nyugaton A Helyzet Változatlan', 'Edward Berger', '2022-10-28', 'Dráma, Háborús Dráma', '02:27:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/xBwtP27cx8WfjHJVFkpuV6F1RES.jpg', 'Paul Bäumer és barátai, Albert és Frantz, akiket a hősiesség romantikus álmai táplálnak, önként jelentkeznek a német hadseregbe. A fiúk izgalommal és hazafias hévvel telve lelkesen vonulnak bele egy olyan háborúba, amelyben hisznek. A nyugati fronton azonban felfedezik az I. világháború lélekpusztító borzalmát.'),
(1, 'https://media.themoviedb.org/t/p/w300_and_h450_face/oYl3NkQbe28NFJQImrPJ5mTj1QO.jpg', 'R-Pont - A Halál Zóna', 'Su-chang Kong', '2004-08-13', 'Háborús Dráma, Horror', '01:47:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/tV4ASlhHNvfvhTuICH8pUOsl0Pr.jpg', 'A vietnámi háború vége felé a koreai hadsereg rejtélyes rádióüzenetet kap egy korábban nyomtalanul eltűnt, majd emiatt halottá nyilvánított szakasztól. Mivel a segélykérő üzenet folyamatosan ismétlődik, a hadvezetés úgy dönt, hogy kis létszámú egységet küld a helyszínre, akik egy hetet kapnak a mentőakció kivitelezésére. A katonák azonban megérkezésük után hamarosan rádöbbennek, hogy ezúttal a háború borzalmainál valami sokkal szörnyűbb dologgal kell, hogy szembenézzenek.'),
(2, 'https://media.themoviedb.org/t/p/w300_and_h450_face/c1pWxoJuLRnhVLZNLgCiLXEjBys.jpg', 'Bohém Rapszódia', 'Bryan Singer', '2018-10-26', 'Életrajzi film, Dráma', '02:14:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/7mmXWuBeNJiBO0NIOUWOuFve4Tb.jpg', 'Freddie Mercury fittyet hányt a sztereotípiákra és ellenszegült a konvencióknak, így vált belőle a világ egyik legkedveltebb zenésze. Tanúi lehetünk a zenekar üstökösszerű felemelkedésének meghatározó dalaik és forradalmi hangzásuk révén, Mercury féktelen életvitelének a bandára gyakorolt hatásainak, és dicső visszatérésüknek a Live Aiden, ahol a már súlyos betegséggel küzdő Mercuryvel az élen a rocktörténelem egyik legnagyszerűbb koncertjét adják. A Queen nem csupán zenekar, hanem egy család is volt, s máig megihletik a kívülállókat, az álmodozókat és a zene szerelmeseit.'),
(3, 'https://media.themoviedb.org/t/p/w300_and_h450_face/oGrU0mw3B6ffKJixiEtSWuFOp8v.jpg', 'Szárnyas fejvadász 2049', 'Denis Villeneuve', '2017-10-05', 'Sci-Fi, Dráma', '02:44:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/ilRyazdMJwN05exqhwK4tMKBYZs.jpg', 'Már 30 éve, hogy Rick Deckard, a szárnyas fejvadász eltűnt a színről. K ügynök felfedez egy régi titkot, ami a társadalmat totális káoszba taszíthatja. Az információ arra készteti a rendőrt, hogy felkeresse Deckardot, s együtt tegyenek valamit.'),
(4, 'https://media.themoviedb.org/t/p/w300_and_h450_face/74RcH5EIo9IrPIgsZw7mGd989tW.jpg', 'Harcosok Klubja', 'David Fincher', '2000-01-27', 'Thiller, Dráma', '02:19:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg', 'Amerika nagyvárosainak pincéiben egy titkos szervezet működik: ha egy éjjel az utca összes nyilvános telefonja összetörik, ők jártak ott; ha egy köztéri szobor óriás fémgömbje legurul talapzatáról, és szétrombol egy gyorsétkezdét, az az ő művük; ha egy elegáns bank parkolójának összes autóját rettentően összerondítják a galambok - az sem véletlen. Vigyáznak a leveleinkre, átveszik telefonüzeneteinket, kísérnek az utcán: és még csak készülnek a végső dobásra: a nagy bummra... Pedig az egészet csak két túlzottan unatkozó jóbarát találta ki: azzal kezdték, hogy rájöttek, nincs jobb stresszoldó, mint ha alaposan megverik egymást. Pofonokat adni jó. Pofonokat kapni jó. Számukra ez a boldog élet szabálya.'),
(5, 'https://media.themoviedb.org/t/p/w300_and_h450_face/aKQZEMsI5mo1qI7JgzeiBcvgarU.jpg', 'Amerikai História X', 'Tony Kaye', '1999-04-15', 'Dráma, Politikai Dráma', '01:59:00', 'https://image.tmdb.org/t/p/original/2g9wTUvEYUE2iN3Z52dMuQ5w4wE.jpg', 'Derek Vinyard jogosnak vélt elkeseredettségében csatlakozik a rasszista fehérekhez. Egy ízben két szerencsétlen fekete megpróbálja ellopni a kocsiját, erre megöli őket. A rács mögött Derek világról vallott elképzelései 180 fokos fordulatot vesznek. Szabadon bocsátásakor igyekszik öccsét, Dannyt letéríteni a rossz útról.'),
(6, 'https://media.themoviedb.org/t/p/w300_and_h450_face/uqXD4ILapkpK9QAArL901vtGDcu.jpg', 'Aljas Nyolcas', 'Quantin Tarantino', '2016-01-06', 'Thiller, Dráma', '02:48:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/mUt9NGfLpHlqCCABeTCMntSLCVq.jpg', 'Nyolc sokat próbált fejvadász, az amerikai polgárháborút követő időszakban találkoznak egymással Wyoming erdős vidékein. Egy kemény hóvihar elől menekülve kénytelenek egy helyen meghúzni magukat, a kényszerű összezártság eredménye pedig ármány és intrika. Vajon túlélik-e a vihart az egymás megtévesztésével és átverésével boldogulni próbáló hétpróbás gazemberek?'),
(7, 'https://media.themoviedb.org/t/p/w300_and_h450_face/uiC9Q5qArI8OsNTAH6PIWhwsztl.jpg', 'Django Elszabadul', 'Quantin Tarantino', '2012-01-13', 'Western, Dráma', '02:45:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/s4cJQaj40SwMifUrrdtdOJsjnRO.jpg', 'Amerika déli része két évvel a polgárháború előtt. Egy különös módszereket követő profi fejvadász egy rabszolga segítségével nagy sikert ér el, és hálából felszabadítja Djangót. De a társak együtt maradnak, hogy megkeressék a fekete férfi feleségét, akit egy rabszolgapiacon láttak utoljára. A nyomok végül egy ültetvényre vezetik őket, melynek tulajdonosa rabszolgáit - trénere segítségével - egymás elleni gladiátorküzdelemre képezi ki. A fejvadászoknak sikerül bejutniuk a birtokra, de nem biztos, hogy ki is jutnak onnan: a földesúr hű szolgája gyanút fog, és a kalandorok csapdába esnek. Dönteniük kell, hogy az önfeláldozás vagy a túlélés-e a fontosabb számukra.'),
(8, 'https://media.themoviedb.org/t/p/w300_and_h450_face/i8N31RHT6WaBXSicxABMRyBH4yQ.jpg', 'Ponyvaregény', 'Quantin Tarantino', '1994-04-13', 'Dráma, Sötét Komédia', '02:34:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg', 'Adott két idősödő, szabad szájú, tökös, szimpatikus gengszter, Vincent és Jules, akik igyekeznek főnöküknek visszaszerezni egy aktatáskát. Ehhez persze meg kell ölniük pár embert, de ez az egyszerű bérgyilkosokkal gyakran megesik. Jules a rá célzott golyókat csodával határos módon elkerüli, s ezt jelnek tekintvén úgy dönt, felhagy eddigi életével. Társának viszont el kell vinnie szórakozni a gengszterfőnök feleségét... Van továbbá egy boxoló, Butch, aki a hírhedt marffiafőnök, Marselleus Wallace átvágását tervezi. Hogy-hogy nem, odáig fajul a történet, hogy végül már inkább a megmentésére készül, mint a lelövésére... Nem utolsósorban, pedig, van egy piti rabló-párosunk is, akik éppen egy étterem kirablására készülnek. Ám ott reggelizik Vincent és Jules.'),
(9, 'https://media.themoviedb.org/t/p/w300_and_h450_face/k8j4YLZlda98dqp9ErymKzjYowG.jpg', 'Ichi the Killer', 'Takashi Miike', '2001-12-22', 'Dráma, Sötét Komédia, Krimi', '02:09:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/6Do6tBBHlBvr7aglrJqVHQ2TyLb.jpg', 'Adott egy szadista yakuza főnök, akinek rejtélyes körülmények között nyoma vész, de nem csak ő tűnik el, hanem egymilliárd jen is. Kakihara, a klán alvezére kettős motivációtól hajtva ered a nyomába: egyrészt a gang-hűség nem hagyja nyugodni, másrészt az, hogy szadizmusa mellett kedveli a mazochista játékokat is, és a főnök volt a kedvenc játszótársa. Az elsőszámú gyanúsított egy rivális banda vezetője, akiből úgy próbálnak meg információt kiszedni, hogy bőre alá dugott kampóknál fogva fellógatják, majd meglocsolják némi forró olajjal, s hogy ez sem hat, végső megoldásként különböző testrészeit szúrják keresztül kötőtűhöz hasonlatos tárgyakkal. Mint később kiderül, a fickó ártatlan, az akció félreértés volt, s ezt Kakihara nyelve bánja. Bocsánatkérésként ugyanis kénytelen lenyisszantani, természetesen premier plánban, hogy élvezhessük a részleteket. A főnök eltűnése mögött azonban Jijii és csapata áll. Jijii, aki regresszív hipnózisban tartja Ichit, a skizoid gyilkológépet.'),
(10, 'https://media.themoviedb.org/t/p/w300_and_h450_face/1WbHq4iUuLvD8cDQydm7jK0sotX.jpg', 'Neon Genesis Evangelion: Az Evangelion Vége', 'Hideaki Anno', '1997-07-19', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:27:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/mF0JGy2BxGuXr7d1ZVLz2UIEFdW.jpg', 'SEELE nem hagyja annyiba a NERV sikereit. Támadást indít a központ ellen. Nem bízzák a véletlenre, ugyanis minden egységüket a központra küldik. Shinji megtörve elbújik a NERV központban a többiek elől. Miután a katonák bejutnak a létesítménybe, kíméletlenül elintéznek mindenkit, akik az útjukba állnak. A feladatuk a három pilóta likvidálása (Shinji, Rei, Asuka). Misato Shinji keresésére indul, de a SEELE beveti a titkos fegyverét, az UNIT 05-ket. Ezek a gépek már pilóták nélkül működnek. Asuka az EVA 02-vel felveszi a harcot ellenük. A feszültség egyre fokozódik, amikor is a harc közepette valami megváltozik. Valami, amit eddig soha nem éreztek. Vajon Misato idejében megtalálja Shinjit, és sikerül-e a NERV-nek visszaverni a támadást? De az egyszer biztos, a döntés ismét Shinji kezébe kerül!'),
(11, 'https://media.themoviedb.org/t/p/w300_and_h450_face/pETU4GurpeEjBOM8oytMH0yNBHx.jpg', 'Neon Genesis Evangelion 1.0: You Are (Not) Alone', 'Hideaki Anno', '2007-09-01', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:38:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/tmXP9R43XlYTmVD7XLnakFbf2ax.jpg', 'Ikari Shinji egy átlagos, 14 éves fiúnak mondhatta magát egészen addig, amíg meghívást nem kapott, hogy utazzon el a Tokyo 3-ban lévő NERV központba. Meg is tette a hosszú távot, hogy újra láthassa édesapját, aki annak a központnak a parancsnoka. De megérkezése nem zajlik zökkenőmentesen. Megpillant egy hatalmas lényt, melyet Angyalnak hívnak. Itt találkozik Misatóval, egy csinos hölggyel, aki elviszi őt a központba. Mint utóbb kiderül, az apja csak azért hívatta, hogy egy óriásrobotot vezessen, melyet Evangelion-nak hívnak. Mint később kiderül, még egy Eva létezik. Ezek a szerkezetek az egyetlenek, amik felvehetik az Angyalok ellen a harcot. Irányítani csak 14 éves gyerekek tudják, mert csak ők tudnak összehangolódni az Eva-kkal. Shinji eleinte nem akarja elvállalni, de amint meglátja, hogy apja képes egy sérült lányt a neki szánt Evangelion-ba ültetni, meggondolja magát és kezébe veszi a sorsát.'),
(12, 'https://media.themoviedb.org/t/p/w220_and_h330_face/wgEpDRynfr2ofAdB4GkCujPSitJ.jpg', 'Neon Genesis Evangelion 2.0: You Can (Not) Advance', 'Hideaki Anno', '2009-06-27', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:48:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/pzsVGcufDdBLmvagKyLFKaeA4O5.jpg', 'A második rész a NERV sarkvidéki bázisán, a Bethany Base-en kezdődik. Rögtön az anime elején megismerhetjük az új szereplőt, Makinami Mari Illustrious-t, az új EVA UNIT-05 pilótáját, aki a bázis alatt harcol a Harmadik Angyal ellen. Eközben Japánban Ikari Shinji édesanyja sírját látogatja meg apjával. Útközben hazafelé Misatóval értesülnek a Hetedik Angyal támadásáról, miközben a UNIT-02 légi úton megérkezik Németországból, és rögvest felveszi a harcot az Angyallal. Pilótája a Második Gyermek, Shikinami Asuka Langley százados. Vele egyidőben Ryoji Kaji is megérkezik'),
(13, 'https://media.themoviedb.org/t/p/w220_and_h330_face/d0s1xvykzl0kz7fP5S2ROYqphdz.jpg', 'Neon Genesis Evangelion 3.0: You Can (Not) Redo', 'Hideaki Anno', '2012-11-17', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:36:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/tsfaQbAlpjaXU4UvnrRRN11GXTi.jpg', 'Tizennyégy évvela a Harmadik Becsapódás után, Ikari Shinji egy olyan világban ébred amit nem ismer. Nem öregedet teste. A Föld nagyrésze elpusztult és romokban áll, a NERV feloszlott és akiket Shinji egykoron ismert ellene fordultak. Megismerkedik a titokzatos Nagisa Kaworu-val, tovább folytatja a harcot az Angyalok ellen és saját társai ellen. A karakterek szenvedése tovább folytatódik és lassan a világ a pusztulásba torkollik  '),
(14, 'https://media.themoviedb.org/t/p/w300_and_h450_face/md5wZRRj8biHrGtyitgBZo7674t.jpg', 'Neon Genesis Evangelion 3.0 + 1.0: Thrice Upon A Time', 'Hideaki Anno', '2021-03-08', 'Dráma, Sci-Fi, Pszichológiai Thiller', '02:35:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/poqAxMWSAghXJGsqCH0rCQ4qS7v.jpg', 'A Negyedik Becsapódás után, elválasztva az EVA egységétől, Shinji, Asuka és Rei rátalálnak egy aprócska menekült táborra ami még mindig képes létezni az elpusztult Földön. Itt mindhárman élhetnek egy olyan életet ami nagyon távol áll az EVA pilóta életüktől, de a világ meég mindig veszélyben van. Közeleg egy újabb, Ötödik Becsapódás ami most már ténylegesen elpusztítja az egész világot.'),
(15, 'https://media.themoviedb.org/t/p/w300_and_h450_face/jPNShaWZMpVF0iQ7j1dvTuZLD20.jpg', 'Shin Godzilla', 'Hideaki Anno', '2016-07-29', 'Dráma, Politikai Dráma, Sci-Fi', '02:00:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/tb0uo01w2kDHiQwTszsLlSusAm4.jpg', 'A harmincadik Godzilla feldolgozás az eredeti japán verzió (1954) reboot-ja. A történet középpontjában a japán partoknál végzett nukleáris kísérletek révén létrejött hatalmas és pusztító erejű lény, Godzilla áll .....'),
(16, 'https://media.themoviedb.org/t/p/w220_and_h330_face/a6GpeyAle6br9C8iMweZpflbdPo.jpg', 'Godzilla Minus One', 'Hideaki Anno', '2023-11-03', 'Dráma, Akció, Háborús', '02:05:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/oHBhHoNe59VH6bUMazDtJmWOFSS.jpg', 'A háború utáni Japán a mélyponton van, amikor egy új válság jelenik meg egy óriási szörnyeteg formájában, amelyet az atombomba szörnyű erejébe kereszteltek meg.'),
(17, 'https://media.themoviedb.org/t/p/w300_and_h450_face/skAxIP1DgnVIXaUaPFozWXtsbhs.jpg', 'Tetsuo: Vasember', 'Shinya Tsukamoto', '1989-07-01', 'Horror, Sci-Fi', '01:07:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/sZ40CNVFVNFwANLQO0l1GuBPbRG.jpg', 'Egy japán üzletember minden napi rutinja közben \r\nmegsebesül egy fémdarab által ami lassan átalakítja az egész testét fémmé és acélá\r\n'),
(18, 'https://media.themoviedb.org/t/p/w300_and_h450_face/6KiSSndIMLj1swkpPNq2lYppDVQ.jpg', 'Csillagok között', 'Christopher Nolan', '2014-11-06', 'Sci-Fi, Dráma', '02:49:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/2ssWTSVklAEc98frZUQhgtGHx7s.jpg', 'A nem túl távoli jövőben járunk, melyben bolygónk kezd lakhatatlanná válni. A föld alig hoz termést, rendszeresek a homokviharok, és lassan levegőt se lehet venni. Egy jelenés Coopert a NASA titkos telepére vezeti, ahol felkérik, hogy legyen a tagja annak a csapatnak, mely az emberiségnek új lakhelyet keres az univerzumban. Egy ismeretlen segítséggel megnyitott átjárón keresztül eljutnak egy galaxisba, ahol a közelben kialakult fekete lyuk miatt az idő is másképp telik. Ami nekik egy óra, az a végét járó földön éveket jelent. Alaposan meg kell hát gondolnia Coopernek, hogy a szóba jöhető bolygók közül melyikre látogat el, ha vissza akar térni a lányához, ahogy azt megígérte.'),
(19, 'https://media.themoviedb.org/t/p/w220_and_h330_face/3X2o8o5EZMI1N0gwFjtZ1O6KtKO.jpg', 'Saló: avagy Szodoma 120 napja', 'Pier Paolo Pasolini', '1995-03-08', 'Tragédia, Dráma', '02:00:00', '', 'Az utolsó Pasolini-film De Sade márki nyomán: négy fasiszta egy villában a legváltozatosabb szexuális kínzásoknak veti alá a foglyokat. \"A Saloval mindazokhoz fordulok, akik hozzám hasonlóan gyűlölik a Hatalmat, azért, amit az emberi testtel művel: dologgá aljasítja, s ezáltal az embert megfosztja a személyiségétől... Én különös hévvel gyűlölöm azt a hatalmat, amelytől most, 1975-ben szenvedek. Ez a hatalom olyan rettenetes eszközökkel manipulálja a testet, hogy még Hitlertől sincs mit irigyelnie: ...új, elidegenített és hazug értékrendet hirdet, a fogyasztó társadalom értékeit. Ma az megy végbe éppen, amit Marx az élő, valódi, korábbi kultúrák megsemmisítésének nevezett...\" (Pasolini)'),
(20, 'https://media.themoviedb.org/t/p/w300_and_h450_face/boRgts8QmRdcm7gaA43WQG8FhAS.jpg', 'Mechanikus Narancs', 'Stanley Kubrick', '1971-03-08', 'Sötét Komédia, Disztópikus Sci-Fi', '02:16:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/skyOmzgiSSH8pggZxkbZ5KhKPCz.jpg', 'Alex és bandája éjszakánként a város utcáit járja és terrorizálja. A megvadult fiatalok törnek, zúznak, rabolnak és gyilkolnak, mígnem a bandavezért a társai föl nem nyomják a zsaruknak. A börtönben Alex önként vállalkozik egy új átnevelési gyógymódra. A sajátos agymosás célja, hogy kiölje az emberből az agresszivitást. Miután a kezelést követően gyógyultnak nyilvánítják, szabadon engedik. Alex azonban életképtelenné vált a társadalomban, kiszolgáltatottja lesz egykori áldozatai bosszújának. Végül öngyilkosságot kísérel meg.'),
(21, 'https://media.themoviedb.org/t/p/w220_and_h330_face/jnQdrbSKFYXPtsqV3EihoF1XMpS.jpg', '964 Pinocchio', 'Shozin Fukui', '1991-09-14', 'Horror, Sci-Fi', '01:37:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/ya0YqVXvrfqn7jY1rxMlLWuHRDI.jpg', 'Egy lobotomizált, defektes kiborg rabszolgát kidobtak az útcára aholo befogadja egy hajléktalan lány, persze a gyártó cég vadászik rá'),
(22, 'https://media.themoviedb.org/t/p/w300_and_h450_face/xIjcPrMdvEtF8BQVelNb5sZja9a.jpg', 'Bőrnyakúak', 'Sam Mendes', '2005-01-05', 'Sötét Komédia, Háborús Dráma', '02:05:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/kMs0MbZyPXMycQZJhQeWfuSdzCv.jpg', 'Az önkéntes Anthony húszéves, amikor 1990 nyarán Szaúd-Arábiába küldik, hogy harcoljon az Öböl-háborúban. Közelről azonban egészen másként látja az iraki háborút, mint amilyennek azt az újságok és a televíziók bemutatják. Érzi az égő olajkutak bűzét, ott retteg a fiatal katonák között, akik nem tudják mi vár rájuk a sivatagban, átéli a támadásra készülődés unalmát, megszagolja a vér ízét, és megtapasztalja az ütközetek fizikai és pszichológiai hatását, a katonák között kialakuló összetartás érzését. Anthony Swafford könyvéből.'),
(23, 'https://media.themoviedb.org/t/p/w300_and_h450_face/hnjNDGUtbUh9KvmVk0Y3Su0ULYg.jpg', 'Az Elit Alakulat', 'Tom Hanks', '2001-09-09', 'Akció, Háborús Dráma', '00:00:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/2yDV0xLyqW88dn5qE7YCRnoYmfy.jpg', 'Az elit alakulat az amerikai hadsereg egy második világháborús különítményének, a 101. számú légi hadosztály 506. számú ezredének történetét meséli el. Az elit alakulat a televíziózás történetének eddigi legköltségesebb alkotása: 120 millió dollárba került a 10 epizód forgatása. Stephen E. Ambrose történész-író éveken át gyűjtötte könyvéhez az anyagokat. A katonák magánlevelezéseiket is a rendelkezésére bocsátották. Ezekből az apró töredékekből rajzolódott ki az író számára a soha nem tapasztalt perspektíva a történelem legvéresebb háborújáról. Fény derül a csapaton belüli viszonyok láncolatára és arra, hogy ezek a katonák szinte kivétel nélkül megbíztak egymásban és feláldozták volna az életüket egymásért.'),
(24, 'https://media.themoviedb.org/t/p/w300_and_h450_face/6QVcD9tnwjwkfkQeeSa33kv62dJ.jpg', 'Csillagok Háborúja:Egy Új Remény', 'George Lucas', '1977-08-16', 'Sci-Fi, Akció', '02:01:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/4qCqAdHcNKeAHcK8tJ8wNJZa9cx.jpg', 'Réges régen, egy távoli galaxisban kezdődött a nagy kaland, amikor Leia Organa hercegnő két fura robottal egy alig értékelhető hologramot küldött az egyetlen Jedi lovagnak, a remeteként élő Ben Kenobinak. Az idős jedi Luke Skywalker, Han Solo és szőrős vukija, a hatalmas Chewbacca társaságában útra kel, hogy kiszabadítsa a hercegnőt Darth Vader fogságából, és győzelemre vigye az igaz ügyet az egész Galaxisban.'),
(25, 'https://media.themoviedb.org/t/p/w300_and_h450_face/eF6P0EeFy7qgpZ2TSnhsMnZmugk.jpg', 'Csillagok Háborúja: A Birodalom Visszavág', 'George Lucas', '1980-01-28', 'Sci-Fi, Akció', '02:04:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/jzwAfFvueebloG8xvRH9Smp1ilS.jpg', 'A felkelők maréknyi csapata a hó borította Hoth bolygó földalatti támaszpontján rejtőzködik. A szondák azonban felfedik a rejtekhelyet és hamarosan birodalmi lépegetők lepik el a bolygót. Han Solo, Chewbacca és Leia a megbízhatatlan Lando Calrissian segítségét kérik. Nem is sejtik, hogy a birodalom rettegett ura, Darth Vader már várja őket nem kis meglepetést tartogatva Han számára. Luke Skywalker a Dagobah rendszerben az utolsó és legnagyobb Jedit, Yodát keresi, hogy felkészülhessen a végső összecsapásra az Erő sötét oldalával.'),
(26, 'https://media.themoviedb.org/t/p/w300_and_h450_face/toIzKyBZUO0eKwkNUrhDzp9gZ2y.jpg', 'Csillagok Háborúja: A Jedi Visszatér', 'George Lucas', '1984-09-13', 'Sci-Fi, Akció', '02:11:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/u2Wm56EUgkHh3k2qmvvAtM99shw.jpg', 'Miután Luke megmentette barátját, Han Solót és a szépséges Leia hercegnőt a biztos haláltól, ismét csatlakozik Yodához, hiszen igazi Jedi Lovaggá kell válnia ahhoz, hogy szembeszállhasson Darth Vaderrel és az Erő sötét oldalával. Végre eljött a végső összecsapás ideje! A felkelők készen állnak arra, hogy megsemmisítő csapást mérjenek a Halálcsillagra. Arra azonban nem számítanak, hogy a bolygót elpusztíthatatlan energiapajzs védi és a Birodalom csapdába csalja őket.'),
(27, 'https://media.themoviedb.org/t/p/w300_and_h450_face/pjK23LsatDQwDDveNmNqWbArX5T.jpg', 'Dűne', 'Denis Villeneuve', '2021-10-21', 'Sci-Fi, Dráma ,Akció', '02:35:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/iVnPBDtsZmrwY0R38H1aLsXKXZ7.jpg', 'A távoli jövőben, a bolygóközi királyságok korában járunk. A királyságok az Arrakis bolygó feletti uralomért harcolnak, de a naprendszereken átívelő cselszövések, háborúk és politikai manőverek közepette van egy ember, aki talán békét hozhat az univerzumnak. De ehhez harcolnia kell.'),
(28, 'https://media.themoviedb.org/t/p/w300_and_h450_face/md6VWaPq3uE5Ghw78BPabtjKFtK.jpg', 'Dűne: Második Rész', 'Denis Villeneuve', '2024-02-29', 'Sci-Fi, Dráma ,Akció', '02:46:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/24Ov8wnusgnzXwjV1eDm0Lzo5da.jpg', 'Paul Atreides egyesül a fremenekkel, miközben bosszút áll a családját elpusztító összeesküvők ellen. Paul választás előtt áll, Chani - élete szerelme - és az ismert univerzum sorsa között, és megpróbálja megakadályozni a szörnyű jövőt, amelyet csak ő láthat előre.'),
(29, 'https://media.themoviedb.org/t/p/w220_and_h330_face/wcBZACCTkNKFNw8mMOUiT0qgRqN.jpg', 'A Halál 1000 Arca', 'John Alan Schwartz', '1987-11-10', 'Dokumentumfilm', '01:45:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/lgWat1xjBURVHF8a7OOrOcyCzN1.jpg', 'A sokkoló dokumentumfilm emberek baleseteit, emberi életek pillanatok alatt történõ elmúlását mutatja be mindenféle félrebeszélés és finomkodás nélkül. A késõbb sorozattá váló A halál ezer arca kendõzetlenül és brutálisan mutatja meg, mennyit ér az életünk - mennyi halálos veszély leselkedik ránk a világban. Dokumentumfilm, vagy megrendezett ál-valóság? A több mint másfél óra alatt mindenkinek lesz ideje rá, hogy ezt eldöntse magában, és szembesüljön a halál könyörületet nem ismerõ, ezerféle arcával.'),
(30, 'https://media.themoviedb.org/t/p/w220_and_h330_face/jD5tBdjlrb2t8zSkOc7PkJDoJak.jpg', 'Schindler Listája', 'Steven Spielberg', '1993-12-15', 'Dráma, Háborúellenes film, Tragédia', '03:15:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/kR6o1uZLcL1rEdPSGtRsnUr0PUD.jpg', 'Oskar Schindler üzletember igaz története arról, ahogy megmentett több mint ezer zsidó életet a náciktól, a második világháború alatt a németek által megszállt Lengyelországban.'),
(31, 'https://media.themoviedb.org/t/p/w220_and_h330_face/zA4mtf6sgBuF22BQp8ro2f5LxTQ.jpg', 'A Sólyom Végveszélyben', 'Ridley Scott', '2002-01-28', 'Háborús Dráma, Akció', '02:25:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/8l7czWdywGquqGxKCSWTlFmgBpT.jpg', 'Egy évtizede megtörtént kommandós esetet dolgoz fel a látványos film: 1993. október 3-án közel 100 ejtőernyős amerikai katonát dobtak le Mogadishuban, Szomália fővárosában Mike Steele kapitány (Jason Isaacs) vezetésével. A polgárháborút szító hadúr és szárnysegédei voltak a célpontok. A 45 percesre tervezett villámakció 16 órás vérfürdőbe torkollott. 18 katonát és két Black Hawk típusú hipermodern harci helikoptert veszítettek az amerikaiak. A sikertelen akció a szomáliai amerikai akciók beszüntetésére hangolta az otthoni közvéleményt. Mark Bowden nagysikerű naplójából készült a drámai pillanatokban bővelkedő mozi.'),
(32, 'https://media.themoviedb.org/t/p/w220_and_h330_face/pt7XRpJMypMvmcXTSLLC9B2TgFc.jpg', 'Tora! Tora! Tora!', 'Richard Fleischer, Toshio Masuda, Fukasaku Kinji', '1970-01-26', 'Háborús Dráma, Akció', '02:24:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/q922aHeSX81zQRh0GbW1cm6CaB2.jpg', '1941 nyarán az amerikai-japán viszony meglehetősen feszült, de még mindenki abban reménykedik, hogy a vitás kérdéseket sikerül diplomáciai úton rendezni. A japánok azonban már felkészültek egy Pearl Harbour elleni meglepetésszerű támadásra. Az amerikai hírszerzés ugyan figyelemmel követi a japán diplomáciai üzeneteket, de még Washington legbelsőbb körei sem tartják valószínűnek, hogy egy ilyen akció bekövetkezik, ezért nem is készülnek fel rá megfelelően.'),
(33, 'https://media.themoviedb.org/t/p/w220_and_h330_face/xb7yQZEZChTD4FZ5vpvMfi8u14r.jpg', 'Páncélba Zárt Szellem', 'Mamoru Oshii', '1995-09-23', 'Sci-Fi, Akció, Dráma', '01:23:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/jIpagj2Dud9g3ZVJFvaWikEWsYz.jpg', 'A nem is olyan távoli jövőben az egyesült hálózatok a csillagokig nyúlnak. Elektronok cikáznak keresztül-kasul a világegyetemben. A fejlett technika azonban nem törölte el végleg a nemzetek közötti különbségeket.'),
(34, 'https://media.themoviedb.org/t/p/w220_and_h330_face/sAHh7weBXjH0qtiQP3Z7bIECoxf.jpg', 'Becstelen Brigantyk', 'Quentin Tarantino', '2009-08-20', 'Akció, Sötét Komédia, Dráma', '02:33:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/7rC61YnAa41JDWp0eixj4OzjFSP.jpg', 'Franciország német megszállásának első évében Shosanna Dreyfus családját a lány szeme láttára végzi ki Hans Landa náci ezredes. Shosannának éppen hogy sikerül megmenekülnie és Párizsba szökik, ahol új személyiséget vesz fel: egy mozi tulajdonosa és üzemeltetője lesz. Európa egy másik részén eközben Aldo Raine hadnagy egy csoport amerikai zsidó katonát verbuvál gyors, sokkoló megtorlóakciók végrehajtásához. A később \"Brigantyk\" néven elhíresülő osztag csatlakozik Bridget Von Hammersmark német színésznőhöz és titkosügynökhöz egy akcióban, melynek célja a harmadik birodalom vezetőinek kiiktatása. Hőseink sorsa egy mozi bejáratánál fut össze, ahol Shosanna a saját bosszútervét készül végrehajtani.'),
(35, 'https://media.themoviedb.org/t/p/w220_and_h330_face/79vujbsWEbX4dzffBV541QXN6sf.jpg', 'Perfect Blue', 'Satoshi Kon', '1998-02-28', 'Thiller, Dráma', '01:21:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/1YRtgjLb5xxUb2rsNRnr54Oc0B2.jpg', 'Ügynöke legnagyobb megdöbbenésére Mima nem csupán közepesen sikeres tini-zenekarából lép ki, de ártatlanságot tükröző imázsát is hátrahagyja, hogy egy fülledt hangulatú tévésorozatban vállaljon szerepet. A karrierváltást nem minden rajongója veszi jó néven. Mimát hamarosan üldözni kezdi egy rettenetes figura, ráadásul valaki intim részleteket közöl róla az Interneten. Később új arculatának két legfőbb alakítóját, egy forgatókönyvírót és egy fényképészt brutálisan meggyilkolnak, Mimát pedig régi énjének víziói kísértik. A lányon egyre jobban eluralkodik az a szörnyű érzés, hogy talán köze lehet a halálesetekhez...'),
(36, 'https://media.themoviedb.org/t/p/w220_and_h330_face/hJaodNynKzjPyPWIXBL7mJpXvn3.jpg', 'Szentjánosbogarak Sírja', 'Takahata Isao', '1988-04-16', 'Tragédia, Dráma', '01:29:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/dlC0ed9Ugh3FzydnkBtV5lRXUu4.jpg', 'A film egy fiatal testvérpár szívszorító sorsát követi végig a második világháború sújtotta Japánban. Szeita és alig négyéves kishúga, Szecukó apja egy hadihajón szolgál, amikor anyjuk életét veszti bombázás okozta tűzvészben. A két árva egyik nagynénjükhez kerül, ám hamarosan kiderül, hogy a háborúban elszegényedett, bizalmatlanná vált társadalomban csak magukra számíthatnak, és kénytelenek egyedül szembenézni a háború poklával. A fenyegető éhség és a bombázók árnyékában csak a szentjánosbogarak halvány fénye képes a reményt életben tartani. A Szentjánosbogarak sírja minden idők egyik legmegrázóbb háborús filmje a Ghibli stúdió Chihiro Szellemországban, A vándorló palota alkotóitól, ami az animáció páratlan erejével képes a gyermeki ártatlanságot és akaratot szembeállítani a világégés borzalmaival és a társadalom közönyével.'),
(37, 'https://media.themoviedb.org/t/p/w220_and_h330_face/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg', 'Kill Bill', 'Quentin Tarantino', '2003-10-16', 'Akció, Sötét Komédia, Dráma', '01:51:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/toBh6jTjwM2z9q44k0z5wBfIOr4.jpg', 'A Menyasszony egykor hírhedt bérgyilkosnő volt, egy világklasszis női bérgyilkos-csapat tagja. Ám terhes lett és férjhez akart menni, de a főnök ezt nem hagyhatta. Az esküvője napján a csapat vezetője, Bill mindenkit lemészárol. A Menyasszony utolsó szavaival tudatja Bill-lel, hogy várandós és az ő gyerekét hordja szíve alatt. A nő nem hal bele a fejlövésbe, hanem ötévi kóma után véres bosszút esküszik főnöke és egykori csapattársai ellen. Senki nem tudhatja, mikor fog következni a listán. Csak egy biztos: Bill lesz az utolsó a sorban.'),
(38, 'https://media.themoviedb.org/t/p/w220_and_h330_face/2yhg0mZQMhDyvUQ4rG1IZ4oIA8L.jpg', 'Kill Bill 2', 'Quentin Tarantino', '2004-04-29', 'Akció, Sötét Komédia, Dráma', '02:16:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/akXPz7zK6NZ8YxGqjcHunGK9bXL.jpg', 'A Menyasszony végzett két egykori társával, majd tovább folytatja bosszúhadjáratát. A halállistáján Budd és Elle következik. Miután rendezi a számláját Bill öccsével és Elle-lel, aki a bérgyilkosokból álló csapaton belül a legfőbb vetélytársa volt, Mexikóba megy, hogy megtalálja utolsó áldozata rejtekhelyét. Már csak egyetlen cél lebeg előtte: megölni Billt, az egykori főnökét és szeretőjét, gyermekének apját. Közben kiderül, hogy lánya, akivel várandós volt a mészárlás idején és azt hitte, hogy meghalt, mégis életben van.'),
(39, 'https://media.themoviedb.org/t/p/w300_and_h450_face/o4SM2hP63vMaPuAox6UuwVybHo4.jpg', 'Umamusume:Pretty Derby - Beginning of a New Era', 'Ken Yamamoto', '2024-05-24', 'Sport, Dráma, Vígjáték', '01:48:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/dXI7HXKQ1xeVUAaWMT67onX7XXJ.jpg', 'Jungle Pocket, egy Táltos Lány aki fáradhatatlanul küzd azért, hogy generációja legjobbja legyen, készen áll már, hogy élete legfontosabb mérkőzésén részt vegyen, és elérje a legnagyobb teljítményt a versenyzésben, a Tripla koronát. De nem lesz olyan egyszerű neki hiszen útjában áll riválisa aki lehet, hogy egész generációját túl képes szárnyalni'),
(40, 'https://media.themoviedb.org/t/p/w300_and_h450_face/jxkIz5oywSb6gU67rylrkCUk1D9.jpg', 'Umamusume:Pretty Derby - Road to the Top', 'Liao Chengzhi', '2024-05-10', 'Sport, Dráma, Vígjáték', '01:39:00', 'https://media.themoviedb.org/t/p/w500_and_h282_face/29ZsFm3OkkKqWzCsmu7t5Bdyquw.jpg', 'A történet a Táltos Lány Narita Top Road-ról szól akinek célja, hogy Japán legjobb versenyzője legyen, viszont útjában áll generációja legdominánsabb versenyzője akinek győzelme mindig egyértelmű');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `film_listak`
--
ALTER TABLE `film_listak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_film` (`filmekID`);

--
-- A tábla indexei `meta_adat`
--
ALTER TABLE `meta_adat`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `film_listak`
--
ALTER TABLE `film_listak`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `meta_adat`
--
ALTER TABLE `meta_adat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `film_listak`
--
ALTER TABLE `film_listak`
  ADD CONSTRAINT `fk_film` FOREIGN KEY (`filmekID`) REFERENCES `meta_adat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
