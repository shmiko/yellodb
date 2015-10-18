-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Oct 17, 2015 at 11:47 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: yello
--

--
-- Dumping data for table album
--

INSERT INTO album (AlbumID, AlbumName, ArtistID, AlbumPrice, AlbumNotes, AlbumCatalogNumber, AlbumAvailable, AlbumCoverURL, AlbumCoverThumbnailURL) VALUES
(1, 'The Helen Lundy Trio', 1, 16, 'Stellar performances and driving beat make this album a must for all Macromusica fans and collectors. Featuring Color Combination; Margot, Margaux, Margot; Lovely But Unlikely; La Rondalla; Concrete Jungle; Exit Gilman Street; Big Fives; Mysterious Disappearances; Patiently Waiting; I Believe Down Where You Are; Next.', 10001, 1, 'assets/bands/HLT_blackcover.jpg', 'assets/bands/HLT_blackcover_thumbnail.jpg'),
(2, 'Have you seen Tintin?', 2, 16, 'Experimental music that challenges the mind and the ear.', 10002, 1, 'assets/bands/YL_hyst.jpg', 'assets/bands/YL_hyst_thumbnail.jpg'),
(4, 'MX', 8, 18, 'Software isn''t the only thing these engineer types produce. 12 Dreamweaver inspired songs developed along with the software.<br><br>The feelgood CD of the season?', 10003, 1, 'assets/bands/UB_cover.jpg', 'assets/bands/UB_thumbnail.jpg'),
(5, 'Call out the Cavalry', 7, 19, 'These guys talk a lot of smack, the friendly website visitor says to themself, I wonder what they sound like?', 10004, 1, 'assets/bands/LS_cover.JPG', 'assets/bands/LS_thumbnail.JPG'),
(6, 'The Road Less Traveled', 5, 19, '', 10005, 1, 'assets/bands/JAENUS_cover.jpg', 'assets/bands/JAENUS_thumbnail.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
