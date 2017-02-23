
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2017 at 07:44 PM
-- Server version: 10.0.28-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u851161419_sbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `id` int(5) NOT NULL,
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `assignment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sec` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `date`, `assignment`, `class`, `sec`) VALUES
(0, '2017/01/27', 'this is the demo...', '3', 'A'),
(0, '2017/01/27', 'hey...', '3', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `threeA` varchar(150) NOT NULL,
  `threeB` varchar(150) NOT NULL,
  `fourA` varchar(150) NOT NULL,
  `fourB` varchar(150) NOT NULL,
  `fiveA` varchar(150) NOT NULL,
  `fiveB` varchar(150) NOT NULL,
  `sixA` varchar(150) NOT NULL,
  `sixB` varchar(150) NOT NULL,
  `sevenA` varchar(150) NOT NULL,
  `sevenB` varchar(150) NOT NULL,
  `eightA` varchar(150) NOT NULL,
  `eightB` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `date`, `threeA`, `threeB`, `fourA`, `fourB`, `fiveA`, `fiveB`, `sixA`, `sixB`, `sevenA`, `sevenB`, `eightA`, `eightB`) VALUES
(1, '21-01-2017', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30', '1, 2, 3, 5, 6, 7, 9', '', '', '', '', '', '', '', '', '', ''),
(2, '17-01-2017', '1, 2, 4, 17', '1, 2, 3, 4, 5', '1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30', '', '', '', '', '', '', '', '', ''),
(3, '18-01-2017', '1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30', '1, 2, 3, 4, 5', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bus_time`
--

CREATE TABLE IF NOT EXISTS `bus_time` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `route` varchar(6) NOT NULL,
  `lib_id` varchar(6) NOT NULL,
  `pick_time` varchar(8) NOT NULL,
  `drop_time` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bus_time`
--

INSERT INTO `bus_time` (`id`, `route`, `lib_id`, `pick_time`, `drop_time`) VALUES
(1, 'Route1', '670123', '8:30AM', '3:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `complain` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `unique_id`, `complain`) VALUES
(1, '670123', 'hey'),
(2, '670123', 'Hey'),
(3, '670123', 'Hey school bus is not on time in Sector 22 noida campus..'),
(4, '670123', 'Hey school bus is not on time in Sector 22 noida campus..'),
(5, '670123', 'Hey school bus is not on time in Sector 22 noida campus..'),
(6, '670123', 'Hey school bus is very late in Sector 135');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `session` int(11) NOT NULL,
  `library_id` varchar(6) NOT NULL,
  `exam_name` varchar(15) NOT NULL,
  `sub1` int(3) NOT NULL,
  `sub2` int(3) NOT NULL,
  `sub3` int(3) NOT NULL,
  `sub4` int(3) NOT NULL,
  `sub5` int(3) NOT NULL,
  `sub6` int(3) NOT NULL,
  `sub7` int(3) NOT NULL,
  `sub8` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `session`, `library_id`, `exam_name`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`) VALUES
(1, 2016, '670123', 'Half', 80, 75, 88, 87, 67, 89, 76, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `notices` varchar(250) NOT NULL,
  `class` varchar(2) NOT NULL,
  `sec` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `notices`, `class`, `sec`) VALUES
(1, '23-1-2017', 'The School Will Be Closed On 24 january 2017.', '3', 'A'),
(2, '24-2-2017', 'The School Will Be Closed On 27 january 2017.', '3', 'A'),
(4, '2017-01-26', 'hey...', '3', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `school_event`
--

CREATE TABLE IF NOT EXISTS `school_event` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `school_event`
--

INSERT INTO `school_event` (`id`, `url`, `category`) VALUES
(1, 'http://mediaworlddun.com/wp-content/uploads/2015/07/school-event.jpg', 'Annual Fest 2013'),
(2, 'https://www.whatsuplife.in/gurgaon/blog/wp-content/uploads/2015/11/chilren.jpg', 'Annual Fest 2014');

-- --------------------------------------------------------

--
-- Table structure for table `school_toppers`
--

CREATE TABLE IF NOT EXISTS `school_toppers` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `school_toppers`
--

INSERT INTO `school_toppers` (`id`, `name`, `batch`, `pic`) VALUES
(1, 'Ankit Maurya', '2016-2017', 'http://www.smartboxapp.esy.es/profile_pic/670123.jpg'),
(2, 'Vikrant Singhal', '2015-2016', 'http://www.smartboxapp.esy.es/profile_pic/670124.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `stud_name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `class` int(2) NOT NULL,
  `section` varchar(1) NOT NULL,
  `library_id` int(7) NOT NULL,
  `roll_no` int(2) NOT NULL,
  `pin` int(5) NOT NULL,
  `parent_name` varchar(20) NOT NULL,
  `parent_mobile` varchar(10) NOT NULL,
  `parent_email` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `bus` varchar(3) NOT NULL,
  `route` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `stud_name`, `age`, `gender`, `pic`, `class`, `section`, `library_id`, `roll_no`, `pin`, `parent_name`, `parent_mobile`, `parent_email`, `address`, `bus`, `route`) VALUES
(1, 'Ankit Maurya', 6, 'M', 'http://www.smartboxapp.esy.es/profile_pic/670123.jpg', 3, 'A', 670123, 2, 12345, 'Sp Maurya', '9532572177', 'ankitmaurya1994@gmail.com', 'Varanasi', 'yes', 'Route1'),
(2, 'Vikrant Singhal', 6, 'M', 'http://www.smartboxapp.esy.es/profile_pic/670124.jpg', 3, 'A', 670124, 17, 12345, 'Pawan Singhal', '7898726173', 'pawan.singhal@gmail.com', 'Faridabad', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE IF NOT EXISTS `subject_list` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `class` varchar(2) NOT NULL,
  `sub1` varchar(15) NOT NULL,
  `sub2` varchar(15) NOT NULL,
  `sub3` varchar(15) NOT NULL,
  `sub4` varchar(15) NOT NULL,
  `sub5` varchar(15) NOT NULL,
  `sub6` varchar(15) NOT NULL,
  `sub7` varchar(15) NOT NULL,
  `sub8` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`id`, `class`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`) VALUES
(1, '3', 'English 1', 'English 2', 'Maths', 'Science', 'Social Science', 'E.V.S', 'Art and Craft', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE IF NOT EXISTS `teacher_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `ssn_no` varchar(7) NOT NULL,
  `pin` int(5) NOT NULL,
  `class` int(2) NOT NULL,
  `sec` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `name`, `mobile`, `email`, `ssn_no`, `pin`, `class`, `sec`) VALUES
(1, 'Rajan Mehla', '7376556867', 'rajan@kiet.edu', '234567', 12345, 3, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `class` varchar(3) NOT NULL,
  `sec` varchar(2) NOT NULL,
  `day` varchar(10) NOT NULL,
  `first` varchar(15) NOT NULL,
  `second` varchar(15) NOT NULL,
  `third` varchar(15) NOT NULL,
  `four` varchar(15) NOT NULL,
  `five` varchar(15) NOT NULL,
  `six` varchar(15) NOT NULL,
  `seven` varchar(15) NOT NULL,
  `eight` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `class`, `sec`, `day`, `first`, `second`, `third`, `four`, `five`, `six`, `seven`, `eight`) VALUES
(1, '3', 'A', 'monday', 'Maths', 'English', 'Hindi', 'Science', 'History', 'Art Craft', 'P.T', 'English'),
(2, '6', 'B', 'monday', 'English', 'Maths', 'Science', 'Art Craft', 'P.T', 'English', 'History', 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `volleyupload`
--

CREATE TABLE IF NOT EXISTS `volleyupload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `photo` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- Dumping data for table `volleyupload`
--

INSERT INTO `volleyupload` (`id`, `photo`, `name`, `class`) VALUES
(58, 'http://www.smartboxapp.esy.es/api/assignment_image/0.jpg', 'test assignment 1', 'threeA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
