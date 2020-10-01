-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 08, 2020 at 06:01 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Sana', 'admin', 3318476331, 'tester1@gmail.com', '0192023a7bbd73250516f069df18b500', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '389462259', 'Irha', 'irha@gmail.com', 3343906094, '9/15/2020', '12:30am', 'Haircut', '2020-09-05 18:20:13', 'Haircut', '1', '2020-09-05 18:20:35'),
(2, '797534934', 'Azra', 'azra25@gmail.com', 334039652, '9/14/2020', '1:00am', 'Keratin Treatment', '2020-09-07 09:04:57', 'N/A', '2', '2020-09-07 09:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(6, 'Sana Hassan', 'sanazia700@gmail.com', 331847633, 'Female', 'Haircut', '2020-08-11 13:21:28', '2020-08-23 14:31:31'),
(8, 'Sara', 'sara@gmailcom', 900786901, 'Female', 'Hair Cut', '2020-08-23 08:00:57', NULL),
(9, 'Amna Hassan', 'amna345@gmail.com', 900786901, 'Female', 'Haircut', '2020-08-23 14:26:35', NULL),
(10, 'Dr.SABA', 'sabahassan5@gmail.com', 331847632, 'Female', 'Extenso', '2020-08-23 14:27:02', NULL),
(11, 'ZAINAB', 'ZAINAB123@GMAIL.COM', 331847635, 'Female', 'Protein Treatment', '2020-08-23 14:27:36', NULL),
(12, 'Ezzah', 'ezzah@gmail.com', 1235678990, 'Female', 'Argon Oil Treatment', '2020-08-23 14:28:06', NULL),
(13, 'Azra ', 'azra25@gmail.com', 335468609, 'Female', 'HairStylist', '2020-09-07 09:22:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(19, 6, 2, 295788319, '2020-08-11 13:22:24'),
(20, 6, 5, 295788319, '2020-08-11 13:22:24'),
(21, 7, 1, 180675755, '2020-08-11 13:28:06'),
(22, 7, 3, 180675755, '2020-08-11 13:28:06'),
(23, 6, 21, 711438833, '2020-08-23 14:29:12'),
(24, 6, 24, 711438833, '2020-08-23 14:29:12'),
(25, 6, 30, 711438833, '2020-08-23 14:29:12'),
(26, 7, 25, 182834981, '2020-08-23 14:30:06'),
(27, 6, 22, 335348126, '2020-08-23 14:31:50'),
(28, 6, 23, 335348126, '2020-08-23 14:31:50'),
(29, 8, 24, 731560926, '2020-08-23 14:33:39'),
(30, 9, 23, 935027578, '2020-08-23 14:35:37'),
(31, 9, 30, 935027578, '2020-08-23 14:35:37'),
(32, 10, 31, 766324935, '2020-08-23 14:36:21'),
(33, 11, 21, 102654020, '2020-08-23 14:36:44'),
(34, 11, 30, 102654020, '2020-08-23 14:36:44'),
(35, 12, 24, 583481577, '2020-08-23 14:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '76 Street - House no 4 , Phase III , DHA&nbsp;', 'shsalon@gmail.com', 3348476094, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(21, 'Haircut', 3000, '2020-08-23 13:33:55'),
(22, 'Straightening ', 800, '2020-08-23 13:35:08'),
(23, 'Hair Massage', 2000, '2020-08-23 13:35:18'),
(24, 'Keratin Treatment', 8000, '2020-08-23 13:35:30'),
(25, 'Deep Conditioning', 3000, '2020-08-23 13:35:44'),
(26, 'Protein Treatment', 5000, '2020-08-23 13:35:53'),
(27, 'Roots Touch up', 2000, '2020-08-23 13:36:35'),
(28, 'Full fancy hair dye', 6000, '2020-08-23 13:36:54'),
(29, 'Highlights ', 10000, '2020-08-23 13:37:33'),
(30, 'Blowdry', 500, '2020-08-23 13:38:08'),
(31, 'Extenso', 10000, '2020-08-23 13:39:38'),
(32, 'Argon Oil Treatment', 3000, '2020-08-23 13:40:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;