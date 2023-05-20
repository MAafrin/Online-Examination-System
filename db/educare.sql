-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2021 at 11:18 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `educare`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY  (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(12, 'admin', '2021-11-29 14:40:13', 'Add Subject tam123'),
(13, 'admin', '2021-11-29 14:41:39', 'Add Subject Eng123'),
(14, 'admin', '2021-11-29 14:45:53', 'Add School Year 2020-2021'),
(15, 'admin', '2021-12-01 09:20:15', 'Add Subject mat123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL auto_increment,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY  (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(97, 42, 'americans', 'A'),
(98, 42, 'bri', 'B'),
(99, 42, 'ind', 'C'),
(100, 42, 'eng', 'D'),
(101, 43, 'fdg', 'A'),
(102, 43, 'df', 'B'),
(103, 43, 'dfg', 'C'),
(104, 43, 'g', 'D'),
(105, 44, 'america', 'A'),
(106, 44, 'india', 'B'),
(107, 44, 'australia', 'C'),
(108, 44, 'china', 'D'),
(109, 46, 'sedf', 'A'),
(110, 46, 'dsf', 'B'),
(111, 46, 'fer', 'C'),
(112, 46, 'rfd', 'D'),
(113, 47, 'dg', 'A'),
(114, 47, 'dfg', 'B'),
(115, 47, 'dfg', 'C'),
(116, 47, 'df', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--


-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL auto_increment,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(25, '2'),
(26, '1');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY  (`class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(21, 192, 600, 9),
(23, 190, 600, 8),
(26, 190, 6000, 8),
(27, 189, 30000000, 8),
(28, 190, 30000000, 8),
(30, 192, 292727220, 9),
(31, 191, 1200, 10),
(32, 192, 1200, 10),
(33, 189, 420000, 8),
(34, 190, 420000, 8),
(35, 191, 4200, 10),
(36, 192, 4200, 10);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL auto_increment,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY  (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(11, 'Tamil', 'Siva'),
(12, 'English', 'Mithun');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--


-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--


-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY  (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(28, 189, 'Add Annoucements', '2021-11-29 14:49:20', 'announcements_student.php'),
(29, 189, 'Add Practice Quiz file', '2021-11-29 14:50:20', 'student_quiz_list.php'),
(30, 191, 'Add Annoucements', '2021-11-29 15:03:21', 'announcements_student.php'),
(31, 192, 'Add Annoucements', '2021-11-29 15:03:22', 'announcements_student.php'),
(32, 191, 'Add Practice Quiz file', '2021-11-29 15:05:24', 'student_quiz_list.php'),
(33, 192, 'Add Practice Quiz file', '2021-11-29 15:05:24', 'student_quiz_list.php'),
(34, 189, 'Add Assignment file name <b>tam</b>', '2021-11-30 17:52:44', 'assignment_student.php'),
(35, 189, 'Add Annoucements', '2021-11-30 17:53:16', 'announcements_student.php'),
(36, 189, 'Add Practice Quiz file', '2021-11-30 17:54:14', 'student_quiz_list.php'),
(37, 190, 'Add Practice Quiz file', '2021-11-30 17:54:14', 'student_quiz_list.php'),
(38, 189, 'Add Annoucements', '2021-11-30 17:54:35', 'announcements_student.php'),
(39, 190, 'Add Annoucements', '2021-11-30 17:54:35', 'announcements_student.php'),
(40, 189, 'Add Practice Quiz file', '2021-11-30 17:58:44', 'student_quiz_list.php'),
(41, 189, 'Add Practice Quiz file', '2021-11-30 17:58:59', 'student_quiz_list.php'),
(42, 190, 'Add Practice Quiz file', '2021-11-30 17:58:59', 'student_quiz_list.php'),
(43, 189, 'Add Practice Quiz file', '2021-11-30 18:00:47', 'student_quiz_list.php'),
(44, 190, 'Add Practice Quiz file', '2021-11-30 18:00:47', 'student_quiz_list.php'),
(45, 191, 'Add Practice Quiz file', '2021-11-30 18:06:16', 'student_quiz_list.php'),
(46, 192, 'Add Practice Quiz file', '2021-11-30 18:06:16', 'student_quiz_list.php'),
(47, 191, 'Add Annoucements', '2021-11-30 18:52:55', 'announcements_student.php'),
(48, 192, 'Add Annoucements', '2021-11-30 18:52:55', 'announcements_student.php'),
(49, 191, 'Add Practice Quiz file', '2021-11-30 18:56:43', 'student_quiz_list.php'),
(50, 192, 'Add Practice Quiz file', '2021-11-30 18:56:43', 'student_quiz_list.php'),
(51, 189, 'Add Practice Quiz file', '2021-12-01 12:09:40', 'student_quiz_list.php'),
(52, 190, 'Add Practice Quiz file', '2021-12-01 12:09:40', 'student_quiz_list.php'),
(53, 191, 'Add Practice Quiz file', '2021-12-01 13:00:46', 'student_quiz_list.php'),
(54, 192, 'Add Practice Quiz file', '2021-12-01 13:00:46', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY  (`notification_read_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 221, 'yes', 43),
(2, 221, 'yes', 41),
(3, 221, 'yes', 40),
(4, 221, 'yes', 38),
(5, 221, 'yes', 36),
(6, 221, 'yes', 35),
(7, 221, 'yes', 34),
(8, 221, 'yes', 29),
(9, 221, 'yes', 28),
(10, 222, 'yes', 49),
(11, 222, 'yes', 47),
(12, 222, 'yes', 45),
(13, 222, 'yes', 32),
(14, 222, 'yes', 30),
(15, 222, 'yes', 53);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--


-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY  (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL auto_increment,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY  (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(8, 'tamil', 'nam mozhi', '2021-11-29 14:50:11', 21),
(10, 'Engli', 'read', '2021-11-30 18:53:35', 22);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL auto_increment,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY  (`quiz_question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(41, 8, '<p>tamil started year before 500<br />\r\n&nbsp;</p>\r\n', 2, 0, '2021-11-29 14:51:07', 'True'),
(42, 9, '<p>who speaks english</p>\r\n', 1, 0, '2021-11-29 15:04:52', 'A'),
(43, 9, '<p>who invre</p>\r\n', 1, 0, '2021-11-30 18:04:49', 'B'),
(44, 10, '<p>Where speak complete english?</p>\r\n', 1, 0, '2021-11-30 18:54:27', 'A'),
(45, 10, '<p>who are you man?</p>\r\n', 2, 0, '2021-11-30 18:54:51', 'True'),
(46, 8, '<p>rdfg</p>\r\n', 1, 0, '2021-12-01 12:09:20', 'C'),
(47, 10, '<p>who sdfgdf</p>\r\n', 1, 0, '2021-12-01 12:59:05', 'A'),
(48, 10, '<p>trfghgfh</p>\r\n', 2, 0, '2021-12-01 12:59:16', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL auto_increment,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY  (`school_year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL auto_increment,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(224, 'mani', 'kumar', 25, '6543', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(223, 'Ajay', 'kumar', 25, '0987', '1234', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(222, 'ajay', 'kumar', 26, '5678', '1234', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(221, 'taju', 'deen', 26, '1234', '1234', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL auto_increment,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY  (`student_class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(5, 19, 221, '3600', '1 out of 1'),
(6, 19, 222, '3600', '0 out of 1'),
(7, 21, 221, '3600', '0 out of 1'),
(8, 20, 223, '3600', '1 out of 1'),
(9, 22, 221, '600', ''),
(10, 25, 221, '6000', ''),
(11, 27, 221, '3600', '1 out of 1'),
(12, 20, 222, '600', ''),
(13, 29, 222, '3600', '0 out of 2'),
(14, 31, 222, '3600', '1 out of 2'),
(15, 33, 221, '36000', '1 out of 2'),
(16, 33, 223, '420000', ''),
(17, 27, 223, '3600', '1 out of 2'),
(18, 35, 222, '3600', '3 out of 4');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL auto_increment,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY  (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(44, 'Eng123', '2English', '', '<p>2nd standard enlish</p>\r\n', 2, '', '1st'),
(43, 'tam123', '1Tamil', '', '<p>1st stand tamil</p>\r\n', 2, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY  (`teacher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(22, 'mithun', '1234', 'Mithun', 'Kumar', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(21, 'siva', '1234', 'Siva', 'ranjani', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL auto_increment,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY  (`teacher_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=194 ;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(189, 21, 26, 43, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(190, 21, 25, 43, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(191, 22, 25, 44, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(192, 22, 26, 44, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(193, 0, 0, 0, 'admin/uploads/thumbnails.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL auto_increment,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY  (`teacher_class_announcements_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(44, '<p>hello all prepare english</p>\r\n', '22', 192, '2021-11-29 15:03:22'),
(45, '<p>hello stu 1</p>\r\n', '21', 189, '2021-11-30 17:53:16'),
(46, '<p>hello</p>\r\n', '21', 189, '2021-11-30 17:54:35'),
(47, '<p>hello</p>\r\n', '21', 190, '2021-11-30 17:54:35'),
(48, '<p>hello check</p>\r\n', '22', 191, '2021-11-30 18:52:55'),
(49, '<p>hello check</p>\r\n', '22', 192, '2021-11-30 18:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY  (`teacher_class_student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(1, 189, 223, 21),
(2, 189, 221, 21),
(3, 191, 224, 22),
(4, 191, 222, 22);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL auto_increment,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(87, 'admin', '2021-11-29 14:38:55', '2021-12-01 15:03:08', 15),
(88, 'admin', '2021-11-30 16:58:07', '2021-12-01 15:03:08', 15),
(89, 'admin', '2021-11-30 16:59:56', '2021-12-01 15:03:08', 15),
(90, 'admin', '2021-11-30 17:01:11', '2021-12-01 15:03:08', 15),
(91, 'admin', '2021-11-30 17:04:15', '2021-12-01 15:03:08', 15),
(92, 'admin', '2021-12-01 09:19:34', '2021-12-01 15:03:08', 15),
(93, 'admin', '2021-12-01 09:33:20', '2021-12-01 15:03:08', 15),
(94, 'admin', '2021-12-01 12:54:36', '2021-12-01 15:03:08', 15),
(95, 'admin', '2021-12-01 15:00:06', '2021-12-01 15:03:08', 15);
