-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 01 Mar 2022, 09:32
-- Wersja serwera: 10.4.22-MariaDB-cll-lve
-- Wersja PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blackleo_szkola`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa3GTc_gr1_osoba`
--

CREATE TABLE `klasa3GTc_gr1_osoba` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Imie` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Imie_dwa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nazwisko` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_wpis` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Miejscowosc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Typ_Miejscowosc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Not_Miasto',
  `Login` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Haslo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `E-mail` text COLLATE utf8_unicode_ci NOT NULL,
  `Wiek` int(10) UNSIGNED NOT NULL,
  `data_roz_szkola` datetime NOT NULL DEFAULT '1990-09-01 08:00:00',
  `data_zak_szkola` datetime NOT NULL DEFAULT '1995-05-20 11:20:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `klasa3GTc_gr1_osoba`
--

INSERT INTO `klasa3GTc_gr1_osoba` (`ID`, `Imie`, `Imie_dwa`, `Nazwisko`, `data_wpis`, `Miejscowosc`, `Typ_Miejscowosc`, `Login`, `Haslo`, `E-mail`, `Wiek`, `data_roz_szkola`, `data_zak_szkola`) VALUES
(1, 'Robert', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'BlackLeo', '123', 'blackleo@zstjaslo.pl', 44, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(2, 'Łukasz', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'LukaszB', 'qw12', 'borowiecki.lukasz.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(3, 'Szymon', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'SzymonH', 'q123', 'szymon.halerz.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(4, 'Adrian', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'AdrianK', '1324', 'klusek.adrian.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(5, 'Hubert', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'HubertJ', '13245', 'jakubowski.hubert.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(6, 'Tomasz', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'TomaszG', 'qwerty123', 'golen.tomasz.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(7, 'Mateusz', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'MateuszB', 'asdfg', 'bracha.mateusz.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(8, 'Kacper', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'KacperG', 'asdfg312', 'gniady.kacper.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(9, 'Eryk', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'ErykG', 'asdfg3124', 'galuszka.eryk.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(10, 'Norbert', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'NorbertB', 'asdfg3126', 'betlej.norbert.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(11, 'Kacper', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'KacperB', '2345', 'baran.kacper.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(12, 'Sebastian', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'SebastianF', '1234', 'filak.sebastian.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(13, 'Wiktor', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'WiktorB', '123', 'biel.wiktor.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(14, 'Michal', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'MichalB', '123', 'budziak.michal.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(15, 'Jakub', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'JakubH', '123', 'hebda.jakub.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(16, 'Michał', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'MichałG', '123', 'gajoski.michal.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00'),
(17, 'Mateusz', '', '', '2022-03-01 08:16:26', '', 'Not_Miasto', 'MateuszF', '123', 'furmanek.mateusz.gtc@edu.zstjaslo.pl', 18, '1990-09-01 08:00:00', '1995-05-20 11:20:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasa3GTc_gr1_osoba`
--
ALTER TABLE `klasa3GTc_gr1_osoba`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klasa3GTc_gr1_osoba`
--
ALTER TABLE `klasa3GTc_gr1_osoba`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
