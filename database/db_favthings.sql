-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2020 at 03:06 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

DROP TABLE IF EXISTS `things`;
CREATE TABLE IF NOT EXISTS `things` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Description` text,
  `Image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`ID`, `Name`, `Description`, `Image`) VALUES
(1, 'Gaming', 'Gaming is of my favourite things to do in my spare time while I\'m at home. Either alone or with friends, there\'s always something to play when I\'m bored. Since there\'s endless amounts of content in online games It\'s a nice go-to when there\'s no other desirable options. The main games I tend to play are games such as League of Legends, Valorant, CS:GO, Rocket League, Runescape and plenty of others.', 'fav-gaming.svg'),
(2, 'Watching Movies', 'Watching movies is something I have always enjoyed doing when I want a break from everything. When I\'m at home and want to just relax throwing a nice movie on is a go-to option for me. I usually prefer to go see the newest movies in the theatres, but recently that just hasn\'t been possible so I\'ll just enjoy the movies from home for now. Either with my friends or alone a good movie is always nice to pass the time.', 'fav-movies.svg'),
(3, 'Hanging out with friends', 'Hanging out with my friends is something I haven\'t been able to do at all recently, but is one of my favourite things to do when possible. Either just roaming around the city or doing sports like soccer or skiing, it\'s always a pretty enjoyable thing to do. Hopefully, soon enough this will eventually become something I am actually able to do.', 'fav-friends.svg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
