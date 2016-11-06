-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 11:19 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casebase`
--
CREATE DATABASE IF NOT EXISTS `casebase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `casebase`;

-- --------------------------------------------------------

--
-- Table structure for table `negativecase`
--

CREATE TABLE `negativecase` (
  `cIndex` int(11) NOT NULL,
  `caseID` varchar(8) NOT NULL,
  `caseName` varchar(100) NOT NULL,
  `caseDate` date NOT NULL,
  `budget` double NOT NULL,
  `department` varchar(80) NOT NULL,
  `type` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL,
  `expectedIncome` double NOT NULL,
  `actualIncome` double NOT NULL,
  `cmtSize` int(11) NOT NULL,
  `feedback` double NOT NULL,
  `expectedPtcpt` int(11) NOT NULL,
  `actualPtcpt` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `negativecase`
--

INSERT INTO `negativecase` (`cIndex`, `caseID`, `caseName`, `caseDate`, `budget`, `department`, `type`, `level`, `expectedIncome`, `actualIncome`, `cmtSize`, `feedback`, `expectedPtcpt`, `actualPtcpt`, `description`, `status`) VALUES
(1, 'HET16', 'Higher Education Training 2016', '2016-08-01', 500, 'all', 'academic_workshop', 'university', 0, 0, 5, 0, 50, 0, 'Cancel due to lack of students register.', 'cancelled'),
(2, 'FWW11', 'FYP Writing Workshop 2011', '2011-06-04', 200, 'under_grad', 'academic_workshop', 'faculty', 0, 0, 5, 33.7, 150, 100, 'Students are not paying attention to lecturer, and the lecturer that hired from outside are not good in speaking English.', 'setback'),
(3, 'HA2013', 'Hacking-for-All 2013', '2013-10-10', 3000, 'all', 'seminarr', 'university', 3500, 1400, 20, 50.5, 200, 80, 'Seminar not attractive enough for other students from other faculty.', 'setback'),
(4, 'IDP15', 'Interaction Day for Postgraduate 2015', '2015-09-08', 800, 'post_grad', 'orientation', 'faculty', 0, 0, 20, 0, 100, 0, 'Students are not paying attention to lecturer, and the lecturer that hired from outside are not good in speaking English.', 'cancelled'),
(5, 'NET12', 'Netrider in UM 2012', '2012-03-26', 5000, 'all', 'competition', 'state', 8000, 8600, 35, 25.4, 150, 140, 'Poor acomodation, equipment. ', 'setback'),
(6, 'CNF11', 'FSKTM Charity Night 2011', '2011-03-05', 2000, 'under_grad', 'dinner', 'faculty', 2000, 3000, 100, 48.4, 500, 200, 'Performers sucks', 'setback'),
(7, 'TT2014', 'Technopreneur Talk 2014', '2014-12-04', 500, 'mis', 'talk', 'department', 0, 0, 8, 0, 30, 0, 'Proposal sucks.', 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `positivecase`
--

CREATE TABLE `positivecase` (
  `cIndex` int(11) NOT NULL,
  `caseID` varchar(8) NOT NULL,
  `caseName` varchar(100) NOT NULL,
  `caseDate` date NOT NULL,
  `budget` double DEFAULT '0',
  `department` varchar(80) NOT NULL,
  `type` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL,
  `expectedIncome` double DEFAULT NULL,
  `actualIncome` double DEFAULT NULL,
  `cmtSize` int(11) NOT NULL,
  `feedback` double NOT NULL,
  `expectedPtcpt` int(11) NOT NULL,
  `actualPtcpt` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positivecase`
--

INSERT INTO `positivecase` (`cIndex`, `caseID`, `caseName`, `caseDate`, `budget`, `department`, `type`, `level`, `expectedIncome`, `actualIncome`, `cmtSize`, `feedback`, `expectedPtcpt`, `actualPtcpt`, `description`) VALUES
(1, 'aid15', 'AI Days 2015\r\n', '2015-10-31', 300, 'ai', 'orientation', 'department', 0, 0, 20, 70, 50, 60, 'Introduction days of AI department to new students\r\n'),
(2, 'bdt16', 'Big Data Talk 2016', '2016-05-05', 20, 'all ', ' talk', 'faculty', 0, 0, 5, 70.2, 200, 120, 'A talk given by company.'),
(3, 'bdw15', 'Big Data Workshop 2015\r\n', '2015-08-16', 5000, 'all', 'workshop', 'university', 8000, 6000, 15, 62.7, 40, 30, 'A 3 days workshop organized by FSKTM which is opened to all studetns of UM'),
(4, 'cca14', 'Cyber Crime Arts 2014', '2014-12-12', 2000, 'under_grad', 'competition', 'university', 0, 0, 20, 65, 30, 50, 'Awarness caimpaign and competition about cyber crime.\r\n'),
(5, 'ccnaw15', 'CCNA Workshop 2015', '2015-08-01', 14000, 'stk', 'academic_workshop', 'faculty', 0, 0, 4, 81.2, 20, 11, 'A workshop to help to get high level CCNA certificate. '),
(6, 'dcup15', 'Dean''s Cup 2015\r\n', '2015-04-15', 1000, 'all\r\n', 'sports', 'faculty', 0, 0, 40, 62.3, 200, 180, 'Bonding activities among students, lecturers and staffs\r\n'),
(7, 'dota13', 'DotA Competition 2013', '2013-04-14', 2000, 'under_grad', 'competition', 'university', 2400, 2460, 30, 68.3, 150, 155, 'DotA competition of UM'),
(8, 'fyps14', 'FYP Showcase 2014', '2014-12-10', 1000, 'under_grad', 'conference', 'faculty', 0, 0, 20, 75.3, 400, 450, 'A presentation of FYP of final year students '),
(9, 'git12', 'Google Industrial Talk 2012', '2012-03-15', 200, 'all ', ' talk', 'faculty', 0, 0, 4, 72.6, 120, 100, 'An industrial talk given by Google\r\n'),
(10, 'hw14', 'Hacking Workshop 2014', '2014-04-08', 0, 'stk', 'workshop', 'faculty', 0, 0, 5, 51.4, 30, 16, 'Hacking workshop organized by PEKOM\r\n'),
(11, 'imgh12', 'ImageHack 2012\r\n', '2012-01-16', 10000, 'all', 'competition', 'state', 20000, 16000, 40, 56.5, 100, 80, '2 days hackathon of image processing.'),
(12, 'intv15', 'Internship Visit 2015', '2015-03-28', 120, 'under_grad', 'industrial visit', 'faculty', 0, 0, 4, 89.9, 80, 75, 'industrial visit for upcoming internship students. '),
(13, 'iscf14', 'iSecure Career Fair 2014\r\n', '2014-11-28', 50, 'all', 'exhibition', 'faculty', 0, 0, 2, 60.5, 200, 150, 'A career fair organized by iSecure to introduce the working positions of their company. \r\n'),
(14, 'itf12', 'FSKTM IT Fair 2012\r\n', '2012-04-23', 12000, 'under_grad', 'exhibition', 'unversity', 16000, 14000, 45, 74.1, 1500, 2000, 'Computer fair which consists of IT product, progamming competition, e-Sport competition and so on.\r\n'),
(15, 'map15', 'FSKTM Annual Dinner 2015\r\n', '2015-05-25', 12000, 'all', 'dinner', 'faculty', 18000, 1500, 30, 42.3, 300, 250, 'Award dinner of FSKTM.'),
(16, 'mhs14', 'Orientation Week 2014', '2014-09-05', 500, 'under_grad', 'orientation', 'faculty', 0, 0, 30, 65.2, 80, 78, 'MHS activities by FSKTM. '),
(24, 'mod14', 'Motivation Day 2014', '2014-09-26', 3000, 'ai', 'talk', 'faculty', 3000, 2000, 30, 80, 40, 30, 'A talk to motivate final year students to do their FYP. '),
(17, 'nlpc15', 'NLP Conferrence 2015', '2015-08-05', 2000, 'ai', 'conference', 'state', 0, 0, 10, 58.2, 200, 154, 'Conference made by ai department.'),
(18, 'pac2015', 'Postgraduate Annual Conferrence 2015', '2015-05-27', 4000, 'post_grad', 'conferrence', 'faculty', 0, 0, 10, 68.3, 300, 305, 'Annual meeting of all postgraduate students to share their academic research.'),
(19, 'phpw15', 'PHP Workshop 2015', '2015-04-25', 0, 'ai', 'academic_workshop', 'Department', 0, 0, 5, 76.25, 20, 10, 'A workshop to help ai student to gain knowledge of web programming\r\n'),
(26, 'RW2014', 'Robot War 2014', '2014-11-18', 7000, 'all', 'competition', 'state', NULL, 12000, 45, 78.4, 0, 100, 'Robot hackathon hold by a big company in university.'),
(20, 'sed15', 'SE Day 2015 ', '2015-10-01', 400, 'se', 'orientation', 'department', 0, 0, 20, 67.6, 50, 37, 'Introduction day by SE department to freshies. '),
(21, 'stkd15', 'STK Days 2015', '2014-09-24', 450, 'stk\r\n', 'orientation', 'department', 0, 0, 25, 72, 70, 75, 'Introduction days of STK and Multimedia department to new students\r\n'),
(25, 'TES15', 'Tesla Estimation Source 2015', '2015-12-08', 500, 'ai', 'talk', 'faculty', NULL, 0, 5, 67.6, 0, 70, 'A good talk organized by UMEC.'),
(22, 'wdc13', 'Webpage Design Competition 2013', '2013-04-02', 5000, 'it', 'competition', 'faculty', 0, 0, 10, 55.2, 20, 25, 'A competition to help to design the webpage of FSKTM.'),
(23, 'whd15', 'World Haemophilia Day 2015', '2015-05-21', 6000, 'all', 'sports', 'university', 8000, 7800, 100, 72.5, 500, 480, 'Blood donation, walkathon to raise awarness of haemophilia. ');

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `type` varchar(20) NOT NULL,
  `windex` int(11) NOT NULL,
  `date` double NOT NULL,
  `budget` double NOT NULL,
  `level` double NOT NULL,
  `income` double NOT NULL,
  `feedback` double NOT NULL,
  `cSize` double NOT NULL,
  `ppt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`type`, `windex`, `date`, `budget`, `level`, `income`, `feedback`, `cSize`, `ppt`) VALUES
('general', 1, 0.1, 0.2, 0.1, 0.1, 0.2, 0.1, 0.2),
('non-benefit', 2, 0.1, 0.1, 0.1, 0, 0.3, 0.1, 0.3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `negativecase`
--
ALTER TABLE `negativecase`
  ADD PRIMARY KEY (`cIndex`),
  ADD UNIQUE KEY `caseID` (`caseID`);

--
-- Indexes for table `positivecase`
--
ALTER TABLE `positivecase`
  ADD PRIMARY KEY (`caseID`),
  ADD UNIQUE KEY `caseName` (`caseName`),
  ADD UNIQUE KEY `cIndex` (`cIndex`);

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
  ADD PRIMARY KEY (`type`),
  ADD UNIQUE KEY `windex` (`windex`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `negativecase`
--
ALTER TABLE `negativecase`
  MODIFY `cIndex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `positivecase`
--
ALTER TABLE `positivecase`
  MODIFY `cIndex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `weight`
--
ALTER TABLE `weight`
  MODIFY `windex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `etest`
--
CREATE DATABASE IF NOT EXISTS `etest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etest`;

-- --------------------------------------------------------

--
-- Table structure for table `def_tempt`
--

CREATE TABLE `def_tempt` (
  `def_id` int(11) NOT NULL,
  `def_temp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `def_tempt`
--

INSERT INTO `def_tempt` (`def_id`, `def_temp`) VALUES
(1, 'Dear [insert designation],\n\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(2, 'Dear [insert designation],\n\nYour are invited to this event organizied by [insert organizer] which aims to [insert objective]. Here is the details of the event:\n\nVenue:\nDate:\nTime:\n\nWe are looking forward to see you again. '),
(3, 'Dear [insert name],\n\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \n\nThank you so much. ');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `email` varchar(35) NOT NULL,
  `name` varchar(80) NOT NULL,
  `end_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`email`, `name`, `end_text`) VALUES
('johny.1297@gmail.com', 'KCKoay', 'Best regards,\r\nKC\r\n01222222');

-- --------------------------------------------------------

--
-- Table structure for table `staff_list`
--

CREATE TABLE `staff_list` (
  `staff_id` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_list`
--

INSERT INTO `staff_list` (`staff_id`, `email`, `name`) VALUES
('abc123', 'johny.1297@siswa.um.edu.my', 'Dr. Koay Johnny'),
('abc135', 'johny.1297@gmail.com', 'Prof. Razi Ali'),
('abc126', 'umconfessionchinese@gmail.com', 'Mr. Khalil Gibran');

-- --------------------------------------------------------

--
-- Table structure for table `std_list`
--

CREATE TABLE `std_list` (
  `std_id` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_list`
--

INSERT INTO `std_list` (`std_id`, `email`, `name`) VALUES
('WEK126', 'umconfessionchinese@gmail.com', 'Khoon'),
('WEK109', 'john_5267@hotmail.com', 'Kc'),
('WEK149', 'johny.1297@hotmail.com', 'Desmond'),
('WEK100', 'johny.1297@siswa.um.edy.my', 'Johnson');

-- --------------------------------------------------------

--
-- Table structure for table `tempt`
--

CREATE TABLE `tempt` (
  `TEMP_ID` int(5) NOT NULL,
  `TEMPLATE` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempt`
--

INSERT INTO `tempt` (`TEMP_ID`, `TEMPLATE`) VALUES
(1, 'Dear [insert designation],\n\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(2, 'Dear [insert designation],\n\nYour are invited to this event organizied by [insert organizer] which aims to [insert objective]. Here is the details of the event:\n\nVenue:\nDate:\nTime:\n\nWe are looking forward to see you again. '),
(3, 'Dear [insert name],\n\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \n\nThank you so much. '),
(4, 'Hello. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `def_tempt`
--
ALTER TABLE `def_tempt`
  ADD PRIMARY KEY (`def_id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `staff_list`
--
ALTER TABLE `staff_list`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `std_list`
--
ALTER TABLE `std_list`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `tempt`
--
ALTER TABLE `tempt`
  ADD PRIMARY KEY (`TEMP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `def_tempt`
--
ALTER TABLE `def_tempt`
  MODIFY `def_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tempt`
--
ALTER TABLE `tempt`
  MODIFY `TEMP_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `event`
--
CREATE DATABASE IF NOT EXISTS `event` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `event`;

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `c_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `task` text NOT NULL,
  `url` text,
  `g_result` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`c_id`, `type`, `name`, `task`, `url`, `g_result`) VALUES
(1, 'PIC', 'President/Vice President', 'Prepare the proposal and budget to get approval from dean. Workshop request form is needed.', 'http://localhost/template/letter/Workshop Proposal Template Letter.docx', NULL),
(2, 'PIC', 'President/Vice President', 'Complete the workshop request form.', 'http://localhost/template/proposal/Workshop Request Form.docx', NULL),
(3, 'PIC', 'President/Vice President', 'Once get approval from dean, please prepare a details work plan for dean.', 'http://localhost/template/proposal/Workshop Details Plan.docx', NULL),
(4, 'PIC', 'President/Vice President', 'Figure out your mission are vision. \r\nMission:Explains what it is your are trying to do in fifty words or less.\r\nVision:A one-sentence statement describing the clear and inspirational long-term desired change resulting from an organization or work program.', '', NULL),
(5, 'PIC', 'President/Vice President', 'Call for meeting to discuss about the details and distribute the job.', 'http://localhost/meeting.html', NULL),
(6, 'PIC', 'President/Vice President', 'Select committee and make sure they do their job', 'http://localhost/memberlist.php', NULL),
(7, 'TRE', 'Treasurer', 'Prepare the budget plan.', 'http://localhost/template/proposal/budget.xls', NULL),
(8, 'TRE', 'Treasurer', 'Find and request sponsorship from sponsors.', '', NULL),
(9, 'TRE', 'Treasurer', 'Estimate the income will generate by this workshop.', '', NULL),
(10, 'TRE', 'Treasurer', 'Create donation drive if necessary.', '', NULL),
(11, 'SEC', 'Secretory', 'Prepare the letters.', 'http://localhost/template/letter/', 'How to write a letter'),
(12, 'SEC', 'Secretory', 'Take the meeting minute and upload', 'http://localhost/email_function_minute.php', 'meeting minute format'),
(13, 'SEC', 'Secretory', 'Prepare google form (registration/evaluation).', 'https://www.google.com/forms/about/', NULL),
(14, 'SEC', 'Secretory', 'Becareful', '', NULL),
(15, 'SEC', 'Secretory', 'Prepare the post morterm report.', 'http://localhost/template/report/workshop postmortem.docx', NULL),
(16, 'PP2', 'Publicity & Promotion', 'Plan and launch the publicity plan.', '', NULL),
(17, 'PP2', 'Publicity & Promotion', 'Inivte other to the event via various ways.', '', NULL),
(18, 'PP2', 'Publicity & Promotion', 'Prepare the information about the workshop.', '', NULL),
(19, 'PUB', 'Publishing', 'Rules of design:The logos must put at the top side of your design. UM logo come first, then FSKTM logos, and last, your event logo if have any.', '', NULL),
(20, 'PUB', 'Publishing', 'Publish booklet.', 'https://products.office.com/en-gb/publisher', NULL),
(21, 'PUB', 'Publishing', 'Design invitation card.', 'https://templates.office.com/en-za/Cards', NULL),
(22, 'PUB', 'Publishing', 'Design certificate.', 'http://www.123certificates.com/certificate-templates-for-word.php', NULL),
(23, 'PUB', 'Publishing', 'Design cheque.', 'https://www.template.net/business/word-templates/blank-check-template/mock', NULL),
(24, 'PUB', 'Publishing', 'Design coupon.', 'http://templatelab.com/coupon-templates/', NULL),
(25, 'PUB', 'Publishing', 'Decorate the venue.', '', NULL),
(26, 'PRO', 'Programme', 'Prepare the script.', 'https://docs.google.com/document/d/1zwme8ySwhpS6JMKzreZZNWGASjANEiBbNLqBbupCy-U/', NULL),
(27, 'PRO', 'Programme', 'Make flow plan.', 'http://localhost/template/proposal/Workshop Details Plan.docx', NULL),
(28, 'PRO', 'Programme', 'Contact with speaker.', '', NULL),
(29, 'PRO', 'Programme', 'Time management during event.', '', NULL),
(30, 'PRO', 'Programme', 'Prepare prayer script if necessary.', '', NULL),
(31, 'TEC', 'Technical', 'Prepare a list of equipments needed.', '', NULL),
(32, 'TEC', 'Technical', 'Check the equipments.', '', NULL),
(33, 'TEC', 'Technical', 'Recruit photographer.', '', NULL),
(34, 'REG', 'Registration', 'Get the attendence of the participants before workshop start.', '', NULL),
(35, 'REG', 'Registration', 'Distribute goodie bags to participants during workshop.', '', NULL),
(36, 'REG', 'Registration', 'Preparation of stationery.', '', NULL),
(37, 'REG', 'Registration', 'Distribute of evaluation form.', 'https://www.google.com/forms/about/', NULL),
(38, 'REG', 'Registration', 'Distribute certificate during end of workshop.', '', NULL),
(39, 'LOG', 'Logistic', 'Prepare the floorplan and transport.', 'http://vmis.um.edu.my/', NULL),
(40, 'LOG', 'Logistic', 'Room booking.', 'https://docs.google.com/forms/d/1UsLkpzp73qr0Vfb8y8Q0l8WT7C9yRmaSdxHjMhw5_R8/vie', NULL),
(41, 'LOG', 'Logistic', 'Prepare the items that required by every department. Eg: Ballon, paper, others.', '', NULL),
(42, 'LOG', 'Logistic', 'Check the venue.', '', NULL),
(43, 'FOD', 'Food', 'Decide the menu.', '', NULL),
(44, 'FOD', 'Food', 'Make sure the quantity of food is enough.', '', NULL),
(45, 'FOD', 'Food', 'Liase with cafeteria.', '#', NULL),
(46, 'FOD', 'Food', 'Clean the place after dinner.', '', NULL),
(47, 'PRY', 'Prayer', 'Prepare a prayer script for Islam. ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_checklist`
--

CREATE TABLE `event_checklist` (
  `ec_index` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `caseID` varchar(11) NOT NULL,
  `duty` text NOT NULL,
  `url` text,
  `url2` text,
  `date1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date2` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_checklist`
--

INSERT INTO `event_checklist` (`ec_index`, `memberid`, `caseID`, `duty`, `url`, `url2`, `date1`, `date2`, `status`) VALUES
(2, 1, 'mg2017', 'Testing the system.', NULL, NULL, '2016-10-11 03:25:46', '0000-00-00 00:00:00', 1),
(3, 1, 'mg2017', 'Conduct your meeting.', NULL, NULL, '2016-10-11 04:45:01', '0000-00-00 00:00:00', 0),
(4, 3, 'mg2017', 'Maintain camera', NULL, NULL, '2016-10-11 05:55:15', '0000-00-00 00:00:00', 0),
(5, 3, 'mg2017', 'Prepare prayer script', NULL, NULL, '2016-10-11 05:55:38', '0000-00-00 00:00:00', 0),
(6, 1, 'mg2017', 'Add some.', NULL, NULL, '2016-10-14 09:57:52', '0000-00-00 00:00:00', 0),
(7, 5, 'mg2017', 'Find a photographer', NULL, NULL, '2016-10-26 16:12:59', '0000-00-00 00:00:00', 0),
(8, 1, 'mg2017', 'Prepare the letter', NULL, NULL, '2016-10-29 23:54:38', '0000-00-00 00:00:00', 0),
(10, 1, 'mg2017', 'Invite somebody with letter', NULL, NULL, '2016-10-29 23:56:47', '0000-00-00 00:00:00', 0),
(11, 1, 'mg2017', 'Test', 'template/proposal/Workshop Request Form.docx', 'http://localhost/admin_casebase.php', '2016-10-30 00:17:43', '0000-00-00 00:00:00', 0),
(14, 1, 'mg2017', 'TEst 4  ', '', 'http://localhost/admin_casebase.php', '2016-10-30 00:18:10', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_record`
--

CREATE TABLE `event_record` (
  `cIndex` int(11) NOT NULL,
  `caseID` varchar(8) NOT NULL,
  `caseName` varchar(100) NOT NULL,
  `propose_date` date NOT NULL,
  `caseDate` date NOT NULL,
  `budget` double DEFAULT '0',
  `department` varchar(80) NOT NULL,
  `type` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL,
  `expectedIncome` double DEFAULT NULL,
  `actualIncome` double DEFAULT '0',
  `cmtSize` int(11) NOT NULL,
  `feedback` double NOT NULL,
  `expectedPtcpt` int(11) NOT NULL,
  `actualPtcpt` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_record`
--

INSERT INTO `event_record` (`cIndex`, `caseID`, `caseName`, `propose_date`, `caseDate`, `budget`, `department`, `type`, `level`, `expectedIncome`, `actualIncome`, `cmtSize`, `feedback`, `expectedPtcpt`, `actualPtcpt`, `description`, `status`) VALUES
(1, 'aid15', 'AI Days 2015\r\n', '2015-05-31', '2015-10-31', 300, 'ai', 'orientation', 'department', 0, 0, 20, 70, 50, 60, 'Introduction days of AI department to new students\r\n', 'success'),
(43, 'aid2016', 'AI Day 2016', '2015-05-31', '2015-10-31', 300, 'ai', 'orientation', 'department', 0, 0, 20, 0, 60, 0, '', 'Ongoing'),
(2, 'bdt16', 'Big Data Talk 2016', '2016-04-05', '2016-05-05', 20, 'all', 'talk', 'faculty', 0, 0, 5, 70.2, 200, 120, 'A talk given by company.', 'success'),
(3, 'bdw15', 'Big Data Workshop 2015\r\n', '2015-03-16', '2015-08-16', 5000, 'all\r\n', 'workshop', 'university', 8000, 6000, 15, 62.7, 40, 30, 'A 3 days workshop organized by FSKTM which is opened to all studetns of UM', 'success'),
(4, 'cca14', 'Cyber Crime Arts 2014', '2014-09-12', '2014-12-12', 2000, 'under_grad', 'competition', 'university', 0, 0, 20, 65, 30, 50, 'Awarness caimpaign and competition about cyber crime.\r\n', 'success'),
(5, 'ccnaw15', 'CCNA Workshop 2015', '2015-03-01', '2015-08-01', 14000, 'stk', 'academic workshop', 'faculty', 0, 0, 4, 81.2, 20, 11, 'A workshop to help to get high level CCNA certificate. ', 'success'),
(6, 'dcup15', 'Dean''s Cup 2015\r\n', '2014-12-15', '2015-04-15', 1000, 'all\r\n', 'sports', 'faculty', 0, 0, 40, 62.3, 200, 180, 'Bonding activities among students, lecturers and staffs\r\n', 'success'),
(7, 'dota13', 'DotA Competition 2013', '2012-11-14', '2013-04-14', 2000, 'under_grad', 'competition', 'university', 2400, 2460, 30, 68.3, 150, 155, 'DotA competition of UM', 'success'),
(25, 'fypis17', 'FYP & Industrial Showcase 2017', '2017-10-19', '2017-12-19', 9000, 'all', 'exhibition', 'state', 0, 0, 70, 0, 600, 0, 'A FYP showcase by both postgraduate and undergraduate student to public. ', 'ongoing'),
(8, 'fyps14', 'FYP Showcase 2014', '2014-10-10', '2014-12-10', 1000, 'under_grad', 'conference', 'faculty', 0, 0, 20, 75.3, 400, 450, 'A presentation of FYP of final year students ', 'success'),
(9, 'git12', 'Google Industrial Talk 2012', '2012-03-01', '2012-03-15', 200, 'all', 'talk', 'faculty', 0, 0, 4, 72.6, 120, 100, 'An industrial talk given by Google\r\n', 'success'),
(10, 'hw14', 'Hacking Workshop 2014', '2014-03-18', '2014-04-08', 0, 'stk', 'workshop', 'faculty', 0, 0, 5, 51.4, 30, 16, 'Hacking workshop organized by PEKOM\r\n', 'success'),
(11, 'imgh12', 'ImageHack 2012\r\n', '2011-04-16', '2012-01-16', 10000, 'all', 'competition', 'state', 20000, 16000, 40, 56.5, 100, 80, '2 days hackathon of image processing.', 'success'),
(12, 'intv15', 'Internship Visit 2015', '2015-03-22', '2015-03-28', 120, 'under_grad', 'industrial_visit', 'faculty', 0, 0, 4, 89.9, 80, 75, 'industrial visit for upcoming internship students. ', 'success'),
(13, 'iscf14', 'iSecure Career Fair 2014\r\n', '2014-10-28', '2014-11-28', 50, 'all', 'exhibition', 'faculty', 0, 0, 2, 60.5, 200, 150, 'A career fair organized by iSecure to introduce the working positions of their company. \r\n', 'success'),
(14, 'itf12', 'FSKTM IT Fair 2012\r\n', '2011-09-24', '2012-04-23', 12000, 'under_grad', 'exhibition', 'unversity', 16000, 14000, 45, 74.1, 1500, 2000, 'Computer fair which consists of IT product, progamming competition, e-Sport competition and so on.\r\n', 'success'),
(27, 'iw16', 'Industrial Workshop 2016', '0000-00-00', '2016-08-02', 2000, 'all', 'academic workshop', 'faculty', 0, 0, 30, 23.5, 50, 15, 'An industrial training by cooperating with higher education. Due to lack of accomodation and it is in sem break, so it is cancelled. ', 'cancelled'),
(44, 'jac2017', 'Java App Competition', '2016-10-27', '2017-04-05', 2000, 'under_grad', 'competition', 'faculty', 0, 0, 20, 0, 80, 0, '', 'ongoing'),
(15, 'map15', 'FSKTM Annual Dinner 2015\r\n', '2015-01-25', '2015-05-25', 12000, 'all', 'dinner', 'faculty', 18000, 1500, 30, 42.3, 300, 250, 'Award dinner of FSKTM.', 'success'),
(26, 'mct2016', 'Movie Competition 2016', '0000-00-00', '2016-12-02', 6000, 'under_grad', 'competition', 'university', 8500, 0, 40, 0, 60, 0, 'Movie competition.', 'ongoing'),
(40, 'mg2017', 'Mind Game 2017', '2016-10-01', '2017-10-01', 0, 'ai', 'seminar', 'department', 0, 0, 10, 0, 50, 0, 'A puzzle game seminar to train students how to think. ', 'ONGOING'),
(28, 'mltd15', 'Multimedia Day 2015', '0000-00-00', '2015-09-22', 2000, 'it', 'orientation', 'faculty', 0, 0, 8, 35.3, 50, 9, 'Introduction day to new students but because of lack of planning it was a disaster. ', 'setback'),
(24, 'mod14', 'Motivation Day 2014', '2014-09-15', '2014-09-26', 3000, 'ai', 'talk', 'faculty', 3000, 2000, 30, 80, 40, 30, 'A talk to motivate final year students to do their FYP. ', 'success'),
(17, 'nlpc15', 'NLP Conferrence 2015', '2015-05-05', '2015-08-05', 2000, 'ai', 'conference', 'state', 0, 0, 10, 58.2, 200, 154, 'Conference made by ai department.', 'success'),
(18, 'pac2015', 'Postgraduate Annual Conferrence 2015', '2015-04-27', '2015-05-27', 4000, 'post_grad', 'conferrence', 'faculty', 0, 0, 10, 68.3, 300, 305, 'Annual meeting of all postgraduate students to share their academic research.', 'success'),
(19, 'PHPW15', 'PHP Workshop 2015\r\n', '2015-04-01', '2015-04-25', 0, 'ai', 'academic workshop', 'department', 0, 0, 5, 76.25, 20, 10, 'A workshop to help ai student to gain knowledge of web programming\r\n', 'success'),
(20, 'sed15', 'SE Day 2015', '2015-09-11', '2015-10-01', 400, 'se', 'orientation', 'department', 0, 0, 20, 67.6, 50, 37, 'Introduction day by SE department to freshies. ', 'success'),
(42, 'sed2016', 'SE Day 2016', '2016-10-02', '2016-11-01', 400, 'se', 'orientation', 'department', 0, 0, 20, 0, 25, 0, '', 'Ongoing'),
(21, 'stkd15', 'STK Days 2015', '2014-09-15', '2014-09-24', 450, 'stk\r\n', 'orientation', 'department', 0, 0, 25, 72, 70, 75, 'Introduction days of STK and Multimedia department to new students\r\n', 'success'),
(45, 'TES15', 'Tesla Estimation Source 2015', '2015-09-13', '2015-12-08', 500, 'ai', 'talk', 'faculty', NULL, 0, 5, 67.6, 80, 70, 'A good talk organized by UMEC.', 'success'),
(22, 'wdc13', 'Webpage Design Competition 2013', '2012-12-02', '2013-04-02', 5000, 'it\r\n', 'competition', 'faculty', 0, 0, 10, 55.2, 20, 25, 'A competition to help to design the webpage of FSKTM.', 'success'),
(23, 'whd15', 'World Haemophilia Day 2015', '2015-02-21', '2015-05-21', 6000, 'all', 'sports', 'university', 8000, 7800, 100, 72.5, 500, 480, 'Blood donation, walkathon to raise awarness of haemophilia. ', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `hosting_event`
--

CREATE TABLE `hosting_event` (
  `he_index` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `caseID` varchar(8) NOT NULL,
  `caseName` varchar(80) NOT NULL,
  `propose_date` date NOT NULL,
  `caseDate` date NOT NULL,
  `cmtSize` int(11) NOT NULL,
  `level` varchar(30) NOT NULL,
  `department` varchar(70) NOT NULL,
  `type` varchar(80) NOT NULL,
  `act1` int(2) NOT NULL DEFAULT '0',
  `act2` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hosting_event`
--

INSERT INTO `hosting_event` (`he_index`, `userid`, `caseID`, `caseName`, `propose_date`, `caseDate`, `cmtSize`, `level`, `department`, `type`, `act1`, `act2`) VALUES
(3, 1, 'mg2017', 'Mind Game 2017', '2016-10-01', '2017-10-01', 10, 'department', 'ai', 'seminar', 1, 2),
(5, 1, 'sed2016', 'SE Day 2016', '2016-10-02', '2016-11-01', 20, 'department', 'se', 'orientation', 1, 1),
(6, 1, 'aid2016', 'AI Day 2016', '2015-05-31', '2015-10-31', 20, 'department', 'ai', 'orientation', 1, 1),
(7, 1, 'jac2017', 'Java App Competition', '2016-10-27', '2017-04-05', 20, 'faculty', 'under_grad', 'competition', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

CREATE TABLE `invitation` (
  `i_id` int(11) NOT NULL,
  `confirm` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL,
  `caseID` varchar(50) NOT NULL,
  `position` varchar(20) NOT NULL,
  `biro` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`i_id`, `confirm`, `memberid`, `caseID`, `position`, `biro`) VALUES
(137, 1, 5, 'mg2017', 'member', 'TEC'),
(139, 1, 3, 'mg2017', 'dh', 'PRY'),
(140, 1, 4, 'mg2017', 'member', 'PP2'),
(141, 1, 8, 'mg2017', 'secretory', 'CC'),
(142, 0, 9, 'mg2017', 'member', 'PRO'),
(143, 0, 13, 'mg2017', 'member', 'LOG'),
(144, 0, 14, 'mg2017', 'dh', 'ACA'),
(145, 0, 7, 'mg2017', 'treasurer', 'CC'),
(146, 0, 11, 'mg2017', 'helper', 'REG'),
(147, 1, 1, 'TEST16', 'member', 'LOG'),
(148, 0, 1, 'TEST17', 'dh', 'LOG'),
(149, 1, 1, 'TEST16', 'member', 'TEC'),
(150, 0, 3, 'sed2016', 'member', 'CC'),
(151, 0, 6, 'sed2016', 'member', 'CC'),
(152, 0, 8, 'sed2016', 'member', 'CC'),
(153, 0, 11, 'sed2016', 'member', 'CC'),
(154, 0, 12, 'sed2016', 'member', 'CC'),
(155, 0, 5, 'aid2016', 'member', 'TEC'),
(156, 0, 3, 'aid2016', 'member', 'PUB'),
(157, 0, 0, 'aid2016', 'dh', 'FOD'),
(158, 0, 4, 'aid2016', 'member', 'LOG'),
(159, 0, 6, 'aid2016', 'member', 'PP2'),
(160, 0, 7, 'aid2016', 'dh', 'FOD'),
(161, 0, 8, 'aid2016', 'vp', 'CC'),
(162, 0, 2, 'mg2017', 'member', 'PRY'),
(163, 0, 6, 'mg2017', 'member', 'PP2'),
(164, 0, 10, 'mg2017', 'member', 'FIN'),
(165, 0, 12, 'mg2017', 'member', 'ACA'),
(166, 0, 11, 'jac2017', 'member', 'TEC'),
(167, 0, 3, 'jac2017', 'helper', 'LOG'),
(168, 0, 2, 'jac2017', 'dh', 'PUB'),
(169, 0, 5, 'jac2017', 'vp', 'CC'),
(170, 0, 6, 'jac2017', 'dh', 'ACA'),
(171, 0, 9, 'jac2017', 'helper', 'REG'),
(172, 0, 10, 'jac2017', 'secretory', 'CC'),
(173, 0, 10, 'sed2016', 'dh', 'PRY');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `l_index` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`l_index`, `name`, `link`) VALUES
(1, 'Feedback', 'template/email/feedback.txt'),
(2, 'Invitation', 'template/email/invitation.txt'),
(3, 'Recruit', 'template/email/recruit.txt'),
(4, 'Workshop Proposal Template Letter', 'template/letter/Workshop Proposal Template Letter.docx'),
(5, 'Workshop Request Form', 'template/proposal/Workshop Request Form.docx'),
(6, 'Workshop Details Plan', 'template/proposal/Workshop Details Plan.docx'),
(7, 'Workshop Request Form', 'template/proposal/Workshop Request Form.docx'),
(8, 'Workshop Postmortem', 'template/report/workshop postmortem.docx'),
(18, 'hahfafaa', 'template/test/hahfafaa.jpg'),
(19, 'gg', 'template/test/gg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `member_record`
--

CREATE TABLE `member_record` (
  `mr_index` int(11) NOT NULL,
  `event_id` varchar(11) NOT NULL,
  `event_index` int(11) NOT NULL,
  `event_name` varchar(80) NOT NULL,
  `member_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_record`
--

INSERT INTO `member_record` (`mr_index`, `event_id`, `event_index`, `event_name`, `member_id`, `name`, `lastname`, `position`, `department`) VALUES
(1, 'aid15', 1, 'AI Day 2015', 1, 'Koay', 'Kuan Choang', 'president', 'CC'),
(2, 'fyps14', 8, 'FYP Showcase 2014', 1, 'Koay', 'Kuan Choang', 'committee', 'PUB'),
(3, 'git12', 9, 'Google Industrial Talk 2012', 1, 'Koay', 'Kuan Choang', 'dh', 'DEC'),
(4, 'fypis17', 25, 'FYP & Industrial Showcase 2017', 1, 'Koay', 'Kuan Choang', 'treasurer', 'CC'),
(5, 'iw16', 27, 'Industrial Workshop 2016', 1, 'Koay', 'Kuan Choang', 'dh', 'PUB'),
(6, 'wdc13', 22, 'Webpage Design Competition 2013', 4, 'Ali', 'Abu', 'dh', 'DEC'),
(7, 'mod14', 24, 'Motivation Day 2014', 4, 'Ali', 'Abu', 'member', 'PP2'),
(8, 'mct16', 0, 'Movie Competition 2016', 4, 'Ali', 'Abu', 'treasurer', 'CC'),
(9, 'mct16', 0, 'Movie Competition 2016', 5, 'Jaey', 'Ang', 'president ', 'CC'),
(10, 'mltd15', 28, 'Multimedia Day 2015', 5, 'Jaey', 'Ang', 'president ', 'CC'),
(11, 'mltd15', 28, 'Multimedia Day 2015', 1, 'Koay', 'Kuan Choang', 'member', 'FIN'),
(12, 'pac2015', 18, 'Postgraduate Annual Conferrence 2015', 1, 'Koay', 'Kuan Choang', 'member', 'FOD'),
(13, 'pac2015', 18, 'Postgraduate Annual Conferrence 2015', 2, 'Johnny', 'English', 'president', 'CC'),
(14, 'pac2015', 18, 'Postgraduate Annual Conferrence 2015', 3, 'Lo', 'Sin Kuang', 'dh', 'FOD'),
(15, 'pac2015', 18, 'Postgraduate Annual Conferrence 2015', 5, 'Jaey', 'Ang', 'vp', 'cc'),
(16, 'pac2015', 18, 'Postgraduate Annual Conferrence 2015', 8, 'Suhaini', 'Unaizah', 'member', 'TEC'),
(20, 'mg2017', 40, 'Mind Game 2017', 1, 'Koay', 'Kuan Choang', 'president', 'CC'),
(21, 'sed15', 20, 'SE Day 2015', 2, 'Johnny', 'English', 'member', 'DEC'),
(22, 'sed15', 20, 'SE Day 2015', 5, 'Jaey', 'Ang', 'member', 'DEC'),
(23, 'aid15', 1, 'AI Day 2015', 10, 'Gan', 'YY', 'member', 'LOG'),
(24, 'mhs14', 16, 'Orientation Week 2014', 11, 'Venusa', 'Hello', 'dh', 'PP2'),
(25, 'mhs14', 16, 'Orientation Week 2014', 3, 'Lo', 'Sin Kuang', 'member', 'TEC'),
(26, 'TEST16', 0, '', 1, 'Koay', 'Kuan Choang', 'member', 'TEC'),
(27, 'TEST16', 0, '', 1, 'Koay', 'Kuan Choang', 'member', 'TEC'),
(28, 'mg2017', 40, 'Mind Game 2017', 5, 'Jaey', 'Ang', 'member', 'TEC'),
(29, 'mg2017', 40, 'Mind Game 2017', 8, 'Suhaini', 'Unaizah', 'secretory', 'CC'),
(30, 'mg2017', 40, 'Mind Game 2017', 4, 'Ali', 'Abu', 'member', 'PP2'),
(31, 'mg2017', 40, 'Mind Game 2017', 3, 'Lo', 'Sin Kuang', 'member', 'PRY'),
(32, 'sed2016', 41, 'SE Day 2016', 1, 'Koay', 'Kuan Choang', 'president', 'CC'),
(33, 'sed2016', 42, 'SE Day 2016', 1, 'Koay', 'Kuan Choang', 'president', 'CC'),
(34, 'aid2016', 43, 'AI Day 2016', 1, 'Koay', 'Kuan Choang', 'president', 'CC'),
(35, 'jac2017', 44, 'Java App Competition', 1, 'Koay', 'Kuan Choang', 'president', 'CC');

-- --------------------------------------------------------

--
-- Table structure for table `pending_event`
--

CREATE TABLE `pending_event` (
  `pd_index` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id2` varchar(80) NOT NULL,
  `caseDate` date NOT NULL,
  `propose_date` date NOT NULL,
  `caseName` varchar(80) NOT NULL,
  `budget` double NOT NULL,
  `department` varchar(50) NOT NULL,
  `level` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `expectedIncome` double NOT NULL,
  `cmtSize` int(11) NOT NULL,
  `expectedPtcpt` varchar(11) NOT NULL,
  `expectedFeedback` int(11) NOT NULL,
  `aim` text NOT NULL,
  `justification` text NOT NULL,
  `objective` text NOT NULL,
  `hasil_bengkel` text NOT NULL,
  `schedule` text NOT NULL,
  `prepare_by` text NOT NULL,
  `level1` int(2) NOT NULL DEFAULT '0',
  `level2` int(2) NOT NULL DEFAULT '0',
  `level3` int(2) NOT NULL DEFAULT '0',
  `final` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_event`
--

INSERT INTO `pending_event` (`pd_index`, `user_id`, `user_id2`, `caseDate`, `propose_date`, `caseName`, `budget`, `department`, `level`, `type`, `expectedIncome`, `cmtSize`, `expectedPtcpt`, `expectedFeedback`, `aim`, `justification`, `objective`, `hasil_bengkel`, `schedule`, `prepare_by`, `level1`, `level2`, `level3`, `final`) VALUES
(1, 1, 'WEK415', '2017-10-01', '2016-10-01', 'Mind Game 2017', 1000, 'ai', 'department', 'seminar', 0, 10, '50', 66, 'To improve mind to create algorithm.', 'It is proven as working in MIT.', 'Improve programming thinking among AI students.', 'Laptop, paper.', '1. not sure yet.', 'Prepared by Dr. Koay', 1, 1, 1, 1),
(2, 1, 'WEK415', '2016-11-01', '2016-10-02', 'SE Day 2016', 400, 'se', 'department', 'orientation', 0, 20, '25', 68, 'To help to improve something.', 'the action of showing something to be right or reasonable.', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe', 1, 1, 1, 1),
(3, 1, 'WEK415', '2016-10-14', '2016-09-06', 'Multimedia Game Competition', 500, 'it', 'department', 'competition', 0, 15, '69', 52, 'To help to improve something. ', 'the action of showing something to be right or reasonable.', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe', 0, 0, 0, 0),
(8, 1, 'WEK415', '2017-10-06', '2016-10-02', 'Hackathon for All', 12000, 'all', 'university', 'competition', 0, 30, '200', 80, 'To help to improve something. ', 'the action of showing something to be right or reasonable.', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe', -1, 0, 0, 0),
(9, 1, 'WEK415', '2015-10-31', '2015-05-31', 'AI Day 2016', 300, 'ai', 'department', 'orientation', 0, 20, '60', 70, 'To help to improve something. ', 'the action of showing something to be right or reasonable.\r\n', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe', 1, 1, 1, 1),
(10, 1, 'WEK415', '2017-04-05', '2016-10-27', 'Java App Competition', 2000, 'under_grad', 'faculty', 'competition', 0, 20, '80', 60, 'haha', 'haha', 'haha', 'haha', 'haha', 'haha', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

CREATE TABLE `proposal` (
  `cIndex` int(11) NOT NULL,
  `caseID` varchar(8) NOT NULL,
  `caseName` varchar(100) NOT NULL,
  `aim` text NOT NULL,
  `justification` text NOT NULL,
  `objective` text NOT NULL,
  `hasil_bengkel` text NOT NULL,
  `schedule` text NOT NULL,
  `prepare_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`cIndex`, `caseID`, `caseName`, `aim`, `justification`, `objective`, `hasil_bengkel`, `schedule`, `prepare_by`) VALUES
(0, 'def', 'Default', 'To help to improve something. ', 'the action of showing something to be right or reasonable.', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe'),
(1, 'aid15', 'AI Days 2015\r\n', 'To help to improve something. ', 'the action of showing something to be right or reasonable.\n', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe'),
(20, 'sed15', 'SE Day 2015', 'To help to improve something.', 'the action of showing something to be right or reasonable.', 'Modular integrated information management system incorporating document management, workflow, records management and web content management.', 'Pen, PC, paper.', '1. Do this.\r\n2. Do this.', 'Doctor Jane Doe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `event_checklist`
--
ALTER TABLE `event_checklist`
  ADD PRIMARY KEY (`ec_index`);

--
-- Indexes for table `event_record`
--
ALTER TABLE `event_record`
  ADD PRIMARY KEY (`caseID`),
  ADD UNIQUE KEY `caseName` (`caseName`),
  ADD UNIQUE KEY `cIndex` (`cIndex`);

--
-- Indexes for table `hosting_event`
--
ALTER TABLE `hosting_event`
  ADD PRIMARY KEY (`he_index`);

--
-- Indexes for table `invitation`
--
ALTER TABLE `invitation`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`l_index`);

--
-- Indexes for table `member_record`
--
ALTER TABLE `member_record`
  ADD UNIQUE KEY `mr_index` (`mr_index`);

--
-- Indexes for table `pending_event`
--
ALTER TABLE `pending_event`
  ADD PRIMARY KEY (`pd_index`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`cIndex`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `event_checklist`
--
ALTER TABLE `event_checklist`
  MODIFY `ec_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `event_record`
--
ALTER TABLE `event_record`
  MODIFY `cIndex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `hosting_event`
--
ALTER TABLE `hosting_event`
  MODIFY `he_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `l_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `member_record`
--
ALTER TABLE `member_record`
  MODIFY `mr_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `pending_event`
--
ALTER TABLE `pending_event`
  MODIFY `pd_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Database: `gtest`
--
CREATE DATABASE IF NOT EXISTS `gtest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gtest`;

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `c_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `g_line` text NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `c_date` text,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`c_id`, `type`, `g_line`, `url`, `c_date`, `status`) VALUES
(1, 'PIC', 'Prepare the proposal and budget to get approval from dean. Workshop request form is needed.', 'http://localhost/template/letter/Workshop Proposal Template Letter.docx', NULL, 'incomplete'),
(2, 'PIC', 'Complete the workshop request form.', 'http://localhost/template/proposal/Workshop Request Form.docx', NULL, 'incomplete'),
(3, 'PIC', 'Once get approval from dean, please prepare a details work plan for dean.', 'http://localhost/template/proposal/Workshop Details Plan.docx', NULL, 'incomplete'),
(4, 'PIC', 'Figure out your mission are vision. \r\nMission:Explains what it is your are trying to do in fifty words or less.\r\nVision:A one-sentence statement describing the clear and inspirational long-term desired change resulting from an organization or work program.', '', NULL, 'incomplete'),
(5, 'PIC', 'Call for meeting to discuss about the details and distribute the job.', 'http://localhost/meeting.html', NULL, 'incomplete'),
(6, 'PIC', 'Select committee and make sure they do their job', 'http://localhost/memberlist.php', NULL, 'incomplete'),
(7, 'TRE', 'Prepare the budget plan.', 'http://localhost/template/proposal/budget.xls', '6-1-2016', 'ongoing'),
(8, 'TRE', 'Find and request sponsorship from sponsors.', '', NULL, 'unassigned'),
(9, 'TRE', 'Estimate the income will generate by this workshop.', '', '5-29-2016', 'ongoing'),
(10, 'TRE', 'Create donation drive if necessary.', '', NULL, 'cancel'),
(11, 'SEC', 'Prepare the letters.', 'http://localhost/template/letter/', NULL, 'incomplete'),
(12, 'SEC', 'Take the meeting minute and upload', 'http://localhost/email_function_minute.php', NULL, 'incomplete'),
(13, 'SEC', 'Prepare google form (registration/evaluation).', 'https://www.google.com/forms/about/', NULL, 'incomplete'),
(14, 'SEC', 'Check the format of document', '', NULL, 'incomplete'),
(15, 'SEC', 'Prepare the post morterm report.', 'http://localhost/template/report/workshop postmortem.docx', NULL, 'incomplete'),
(16, 'PP2', 'Plan and launch the publicity plan.', '', NULL, 'incomplete'),
(17, 'PP2', 'Inivte other to the event via various ways.', '', NULL, 'incomplete'),
(18, 'PP2', 'Prepare the information about the workshop.', '', NULL, 'incomplete'),
(19, 'PUB', 'Rules of design:The logos must put at the top side of your design. UM logo come first, then FSKTM logos, and last, your event logo if have any.', '', NULL, 'incomplete'),
(20, 'PUB', 'Publish booklet.', 'https://products.office.com/en-gb/publisher', NULL, 'incomplete'),
(21, 'PUB', 'Design invitation card.', 'https://templates.office.com/en-za/Cards', NULL, 'incomplete'),
(22, 'PUB', 'Design certificate.', 'http://www.123certificates.com/certificate-templates-for-word.php', NULL, 'incomplete'),
(23, 'PUB', 'Design cheque.', 'https://www.template.net/business/word-templates/blank-check-template/mock', NULL, 'incomplete'),
(24, 'PUB', 'Design coupon.', 'http://templatelab.com/coupon-templates/', NULL, 'incomplete'),
(25, 'PUB', 'Decorate the venue.', '', NULL, 'incomplete'),
(26, 'PRO', 'Prepare the script.', 'https://docs.google.com/document/d/1zwme8ySwhpS6JMKzreZZNWGASjANEiBbNLqBbupCy-U/', NULL, 'incomplete'),
(27, 'PRO', 'Make flow plan.', 'http://localhost/template/proposal/Workshop Details Plan.docx', NULL, 'incomplete'),
(28, 'PRO', 'Contact with speaker.', '', NULL, 'incomplete'),
(29, 'PRO', 'Time management during event.', '', NULL, 'incomplete'),
(30, 'PRO', 'Prepare prayer script if necessary.', '', NULL, 'incomplete'),
(31, 'TEC', 'Prepare a list of equipments needed.', '', NULL, 'incomplete'),
(32, 'TEC', 'Check the equipments.', '', NULL, 'incomplete'),
(33, 'TEC', 'Recruit photographer.', '', NULL, 'incomplete'),
(34, 'REG', 'Get the attendence of the participants before workshop start.', '', NULL, 'incomplete'),
(35, 'REG', 'Distribute goodie bags to participants during workshop.', '', NULL, 'incomplete'),
(36, 'REG', 'Preparation of stationery.', '', NULL, 'incomplete'),
(37, 'REG', 'Distribute of evaluation form.', 'https://www.google.com/forms/about/', NULL, 'incomplete'),
(38, 'REG', 'Distribute certificate during end of workshop.', '', NULL, 'incomplete'),
(39, 'LOG', 'Prepare the floorplan and transport.', 'http://vmis.um.edu.my/', NULL, 'incomplete'),
(40, 'LOG', 'Room booking.', 'https://docs.google.com/forms/d/1UsLkpzp73qr0Vfb8y8Q0l8WT7C9yRmaSdxHjMhw5_R8/vie', NULL, 'incomplete'),
(41, 'LOG', 'Prepare the items that required by every department. Eg: Ballon, paper, others.', '', NULL, 'incomplete'),
(42, 'LOG', 'Check the venue.', '', NULL, 'incomplete'),
(43, 'FOD', 'Decide the menu.', '', NULL, 'incomplete'),
(44, 'FOD', 'Make sure the quantity of food is enough.', '', NULL, 'incomplete'),
(45, 'FOD', 'Liase with cafeteria.', '#', NULL, 'incomplete'),
(46, 'FOD', 'Clean the place after dinner.', '', NULL, 'incomplete'),
(47, 'TFF', 'Prepare a prayer script for Islam. ', NULL, NULL, ''),
(49, 'TFF', 'Drive carefully', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `p_list`
--

CREATE TABLE `p_list` (
  `pemail` varchar(80) NOT NULL,
  `ptype` varchar(10) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `date` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `steamboat`
--

CREATE TABLE `steamboat` (
  `caseID` int(11) NOT NULL,
  `firedate` date NOT NULL,
  `location` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `steamboat`
--

INSERT INTO `steamboat` (`caseID`, `firedate`, `location`, `description`, `type`) VALUES
(1, '2016-10-04', 'SS2, PJ', 'some fuckface burn my house o0o ', 'big fucking fire'),
(2, '2016-10-12', 'UM, MAster''s house', 'He is doing it right bro!!!', 'big fucking fire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD UNIQUE KEY `c_id` (`c_id`);

--
-- Indexes for table `steamboat`
--
ALTER TABLE `steamboat`
  ADD PRIMARY KEY (`caseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `steamboat`
--
ALTER TABLE `steamboat`
  MODIFY `caseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'gtest', 'root', '('''','''','''','''')', 'INSERT INTO checklist(type, g_line, url,status) VALUES (''PIC'',''Complete the workshop request form.'',''http://localhost/template/proposal/Workshop Request Form.docx'',''incomplete''), (''PIC'',''Once get approval from dean, please prepare a details work plan for dean.'',''http://localhost/template/proposal/Workshop Details Plan.docx'',''incomplete''),(''PIC'',''Figure out your mission are vision. \r\nMission:Explains what it is your are trying to do in fifty words or less.\r\nVision:A one-sentence statement describing the clear and inspirational long-term desired change resulting from an organization or work program.'','''',''incomplete''), (''PIC'',''Call for meeting to discuss about the details and distribute the job.'',''http://localhost/meeting.html'',''incomplete''), (''PIC'',''Select committee and make sure they do their job'',''http://localhost/memberlist.php'',''incomplete'')');

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"event","table":"event_record"},{"db":"event","table":"link"},{"db":"casebase","table":"positivecase"},{"db":"event","table":"hosting_event"},{"db":"event","table":"event_checklist"},{"db":"event","table":"checklist"},{"db":"event","table":"member_record"},{"db":"casebase","table":"weight"},{"db":"event","table":"invitation"},{"db":"profile","table":"user"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'casebase', 'positivecase', '{"sorted_col":"`positivecase`.`cIndex`  DESC"}', '2016-10-28 18:02:26'),
('root', 'dbtest', 'users', '{"sorted_col":"`users`.`staffid`  DESC","CREATE_TIME":"2016-05-18 01:27:48","col_visib":["1","1","1","1","1","1","1","1","1"]}', '2016-05-31 12:59:12'),
('root', 'event', 'checklist', '{"sorted_col":"`checklist`.`type`  DESC"}', '2016-10-08 14:18:00'),
('root', 'event', 'event_record', '{"sorted_col":"`cIndex`  ASC"}', '2016-10-29 13:55:07'),
('root', 'event', 'invitation', '{"sorted_col":"`invitation`.`confirm`  DESC"}', '2016-10-10 01:53:56'),
('root', 'event', 'member_record', '{"sorted_col":"`member_record`.`mr_index`  DESC"}', '2016-10-29 13:07:22'),
('root', 'event', 'pending_event', '{"sorted_col":"`pending_event`.`pd_index` ASC"}', '2016-10-14 01:52:39'),
('root', 'gtest', 'checklist', '{"sorted_col":"`checklist`.`c_id`  ASC"}', '2016-08-28 13:15:18'),
('root', 'profile', 'user', '{"sorted_col":"`user`.`id` ASC"}', '2016-10-08 13:11:11'),
('root', 'profile', 'user_tempt', '{"sorted_col":"`user_id` ASC"}', '2016-08-25 14:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-05-14 12:14:54', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `profile`
--
CREATE DATABASE IF NOT EXISTS `profile` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `profile`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level` int(2) NOT NULL DEFAULT '1',
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_id`, `level`, `email`) VALUES
(1, 13, 1, 'admin_1@gmail.com'),
(2, 14, 2, 'admin_2@gmail.com'),
(3, 15, 3, 'admin_3@gmail.com'),
(4, 0, 1, 'admin_0@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `def_tempt`
--

CREATE TABLE `def_tempt` (
  `temp_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `temp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `def_tempt`
--

INSERT INTO `def_tempt` (`temp_id`, `type`, `name`, `temp`) VALUES
(1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you so much.  '),
(2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\n\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \n\nVenue:\nDate:\nTime:\n'),
(8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you.'),
(18, 'custom', 'Custom 1', '[blank1]'),
(19, 'custom', 'Custom 2', '[blank2]');

-- --------------------------------------------------------

--
-- Table structure for table `end_text`
--

CREATE TABLE `end_text` (
  `user_id` int(11) NOT NULL,
  `end_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outsider`
--

CREATE TABLE `outsider` (
  `out_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `position` varchar(70) NOT NULL,
  `company` varchar(70) NOT NULL,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `icnumber` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outsider`
--

INSERT INTO `outsider` (`out_id`, `email`, `position`, `company`, `firstname`, `lastname`, `icnumber`, `phone`, `description`) VALUES
(1, 'makcik_canteen@hotmail.com', 'Mananger', 'Canteen Makcik', 'Fatimah', 'Adilah', '631229151234', '01112344321', 'Run a restaurant called Mak Cik which can provide buffet with fair price.'),
(2, 'intel_tauke@yahoo.com', 'General Manager', 'Intel', 'Tauke', 'Tan', '801010105234', '01112345678', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `matric_number` varchar(11) NOT NULL,
  `level` varchar(30) NOT NULL,
  `department` varchar(70) NOT NULL,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `icnumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `email`, `matric_number`, `level`, `department`, `firstname`, `lastname`, `phone`, `icnumber`) VALUES
(1, 'gyz1119@gmail.com', 'WEK1317', 'undergraduate', 'Artificial Intelligence', 'Goh', 'Zhao Yang', '0134562789', '931129151234'),
(2, 'rayson@gmail.com', 'WTC1105', 'postgraduate', 'Networking', 'Leong', 'Rayson', '01112345678', '901010105234');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  `staffid` varchar(25) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `icnumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `staffid`, `designation`, `department`, `firstname`, `lastname`, `phone`, `icnumber`) VALUES
(0, 'admin_0@gmail.com', 'adminveryhebat', 'ADMIN0', 'Dean', 'Information Techonology', 'Jacob', 'Adolah', '0125551234', '631129151234'),
(1, 'johny.1297@gmail.com', '123', 'WEK415', 'Professor', 'Artificial Intelligence', 'Koay', 'Kuan Choang', '0122222567', '850125065234'),
(2, 'johny.1298@gmail.com', '12345', 'wek1319', 'Senior Lecturer', 'Software Engineering', 'Johnny', 'English', '0122222222', '850125065234'),
(3, 'dnllo36@gmail.com', '123', 'wek1234', 'Technical Staff', 'Technical', 'Lo', 'Sin Kuang', '0111123232', '850125065234'),
(4, 'dr_b@gmail.com', '12345', 'wek1111', 'Lecturer', 'Software Engineering', 'Ali', 'Abu', '012345678', '850125065234'),
(5, 'dr_c@gmail.com', '12347', 'wek1112', 'Senior Lecturer', 'Software Engineering', 'Jaey', 'Ang', '012345678', '850125065234'),
(6, 'dr_d@gmail.com', '12346', 'wek1113', 'Department Head', 'Networking', 'Razi', 'Abu', '012345678', '850125065234'),
(7, 'dr_e@gmail.com', '12348', 'wek1114', 'Lecturer', 'Software Engineering', 'Raven', 'Rozi', '012345678', '850125065234'),
(8, 'dr_f@gmail.com', '12340', 'wek1115', 'Lecturer', 'Networking', 'Suhaini', 'Unaizah', '012345678', '850125065234'),
(9, 'dr_g@gmail.com', '12349', 'wek1116', 'Professor', 'Software Engineering', 'Wong', 'Wai Kit', '012345678', '850125065234'),
(10, 'dr_h@gmail.com', '12315', 'wek1117', 'Lecturer', 'Artificial Intelligence', 'YY', 'Gan', '012345678', '850125065234'),
(11, 'dr_i@gmail.com', '12325', 'wek1118', 'Senior Lecturer', 'Software Engineering', 'Venusa', 'Hello', '012345678', '850125065234'),
(12, 'dr_j@gmail.com', '12335', 'wek1119', 'Lecturer', 'Information System', 'Zemo', 'Captain', '012345678', '850125065234'),
(13, 'admin_1@gmail.com', '123456', 'ADM1', 'Head of Department', 'Software Engineering', 'Admin', 'Awang', '011-23412345', '931129151235'),
(14, 'admin_2@gmail.com', '12233566', 'ADMIN2', 'Financial Officer', 'Management', 'Adibah', 'Fatimah', '012-9875673', '901210105234'),
(15, 'admin_3@gmail.com', '1234566', 'ADMIN3', 'Dean', 'Multimedia', 'Adullah', 'Najib', '01123456', '931129151234');

-- --------------------------------------------------------

--
-- Table structure for table `user_tempt`
--

CREATE TABLE `user_tempt` (
  `table_id` int(111) NOT NULL,
  `user_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tempt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tempt`
--

INSERT INTO `user_tempt` (`table_id`, `user_id`, `temp_id`, `type`, `name`, `tempt`) VALUES
(205, 1, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(206, 1, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(207, 1, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(208, 1, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(209, 1, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(210, 1, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(211, 1, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\n\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \n\nVenue:\nDate:\nTime:\n'),
(212, 1, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(213, 1, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(214, 1, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(215, 1, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(216, 1, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(217, 1, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(218, 1, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(219, 1, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(220, 1, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(221, 1, 17, 'dinner', 'Food Menu', 'Dear [designation],\n\nI want to review your menu.\n\nThank you'),
(222, 1, 18, 'custom', 'Custom 1', '[blank1]'),
(223, 1, 19, 'custom', 'Custom 2', 'HELLO FROM THE OTHERSIDE'),
(224, 2, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(225, 2, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(226, 2, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(227, 2, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(228, 2, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(229, 2, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(230, 2, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(231, 2, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(232, 2, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(233, 2, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(234, 2, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(235, 2, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(236, 2, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(237, 2, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(238, 2, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(239, 2, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(240, 2, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(241, 2, 18, 'custom', 'Custom 1', '[blank1]'),
(242, 2, 19, 'custom', 'Custom 2', '[blank2]'),
(243, 3, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(244, 3, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(245, 3, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(246, 3, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(247, 3, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(248, 3, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(249, 3, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(250, 3, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(251, 3, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(252, 3, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(253, 3, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(254, 3, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(255, 3, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(256, 3, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(257, 3, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(258, 3, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(259, 3, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(260, 3, 18, 'custom', 'Custom 1', '[blank1]'),
(261, 3, 19, 'custom', 'Custom 2', '[blank2]'),
(262, 4, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(263, 4, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(264, 4, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(265, 4, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(266, 4, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(267, 4, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(268, 4, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(269, 4, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(270, 4, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(271, 4, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(272, 4, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(273, 4, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(274, 4, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(275, 4, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(276, 4, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(277, 4, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(278, 4, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(279, 4, 18, 'custom', 'Custom 1', '[blank1]'),
(280, 4, 19, 'custom', 'Custom 2', '[blank2]'),
(281, 5, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(282, 5, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(283, 5, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(284, 5, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(285, 5, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(286, 5, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(287, 5, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(288, 5, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(289, 5, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(290, 5, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(291, 5, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(292, 5, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(293, 5, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(294, 5, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(295, 5, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(296, 5, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(297, 5, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(298, 5, 18, 'custom', 'Custom 1', '[blank1]'),
(299, 5, 19, 'custom', 'Custom 2', '[blank2]'),
(300, 6, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(301, 6, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(302, 6, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(303, 6, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(304, 6, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(305, 6, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(306, 6, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(307, 6, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(308, 6, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(309, 6, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(310, 6, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(311, 6, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(312, 6, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(313, 6, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(314, 6, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(315, 6, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(316, 6, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(317, 6, 18, 'custom', 'Custom 1', '[blank1]'),
(318, 6, 19, 'custom', 'Custom 2', '[blank2]'),
(319, 7, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(320, 7, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(321, 7, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(322, 7, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(323, 7, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(324, 7, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(325, 7, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(326, 7, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(327, 7, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(328, 7, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(329, 7, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(330, 7, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(331, 7, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(332, 7, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(333, 7, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(334, 7, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(335, 7, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(336, 7, 18, 'custom', 'Custom 1', '[blank1]'),
(337, 7, 19, 'custom', 'Custom 2', '[blank2]'),
(338, 8, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(339, 8, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(340, 8, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(341, 8, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(342, 8, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(343, 8, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(344, 8, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(345, 8, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(346, 8, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(347, 8, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(348, 8, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(349, 8, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(350, 8, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(351, 8, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(352, 8, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(353, 8, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(354, 8, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(355, 8, 18, 'custom', 'Custom 1', '[blank1]'),
(356, 8, 19, 'custom', 'Custom 2', '[blank2]'),
(357, 9, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(358, 9, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(359, 9, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(360, 9, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(361, 9, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(362, 9, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(363, 9, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(364, 9, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(365, 9, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(366, 9, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(367, 9, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(368, 9, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(369, 9, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(370, 9, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(371, 9, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(372, 9, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(373, 9, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(374, 9, 18, 'custom', 'Custom 1', '[blank1]'),
(375, 9, 19, 'custom', 'Custom 2', '[blank2]'),
(376, 10, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(377, 10, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(378, 10, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(379, 10, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(380, 10, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(381, 10, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(382, 10, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(383, 10, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(384, 10, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(385, 10, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(386, 10, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(387, 10, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(388, 10, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(389, 10, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(390, 10, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(391, 10, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(392, 10, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(393, 10, 18, 'custom', 'Custom 1', '[blank1]'),
(394, 10, 19, 'custom', 'Custom 2', '[blank2]'),
(395, 11, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(396, 11, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(397, 11, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(398, 11, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(399, 11, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(400, 11, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(401, 11, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(402, 11, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(403, 11, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(404, 11, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(405, 11, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(406, 11, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(407, 11, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(408, 11, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(409, 11, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(410, 11, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(411, 11, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(412, 11, 18, 'custom', 'Custom 1', '[blank1]'),
(413, 11, 19, 'custom', 'Custom 2', '[blank2]'),
(414, 12, 1, 'invite', 'Speaker Invitation', 'Dear [insert designation name],\r\n\r\nYour are invited to this event conducted by [insert organizer] which aims to [insert objective]. We wish you can come over to [insert task]. Here is the details of the event:\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n\r\nWe will give you [insert reward]. We are looking forward to see you, thank you.  '),
(415, 12, 2, 'review', 'Review Template 1', 'Dear [insert name],\r\n\r\nPlease do us a favor by filling this form to collect your feedback. Don''t worry, your personal details will be stayed in anonymous. \r\n\r\nThank you so much. '),
(416, 12, 3, 'review', 'Review Template 2', 'Dear [insert name],\r\n\r\nWhat is your opinion to out event? Please reply ASAP.\r\n\r\nThank you. '),
(417, 12, 4, 'recruit', 'Student Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.'),
(418, 12, 5, 'recruit ', 'Staff Recruitment', 'Dear [insert designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], as we know you have that special skills that can aid us.\r\n\r\nPlease, join us!'),
(419, 12, 6, 'borrow', 'Borrow Item from University', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP\r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(420, 12, 7, 'borrow ', 'Borrow Item from Outside', 'Dear [insert designation],\r\n\r\nWe want to borrow following list of items for [event]. Please let us know the result ASAP. If there is any fees needed please inform us too. Thank you. \r\n\r\nVenue:\r\nDate:\r\nTime:\r\n'),
(421, 12, 8, 'venue', 'Borrow Venue from Faculty', 'Dear [designation],\r\n\r\nGood day, dean. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you\r\n'),
(422, 12, 9, 'venue', 'Borrow Venue from University', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], can you borrow us? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(423, 12, 10, 'venue', 'Borrow Venue from Outside', 'Dear [designation],\r\n\r\nGood day, HEP. We will have a [event], want to use [venue], if get any fees please tell us as well.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you XOXO'),
(424, 12, 11, 'vip', 'University/Faculty VIP Invitation', 'Dear [designation],\r\n\r\nWe will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(425, 12, 12, 'vip', 'Industrial VIP Invitation', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(426, 12, 13, 'vip', 'Almuni Invitation', 'Dear [designation],\r\n\r\nWe are your junior. We will run a event which is aim to [insert objective], and the date will be [insert date]. We currently recruiting [insert position], we do hope you can join us.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(427, 12, 14, 'transport', 'Transport', 'Dear [designation],\r\n\r\nI want to use bus, get any fees? \r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(428, 12, 15, 'sponsor', 'Sponsor Request', 'Dear [designation],\r\n\r\nWe are from UM FSKTM. Can I request sponsor? Here is our objectives [objective].\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(429, 12, 16, 'meeting', 'Meeting', 'Dear [designation],\r\n\r\nGet meeting, please come.\r\n\r\nDate:\r\nVenue:\r\nTime:\r\n\r\nThank you'),
(430, 12, 17, 'dinner', 'Food Menu', 'Dear [designation],\r\n\r\nI want to review your menu.\r\n\r\nThank you'),
(431, 12, 18, 'custom', 'Custom 1', '[blank1]'),
(432, 12, 19, 'custom', 'Custom 2', '[blank2]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `def_tempt`
--
ALTER TABLE `def_tempt`
  ADD PRIMARY KEY (`temp_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `end_text`
--
ALTER TABLE `end_text`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `outsider`
--
ALTER TABLE `outsider`
  ADD PRIMARY KEY (`out_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `matric_number` (`matric_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tempt`
--
ALTER TABLE `user_tempt`
  ADD UNIQUE KEY `table_id` (`table_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `def_tempt`
--
ALTER TABLE `def_tempt`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `outsider`
--
ALTER TABLE `outsider`
  MODIFY `out_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_tempt`
--
ALTER TABLE `user_tempt`
  MODIFY `table_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
