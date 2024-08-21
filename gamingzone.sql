-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 04:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamingzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AddressID` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressID`, `Address`) VALUES
(1, 'Dillibazar, Kathmandu'),
(2, 'Putalisadak, Kathmandu'),
(3, 'Baneshwor, Kathmandu'),
(4, 'Gaushala, Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `arcademachine`
--

CREATE TABLE `arcademachine` (
  `MachineID` int(11) NOT NULL,
  `Game` varchar(50) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arcademachine`
--

INSERT INTO `arcademachine` (`MachineID`, `Game`, `Year`, `Floor`) VALUES
(1, 'Mario', 2005, 1),
(2, 'Grand Theft Auto', 2013, 1),
(3, 'Pokemon', 2016, 2),
(4, 'PUBG Battlegrounds', 2004, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Date` date NOT NULL,
  `Member` char(1) DEFAULT NULL,
  `Fee` int(11) DEFAULT NULL,
  `PrePaid` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `SessionID`, `CustomerID`, `Date`, `Member`, `Fee`, `PrePaid`) VALUES
(1, 1, 1, '2023-10-21', 'Y', NULL, NULL),
(2, 1, 2, '2023-10-21', 'N', 1000, 'N'),
(3, 1, 3, '2023-10-21', 'Y', 900, 'Y'),
(4, 1, 4, '2023-10-25', 'N', 1000, 'N'),
(5, 2, 1, '2023-10-21', 'Y', 450, 'N'),
(6, 4, 2, '2023-10-06', 'Y', 450, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE `console` (
  `ConsoleID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PEGI` varchar(10) DEFAULT NULL,
  `ConsoleType` varchar(50) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `console`
--

INSERT INTO `console` (`ConsoleID`, `Name`, `PEGI`, `ConsoleType`, `Qty`) VALUES
(1, 'FIFA 18', 'PG', 'PS1', 3),
(2, 'FIFA 18', 'PG', 'PS2', 2),
(3, 'Horizon Zero Dawn', 'PG', 'PS4', 3),
(4, 'Horizon Zero Dawn', 'PG', 'PS2', 2),
(5, 'Legend of Zelda', 'PG', 'Nintendo Switch', 2),
(6, 'Halo 3', '15', 'Xbox 360', 4),
(7, 'FIFA 18', 'PG', 'PS1', 3),
(8, 'FIFA 18', 'PG', 'PS2', 2),
(9, 'Horizon Zero Dawn', 'PG', 'PS4', 3),
(10, 'Horizon Zero Dawn', 'PG', 'PS2', 2),
(11, 'Legend of Zelda', 'PG', 'Nintendo Switch', 2),
(12, 'Halo 3', '15', 'Xbox 360', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `Surname`, `AddressID`, `DateOfBirth`) VALUES
(1, 'Saroj', 'Upadhyay', 1, '1998-02-01'),
(2, 'Neha', 'Kakkar', 2, '2000-10-15'),
(3, 'Himani', 'Puri', 3, '2001-07-20'),
(4, 'Ritesh', 'Gurung', 4, '1983-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `MembershipID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `MemberTypeID` int(11) DEFAULT NULL,
  `MembershipFee` int(11) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`MembershipID`, `CustomerID`, `MemberTypeID`, `MembershipFee`, `JoinDate`) VALUES
(1, 1, 1, 1000, '2023-09-01'),
(2, 2, 2, 14000, '2023-06-05'),
(3, 3, 2, 14000, '0000-00-00'),
(4, 4, 1, 1000, '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `membertype`
--

CREATE TABLE `membertype` (
  `MemberTypeID` int(11) NOT NULL,
  `MemberType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membertype`
--

INSERT INTO `membertype` (`MemberTypeID`, `MemberType`) VALUES
(1, 'Standard'),
(2, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `SessionID` int(11) NOT NULL,
  `SessionDay` varchar(10) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `SessionType` varchar(10) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`SessionID`, `SessionDay`, `StartTime`, `EndTime`, `SessionType`, `Floor`, `Price`) VALUES
(1, 'Sunday', '11:00:00', '19:00:00', 'Free', 1, 1000),
(2, 'Sunday', '11:00:00', '19:00:00', 'Free', 2, 500),
(3, 'Saturday', '11:00:00', '19:00:00', 'Free', 1, 1000),
(4, 'Friday', '19:00:00', '22:00:00', 'Special', 2, 500);

-- --------------------------------------------------------

--
-- Table structure for table `sessionconsolemapping`
--

CREATE TABLE `sessionconsolemapping` (
  `SessionConsoleID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `ConsoleID` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionconsolemapping`
--

INSERT INTO `sessionconsolemapping` (`SessionConsoleID`, `SessionID`, `ConsoleID`, `Qty`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessionmachine`
--

CREATE TABLE `sessionmachine` (
  `SessionMachineID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `MachineID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionmachine`
--

INSERT INTO `sessionmachine` (`SessionMachineID`, `SessionID`, `MachineID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessionstaffduty`
--

CREATE TABLE `sessionstaffduty` (
  `SessionStaffID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionstaffduty`
--

INSERT INTO `sessionstaffduty` (`SessionStaffID`, `SessionID`, `StaffID`, `Role`) VALUES
(1, 1, 1, 'Cafe'),
(2, 1, 2, 'Maintenance'),
(3, 1, 3, 'Counter'),
(4, 2, 4, 'Counter'),
(5, 2, 5, 'Maintenance'),
(6, 1, 1, 'Cafe'),
(7, 1, 2, 'Maintenance'),
(8, 1, 3, 'Counter'),
(9, 2, 4, 'Counter'),
(10, 2, 5, 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffName`) VALUES
(1, 'Sujal Bohara'),
(2, 'Rajesh Hamal'),
(3, 'Rooz Ojha'),
(4, 'Rashi Timsina'),
(5, 'Jack Jones'),
(6, 'Sujal Bohara'),
(7, 'Rajesh Hamal'),
(8, 'Rooz Ojha'),
(9, 'Rashi Timsina'),
(10, 'Jack Jones');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `arcademachine`
--
ALTER TABLE `arcademachine`
  ADD PRIMARY KEY (`MachineID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`ConsoleID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`MembershipID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `MemberTypeID` (`MemberTypeID`);

--
-- Indexes for table `membertype`
--
ALTER TABLE `membertype`
  ADD PRIMARY KEY (`MemberTypeID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`SessionID`);

--
-- Indexes for table `sessionconsolemapping`
--
ALTER TABLE `sessionconsolemapping`
  ADD PRIMARY KEY (`SessionConsoleID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `ConsoleID` (`ConsoleID`);

--
-- Indexes for table `sessionmachine`
--
ALTER TABLE `sessionmachine`
  ADD PRIMARY KEY (`SessionMachineID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `MachineID` (`MachineID`);

--
-- Indexes for table `sessionstaffduty`
--
ALTER TABLE `sessionstaffduty`
  ADD PRIMARY KEY (`SessionStaffID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `arcademachine`
--
ALTER TABLE `arcademachine`
  MODIFY `MachineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `console`
--
ALTER TABLE `console`
  MODIFY `ConsoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `MembershipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membertype`
--
ALTER TABLE `membertype`
  MODIFY `MemberTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `SessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessionconsolemapping`
--
ALTER TABLE `sessionconsolemapping`
  MODIFY `SessionConsoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessionmachine`
--
ALTER TABLE `sessionmachine`
  MODIFY `SessionMachineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessionstaffduty`
--
ALTER TABLE `sessionstaffduty`
  MODIFY `SessionStaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `session` (`SessionID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `membership_ibfk_2` FOREIGN KEY (`MemberTypeID`) REFERENCES `membertype` (`MemberTypeID`);

--
-- Constraints for table `sessionconsolemapping`
--
ALTER TABLE `sessionconsolemapping`
  ADD CONSTRAINT `sessionconsolemapping_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `session` (`SessionID`),
  ADD CONSTRAINT `sessionconsolemapping_ibfk_2` FOREIGN KEY (`ConsoleID`) REFERENCES `console` (`ConsoleID`);

--
-- Constraints for table `sessionmachine`
--
ALTER TABLE `sessionmachine`
  ADD CONSTRAINT `sessionmachine_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `session` (`SessionID`),
  ADD CONSTRAINT `sessionmachine_ibfk_2` FOREIGN KEY (`MachineID`) REFERENCES `arcademachine` (`MachineID`);

--
-- Constraints for table `sessionstaffduty`
--
ALTER TABLE `sessionstaffduty`
  ADD CONSTRAINT `sessionstaffduty_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `session` (`SessionID`),
  ADD CONSTRAINT `sessionstaffduty_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
