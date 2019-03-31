-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 10:18 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `contact_no`, `email`, `password`) VALUES
(2, 'Fasrin', 767739896, 'fasrinaleem@gmail.com', 123),
(3, 'Bavan', 776740966, 'bavanboss@gmail.com', 12345),
(4, 'Sohan', 878586, 'sohan12@gmail.com', 12345),
(5, 'Rushaid', 7867549, 'rushaid@gmail.com', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `iid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `subTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`iid`, `cid`, `subTotal`) VALUES
(1001, 2, 3786),
(1002, 2, 3786),
(1003, 2, 3786),
(1004, 2, 3786),
(1005, 2, 3786),
(1006, 2, 3786),
(1007, 2, 3786),
(1008, 2, 3786),
(1009, 2, 3786),
(1010, 2, 3786),
(1011, 2, 3786),
(1012, 2, 3786),
(1013, 2, 3786),
(1014, 2, 3786),
(1015, 2, 3786),
(1016, 2, 17262),
(1017, 4, 3972),
(1018, 3, 1624),
(1019, 5, 12340),
(1020, 5, 12340),
(1021, 2, 15162),
(1022, 2, 15262);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderID` varchar(5) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sellingPrice` float NOT NULL,
  `cusName` varchar(50) NOT NULL,
  `customerAdd` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderID`, `productName`, `category`, `company`, `quantity`, `sellingPrice`, `cusName`, `customerAdd`, `date`) VALUES
('p001', 'panadol', 'antibiotic', 'fgldsk', 9, 50, 'chathura kumara', '50A,peters lane,\r\ndehiwela', '20.04.2018'),
('p002', 'amoxiciline', 'antibiotic', 'amxccl', 10, 12, 'saman priyanka', '123/45,ertert,wrretertret', '8.03.2018'),
('p003', 'para', 'anti douleur', 'ddrf', 26, 15, 'sfsdf  sifsdfs', '56,rtert,wifnsf', '05.02.2018'),
('p004', 'toxine', 'homeopathy', 'asddd', 87, 230, 'sder fksdfs', '3a/20,dfgfg,fsfsd', '07.01.2018'),
('p005', 'gree', 'ayurvedic', 'preesi', 70, 60, 'weurhw wjfnsdf', '56,sufsdf,sdufsndf', '6.2.2018'),
('p006', 'omeprazole', 'Antibiotic', 'sdkflsd', 30, 150, 'sudfns sjdnfsdf', '87,jshf,sdjfnd', '07.2.2048'),
('008', 'citalopram', 'gegege', 'wodwd', 5, 90, 'manju rathnayake', '10/12A,rfmre, efferr', '03.05.2018'),
('p009', 'sjfsdf', 'homeopathy', 's;dfls', 12, 89, 'michael anjelo', '6,adad,colombo03', '15.02.2018'),
('088', 'reswe', 'homeopathy', 'lkjlk', 13, 20, 'sampath kulathunga', '78,cambell lnae,dehiwela', '11.01.2018'),
('p010', 'oop', 'homeopathy', 'kjlk', 25, 190, 'chamara perera', '125,dippitya,mawathagama', '12.01.2018'),
('p012', 'sdfds', 'homeopathy', 'afs', 25, 180, 'rws adfd', '34A,dalwis,rajagiriaya', '08.04.2018');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cutomer_id` int(11) NOT NULL,
  `medicine` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cutomer_id`, `medicine`, `price`, `quantity`) VALUES
(1, 2, 'Panadol', 10, 22),
(2, 2, 'Disprin', 12, 1234),
(3, 3, 'Disprin', 13, 123),
(4, 3, 'Aspirin', 5, 5),
(5, 2, 'Astelin', 7, 12),
(6, 2, 'Axid', 15, 10),
(7, 4, 'Panadol', 14, 123),
(8, 4, 'Disprin', 13, 100),
(9, 4, 'fa', 19, 50),
(10, 5, 'Panadol', 10, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `name` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`name`, `cname`) VALUES
('fa', 'rin'),
('null', 'null'),
('sss', 'ddd'),
('test', 'te');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_customer` (`cutomer_id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `payment` (`cutomer_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`cutomer_id`) REFERENCES `customer` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
