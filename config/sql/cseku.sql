-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 25, 2019 at 06:47 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `PrequisiteID` varchar(40) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `PrequisiteID`, `IsDeleted`) VALUES
('{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'CSE 1103', 'Structered Programming', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', NULL, 0),
('{24B98067-01EA-4B04-B815-3910BBAB2C29}', 'ece 3206', 'Data communication', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', NULL, 0),
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D} ', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', NULL, 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664} ', 0),
('{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'CSE 1104', 'Structured Programming Laboratory', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', NULL, 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{0CF37516-06FE-41CD-93AD-D2D1652509D6} ', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664} ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT '0',
  `PreRetake` tinyint(1) NOT NULL DEFAULT '0',
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `PreRetake`, `Status`) VALUES
('{27D9E7CA-3B47-4FA6-8014-796F69E06B79}', 'mkazi078@uottawa.ca', 'lotif@gmail.com', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', '{2FFA4D56-743A-47AF-9DDF-1EA28CA43251}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 0, 1, 'registered'),
('{C2E9EB00-1751-4C91-8854-676FEC952714}', 'mkazi078@uottawa.ca', 'lotif@gmail.com', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 0, 0, 'registered'),
('{DFD4D9FF-DCA1-41CF-BC95-D604B237CB67}', 'mkazi078@uottawa.ca', 'rokeya@gmail.com', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 0, 0, 'registered'),
('{F2CF29E3-A0C8-4659-B5BA-638532427A8A}', 'mkazi078@uottawa.ca', 'lotif@gmail.com', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 1, 0, 'failed');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{03BC7D61-45DF-4714-B30F-FE48BF508443}', '{24B98067-01EA-4B04-B815-3910BBAB2C29}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 4),
('{8872B54C-23D7-4358-A7F7-E2C245C14FB9}', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 4),
('{B504FC3B-18CB-4E2F-84BD-8C1229CBA920}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3),
('{FDDB9AAF-1495-49CC-A682-CE2DF2C8A561}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{2FFA4D56-743A-47AF-9DDF-1EA28CA43251}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{CC494F52-1D3F-4877-BD28-91DF69556A2B}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{2FFA4D56-743A-47AF-9DDF-1EA28CA43251}', '2017-2018'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{BB760927-4174-47E8-B68F-ACB8AA381B41}', '5th'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{357EFB93-A3A6-4044-A305-206F30EF9841}', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '8,20,20,10', ''),
('{4C7C80C2-8570-4895-B44D-67AA017F2EB0}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{2FFA4D56-743A-47AF-9DDF-1EA28CA43251}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', '{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '10,50,25', ''),
('{A8BBB47F-B9B8-4E93-A137-39240B5842FC}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', '{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '5,20,10', ''),
('{F20DC6E0-95C7-40A0-9F09-04BF5C55618C}', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160210', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,28,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  `GradePoint` double NOT NULL,
  `IsRetake` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result_publish`
--

INSERT INTO `rms_course_marks_result_publish` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `HeaderID`, `HeaderName`, `HeaderMax`, `MarksValue`, `MarksTotal`, `Grades`, `GradeRanges`, `FinalGrade`, `GradePoint`, `IsRetake`) VALUES
('{8A2C3585-D74F-4E27-B2AA-596CBF89E41F}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', '5,20,10', '35', 'F,D,C,C+,B-,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 'F', 0, 0),
('{93578272-8B2F-4913-9290-AFD706073FCE}', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160210', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', '10,28,25,25', '88', 'F,D,C,C+,B-,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 'A+', 4, 0),
('{B55CE2EF-8FA0-4B65-8CCB-D56781AC0281}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{2FFA4D56-743A-47AF-9DDF-1EA28CA43251}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', '10,50,25', '85', 'F,D,C,C+,B-,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 'A', 3.75, 1),
('{B9976440-6CE3-4F51-B6CF-E0D5842A889B}', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', '8,20,20,10', '58', 'F,D,C,C+,B-,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 'B-', 2.75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{2008BCA1-57CD-4F6F-8C7F-BAAEA680C27D}', '{7DFAB7F9-0C4F-4098-9140-0D89ABDD0A3D}', 'avi@gmail.com', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160212', '10,10,10'),
('{F747C284-82BC-4563-969A-2CF6523F2C7D}', '{1CD0842E-9FCF-4F58-BB6B-FB7E7B73E664}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '160210', '13,X,X,X,X,X,X');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `Cgpa` varchar(300) NOT NULL,
  `IsRetake` tinyint(1) DEFAULT '0',
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `Cgpa`, `IsRetake`, `IsDefault`) VALUES
('{77E5B72E-93A8-4F4C-8FEC-0D6EBE396CDD}', 'F,D,D,C,C+,B-,B,B+,A-,A', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', '0.00,2.00,2.00,2.25,2.50,2.75,3.00,3.25,3.50,3.75', 1, 0),
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', '0.00,2.00,2.25,2.50,2.75,3.00,3.25,3.50,3.75,4.00', 0, 0),
('{FF75A9CD-E512-439C-AED2-9B176C8E68F1}', 'F,D,C,C+,B-,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', '0.00,2.00,2.25,2.50,2.75,3.00,3.25,3.50,3.75,4.00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_assign`
--

DROP TABLE IF EXISTS `tms_assign`;
CREATE TABLE IF NOT EXISTS `tms_assign` (
  `id` varchar(40) NOT NULL,
  `assign_to` varchar(40) NOT NULL,
  `assign_by` varchar(40) NOT NULL,
  `assing_date` date NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_assign`
--

INSERT INTO `tms_assign` (`id`, `assign_to`, `assign_by`, `assing_date`, `comment`, `status`) VALUES
('24', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-09-25', 'TEST2                               \r\n                ', 0),
('24', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-10-01', '                 test                ', 1),
('24', 'ryhan@gmail.com', 'ryhan@gmail.com', '2018-10-01', 'Test                          \r\n                ', 0),
('25', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-10-08', 'Do the task very carefully                 \r\n                ', 1),
('27', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-09-25', 'test\r\n                                  \r\n                ', 0),
('27', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-09-25', '\r\n       tesy2                          \r\n                ', 1),
('28', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-09-30', '\r\n          test                       \r\n                ', 1),
('32', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-10-08', 'TEST               \r\n                ', 1),
('33', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-10-08', 'TEST2                \r\n                ', 1),
('34', 'ryhan@gmail.com', 'ryhan@gmail.com', '2018-10-09', 'Study more and more               \r\n                ', 1),
('35', 'ryhan@gmail.com', 'avi@gmail.com', '2018-10-09', '  Do study                \r\n                ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_task`
--

DROP TABLE IF EXISTS `tms_task`;
CREATE TABLE IF NOT EXISTS `tms_task` (
  `id` varchar(40) NOT NULL,
  `task_name` varchar(20) NOT NULL,
  `task_creator` varchar(40) NOT NULL,
  `task_category` varchar(20) NOT NULL,
  `date_of_assign` date NOT NULL,
  `date_of_submission` date NOT NULL,
  `last_date_of_update` date NOT NULL,
  `progress` int(11) NOT NULL DEFAULT '0',
  `details` varchar(1000) NOT NULL,
  `attachment` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task`
--

INSERT INTO `tms_task` (`id`, `task_name`, `task_creator`, `task_category`, `date_of_assign`, `date_of_submission`, `last_date_of_update`, `progress`, `details`, `attachment`) VALUES
('1539613941', 'Class Test', 'ryhan@gmail.com', 'Study', '2018-10-15', '2018-10-26', '2018-10-15', 0, ';ljlj', '1539613941'),
('1539614267', 'Class Test', 'ryhan@gmail.com', 'Office', '2018-10-15', '2018-10-20', '2018-10-15', 0, 'tem,s', '1539614267.pdf'),
('24', 'test11', 'ryhan@gmail.com', 'Study', '2018-09-17', '2018-10-26', '2018-10-08', 11, 'DIP', '0'),
('25', 'Class Test', 'ryhan@gmail.com', 'Study', '2018-09-17', '2018-10-29', '2018-10-08', 6, 'DIP Class test', '0'),
('26', 'test11', 'ryhan@gmail.com', 'Study', '2018-08-09', '2018-10-26', '2018-10-08', 7, 'update date test', '0'),
('27', 'Solve the 5x5x5 cube', 'ryhan@gmail.com', 'Study', '2018-09-25', '2018-10-27', '2018-10-09', 3, 'You Have to solve the cube in 30 Minutes', '0'),
('32', 'test11111133', 'naeema@gmail.com', 'Appointment', '2018-10-08', '2018-10-31', '2018-10-09', 0, 'TEST', '0'),
('33', 'test2', 'naeema@gmail.com', 'Study', '2018-10-08', '2018-10-31', '2018-10-08', 0, 'TEST2', '0'),
('35', 'Class Test', 'avi@gmail.com', 'Study', '2018-10-09', '2018-10-30', '2018-10-09', 0, 'Class TEST', '0'),
('36', 'test11', '160230', 'hh', '2018-10-11', '2018-10-18', '2018-10-18', 0, 'lll', '0'),
('53', 'test11', '160230', 'hh', '2018-10-10', '2018-10-10', '2018-10-12', 0, ';lk;lkj', NULL),
('75', 'test', 'ryhan@gmail.com', 'Programming Contest', '2018-10-15', '2018-10-26', '2018-10-15', 0, 'kkkkk', '1539613080');

-- --------------------------------------------------------

--
-- Table structure for table `tms_task_category`
--

DROP TABLE IF EXISTS `tms_task_category`;
CREATE TABLE IF NOT EXISTS `tms_task_category` (
  `id` int(11) NOT NULL,
  `task_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task_category`
--

INSERT INTO `tms_task_category` (`id`, `task_type`) VALUES
(1, 'Study'),
(2, 'Office'),
(3, 'Appointment'),
(4, 'Programming Contest');

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=4973 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(4841, 'COURSE_C', 'COURSE_C', 'COURSE'),
(4842, 'COURSE_R', 'COURSE_R', 'COURSE'),
(4843, 'COURSE_U', 'COURSE_U', 'COURSE'),
(4844, 'COURSE_D', 'COURSE_D', 'COURSE'),
(4845, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(4846, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(4847, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(4848, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(4849, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(4850, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(4851, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(4852, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(4853, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(4854, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(4855, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(4856, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(4857, 'FILE_C', 'FILE_C', 'FILE'),
(4858, 'FILE_R', 'FILE_R', 'FILE'),
(4859, 'FILE_U', 'FILE_U', 'FILE'),
(4860, 'FILE_D', 'FILE_D', 'FILE'),
(4861, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(4862, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(4863, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(4864, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(4865, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(4866, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(4867, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(4868, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(4869, 'RESULT_C', 'RESULT_C', 'RESULT'),
(4870, 'RESULT_R', 'RESULT_R', 'RESULT'),
(4871, 'RESULT_U', 'RESULT_U', 'RESULT'),
(4872, 'RESULT_D', 'RESULT_D', 'RESULT'),
(4873, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(4874, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(4875, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(4876, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(4877, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(4878, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(4879, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(4880, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(4881, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(4882, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(4883, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(4884, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(4885, 'ROLE_C', 'ROLE_C', 'ROLE'),
(4886, 'ROLE_R', 'ROLE_R', 'ROLE'),
(4887, 'ROLE_U', 'ROLE_U', 'ROLE'),
(4888, 'ROLE_D', 'ROLE_D', 'ROLE'),
(4889, 'POSITION_C', 'POSITION_C', 'POSITION'),
(4890, 'POSITION_R', 'POSITION_R', 'POSITION'),
(4891, 'POSITION_U', 'POSITION_U', 'POSITION'),
(4892, 'POSITION_D', 'POSITION_D', 'POSITION'),
(4893, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(4894, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(4895, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(4896, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(4897, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(4898, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(4899, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(4900, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(4901, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(4902, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(4903, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(4904, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(4905, 'SESSION_C', 'SESSION_C', 'SESSION'),
(4906, 'SESSION_R', 'SESSION_R', 'SESSION'),
(4907, 'SESSION_U', 'SESSION_U', 'SESSION'),
(4908, 'SESSION_D', 'SESSION_D', 'SESSION'),
(4909, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(4910, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(4911, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(4912, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(4913, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(4914, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(4915, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(4916, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(4917, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(4918, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(4919, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(4920, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(4921, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(4922, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(4923, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(4924, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(4925, 'TERM_C', 'TERM_C', 'TERM'),
(4926, 'TERM_R', 'TERM_R', 'TERM'),
(4927, 'TERM_U', 'TERM_U', 'TERM'),
(4928, 'TERM_D', 'TERM_D', 'TERM'),
(4929, 'USER_C', 'USER_C', 'USER'),
(4930, 'USER_R', 'USER_R', 'USER'),
(4931, 'USER_U', 'USER_U', 'USER'),
(4932, 'USER_D', 'USER_D', 'USER'),
(4933, 'YEAR_C', 'YEAR_C', 'YEAR'),
(4934, 'YEAR_R', 'YEAR_R', 'YEAR'),
(4935, 'YEAR_U', 'YEAR_U', 'YEAR'),
(4936, 'YEAR_D', 'YEAR_D', 'YEAR'),
(4937, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(4938, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(4939, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(4940, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(4941, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(4942, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(4943, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(4944, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(4945, 'JOB_C', 'JOB_C', 'JOB'),
(4946, 'JOB_R', 'JOB_R', 'JOB'),
(4947, 'JOB_U', 'JOB_U', 'JOB'),
(4948, 'JOB_D', 'JOB_D', 'JOB'),
(4949, 'CLUB_C', 'CLUB_C', 'CLUB'),
(4950, 'CLUB_R', 'CLUB_R', 'CLUB'),
(4951, 'CLUB_U', 'CLUB_U', 'CLUB'),
(4952, 'CLUB_D', 'CLUB_D', 'CLUB'),
(4953, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(4954, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(4955, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(4956, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(4957, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(4958, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(4959, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(4960, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(4961, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(4962, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(4963, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(4964, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(4965, 'TASK_C', 'TASK_C', 'TASK'),
(4966, 'TASK_R', 'TASK_R', 'TASK'),
(4967, 'TASK_U', 'TASK_U', 'TASK'),
(4968, 'TASK_D', 'TASK_D', 'TASK'),
(4969, 'TASK_CATEGORY_C', 'TASK_CATEGORY_C', 'TASK_CATEGORY'),
(4970, 'TASK_CATEGORY_R', 'TASK_CATEGORY_R', 'TASK_CATEGORY'),
(4971, 'TASK_CATEGORY_U', 'TASK_CATEGORY_U', 'TASK_CATEGORY'),
(4972, 'TASK_CATEGORY_D', 'TASK_CATEGORY_D', 'TASK_CATEGORY');
(3893, 'ASSET_C', 'ASSET_C', 'ASSET'),
(3894, 'ASSET_R', 'ASSET_R', 'ASSET'),
(3895, 'ASSET_U', 'ASSET_U', 'ASSET'),
(3896, 'ASSET_D', 'ASSET_D', 'ASSET'),
(3897, 'THESIS_C', 'THESIS_C', 'THESIS'),
(3898, 'THESIS_R', 'THESIS_R', 'THESIS'),
(3899, 'THESIS_U', 'THESIS_U', 'THESIS'),
(3900, 'THESIS_D', 'THESIS_D', 'THESIS'),
(3901, 'EMAIL_C', 'EMAIL_C', 'EMAIL'),
(3902, 'EMAIL_R', 'EMAIL_R', 'EMAIL'),
(3903, 'EMAIL_U', 'EMAIL_U', 'EMAIL'),
(3904, 'EMAIL_D', 'EMAIL_D', 'EMAIL');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=2423 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(3630, 'administrator', 'THESIS_C'),
(3631, 'administrator', 'THESIS_R'),
(3632, 'administrator', 'THESIS_U'),
(3633, 'administrator', 'THESIS_D'),
(3514, 'administrator', 'ASSET_C'),
(3515, 'administrator', 'ASSET_R'),
(3516, 'administrator', 'ASSET_U'),
(3517, 'administrator', 'ASSET_D'),
(3554, 'administrator', 'EMAIL_C'),
(3555, 'administrator', 'EMAIL_R'),
(3556, 'administrator', 'EMAIL_U'),
(3557, 'administrator', 'EMAIL_D'),
(2259, 'administrator', 'ATTENDANCE_C'),
(2260, 'administrator', 'ATTENDANCE_R'),
(2261, 'administrator', 'ATTENDANCE_U'),
(2262, 'administrator', 'ATTENDANCE_D'),
(2263, 'administrator', 'CLUB_C'),
(2264, 'administrator', 'CLUB_R'),
(2265, 'administrator', 'CLUB_U'),
(2266, 'administrator', 'CLUB_D'),
(2267, 'administrator', 'COURSE_C'),
(2268, 'administrator', 'COURSE_R'),
(2269, 'administrator', 'COURSE_U'),
(2270, 'administrator', 'COURSE_D'),
(2271, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(2272, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(2273, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(2274, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(2275, 'administrator', 'COURSE_TYPE_C'),
(2276, 'administrator', 'COURSE_TYPE_R'),
(2277, 'administrator', 'COURSE_TYPE_U'),
(2278, 'administrator', 'COURSE_TYPE_D'),
(2279, 'administrator', 'DISCIPLINE_C'),
(2280, 'administrator', 'DISCIPLINE_R'),
(2281, 'administrator', 'DISCIPLINE_U'),
(2282, 'administrator', 'DISCIPLINE_D'),
(2283, 'administrator', 'DISCUSSION_C'),
(2284, 'administrator', 'DISCUSSION_R'),
(2285, 'administrator', 'DISCUSSION_U'),
(2286, 'administrator', 'DISCUSSION_D'),
(2287, 'administrator', 'DISCUSSION_CAT_C'),
(2288, 'administrator', 'DISCUSSION_CAT_R'),
(2289, 'administrator', 'DISCUSSION_CAT_U'),
(2290, 'administrator', 'DISCUSSION_CAT_D'),
(2291, 'administrator', 'DISCUSSION_COMMENT_C'),
(2292, 'administrator', 'DISCUSSION_COMMENT_R'),
(2293, 'administrator', 'DISCUSSION_COMMENT_U'),
(2294, 'administrator', 'DISCUSSION_COMMENT_D'),
(2295, 'administrator', 'FILE_C'),
(2296, 'administrator', 'FILE_R'),
(2297, 'administrator', 'FILE_U'),
(2298, 'administrator', 'FILE_D'),
(2299, 'administrator', 'GRADE_SETUP_C'),
(2300, 'administrator', 'GRADE_SETUP_R'),
(2301, 'administrator', 'GRADE_SETUP_U'),
(2302, 'administrator', 'GRADE_SETUP_D'),
(2303, 'administrator', 'JOB_C'),
(2304, 'administrator', 'JOB_R'),
(2305, 'administrator', 'JOB_U'),
(2306, 'administrator', 'JOB_D'),
(2307, 'administrator', 'MARKS_SETUP_C'),
(2308, 'administrator', 'MARKS_SETUP_R'),
(2309, 'administrator', 'MARKS_SETUP_U'),
(2310, 'administrator', 'MARKS_SETUP_D'),
(2311, 'administrator', 'PERMISSION_C'),
(2312, 'administrator', 'PERMISSION_R'),
(2313, 'administrator', 'PERMISSION_U'),
(2314, 'administrator', 'PERMISSION_D'),
(2315, 'administrator', 'POSITION_C'),
(2316, 'administrator', 'POSITION_R'),
(2317, 'administrator', 'POSITION_U'),
(2318, 'administrator', 'POSITION_D'),
(2319, 'administrator', 'PROJECT_C'),
(2320, 'administrator', 'PROJECT_R'),
(2321, 'administrator', 'PROJECT_U'),
(2322, 'administrator', 'PROJECT_D'),
(2323, 'administrator', 'QUESTION_C'),
(2324, 'administrator', 'QUESTION_R'),
(2325, 'administrator', 'QUESTION_U'),
(2326, 'administrator', 'QUESTION_D'),
(2327, 'administrator', 'REGISTRATION_C'),
(2328, 'administrator', 'REGISTRATION_R'),
(2329, 'administrator', 'REGISTRATION_U'),
(2330, 'administrator', 'REGISTRATION_D'),
(2331, 'administrator', 'RESULT_C'),
(2332, 'administrator', 'RESULT_R'),
(2333, 'administrator', 'RESULT_U'),
(2334, 'administrator', 'RESULT_D'),
(2335, 'administrator', 'ROLE_C'),
(2336, 'administrator', 'ROLE_R'),
(2337, 'administrator', 'ROLE_U'),
(2338, 'administrator', 'ROLE_D'),
(2339, 'administrator', 'SCHOOL_C'),
(2340, 'administrator', 'SCHOOL_R'),
(2341, 'administrator', 'SCHOOL_U'),
(2342, 'administrator', 'SCHOOL_D'),
(2343, 'administrator', 'SESSION_C'),
(2344, 'administrator', 'SESSION_R'),
(2345, 'administrator', 'SESSION_U'),
(2346, 'administrator', 'SESSION_D'),
(2347, 'administrator', 'SURVEY_C'),
(2348, 'administrator', 'SURVEY_R'),
(2349, 'administrator', 'SURVEY_U'),
(2350, 'administrator', 'SURVEY_D'),
(2351, 'administrator', 'SURVEY_QUESTION_C'),
(2352, 'administrator', 'SURVEY_QUESTION_R'),
(2353, 'administrator', 'SURVEY_QUESTION_U'),
(2354, 'administrator', 'SURVEY_QUESTION_D'),
(2355, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(2356, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(2357, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(2358, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(2359, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(2360, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(2361, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(2362, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(2363, 'administrator', 'TASK_C'),
(2364, 'administrator', 'TASK_R'),
(2365, 'administrator', 'TASK_U'),
(2366, 'administrator', 'TASK_D'),
(2367, 'administrator', 'TASK_CATEGORY_C'),
(2368, 'administrator', 'TASK_CATEGORY_R'),
(2369, 'administrator', 'TASK_CATEGORY_U'),
(2370, 'administrator', 'TASK_CATEGORY_D'),
(2371, 'administrator', 'TERM_C'),
(2372, 'administrator', 'TERM_R'),
(2373, 'administrator', 'TERM_U'),
(2374, 'administrator', 'TERM_D'),
(2375, 'administrator', 'USER_C'),
(2376, 'administrator', 'USER_R'),
(2377, 'administrator', 'USER_U'),
(2378, 'administrator', 'USER_D'),
(2379, 'administrator', 'VIDEO_C'),
(2380, 'administrator', 'VIDEO_R'),
(2381, 'administrator', 'VIDEO_U'),
(2382, 'administrator', 'VIDEO_D'),
(2383, 'administrator', 'VIDEO_COMMENT_C'),
(2384, 'administrator', 'VIDEO_COMMENT_R'),
(2385, 'administrator', 'VIDEO_COMMENT_U'),
(2386, 'administrator', 'VIDEO_COMMENT_D'),
(2387, 'administrator', 'YEAR_C'),
(2388, 'administrator', 'YEAR_R'),
(2389, 'administrator', 'YEAR_U'),
(2390, 'administrator', 'YEAR_D'),
(3676, 'student', 'ASSET_R'),
(3696, 'student', 'THESIS_R'),
(2391, 'student', 'CLUB_C'),
(2392, 'student', 'CLUB_R'),
(2393, 'student', 'CLUB_U'),
(2394, 'student', 'CLUB_D'),
(2395, 'student', 'DISCUSSION_C'),
(2396, 'student', 'DISCUSSION_R'),
(2397, 'student', 'DISCUSSION_U'),
(2398, 'student', 'DISCUSSION_D'),
(2399, 'student', 'DISCUSSION_COMMENT_C'),
(2400, 'student', 'DISCUSSION_COMMENT_R'),
(2401, 'student', 'DISCUSSION_COMMENT_U'),
(2402, 'student', 'DISCUSSION_COMMENT_D'),
(2403, 'student', 'JOB_R'),
(2404, 'student', 'PROJECT_C'),
(2405, 'student', 'PROJECT_R'),
(2406, 'student', 'PROJECT_U'),
(2407, 'student', 'PROJECT_D'),
(2408, 'student', 'QUESTION_C'),
(2409, 'student', 'QUESTION_R'),
(2410, 'student', 'QUESTION_U'),
(2411, 'student', 'QUESTION_D'),
(2412, 'student', 'REGISTRATION_R'),
(2413, 'student', 'RESULT_R'),
(2414, 'student', 'TASK_C'),
(2415, 'student', 'TASK_R'),
(2416, 'student', 'TASK_U'),
(2417, 'student', 'TASK_D'),
(2418, 'student', 'USER_R'),
(2419, 'student', 'VIDEO_C'),
(2420, 'student', 'VIDEO_R'),
(2421, 'student', 'VIDEO_U'),
(2422, 'student', 'VIDEO_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('avi@gmail.com', '160211', 'avi@gmail.com', '$2y$10$7KR9kj/ePlAQjVPTdSIvCOxnqSTaWDxJAcNEHQDbzuF1Pxv.wDD/G', 'avi', 'dev', 'raha', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('lotif@gmail.com', '160212', 'lotif@gmail.com', '$2y$10$MBB/ST/yOmtXog3FSEzneevL07erAGyxWK/pX/KT7QVSysSVqRaHq', 'Abdul', 'Lotif', 'Limon', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$l0gFzILMq03DcwcBGxIdgunnOd9G5kF8J8ucZZvCKkt8mNGlI74/W', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('rokeya@gmail.com', '160210', 'rokeya@gmail.com', '$2y$10$yHHxXaXZX1Qm34Lz.r/BG..NB3Ctw7lkdf/g9geg0I0RzUnJsFDrm', 'Rokeya', '', 'sadaf', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('ryhan1630@cseku.ac.bd', '160230', 'ryhan1630@cseku.ac.bd', '$2y$10$4VNGxyf8mttFjuy2E07VkuZ3E4N4m09xugiq1hofd2vVty0ZXE9L.', 'Ryhan', 'Ahmed', 'Tamim', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('saimumislam96@gmail.com', '160227', 'saimumislam96@gmail.com', '$2y$10$BjexPvEbArRS7lcxvjHQ0.xegDY83Twv6REeuZ2B11IQ6Xr5qaV5G', 'saimum', '', 'islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('avi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('lotif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('rokeya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('ryhan1630@cseku.ac.bd', NULL, NULL, NULL, NULL, NULL, NULL),
('saimumislam96@gmail.com', 'Rafiqul Islam', 'Shahida khatun', 'khulna', '01763706245', 'ku', '01763706245 ');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(52, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(144, 'middle1@test.com', 'student'),
(168, 'saimumislam96@gmail.com', 'administrator'),
(170, 'mkazi078@uottawa.ca', 'administrator'),
(171, 'mkazi078@uottawa.ca', 'teacher'),
(172, 'avi@gmail.com', 'teacher'),
(173, 'lotif@gmail.com', 'student'),
(174, 'rokeya@gmail.com', 'student'),
(175, 'ryhan1630@cseku.ac.bd', 'administrator');


-- Table structure for table `ams_asset`
--

DROP TABLE IF EXISTS `ams_asset`;
CREATE TABLE IF NOT EXISTS `ams_asset` (
  `id` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `serialNo` varchar(256) NOT NULL,
  `modelNo` varchar(256) NOT NULL,
  `brand` varchar(256) NOT NULL,
  `purchaseDate` date NOT NULL,
  `status` varchar(256) NOT NULL,
  `configuration` text NOT NULL,
  `stuff_id` varchar(40) NOT NULL,
  `purchasedFrom` varchar(256) NOT NULL,
  `cost` double NOT NULL,
  `warrantyLimit` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serialNo` (`serialNo`),
  KEY `type_id` (`type_id`),
  KEY `user_id` (`stuff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ams_asset_type`
--

DROP TABLE IF EXISTS `ams_asset_type`;
CREATE TABLE IF NOT EXISTS `ams_asset_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `ams_repair`
--

DROP TABLE IF EXISTS `ams_repair`;
CREATE TABLE IF NOT EXISTS `ams_repair` (
  `id` varchar(40) NOT NULL,
  `asset_id` varchar(40) NOT NULL,
  `problem` text NOT NULL,
  `sendingDate` date NOT NULL,
  `receivingDate` date DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `sent_by` varchar(40) NOT NULL,
  `received_by` varchar(40) DEFAULT NULL,
  `repaired_from` varchar(256) NOT NULL,
  `cost` double DEFAULT NULL,
  `onWarranty` tinyint(1) NOT NULL,
  `isReceived` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sent_by` (`sent_by`),
  KEY `received_by` (`received_by`),
  KEY `asset_id` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Table structure for table `ams_user_asset`
--

DROP TABLE IF EXISTS `ams_user_asset`;
CREATE TABLE IF NOT EXISTS `ams_user_asset` (
  `id` varchar(40) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `asset_id` varchar(40) NOT NULL,
  `lendingDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `asset_id` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
--
-- Table structure for table `ems_email`
--

DROP TABLE IF EXISTS `ems_email`;
CREATE TABLE IF NOT EXISTS `ems_email` (
  `id` varchar(40) NOT NULL,
  `firstName` varchar(256) NOT NULL,
  `lastName` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `contact` varchar(256) NOT NULL,
  `contactEmail` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `created_at` date NOT NULL,
  `expire_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Table structure for table `pms_link_project`
--

DROP TABLE IF EXISTS `pms_link_project`;
CREATE TABLE IF NOT EXISTS `pms_link_project` (
  `id` varchar(40) NOT NULL,
  `link` text NOT NULL,
  `project_id` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `pms_project`
--

DROP TABLE IF EXISTS `pms_project`;
CREATE TABLE IF NOT EXISTS `pms_project` (
  `id` varchar(40) NOT NULL,
  `thumbnail` text NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `language` varchar(256) NOT NULL,
  `year_id` varchar(40) NOT NULL,
  `term_id` varchar(40) NOT NULL,
  `course_id` varchar(40) NOT NULL,
  `discipline_id` varchar(40) NOT NULL,
  `teacher_id` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `year_id` (`year_id`),
  KEY `term_id` (`term_id`),
  KEY `course_id` (`course_id`),
  KEY `discipline_id` (`discipline_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `pms_student_project`
--

DROP TABLE IF EXISTS `pms_student_project`;
CREATE TABLE IF NOT EXISTS `pms_student_project` (
  `id` varchar(40) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `project_id` varchar(40) NOT NULL,
  `contribution` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `tms_link_thesis`
--

DROP TABLE IF EXISTS `tms_link_thesis`;
CREATE TABLE IF NOT EXISTS `tms_link_thesis` (
  `id` varchar(40) NOT NULL,
  `link` text NOT NULL,
  `thesis_id` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thesis_id` (`thesis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `tms_student_thesis`
--

DROP TABLE IF EXISTS `tms_student_thesis`;
CREATE TABLE IF NOT EXISTS `tms_student_thesis` (
  `id` varchar(40) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `thesis_id` varchar(40) NOT NULL,
  `contribution` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `thesis_id` (`thesis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `tms_supervisor_thesis`
--

DROP TABLE IF EXISTS `tms_supervisor_thesis`;
CREATE TABLE IF NOT EXISTS `tms_supervisor_thesis` (
  `id` varchar(40) NOT NULL,
  `supervisor_id` varchar(40) NOT NULL,
  `thesis_id` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supervisor_id` (`supervisor_id`),
  KEY `thesis_id` (`thesis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `tms_thesis`
--

DROP TABLE IF EXISTS `tms_thesis`;
CREATE TABLE IF NOT EXISTS `tms_thesis` (
  `id` varchar(40) NOT NULL,
  `thumbnail` text NOT NULL,
  `title` varchar(256) NOT NULL,
  `pdf_link` text,
  `description` text NOT NULL,
  `year_id` varchar(40) NOT NULL,
  `term_id` varchar(40) NOT NULL,
  `course_id` varchar(40) NOT NULL,
  `discipline_id` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `year_id` (`year_id`),
  KEY `term_id` (`term_id`),
  KEY `course_id` (`course_id`),
  KEY `discipline_id` (`discipline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `tms_link_thesis`
  ADD CONSTRAINT `tms_link_thesis_ibfk_1` FOREIGN KEY (`thesis_id`) REFERENCES `tms_thesis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
