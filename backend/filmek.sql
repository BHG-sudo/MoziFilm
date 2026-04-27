-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Ápr 27. 14:37
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4
CREATE DATABASE filmek
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
(0, 'https://www.imdb.com/title/tt1016150/mediaviewer/rm3081122561/?ref_=tt_ov_i', 'Nyugaton A Helyzet Változatlan', 'Edward Berger', '2022-10-28', 'Dráma, Háborús Dráma', '02:27:11'),
(2, 'https://www.imdb.com/title/tt1727824/mediaviewer/rm2041870080/?ref_=tt_ov_i', 'Bohém Rapszódia', 'Bryan Singer', '2018-10-26', 'Életrajzi film, Dráma', '02:14:10'),
(3, 'https://www.imdb.com/title/tt1856101/mediaviewer/rm2677875712/?ref_=tt_ov_i', 'Szárnyas fejvadász 2049', 'Denis Villeneuve', '2017-10-05', 'Sci-Fi, Dráma', '02:44:22'),
(4, 'https://www.imdb.com/title/tt0137523/mediaviewer/rm1482334722/?ref_=tt_ov_i', 'Harcosok Klubja', 'David Fincher', '2000-01-27', 'Thiller, Dráma', '02:19:30'),
(5, 'https://www.imdb.com/title/tt0120586/mediaviewer/rm15519489/?ref_=tt_ov_i', 'Amerikai História X', 'Tony Kaye', '1999-04-15', 'Dráma, Politikai Dráma', '01:59:30'),
(6, 'https://www.imdb.com/title/tt3460252/mediaviewer/rm2736055040/?ref_=tt_ov_i', 'Aljas Nyolcas', 'Quantin Tarantino', '2016-01-06', 'Thiller, Dráma', '02:48:22'),
(7, 'https://www.imdb.com/title/tt1853728/mediaviewer/rm3478320641/?ref_=tt_ov_i', 'Django Elszabadul', 'Quantin Tarantino', '2012-01-13', 'Western, Dráma', '02:45:44'),
(8, 'https://www.imdb.com/title/tt0110912/mediaviewer/rm1229746689/?ref_=tt_ov_i', 'Ponyva Regény', 'Quantin Tarantino', '1994-04-13', 'Dráma, Sötét Komédia', '02:34:36'),
(9, 'https://www.imdb.com/title/tt0169858/mediaviewer/rm1571282690/?ref_=tt_ov_i', 'Neon Genesis Evangelion: Az Evangelion Vége', 'Hideaki Anno', '1997-07-19', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:27:10'),
(11, 'https://www.imdb.com/title/tt0923811/mediaviewer/rm3301766401/?ref_=tt_ov_i', 'Neon Genesis Evangelion 1.0: You Are (Not) Alone', 'Hideaki Anno', '2007-09-01', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:38:10'),
(12, 'https://www.imdb.com/title/tt0860906/mediaviewer/rm827192577/?ref_=tt_ov_i', 'Neon Genesis Evangelion 2.0: You Can (Not) Advance', 'Hideaki Anno', '2009-06-27', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:48:10'),
(13, 'https://www.imdb.com/title/tt0860907/mediaviewer/rm2818101250/?ref_=tt_ov_i', 'Neon Genesis Evangelion 3.0: You Can (Not) Redo', 'Hideaki Anno', '2012-11-17', 'Dráma, Sci-Fi, Pszichológiai Thiller', '01:36:30'),
(14, 'https://www.imdb.com/title/tt2458948/mediaviewer/rm1569769729/?ref_=tt_ov_i', 'Neon Genesis Evangelion 3.0 + 1.0: Thrice Upon A Time', 'Hideaki Anno', '2021-03-08', 'Dráma, Sci-Fi, Pszichológiai Thiller', '02:35:30'),
(15, 'https://www.imdb.com/title/tt4262980/mediaviewer/rm2496660224/?ref_=tt_ov_i', 'Shin Godzilla', 'Hideaki Anno', '2016-07-29', 'Dráma, Politikai Dráma, Sci-Fi', '02:00:30'),
(16, 'https://www.imdb.com/title/tt23289160/mediaviewer/rm71257089/?ref_=tt_ov_i', 'Godzilla Minus One', 'Hideaki Anno', '2023-11-03', 'Dráma, Akció, Háborús', '02:05:30'),
(17, 'https://www.imdb.com/title/tt0096251/mediaviewer/rm2201861634/?ref_=tt_ov_i', 'Tetsuo: Vasember', 'Shin\'ya Tsukamoto', '1989-07-01', 'Horror, Sci-Fi', '01:07:00'),
(18, 'https://www.imdb.com/title/tt0816692/mediaviewer/rm3520863489/?ref_=tt_ov_i', 'Csillagok között', 'Christopher Nolan', '2014-11-06', 'Sci-Fi, Dráma', '02:49:00'),
(19, 'https://www.imdb.com/title/tt0073650/mediaviewer/rm3506135297/?ref_=tt_ov_i', 'Saló: avagy Szodoma 120 napja', 'Pier Paolo Pasolini', '1995-03-08', 'Tragédia, Dráma', '02:00:00'),
(20, 'https://www.imdb.com/title/tt0066921/mediaviewer/rm1351407872/?ref_=tt_ov_i', 'Mechanikus Narancs', 'Stanley Kubrick', '1971-03-08', 'Sötét Komédia, Disztópikus Sci-Fi', '02:16:00'),
(21, 'https://www.imdb.com/title/tt0225009/mediaviewer/rm894095873/?ref_=tt_ov_i', '964 Pinocchio', 'shozin Fukui', '1991-09-14', 'Horror, Sci-Fi', '01:37:00'),
(22, 'https://www.imdb.com/title/tt0418763/mediaviewer/rm3466395904/?ref_=tt_ov_i', 'Bőrnyakúak', 'Sam Mendes', '2005-01-05', 'Sötét Komédia, Háborús Dráma', '02:05:00'),
(23, 'https://www.imdb.com/title/tt0185906/mediaviewer/rm1952109570/?ref_=tt_ov_i', 'Az Elit Alakulat', 'Tom Hanks', '2001-09-09', 'Akció, Háborús Dráma', '00:00:00'),
(24, 'https://www.imdb.com/title/tt0076759/mediaviewer/rm4007647745/?ref_=tt_ov_i', 'Csillagok Háborúja: Egy Új Remény', 'George Lucas', '1977-08-16', 'Sci-Fi, Akció', '02:01:00'),
(25, 'https://www.imdb.com/title/tt0080684/mediaviewer/rm4041602305/?ref_=tt_ov_i', 'Csillagok Háborúja: A Birodalom Visszavág', 'George Lucas', '1980-01-28', 'Sci-Fi, Akció', '02:04:00'),
(26, 'https://www.imdb.com/title/tt0086190/mediaviewer/rm1744912129/?ref_=tt_ov_i', 'Csillagok Háborúja: A Jedi Visszatér', 'George Lucas', '1984-09-13', 'Sci-Fi, Akció', '02:11:00'),
(27, 'https://www.imdb.com/title/tt1160419/mediaviewer/rm2967684865/?ref_=tt_ov_i', 'Dűne', 'Denis Villeneuve', '2021-10-21', 'Sci-Fi, Dráma ,Akció', '02:35:00'),
(28, 'https://www.imdb.com/title/tt15239678/mediaviewer/rm3185788673/?ref_=tt_ov_i', 'Dűne: Második Rész', 'Denis Villeneuve', '2024-02-29', 'Sci-Fi, Dráma ,Akció', '02:46:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `meta_adat`
--
ALTER TABLE `meta_adat`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `meta_adat`
--
ALTER TABLE `meta_adat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
