-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Haz 2019, 15:11:04
-- Sunucu sürümü: 10.1.40-MariaDB
-- PHP Sürümü: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bulutmd-form`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `birth` date NOT NULL,
  `question1` text COLLATE utf8_turkish_ci NOT NULL,
  `question2` text COLLATE utf8_turkish_ci NOT NULL,
  `question3` text COLLATE utf8_turkish_ci NOT NULL,
  `question4` int(11) NOT NULL,
  `additions` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `applicants`
--

INSERT INTO `applicants` (`id`, `name`, `tc`, `address`, `phone`, `email`, `birth`, `question1`, `question2`, `question3`, `question4`, `additions`) VALUES
(122, 'Ahmet Mehmeto?lu', '16546456331', 'Adres', '5458259968', 'ahmetmehmet@hotmail.com', '1970-02-12', 'evet', 'kalitesi', 'Beylikdüzü/?STANBUL', 50000, '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
