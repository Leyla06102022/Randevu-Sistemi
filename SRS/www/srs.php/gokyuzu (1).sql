-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 13 Tem 2023, 19:39:39
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gokyuzu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `kullanici_id` int NOT NULL AUTO_INCREMENT,
  `kullanici_adsoyad` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `kullanici_tc` bigint NOT NULL,
  `kullanici_password` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`kullanici_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_adsoyad`, `kullanici_tc`, `kullanici_password`) VALUES
(1, 'Leyla Altaş', 2147483647, '87654'),
(10, 'Mücahid Akın', 65689393901, '6102022'),
(8, 'Melek Özdemir', 1234567898, '87645');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevu`
--

DROP TABLE IF EXISTS `randevu`;
CREATE TABLE IF NOT EXISTS `randevu` (
  `randevu_id` int NOT NULL,
  `randevu_sehir` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `randevu_tarih` date NOT NULL,
  `randevu_hastane` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `randevu_klinik` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `randevu_hasta_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `randevu`
--

INSERT INTO `randevu` (`randevu_id`, `randevu_sehir`, `randevu_tarih`, `randevu_hastane`, `randevu_klinik`, `randevu_hasta_id`) VALUES
(0, '', '0000-00-00', '', '', 0),
(0, '', '0000-00-00', '', '', 0),
(0, '', '0000-00-00', '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
