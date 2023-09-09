-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2015 at 10:48 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE IF NOT EXISTS `tbllogin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `fullname` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ujis AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'john', 'john', 'John'),
(2, 'joe', 'joe123', 'joe');

-- --------------------------------------------------------

--
-- Table structure for table `user_chat_messages`
--

CREATE TABLE IF NOT EXISTS `user_chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `message_time` date NOT NULL,
  `recipient` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_chat_messages`
--

INSERT INTO `user_chat_messages` (`id`, `message_content`, `username`, `message_time`, `recipient`) VALUES
(1, 'tes', 'joe', '0000-00-00', 'jmmaguigad'),
(2, 'ts', 'joe', '0000-00-00', 'jmmaguigad'),
(3, 'hai', 'john', '0000-00-00', 'joe'),
(4, 'hai juga', 'joe', '0000-00-00', 'john');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
