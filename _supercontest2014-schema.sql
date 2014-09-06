-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2014 at 10:35 AM
-- Server version: 5.5.24
-- PHP Version: 5.4.4-7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skyhook59_supercontest2014`
--
CREATE DATABASE `skyhook59_supercontest2014` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `skyhook59_supercontest2014`;

-- --------------------------------------------------------

--
-- Table structure for table `Lines`
--

CREATE TABLE IF NOT EXISTS `Lines` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `week` int(11) NOT NULL,
  `favTeam` varchar(3) NOT NULL,
  `dogTeam` varchar(3) NOT NULL,
  `line` decimal(10,1) NOT NULL,
  `homeTeam` varchar(3) NOT NULL,
  `favScore` decimal(10,0) NOT NULL,
  `dogScore` decimal(10,0) NOT NULL,
  `gameStatus` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  UNIQUE KEY `gameID` (`gameID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `Lines`
--

INSERT INTO `Lines` (`gameID`, `week`, `favTeam`, `dogTeam`, `line`, `homeTeam`, `favScore`, `dogScore`, `gameStatus`) VALUES
(1, 1, 'SEA', 'GB', -6.0, 'SEA', 36, 16, '(FINAL)  '),
(2, 1, 'NO', 'ATL', -3.0, 'ATL', 0, 0, ' '),
(3, 1, 'STL', 'MIN', -3.5, 'STL', 0, 0, ' '),
(4, 1, 'PIT', 'CLE', -6.5, 'PIT', 0, 0, ' '),
(5, 1, 'PHI', 'JAX', -10.5, 'PHI', 0, 0, ' '),
(6, 1, 'NYJ', 'OAK', -5.5, 'NYJ', 0, 0, ' '),
(7, 1, 'BAL', 'CIN', -2.0, 'BAL', 0, 0, ' '),
(8, 1, 'CHI', 'BUF', -7.0, 'CHI', 0, 0, ' '),
(9, 1, 'HOU', 'WAS', -3.0, 'HOU', 0, 0, ' '),
(10, 1, 'KC', 'TEN', -3.5, 'KC', 0, 0, ' '),
(11, 1, 'NE', 'MIA', -5.0, 'MIA', 0, 0, ' '),
(12, 1, 'TB', 'CAR', -2.0, 'TB', 0, 0, ' '),
(13, 1, 'SF', 'DAL', -4.5, 'DAL', 0, 0, ' '),
(14, 1, 'DEN', 'IND', -7.5, 'DEN', 0, 0, ' '),
(15, 1, 'DET', 'NYG', -5.5, 'DET', 0, 0, ' '),
(16, 1, 'ARI', 'SD', -3.0, 'ARI', 0, 0, ' ');

-- --------------------------------------------------------

--
-- Table structure for table `Picks`
--

CREATE TABLE IF NOT EXISTS `Picks` (
  `pickID` int(11) NOT NULL AUTO_INCREMENT,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `week` int(11) NOT NULL,
  `gameID` int(11) NOT NULL,
  `pick` varchar(3) NOT NULL,
  PRIMARY KEY (`pickID`),
  UNIQUE KEY `pickID` (`pickID`),
  KEY `uid` (`id`),
  KEY `GameID` (`gameID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;


-- --------------------------------------------------------

--
-- Stand-in structure for view `linesview`
--
CREATE TABLE IF NOT EXISTS `linesview` (
`gameID` int(11)
,`favTeam` varchar(3)
,`line` decimal(10,1)
,`dogTeam` varchar(3)
,`favScore` decimal(10,0)
,`dogScore` decimal(10,0)
,`Winner` varchar(3)
,`ATSWinner` varchar(3)
,`gameStatus` varchar(64)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `picksview`
--
CREATE TABLE IF NOT EXISTS `picksview` (
`pickID` int(11)
,`datestamp` timestamp
,`id` int(11)
,`username` varchar(16)
,`week` int(11)
,`gameID` int(11)
,`pick` varchar(3)
,`winner` decimal(2,1)
);
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 NOT NULL,
  `username` varchar(16) CHARACTER SET latin1 NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) NOT NULL,
  `confirmcode` varchar(4) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Structure for view `linesview`
--
DROP TABLE IF EXISTS `linesview`;
-- in use(#1142 - SHOW VIEW command denied to user 'skyho_web'@'localhost' for table 'linesview')

-- --------------------------------------------------------

--
-- Structure for view `picksview`
--
DROP TABLE IF EXISTS `picksview`;
-- in use(#1142 - SHOW VIEW command denied to user 'skyho_web'@'localhost' for table 'picksview')

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
