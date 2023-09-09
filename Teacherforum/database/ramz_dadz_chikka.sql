-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2013 at 10:47 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ramz_dadz_chikka`
--

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE IF NOT EXISTS `post_comment` (
  `post_commentID` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(30) NOT NULL,
  `usersID` int(30) NOT NULL,
  `comment` text NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`post_commentID`),
  KEY `fk_post_comment_postID` (`postID`),
  KEY `fk_post_comment_usersID` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`post_commentID`, `postID`, `usersID`, `comment`, `status`) VALUES
(242, 109, 24, 'wew', 1),
(243, 139, 17, 'wewasdad', 1),
(244, 139, 24, 'haha...tsur ui!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_status`
--

CREATE TABLE IF NOT EXISTS `post_status` (
  `post_statusID` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(30) NOT NULL,
  `usersID` int(30) NOT NULL,
  `status` varchar(7) NOT NULL,
  PRIMARY KEY (`post_statusID`),
  KEY `fk_postID_post_status` (`postID`),
  KEY `fk_usersID_post_status` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `post_status`
--

INSERT INTO `post_status` (`post_statusID`, `postID`, `usersID`, `status`) VALUES
(59, 109, 24, 'Unlike'),
(61, 116, 24, 'Unlike'),
(72, 116, 17, 'Unlike'),
(73, 109, 17, 'Unlike'),
(76, 135, 24, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `profile_pics`
--

CREATE TABLE IF NOT EXISTS `profile_pics` (
  `profile_picID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(30) NOT NULL,
  `pic_name` text NOT NULL,
  PRIMARY KEY (`profile_picID`),
  KEY `fk_usersID_pic` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `profile_pics`
--

INSERT INTO `profile_pics` (`profile_picID`, `usersID`, `pic_name`) VALUES
(7, 17, 'images/head-linux.gif'),
(11, 24, 'images/bgimg1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `public_chat_msg`
--

CREATE TABLE IF NOT EXISTS `public_chat_msg` (
  `pcmID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(30) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`pcmID`),
  KEY `fk_pcm_usersID` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `public_chat_msg`
--

INSERT INTO `public_chat_msg` (`pcmID`, `usersID`, `message`) VALUES
(84, 24, 'smiley_cool.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `usersID` int(11) NOT NULL AUTO_INCREMENT,
  `email_add` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`usersID`),
  UNIQUE KEY `email_add` (`email_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `email_add`, `password`, `status`) VALUES
(17, 'agidao@gmail.com', 'ce51f048f5d93dddbb853d8611f6d05a', 'offline'),
(22, 'tingloyz_kie03@yahoo.com', 'c8837b23ff8aaa8a2dde915473ce0991', 'offline'),
(24, 'dadzky33@gmail.com', 'ce51f048f5d93dddbb853d8611f6d05a', 'online');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE IF NOT EXISTS `users_info` (
  `users_info_ID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(20) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Nname` varchar(50) DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Age` int(20) NOT NULL,
  PRIMARY KEY (`users_info_ID`),
  KEY `fk_UsersID` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`users_info_ID`, `usersID`, `Fname`, `Lname`, `Nname`, `Gender`, `Birthdate`, `Age`) VALUES
(26, 17, 'agidao', 'agidao', 'agidao', 'Male', '2007-01-03', 6),
(31, 22, 'ALDRIN', 'CANONIGO', 'Tingloz', 'Male', '1995-06-30', 18),
(32, 24, 'Dadzkie', 'Donayre', 'admin', 'Male', '1995-05-26', 18);

-- --------------------------------------------------------

--
-- Table structure for table `users_post`
--

CREATE TABLE IF NOT EXISTS `users_post` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(30) NOT NULL,
  `users_post` text NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`postID`),
  KEY `fk_usersID_post` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `users_post`
--

INSERT INTO `users_post` (`postID`, `usersID`, `users_post`, `date_posted`) VALUES
(109, 17, 'http://www.w3schools.com/php/func_http_setcookie.asp', '2013-01-23'),
(116, 24, 'http://www.w3schools.com/php/func_http_setcookie.asp', '2013-01-23'),
(132, 24, 'asds', '2013-01-28'),
(134, 24, 'asf', '2013-01-28'),
(135, 24, 'asdsad', '2013-01-28'),
(139, 24, 'ada', '2013-01-29');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD CONSTRAINT `fk_post_comment` FOREIGN KEY (`postID`) REFERENCES `users_post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_comment_usersID` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_status`
--
ALTER TABLE `post_status`
  ADD CONSTRAINT `fk_postID_post_status` FOREIGN KEY (`postID`) REFERENCES `users_post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usersID_post_status` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile_pics`
--
ALTER TABLE `profile_pics`
  ADD CONSTRAINT `fk_usersID_pic` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `public_chat_msg`
--
ALTER TABLE `public_chat_msg`
  ADD CONSTRAINT `fk_pcm_usersID` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_info`
--
ALTER TABLE `users_info`
  ADD CONSTRAINT `fk_UsersID` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_post`
--
ALTER TABLE `users_post`
  ADD CONSTRAINT `fk_usersID_post` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
