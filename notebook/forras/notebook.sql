-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 14. 13:54
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `notebook`
--

DELIMITER $$
--
-- Eljárások
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `archivalas` ()   begin
insert into archivum select * from termekek where db=0;
delete from termekek where db=0;
select row_count() as torolt;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `oprend`
--

CREATE TABLE `oprend` (
  `oid` int(11) NOT NULL,
  `operacios_rendszer` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `oprend`
--

INSERT INTO `oprend` (`oid`, `operacios_rendszer`) VALUES
(1, 'FreeDOS'),
(2, 'Linux'),
(3, 'Microsoft Vista Business'),
(4, 'Microsoft Vista Home Basic HU'),
(5, 'Microsoft Vista Home Premium'),
(6, 'Microsoft Vista Home Premium HU'),
(7, 'Microsoft Vista Home Premium HU notebook'),
(8, 'nincs'),
(9, 'Windows 7 Home Premium HU 32Bit'),
(10, 'Windows 7 Home Premium HU 64Bit'),
(11, 'Windows 7 Starter Edition HU'),
(12, 'Windows XP Home Magyar');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `processzor`
--

CREATE TABLE `processzor` (
  `pid` int(11) NOT NULL,
  `processzor_gyarto` varchar(5) NOT NULL,
  `processzor_tipus` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `processzor`
--

INSERT INTO `processzor` (`pid`, `processzor_gyarto`, `processzor_tipus`) VALUES
(1, 'AMD', 'Athlon 64 X2 QL64'),
(2, 'AMD', 'Athlon 64 X2 QL65'),
(3, 'AMD', 'Athlon TM Neo MV-40'),
(4, 'AMD', 'Mobil Sempron SI-40'),
(5, 'AMD', 'Turion64 X2 TL60'),
(6, 'AMD', 'Turion64 X2 TL62'),
(7, 'AMD', 'Turion64 X2 TL64'),
(8, 'Intel', 'Celeron 900'),
(9, 'Intel', 'Celeron Dual-Core T1600'),
(10, 'Intel', 'Celeron Dual-Core T1700'),
(11, 'Intel', 'Celeron Dual-Core T3000'),
(12, 'Intel', 'Celeron M 560'),
(13, 'Intel', 'Celeron M ULV723'),
(14, 'Intel', 'Centrino Atom 1600'),
(15, 'Intel', 'Centrino Atom N270'),
(16, 'Intel', 'Centrino Atom N280'),
(17, 'Intel', 'Centrino Atom Z520'),
(18, 'Intel', 'Centrino Atom Z530'),
(19, 'Intel', 'Core Duo T3400'),
(20, 'Intel', 'Core2 Duo P7350'),
(21, 'Intel', 'Core2 Duo P8400'),
(22, 'Intel', 'Core2 Duo P8600'),
(23, 'Intel', 'Core2 Duo P8700'),
(24, 'Intel', 'Core2 Duo SL9400'),
(25, 'Intel', 'Core2 Duo SU7300'),
(26, 'Intel', 'Core2 Duo SU9300'),
(27, 'Intel', 'Core2 Duo SU9400'),
(28, 'Intel', 'Core2 Duo T5670'),
(29, 'Intel', 'Core2 Duo T5870'),
(30, 'Intel', 'Core2 Duo T6400'),
(31, 'Intel', 'Core2 Duo T6500'),
(32, 'Intel', 'Core2 Duo T6570'),
(33, 'Intel', 'Core2 Duo T6600'),
(34, 'Intel', 'Core2 Duo T6670'),
(35, 'Intel', 'Core2 Duo T7300'),
(36, 'Intel', 'Core2 Duo T7500'),
(37, 'Intel', 'Core2 Duo T8300'),
(38, 'Intel', 'Core2 Duo T9300'),
(39, 'Intel', 'Core2 Duo T9400'),
(40, 'Intel', 'Core2 Solo SU3500 ULV'),
(41, 'Intel', 'Pentium Dual Core SU4100'),
(42, 'Intel', 'Pentium dual-core T4200'),
(43, 'Intel', 'Pentium dual-core T4300'),
(44, 'VIA', 'Via Nano ULV 2250');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(8) NOT NULL,
  `memoria` int(11) NOT NULL,
  `merevlemez` int(11) NOT NULL,
  `videovezerlo` varchar(33) NOT NULL,
  `ar` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `oid` int(4) NOT NULL,
  `pid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `gyarto`, `memoria`, `merevlemez`, `videovezerlo`, `ar`, `db`, `oid`, `pid`) VALUES
(4, 'HP', 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 167920, 20, 6, 1),
(5, 'ACER', 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 111920, 20, 2, 1),
(6, 'ACER', 3072, 320, 'ATi Mobility Radeon HD4570 512MB', 117520, 20, 2, 1),
(7, 'MSI', 2048, 320, 'ATI Radeon Xpress 1250', 111920, 4, 6, 3),
(8, 'ASUS', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 115920, 1, 8, 3),
(9, 'MSI', 2048, 320, 'NVIDIA GeForce Go 9100M-GS', 90800, 1, 1, 4),
(10, 'ASUS', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 183920, 4, 10, 5),
(11, 'ASUS', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 134320, 5, 8, 7),
(12, 'FUJITSU', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 223920, 4, 6, 6),
(13, 'MSI', 2048, 320, 'Intel Graphics X4500M / 256MB', 112400, 20, 6, 13),
(15, 'DELL', 1024, 160, 'Intel Graphics 4500MHD', 103120, 20, 2, 8),
(18, 'MSI', 4096, 320, 'NVIDIA GeForce Go 8200M 128MB', 95920, 20, 1, 8),
(22, 'HP', 2048, 250, 'Intel Graphics 4500MHD', 111920, 1, 1, 9),
(23, 'FUJITSU', 1024, 160, 'Intel Graphics 4500MHD', 95920, 4, 2, 10),
(24, 'LENOVO', 1024, 160, 'Intel Graphics 4500MHD', 94320, 5, 4, 11),
(25, 'HP', 3072, 320, 'Intel Graphics 4500MHD', 127120, 20, 4, 11),
(27, 'HP', 2048, 250, 'Intel Graphics 4500MHD', 113520, 20, 2, 11),
(28, 'HP', 1024, 160, 'Intel Graphics 4500MHD', 119920, 20, 2, 11),
(29, 'ASUS', 2048, 250, 'Intel Graphics X4500M', 94320, 20, 8, 11),
(32, 'DELL', 1024, 250, 'Intel Graphics x3100', 79920, 20, 2, 12),
(33, 'HP', 1024, 80, 'Intel Graphics 950', 114000, 20, 12, 14),
(34, 'Asus', 1024, 160, 'Intel Graphics 4500MHD', 59920, 4, 12, 15),
(35, 'Asus', 1024, 160, 'Intel Graphics 4500MHD', 59920, 4, 12, 15),
(36, 'DELL', 1024, 160, 'Intel Graphics 500', 55920, 20, 2, 15),
(37, 'DELL', 1024, 160, 'Intel Graphics 500', 63992, 1, 12, 15),
(38, 'DELL', 1024, 160, 'Intel Graphics 500', 63992, 4, 12, 15),
(39, 'DELL', 1024, 160, 'Intel Graphics 500', 63992, 1, 12, 15),
(40, 'DELL', 1024, 160, 'Intel Graphics 500', 63992, 5, 12, 15),
(42, 'DELL', 1024, 160, 'Intel Graphics 500', 63992, 5, 12, 15),
(43, 'DELL', 1024, 160, 'Intel Graphics 500', 87920, 20, 12, 15),
(44, 'ACER', 1024, 120, 'Intel Graphics 950', 58320, 1, 2, 15),
(45, 'ACER', 1024, 160, 'Intel Graphics 950', 68720, 5, 12, 15),
(46, 'ACER', 1024, 160, 'Intel Graphics 950', 68720, 20, 12, 15),
(47, 'MSI', 1024, 160, 'Intel Graphics 950', 71920, 20, 12, 15),
(48, 'HP', 1024, 160, 'Intel Graphics 950', 78320, 20, 12, 15),
(49, 'Asus', 1024, 160, 'Intel Graphics 950', 78320, 20, 12, 15),
(50, 'HP', 1024, 80, 'Intel Graphics 950', 78320, 20, 12, 15),
(51, 'Asus', 1024, 160, 'Intel Graphics 950', 78400, 20, 12, 15),
(52, 'LENOVO', 1024, 160, 'Intel Graphics 950', 79920, 20, 12, 15),
(53, 'LENOVO', 1024, 160, 'Intel Graphics 950', 79920, 5, 12, 15),
(54, 'Asus', 1024, 160, 'Intel Graphics 950', 91999, 5, 12, 15),
(55, 'Asus', 1024, 120, 'Intel Graphics 4500MHD', 106700, 4, 12, 16),
(56, 'ACER', 1024, 160, 'Intel Graphics 950', 71120, 5, 12, 16),
(57, 'ACER', 1024, 160, 'Intel Graphics 950', 71120, 20, 12, 16),
(58, 'MSI', 1024, 160, 'Intel Graphics 950', 72400, 5, 12, 16),
(59, 'MSI', 1024, 160, 'Intel Graphics 950', 72400, 1, 12, 16),
(60, 'LENOVO', 1024, 160, 'Intel Graphics 950', 73520, 20, 12, 16),
(61, 'LENOVO', 1024, 160, 'Intel Graphics 950', 73520, 5, 12, 16),
(63, 'MSI', 1024, 160, 'Intel Graphics 950', 75600, 20, 12, 16),
(64, 'MSI', 1024, 160, 'Intel Graphics 950', 75600, 4, 12, 16),
(65, 'LENOVO', 1024, 160, 'Intel Graphics 950', 77520, 20, 12, 16),
(66, 'Asus', 1024, 160, 'Intel Graphics 950', 82320, 20, 12, 16),
(67, 'Asus', 1024, 160, 'Intel Graphics 950', 82400, 20, 12, 16),
(68, 'Asus', 1024, 160, 'Intel Graphics 950', 87120, 4, 12, 16),
(69, 'Asus', 1024, 160, 'Intel Graphics 950', 95920, 5, 12, 16),
(70, 'Asus', 1024, 160, 'Intel Graphics 950', 95920, 1, 12, 16),
(72, 'Asus', 1024, 160, 'Intel Graphics 950', 95920, 20, 12, 16),
(73, 'Asus', 1024, 160, 'Intel Graphics 950', 95920, 5, 12, 16),
(74, 'TOSHIBA', 1024, 160, 'Intel GMA 950 / 256MB', 95920, 5, 11, 16),
(75, 'Asus', 1024, 160, 'Intel Graphics 500', 96720, 4, 12, 17),
(76, 'Asus', 2048, 250, 'Intel Graphics 500', 98000, 5, 11, 17),
(77, 'ACER', 1024, 160, 'Intel Graphics 950', 81200, 20, 12, 17),
(78, 'ACER', 1024, 160, 'Intel Graphics 950', 81200, 4, 12, 17),
(79, 'ACER', 1024, 160, 'Intel Graphics 950', 81200, 5, 12, 17),
(80, 'ACER', 1024, 160, 'Intel Graphics 950', 81200, 20, 12, 17),
(81, 'ACER', 1024, 160, 'Intel Graphics 950', 81200, 20, 12, 17),
(82, 'Asus', 1024, 160, 'Intel Graphics 950', 96720, 1, 12, 17),
(84, 'Asus', 2048, 250, 'Intel Graphics 950', 98000, 4, 11, 17),
(86, 'ASUS', 2048, 250, 'ATi Mobility Radeon HD3470 256MB', 140720, 4, 6, 19),
(87, 'FUJITSU', 2048, 250, 'Intel Graphics 4500MHD', 110320, 5, 8, 19),
(90, 'MSI', 4096, 500, 'NVIDIA GeForce GT130M 512B DDR3', 216720, 1, 1, 20),
(92, 'LENOVO', 2048, 160, 'Intel Graphics 4500MHD', 241520, 1, 3, 21),
(93, 'LENOVO', 2048, 160, 'Intel Graphics 4500MHD', 244720, 5, 3, 21),
(94, 'FUJITSU', 4096, 160, 'Intel Graphics 4500MHD', 268720, 5, 3, 21),
(95, 'FUJITSU', 4096, 320, 'Intel Graphics 4500MHD', 268720, 1, 3, 21),
(96, 'FUJITSU', 4096, 160, 'Intel Graphics 4500MHD', 279920, 20, 3, 21),
(97, 'LENOVO', 2048, 320, 'Intel Graphics 4500MHD', 279920, 20, 3, 21),
(98, 'LENOVO', 2048, 160, 'ATi Mobility Radeon HD3650', 279920, 20, 3, 22),
(99, 'DELL', 4096, 500, 'ATi Mobility Radeon HD3670 512MB', 266320, 5, 6, 22),
(101, 'DELL', 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, 5, 6, 22),
(102, 'DELL', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 20, 6, 22),
(103, 'DELL', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 1, 6, 22),
(104, 'DELL', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 20, 6, 22),
(105, 'TOSHIBA', 4096, 500, 'ATi Mobility Radeon HD4650 1024MB', 234800, 20, 6, 22),
(106, 'DELL', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, 20, 6, 22),
(107, 'DELL', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, 5, 6, 22),
(108, 'LENOVO', 2048, 160, 'Intel Graphics 4500MHD', 255920, 1, 3, 22),
(109, 'FUJITSU', 4096, 320, 'Intel Graphics 4500MHD', 279920, 20, 3, 22),
(110, 'TOSHIBA', 3072, 250, 'NVIDIA Quadro NVS 150M 256MB', 271920, 20, 3, 22),
(111, 'DELL', 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, 5, 6, 22),
(112, 'DELL', 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, 4, 6, 22),
(113, 'ASUS', 4096, 320, 'NVIDIA GeForce 9650M GT 1GB', 215920, 4, 6, 22),
(115, 'TOSHIBA', 4096, 320, 'NVIDIA GeForce Go 9700M-GT 512MB', 399920, 4, 6, 23),
(116, 'ASUS', 4096, 640, 'NVIDIA GeForce GT220M 1GB', 243920, 20, 10, 23),
(117, 'ASUS', 4096, 500, 'NVIDIA GeForce GT240M 1GB', 247920, 4, 10, 23),
(118, 'MSI', 4096, 500, 'NVIDIA GeForce GTS 160M', 258000, 20, 1, 23),
(120, 'ThinkPad', 2048, 250, 'Intel Graphics 4500MHD', 387120, 20, 3, 24),
(121, 'ACER', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 174320, 5, 6, 25),
(122, 'ACER', 3072, 250, 'ATi Mobility Radeon HD4330 512MB', 164720, 20, 10, 25),
(123, 'ACER', 3072, 250, 'Intel Graphics 4500MHD', 167920, 20, 3, 25),
(124, 'ASUS', 3072, 320, 'Intel Graphics X4500M / 256MB', 146800, 20, 10, 25),
(125, 'ASUS', 3072, 320, 'Intel Graphics X4500M / 256MB', 148720, 20, 10, 25),
(126, 'ASUS', 4096, 500, 'Intel Graphics X4500M / 256MB', 174320, 20, 10, 25),
(127, 'ASUS', 3072, 320, 'Intel Graphics X4500M / 256MB', 177520, 1, 10, 25),
(129, 'ASUS', 3072, 320, 'Intel GMA 950 / 256MB', 162320, 5, 10, 25),
(130, 'ASUS', 4096, 500, 'NVIDIA GeForce G105/512MB', 203920, 20, 10, 25),
(131, 'ASUS', 4096, 500, 'NVIDIA GeForce GT210M 512GB', 191120, 20, 10, 25),
(132, 'TOSHIBA', 2048, 250, 'Intel Graphics 4500MHD', 271920, 5, 3, 26),
(134, 'ACER', 4096, 320, 'Intel Graphics 4500MHD', 168720, 20, 6, 27),
(135, 'ACER', 3072, 320, 'Intel Graphics 4500MHD', 189200, 20, 6, 27),
(137, 'FUJITSU', 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 123920, 1, 8, 28),
(138, 'FUJITSU', 2048, 160, 'SiS Mirage 3+ 256M', 103920, 20, 1, 29),
(140, 'HP', 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 157520, 1, 4, 29),
(141, 'HP', 3072, 320, 'ATi Mobility Radeon HD4330 512MB', 159920, 4, 1, 29),
(142, 'HP', 1024, 160, 'Intel Graphics x3100', 104990, 1, 1, 29),
(143, 'HP', 2048, 320, 'Intel Graphics x3100', 121520, 20, 1, 29),
(146, 'FUJITSU', 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 108000, 20, 2, 29),
(148, 'FUJITSU', 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 143920, 4, 2, 30),
(149, 'FUJITSU', 2048, 320, 'Intel Graphics 4500MHD', 111111, 20, 8, 30),
(151, 'MSI', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 149600, 1, 8, 31),
(152, 'DELL', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 159920, 20, 6, 31),
(153, 'DELL', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 176720, 5, 1, 31),
(154, 'DELL', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 190320, 20, 6, 31),
(155, 'ASUS', 3072, 250, 'Intel Graphics X4500M / 256MB', 159920, 20, 8, 31),
(156, 'ASUS', 4096, 250, 'NVIDIA GeForce G102M/512MB', 135920, 1, 8, 31),
(157, 'DELL', 2048, 320, 'NVIDIA GeForce Go 9400M-GS 256MB', 201520, 5, 6, 31),
(158, 'HP', 3072, 500, 'ATi Mobility Radeon HD4330 256MB', 187600, 5, 6, 32),
(159, 'HP', 2048, 250, 'Intel Graphics 4500MHD', 203920, 20, 3, 32),
(160, 'DELL', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 20, 2, 33),
(162, 'DELL', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 5, 2, 33),
(165, 'MSI', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 164720, 5, 1, 33),
(166, 'ASUS', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 199120, 20, 10, 33),
(167, 'LENOVO', 3072, 320, 'Intel Graphics 4500MHD', 135920, 5, 1, 33),
(168, 'ACER', 3072, 320, 'Intel Graphics 4500MHD', 123920, 20, 2, 33),
(170, 'ASUS', 3072, 250, 'NVIDIA GeForce G102M/512MB', 126320, 4, 2, 33),
(171, 'ASUS', 4096, 500, 'NVIDIA GeForce G102M/512MB', 131920, 20, 2, 33),
(172, 'ASUS', 4096, 500, 'NVIDIA GeForce G105/512MB', 195120, 1, 10, 33),
(174, 'TOSHIBA', 2048, 320, 'NVIDIA GeForce GT210M 512GB', 166320, 20, 10, 33),
(175, 'ASUS', 4096, 500, 'NVIDIA GeForce GT220M 1GB', 167680, 20, 8, 33),
(176, 'ASUS', 4096, 500, 'NVIDIA GeForce GT220M 1GB', 207920, 20, 10, 33),
(177, 'TOSHIBA', 4096, 320, 'NVIDIA GeForce GT230M 1GB', 185520, 20, 10, 33),
(178, 'LENOVO', 2048, 320, 'Intel Graphics 4500MHD', 169520, 20, 4, 34),
(179, 'FUJITSU', 2048, 250, 'Intel Graphics x3100', 135555, 4, 4, 35),
(181, 'FUJITSU', 2048, 160, 'Intel Graphics x3100', 155920, 20, 3, 37),
(182, 'FUJITSU', 4096, 160, 'Intel Graphics x3100', 179120, 20, 3, 38),
(184, 'ACER', 2048, 250, 'Intel Graphics 4500MHD', 130320, 1, 6, 40),
(185, 'MSI', 2048, 500, 'Intel Graphics 4500MHD', 143920, 4, 6, 40),
(186, 'ASUS', 3072, 500, 'Intel Graphics X4500M / 256MB', 198800, 5, 6, 40),
(188, 'ASUS', 4096, 500, 'NVIDIA GeForce G105/512MB', 244720, 20, 6, 40),
(189, 'ACER', 4096, 320, 'Intel Graphics 4500MHD', 138320, 20, 9, 41),
(190, 'ACER', 4096, 320, 'Intel Graphics 4500MHD', 142320, 20, 7, 41),
(191, 'ACER', 4096, 320, 'Intel Graphics 4500MHD', 146320, 20, 9, 41),
(192, 'ACER', 3072, 250, 'Intel Graphics 4500MHD', 150000, 5, 10, 41),
(193, 'TOSHIBA', 4096, 320, 'Intel Graphics X4500M / 256MB', 151920, 5, 10, 41),
(194, 'FUJITSU', 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 110320, 1, 2, 19),
(195, 'TOSHIBA', 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 126000, 5, 8, 19),
(196, 'FUJITSU', 2048, 250, 'Intel Graphics 4500MHD', 111111, 20, 2, 19),
(197, 'FUJITSU', 3072, 250, 'NVIDIA GeForce Go 9300M 256MB', 115920, 5, 8, 19),
(198, 'MSI', 4096, 320, 'ATi Mobility Radeon HD3410 256MB', 121520, 4, 1, 42),
(199, 'TOSHIBA', 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 125520, 20, 8, 42),
(200, 'TOSHIBA', 3072, 320, 'ATi Mobility Radeon HD3470 256MB', 131920, 5, 6, 42),
(201, 'TOSHIBA', 4096, 320, 'ATi Mobility Radeon HD3470 256MB', 135120, 20, 6, 42),
(203, 'MSI', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 133520, 1, 8, 42),
(204, 'HP', 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 183992, 20, 6, 42),
(205, 'ASUS', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 138320, 5, 8, 42),
(206, 'TOSHIBA', 2048, 250, 'Intel Graphics 4500MHD', 103600, 1, 8, 42),
(207, 'FUJITSU', 4096, 320, 'Intel Graphics 4500MHD', 118320, 20, 8, 42),
(208, 'FUJITSU', 4096, 320, 'Intel Graphics 4500MHD', 123920, 20, 8, 42),
(209, 'ASUS', 4096, 320, 'Intel Graphics 4500MHD', 125520, 20, 8, 42),
(210, 'HP', 2048, 250, 'Intel Graphics 4500MHD', 131920, 4, 4, 42),
(211, 'HP', 3072, 320, 'Intel Graphics 4500MHD', 134320, 20, 1, 42),
(212, 'ASUS', 3072, 250, 'Intel Graphics X4500M / 256MB', 143120, 4, 8, 42),
(213, 'ASUS', 4096, 320, 'NVIDIA GeForce G102M/512MB', 129520, 5, 8, 42),
(215, 'ACER', 2048, 250, 'NVIDIA GeForce G105/512MB', 123120, 4, 4, 42),
(217, 'MSI', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 119120, 4, 8, 43),
(218, 'DELL', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 20, 6, 43),
(220, 'DELL', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 4, 6, 43),
(221, 'DELL', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 20, 6, 43),
(222, 'ASUS', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 124720, 20, 8, 43),
(223, 'ACER', 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 126320, 5, 5, 43),
(225, 'TOSHIBA', 2048, 250, 'Intel Graphics 4500MHD', 110320, 20, 6, 43),
(226, 'ACER', 4096, 320, 'Intel Graphics 4500MHD', 126320, 20, 6, 43),
(227, 'ACER', 1024, 160, 'Intel Graphics 4500MHD', 94320, 1, 2, 43),
(228, 'TOSHIBA', 2048, 320, 'Intel Graphics X4500M / 256MB', 103920, 1, 1, 43),
(229, 'ASUS', 2048, 250, 'Intel Graphics X4500M / 256MB', 103920, 1, 8, 43),
(230, 'TOSHIBA', 4096, 320, 'Intel Graphics X4500M / 256MB', 103920, 4, 1, 43),
(231, 'ASUS', 3072, 250, 'Intel Graphics X4500M / 256MB', 110320, 5, 8, 43),
(233, 'ASUS', 4096, 320, 'Intel Graphics X4500M / 256MB', 120400, 1, 8, 43),
(234, 'ASUS', 4096, 320, 'Intel Graphics X4500M / 256MB', 131920, 1, 8, 43),
(235, 'ASUS', 3072, 250, 'NVIDIA GeForce G102M/512MB', 111920, 20, 2, 43),
(236, 'ASUS', 4096, 320, 'NVIDIA GeForce G102M/512MB', 115920, 5, 2, 43),
(237, 'ASUS', 3072, 250, 'NVIDIA GeForce G102M/512MB', 127920, 4, 9, 43),
(238, 'ASUS', 4096, 320, 'NVIDIA GeForce GT120M 1GB', 138320, 20, 8, 43),
(240, 'ASUS', 4096, 500, 'NVIDIA GeForce GT220M 1GB', 143920, 1, 8, 43),
(242, 'MSI', 2048, 320, 'Intel Graphics 4500MHD', 135920, 5, 6, 13),
(243, 'LENOVO', 1024, 160, 'VIA S3 Chrome 9', 97520, 4, 12, 44),
(244, 'LENOVO', 1024, 160, 'VIA S3 Chrome 9', 97520, 4, 12, 44),
(245, 'ASUS', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 98320, 1, 8, 2),
(246, 'ASUS', 3072, 250, 'ATi Mobility Radeon HD4570 512MB', 107120, 5, 8, 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `oprend`
--
ALTER TABLE `oprend`
  ADD PRIMARY KEY (`oid`);

--
-- A tábla indexei `processzor`
--
ALTER TABLE `processzor`
  ADD PRIMARY KEY (`pid`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`),
  ADD KEY `pid` (`pid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `oprend`
--
ALTER TABLE `oprend`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `processzor`
--
ALTER TABLE `processzor`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `termekek`
--
ALTER TABLE `termekek`
  ADD CONSTRAINT `termekek_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `oprend` (`oid`),
  ADD CONSTRAINT `termekek_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `processzor` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
