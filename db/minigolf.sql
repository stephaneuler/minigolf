-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Jun 2016 um 13:18
-- Server Version: 5.5.27
-- PHP-Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `minigolf`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `challenges`
--

CREATE TABLE IF NOT EXISTS `challenges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `challenges`
--

INSERT INTO `challenges` (`id`, `name`, `date`) VALUES
(1, 'WM', '2015-06-08'),
(2, 'EM', '2015-06-15');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `clubs`
--

INSERT INTO `clubs` (`id`, `name`) VALUES
(1, 'Wetzlar Bären'),
(2, 'Gießen Tiger');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(1, 'Freibad Wetzlar'),
(2, 'Burg Friedberg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `holes`
--

CREATE TABLE IF NOT EXISTS `holes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round_id` int(11) NOT NULL,
  `hole` int(11) NOT NULL,
  `strokes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `round_id` (`round_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Daten für Tabelle `holes`
--

INSERT INTO `holes` (`id`, `round_id`, `hole`, `strokes`) VALUES
(1, 1, 1, 4),
(2, 1, 2, 1),
(3, 10, 1, 4),
(4, 10, 10, 2),
(5, 10, 2, 3),
(6, 10, 11, 3),
(7, 10, 3, 4),
(8, 10, 12, 2),
(9, 10, 4, 3),
(10, 10, 13, 3),
(11, 10, 5, 4),
(12, 10, 14, 2),
(13, 10, 6, 5),
(14, 10, 15, 3),
(15, 10, 7, 6),
(16, 10, 16, 4),
(17, 10, 8, 2),
(18, 10, 9, 2),
(19, 10, 18, 1),
(20, 11, 1, 4),
(21, 11, 10, 2),
(22, 11, 2, 2),
(23, 11, 11, 3),
(24, 11, 3, 3),
(25, 11, 12, 2),
(26, 11, 4, 3),
(27, 11, 13, 3),
(28, 11, 5, 2),
(29, 11, 14, 5),
(30, 11, 6, 3),
(31, 11, 15, 2),
(32, 11, 7, 4),
(33, 11, 16, 3),
(34, 11, 8, 5),
(35, 11, 17, 2),
(36, 11, 9, 3),
(37, 11, 18, 1),
(38, 17, 2, 3),
(39, 17, 4, 1),
(40, 17, 13, 1),
(41, 17, 14, 2),
(42, 17, 15, 3),
(43, 17, 16, 3),
(44, 21, 10, 1),
(45, 21, 11, 3),
(46, 22, 1, 2),
(49, 24, 1, 2),
(50, 24, 10, 2),
(51, 24, 2, 2),
(52, 24, 11, 2),
(53, 24, 3, 2),
(54, 24, 12, 2),
(55, 24, 4, 2),
(56, 24, 13, 2),
(57, 24, 5, 2),
(58, 24, 14, 2),
(59, 24, 6, 2),
(60, 24, 15, 2),
(61, 24, 7, 2),
(62, 24, 16, 2),
(63, 24, 8, 2),
(64, 24, 17, 2),
(65, 24, 9, 2),
(66, 24, 18, 2),
(67, 25, 1, 2),
(68, 25, 10, 3),
(69, 25, 2, 2),
(70, 25, 11, 3),
(71, 25, 3, 2),
(72, 25, 12, 3),
(73, 25, 4, 2),
(74, 25, 13, 3),
(75, 25, 5, 2),
(76, 25, 14, 3),
(77, 25, 6, 2),
(78, 25, 15, 3),
(79, 25, 7, 2),
(80, 25, 16, 3),
(81, 25, 8, 2),
(82, 25, 17, 3),
(83, 25, 9, 2),
(84, 25, 18, 3),
(85, 26, 1, 2),
(86, 26, 10, 3),
(87, 26, 2, 2),
(88, 26, 11, 3),
(89, 26, 3, 2),
(90, 26, 12, 3),
(91, 26, 4, 2),
(92, 26, 13, 3),
(93, 26, 5, 2),
(94, 26, 14, 3),
(95, 26, 6, 2),
(96, 26, 15, 3),
(97, 26, 7, 2),
(98, 26, 16, 3),
(99, 26, 8, 2),
(100, 26, 17, 3),
(101, 26, 9, 2),
(102, 26, 18, 3),
(103, 27, 1, 2),
(104, 27, 10, 3),
(105, 27, 2, 2),
(106, 27, 11, 3),
(107, 27, 3, 2),
(108, 27, 12, 3),
(109, 27, 4, 2),
(110, 27, 13, 3),
(111, 27, 5, 2),
(112, 27, 14, 3),
(113, 27, 6, 2),
(114, 27, 15, 3),
(115, 27, 7, 2),
(116, 27, 16, 3),
(117, 27, 8, 2),
(118, 27, 17, 3),
(119, 27, 9, 2),
(120, 27, 18, 3),
(121, 28, 1, 2),
(122, 28, 10, 2),
(123, 28, 2, 5),
(124, 28, 11, 1),
(125, 28, 3, 2),
(126, 28, 12, 2),
(127, 28, 4, 1),
(128, 28, 13, 3),
(129, 28, 5, 1),
(130, 28, 14, 2),
(131, 28, 6, 2),
(132, 28, 15, 2),
(133, 28, 7, 5),
(134, 28, 16, 1),
(135, 28, 8, 2),
(136, 28, 17, 2),
(137, 28, 9, 1),
(138, 28, 18, 2),
(139, 10, 17, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rounds`
--

CREATE TABLE IF NOT EXISTS `rounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Daten für Tabelle `rounds`
--

INSERT INTO `rounds` (`id`, `date`, `user_id`, `name`, `course_id`) VALUES
(10, '2015-06-22', 3, '', 2),
(11, '2015-06-01', 2, '', 1),
(24, '2015-06-22', 4, '', 2),
(25, '2015-06-22', 4, '', 1),
(26, '2015-06-22', 4, '', 1),
(27, '2015-06-22', 4, '', 1),
(28, '2016-06-02', 3, '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `logins` int(11) NOT NULL DEFAULT '0',
  `club_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `birthday`, `gender`, `logins`, `club_id`) VALUES
(1, 'Tester', 't@t.de', '1985-06-08', 'm', 0, 1),
(2, 'Willy', 'w@w.de', '2015-06-02', 'm', 0, 2),
(3, 'Sabine', '', '0000-00-00', 'f', 0, 2),
(4, 'Steve', '', '0000-00-00', 'm', 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_challenge`
--

CREATE TABLE IF NOT EXISTS `user_challenge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `challenge_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `user_challenge`
--

INSERT INTO `user_challenge` (`id`, `user_id`, `challenge_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 3, 2),
(5, 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
