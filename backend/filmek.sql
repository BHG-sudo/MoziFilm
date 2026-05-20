-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Máj 18. 14:43
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


CREATE DATABASE IF NOT EXISTS `filmek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `filmek`;

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
  `ido` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `meta_adat`
--

INSERT INTO `meta_adat` (`id`, `borito`, `cim`, `rendezo`, `kiadas`, `mufaj`, `ido`) VALUES
(0, 'https://media.themoviedb.org/t/p/w220_and_h330_face/hbWu7RZNBdWOExLEt3umpbTkmsl.jpg', 'Nyugaton A Helyzet Változatlan', 'Edward Berger', '2022-10-28', 'Dráma, Háborús Dráma', '02:27:00'),
(1, 'https://media.themoviedb.org/t/p/w300_and_h450_face/oYl3NkQbe28NFJQImrPJ5mTj1QO.jpg', 'R-Pont - A Halál Zóna', 'Su-chang Kong', '2004-08-13', 'Háborús Dráma, Horror', '01:47:00'),
(2, 'https://media.themoviedb.org/t/p/w300_and_h450_face/c1pWxoJuLRnhVLZNLgCiLXEjBys.jpg', 'Bohém Rapszódia', 'Bryan Singer', '2018-10-26', 'Életrajzi film, Dráma', '02:14:00'),
(3, 'https://media.themoviedb.org/t/p/w300_and_h450_face/oGrU0mw3B6ffKJixiEtSWuFOp8v.jpg', 'Szárnyas fejvadász 2049', 'Denis Villeneuve', '2017-10-05', 'Sci-Fi, Dráma', '02:44:00'),
(4, 'https://media.themoviedb.org/t/p/w300_and_h450_face/74RcH5EIo9IrPIgsZw7mGd989tW.jpg', 'Harcosok Klubja', 'David Fincher', '2000-01-27', 'Thiller, Dráma', '02:19:00'),
(5, 'https://media.themoviedb.org/t/p/w300_and_h450_face/aKQZEMsI5mo1qI7JgzeiBcvgarU.jpg', 'Amerikai História X', 'Tony Kaye', '1999-04-15', 'Dráma, Politikai Dráma', '01:59:00'),
(6, 'https://media.themoviedb.org/t/p/w300_and_h450_face/uqXD4ILapkpK9QAArL901vtGDcu.jpg', 'Aljas Nyolcas', 'Quantin Tarantino', '2016-01-06', 'Thiller, Dráma', '02:48:00'),
(7, 'https://media.themoviedb.org/t/p/w300_and_h450_face/uiC9Q5qArI8OsNTAH6PIWhwsztl.jpg', 'Django Elszabadul', 'Quantin Tarantino', '2012-01-13', 'Western, Dráma', '02:45:00'),
(8, 'https://media.themoviedb.org/t/p/w300_and_h450_face/i8N31RHT6WaBXSicxABMRyBH4yQ.jpg', 'Ponyvaregény', 'Quantin Tarantino', '1994-04-13', 'Dráma, Sötét Komédia', '02:34:00'),
(9, 'https://media.themoviedb.org/t/p/w300_and_h450_face/1WbHq4iUuLvD8cDQydm7jK0sotX.jpg', 'Neon Genesis Evangelion: Az Evangelion Vége', 'Hideaki Anno', '1997-07-19', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:27:00'),
(11, 'https://media.themoviedb.org/t/p/w300_and_h450_face/pETU4GurpeEjBOM8oytMH0yNBHx.jpg', 'Neon Genesis Evangelion 1.0: You Are (Not) Alone', 'Hideaki Anno', '2007-09-01', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:38:00'),
(12, 'https://media.themoviedb.org/t/p/w220_and_h330_face/wgEpDRynfr2ofAdB4GkCujPSitJ.jpg', 'Neon Genesis Evangelion 2.0: You Can (Not) Advance', 'Hideaki Anno', '2009-06-27', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:48:00'),
(13, 'https://media.themoviedb.org/t/p/w220_and_h330_face/d0s1xvykzl0kz7fP5S2ROYqphdz.jpg', 'Neon Genesis Evangelion 3.0: You Can (Not) Redo', 'Hideaki Anno', '2012-11-17', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:36:00'),
(14, 'https://media.themoviedb.org/t/p/w300_and_h450_face/md5wZRRj8biHrGtyitgBZo7674t.jpg', 'Neon Genesis Evangelion 3.0 + 1.0: Thrice Upon A Time', 'Hideaki Anno', '2021-03-08', 'Dráma, Sci-Fi, Pszichológiai Thiller', '02:35:00'),
(15, 'https://media.themoviedb.org/t/p/w300_and_h450_face/jPNShaWZMpVF0iQ7j1dvTuZLD20.jpg', 'Shin Godzilla', 'Hideaki Anno', '2016-07-29', 'Dráma, Politikai Dráma, Sci-Fi', '02:00:00'),
(16, 'https://media.themoviedb.org/t/p/w220_and_h330_face/a6GpeyAle6br9C8iMweZpflbdPo.jpg', 'Godzilla Minus One', 'Hideaki Anno', '2023-11-03', 'Dráma, Akció, Háborús', '02:05:00'),
(17, 'https://media.themoviedb.org/t/p/w300_and_h450_face/skAxIP1DgnVIXaUaPFozWXtsbhs.jpg', 'Tetsuo: Vasember', 'Shinya Tsukamoto', '1989-07-01', 'Horror, Sci-Fi', '01:07:00'),
(18, 'https://media.themoviedb.org/t/p/w300_and_h450_face/6KiSSndIMLj1swkpPNq2lYppDVQ.jpg', 'Csillagok között', 'Christopher Nolan', '2014-11-06', 'Sci-Fi, Dráma', '02:49:00'),
(19, 'https://media.themoviedb.org/t/p/w220_and_h330_face/3X2o8o5EZMI1N0gwFjtZ1O6KtKO.jpg', 'Saló: avagy Szodoma 120 napja', 'Pier Paolo Pasolini', '1995-03-08', 'Tragédia, Dráma', '02:00:00'),
(20, 'https://media.themoviedb.org/t/p/w300_and_h450_face/boRgts8QmRdcm7gaA43WQG8FhAS.jpg', 'Mechanikus Narancs', 'Stanley Kubrick', '1971-03-08', 'Sötét Komédia, Disztópikus Sci-Fi', '02:16:00'),
(21, 'https://media.themoviedb.org/t/p/w220_and_h330_face/jnQdrbSKFYXPtsqV3EihoF1XMpS.jpg', '964 Pinocchio', 'Shozin Fukui', '1991-09-14', 'Horror, Sci-Fi', '01:37:00'),
(22, 'https://media.themoviedb.org/t/p/w300_and_h450_face/xIjcPrMdvEtF8BQVelNb5sZja9a.jpg', 'Bőrnyakúak', 'Sam Mendes', '2005-01-05', 'Sötét Komédia, Háborús Dráma', '02:05:00'),
(23, 'https://media.themoviedb.org/t/p/w300_and_h450_face/hnjNDGUtbUh9KvmVk0Y3Su0ULYg.jpg', 'Az Elit Alakulat', 'Tom Hanks', '2001-09-09', 'Akció, Háborús Dráma', '00:00:00'),
(24, 'https://media.themoviedb.org/t/p/w300_and_h450_face/6QVcD9tnwjwkfkQeeSa33kv62dJ.jpg', 'Csillagok Háborúja: Új Remény', 'George Lucas', '1977-08-16', 'Sci-Fi, Akció', '02:01:00'),
(25, 'https://media.themoviedb.org/t/p/w300_and_h450_face/eF6P0EeFy7qgpZ2TSnhsMnZmugk.jpg', 'Csillagok Háborúja: A Birodalom Visszavág', 'George Lucas', '1980-01-28', 'Sci-Fi, Akció', '02:04:00'),
(26, 'https://media.themoviedb.org/t/p/w300_and_h450_face/toIzKyBZUO0eKwkNUrhDzp9gZ2y.jpg', 'Csillagok Háborúja: A Jedi Visszatér', 'George Lucas', '1984-09-13', 'Sci-Fi, Akció', '02:11:00'),
(27, 'https://media.themoviedb.org/t/p/w300_and_h450_face/pjK23LsatDQwDDveNmNqWbArX5T.jpg', 'Dűne', 'Denis Villeneuve', '2021-10-21', 'Sci-Fi, Dráma ,Akció', '02:35:00'),
(28, 'https://media.themoviedb.org/t/p/w300_and_h450_face/md6VWaPq3uE5Ghw78BPabtjKFtK.jpg', 'Dűne: Második Rész', 'Denis Villeneuve', '2024-02-29', 'Sci-Fi, Dráma ,Akció', '02:46:00'),
(29, 'https://media.themoviedb.org/t/p/w220_and_h330_face/wcBZACCTkNKFNw8mMOUiT0qgRqN.jpg', 'A Halál 1000 Arca', 'John Alan Schwartz', '1987-11-10', 'Dokumentumfilm', '01:45:00'),
(30, 'https://media.themoviedb.org/t/p/w220_and_h330_face/jD5tBdjlrb2t8zSkOc7PkJDoJak.jpg', 'Schindler Listája', 'Steven Spielberg', '1993-12-15', 'Dráma, Háborúellenes film, Tragédia', '03:15:00'),
(31, 'https://media.themoviedb.org/t/p/w220_and_h330_face/zA4mtf6sgBuF22BQp8ro2f5LxTQ.jpg', 'A Sólyom Végveszélyben', 'Ridley Scott', '2002-01-28', 'Háborús Dráma, Akció', '02:25:00'),
(32, 'https://media.themoviedb.org/t/p/w220_and_h330_face/pt7XRpJMypMvmcXTSLLC9B2TgFc.jpg', 'Tora! Tora! Tora!', 'Richard Fleischer, Toshio Masuda, Fukasaku Kinji', '1970-01-26', 'Háborús Dráma, Akció', '02:24:00'),
(33, 'https://media.themoviedb.org/t/p/w220_and_h330_face/xb7yQZEZChTD4FZ5vpvMfi8u14r.jpg', 'Páncélba Zárt Szellem', 'Mamoru Oshii', '1995-09-23', 'Sci-Fi, Akció, Dráma', '01:23:00'),
(34, 'https://media.themoviedb.org/t/p/w220_and_h330_face/sAHh7weBXjH0qtiQP3Z7bIECoxf.jpg', 'Becstelen Brigantyk', 'Quentin Tarantino', '2009-08-20', 'Akció, Sötét Komédia, Dráma', '02:33:00'),
(35, 'https://media.themoviedb.org/t/p/w220_and_h330_face/79vujbsWEbX4dzffBV541QXN6sf.jpg', 'Perfect Blue', 'Satoshi Kon', '1998-02-28', 'Thiller, Dráma', '01:21:00'),
(36, 'https://media.themoviedb.org/t/p/w220_and_h330_face/hJaodNynKzjPyPWIXBL7mJpXvn3.jpg', 'Szentjánosbogarak Sírja', 'Takahata Isao', '1988-04-16', 'Tragédia, Dráma', '01:29:00');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
