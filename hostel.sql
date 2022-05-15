-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 05:09 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'morentaolucky247@gmail.com', 'morentao123', '2016-04-04 20:31:45', '2017-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE IF NOT EXISTS `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19'),
(8, '124', 'MATH', 'Mathematics', '2017-03-21 17:16:45'),
(9, '121', 'CSC', 'Computer Science', '2017-05-13 15:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `filename`) VALUES
(1, 'swiftpaypoint logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `roomfemale` varchar(50) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `stayfrom`, `duration`, `roomname`, `roomfemale`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(7, 100, 5, 8000, '2016-06-17', 4, '', '', 'Bachelor of Engineering', 108061211, 'anuoluwa', 'george', 'lolade', 'male', 8467067344, 'test@gmail.com', 8285703354, 'test', 'test', 9999857868, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, '2016-06-23 11:54:35', ''),
(8, 112, 3, 4000, '2016-06-27', 5, '', '', 'Bachelor  of Science', 102355, 'yetunde', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', ''),
(9, 132, 5, 2000, '2016-06-28', 6, '', '', 'Bachelor of Engineering', 586952, 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', 8285703354, 'demo', 'demo', 8285703354, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, '2016-06-26 16:40:07', ''),
(10, 100, 5, 8000, '0000-00-00', 4, '', '', 'Bachelor  of Technology', 1234, 'kolade', 'olushola', 'egbeda', 'male', 8130926813, 'morentaolucky247@gmail.com', 9023123213, 'Ogungbnro adelaja', 'father', 8132124323, 'ertrhjhhgrewrthtrerthrerthtrrthtrrthtrrthtrrthtrrthtrth', 'ikeja', 'Gujarat', 1233, 'ikorodu road, ikeja lagos', 'ikorodu', 'Mizoram', 234, '2017-05-09 12:17:47', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2016-04-11 22:45:43'),
(2, 2, 201, 6000, '2016-04-12 01:30:47'),
(3, 2, 200, 6000, '2016-04-12 01:30:58'),
(4, 3, 112, 4000, '2016-04-12 01:31:07'),
(5, 5, 132, 2000, '2016-04-12 01:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Oyo'),
(2, 'Ogun'),
(3, 'Ondo'),
(4, 'Delta'),
(5, 'Edo'),
(6, 'Imo'),
(7, 'Lagos'),
(8, 'Osun'),
(9, 'Kano'),
(10, 'Kaduna'),
(11, 'Enugu'),
(12, 'Abuja'),
(13, 'Ekiti'),
(14, 'Benue'),
(15, 'Abia'),
(16, 'Anamabra'),
(17, 'Bauchi'),
(18, 'Jigawa'),
(19, 'Kastina'),
(20, 'Kebbi'),
(21, 'Kogi'),
(22, 'Kwara'),
(23, 'Akwa Ibom'),
(24, 'Cross river'),
(25, 'Bayelsa'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', '::1', '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', '::1', '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', '::1', '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', '::1', '', '', '2017-03-21 17:03:30'),
(8, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-09 12:13:30'),
(9, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-13 10:05:18'),
(10, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-13 12:00:32'),
(11, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-13 15:22:43'),
(12, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-14 13:57:59'),
(13, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-14 14:12:49'),
(14, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-14 14:13:46'),
(15, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-14 14:14:04'),
(16, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-14 14:20:39'),
(17, 21, 'morentaolucky247@gmail.com', '::1', '', '', '2017-05-14 14:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE IF NOT EXISTS `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'Anuj', 'test', 'kumar', 'male', 8467067344, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '23-06-2016 11:04:15', '22-06-2016 05:16:49'),
(19, '102355', 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', '8596185625', '2016-06-26 16:40:07', '', ''),
(21, '1234', 'kolade', 'olushola', 'egbeda', 'male', 8130926813, 'morentaolucky247@gmail.com', 'morentao', '2017-05-09 12:13:12', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
