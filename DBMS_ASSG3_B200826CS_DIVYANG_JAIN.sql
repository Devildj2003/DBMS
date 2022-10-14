-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 10:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assg3_b200826cs`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `a_id` char(5) NOT NULL,
  `a_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`a_id`, `a_name`) VALUES
('ABCDE', 'Akshay'),
('ABCDF', 'Akash'),
('ABCDG', 'Asaram'),
('ABCDH', 'Asneet'),
('ABCDI', 'Aay');

-- --------------------------------------------------------

--
-- Table structure for table `acts_in`
--

CREATE TABLE `acts_in` (
  `m_id` char(5) NOT NULL,
  `a_id` char(5) NOT NULL,
  `roll` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acts_in`
--

INSERT INTO `acts_in` (`m_id`, `a_id`, `roll`) VALUES
('mo124', 'ABCDE', 'hero'),
('mo124', 'ABCDF', 'villian'),
('mo124', 'ABCDG', 'co hero'),
('mo124', 'ABCDH', 'heroine'),
('mo124', 'ABCDI', 'side hero');

-- --------------------------------------------------------

--
-- Table structure for table `act_ph`
--

CREATE TABLE `act_ph` (
  `a_id` char(5) NOT NULL,
  `ph_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `act_ph`
--

INSERT INTO `act_ph` (`a_id`, `ph_no`) VALUES
('ABCDE', 2147483647),
('ABCDF', 2147483647),
('ABCDG', 2147483647),
('ABCDH', 2147483647),
('ABCDI', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` char(5) NOT NULL,
  `c_name` varchar(40) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `tkt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `email`, `tkt_id`) VALUES
('vBCDE', 'Akshay', 'deabu200@gmail.com', 87650),
('vBCDF', 'Akash', 'akash@gmail.com', 87651),
('vBCDG', 'Asaram', 'asaram@gmail.com', 87652),
('vBCDH', 'Asneet', 'asneet@gmail.com', 87654),
('vBCDI', 'Aay', 'abhay@gmail.com', 87655);

-- --------------------------------------------------------

--
-- Table structure for table `customer_ph`
--

CREATE TABLE `customer_ph` (
  `c_id` char(5) NOT NULL,
  `cph_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_ph`
--

INSERT INTO `customer_ph` (`c_id`, `cph_no`) VALUES
('vBCDE', 2147483647),
('vBCDF', 65662124),
('vBCDG', 5012124),
('vBCDH', 102124),
('vBCDI', 6664);

-- --------------------------------------------------------

--
-- Table structure for table `customer_ticket`
--

CREATE TABLE `customer_ticket` (
  `c_id` char(5) NOT NULL,
  `ticket_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_ticket`
--

INSERT INTO `customer_ticket` (`c_id`, `ticket_id`) VALUES
('vBCDE', 87650),
('vBCDF', 87651),
('vBCDG', 87652),
('vBCDH', 87654),
('vBCDI', 87655);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `d_id` char(5) NOT NULL,
  `d_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`d_id`, `d_name`) VALUES
('ABBDE', 'Ranikant'),
('ABBDF', 'SS Raamouli'),
('ABBDG', 'Karan cohar'),
('ABBDH', 'Ra Chopra'),
('ABBDI', 'Aay Devgan');

-- --------------------------------------------------------

--
-- Table structure for table `directs_in`
--

CREATE TABLE `directs_in` (
  `m_id` char(5) NOT NULL,
  `d_id` char(5) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directs_in`
--

INSERT INTO `directs_in` (`m_id`, `d_id`, `year`) VALUES
('mo124', 'ABBDE', 2022),
('mo124', 'ABBDF', 2005),
('mo124', 'ABBDG', 2004),
('mo124', 'ABBDH', 2007),
('mo124', 'ABBDI', 2008);

-- --------------------------------------------------------

--
-- Table structure for table `direct_ph`
--

CREATE TABLE `direct_ph` (
  `d_id` char(5) NOT NULL,
  `ph_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `direct_ph`
--

INSERT INTO `direct_ph` (`d_id`, `ph_no`) VALUES
('ABBDE', 2147483647),
('ABBDF', 2147483647),
('ABBDG', 2147483647),
('ABBDH', 2147483647),
('ABBDI', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `m_id` char(5) NOT NULL,
  `genre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`m_id`, `genre`) VALUES
('mo124', 'COMEDY'),
('mo124', 'DRAMA'),
('mo124', 'HORROR'),
('mo124', 'ROMANCE'),
('mo124', 'THRILLER');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `m_id` char(5) NOT NULL,
  `m_name` varchar(40) NOT NULL,
  `pr_id` char(5) NOT NULL,
  `th_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`m_id`, `m_name`, `pr_id`, `th_id`) VALUES
('mo124', 'RAZZ', 'qw124', 'tk012'),
('mo125', 'DHOOM', 'qw124', 'tk012'),
('mo126', 'PK', 'qw124', 'tk015'),
('mo127', 'ABCD', 'qw124', 'tk015'),
('mo128', 'KAMASUTRA', 'qw124', 'tk016');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ref_id` char(5) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` float NOT NULL,
  `cm_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ref_id`, `payment_type`, `payment_status`, `payment_date`, `amount`, `cm_id`) VALUES
('PMT01', 'CASH', 'YES', '2022-02-15', 50, 'vBCDE'),
('PMT02', 'CARD', 'PENDING', '2022-02-15', 400, 'vBCDF'),
('PMT03', 'UPI', 'PENDING', '2022-02-15', 250, 'vBCDG'),
('PMT04', 'DEBIT CARD', 'FAILED', '2022-02-15', 120, 'vBCDH'),
('PMT05', 'EMI', 'SUCCESSFUL', '2022-02-15', 100, 'vBCDI');

-- --------------------------------------------------------

--
-- Table structure for table `production_company`
--

CREATE TABLE `production_company` (
  `p_id` char(5) NOT NULL,
  `p_name` varchar(40) NOT NULL,
  `headquarters` varchar(50) DEFAULT NULL,
  `ownerof` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `production_company`
--

INSERT INTO `production_company` (`p_id`, `p_name`, `headquarters`, `ownerof`) VALUES
('qw124', 'YASH RAJ FILMS', 'MUMBAI', 'YASH CHOPRA'),
('qw125', '2D Entertainment', 'CHENNAI', 'SURIYA'),
('qw126', 'Ajay Devgn Films', 'MUMBAI', 'AAY DEVGAN'),
('qw127', 'Anurag Kashyap Films', 'MUMBAI', 'Anurag Kashyap'),
('qw128', 'Bhansali Productions', 'MUMBAI', 'SANAY L. BHANSALI');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_no` int(11) NOT NULL,
  `th_id` char(5) NOT NULL,
  `availabilityy` varchar(20) NOT NULL,
  `seat_type` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_no`, `th_id`, `availabilityy`, `seat_type`) VALUES
(87426, 'tk015', 'YES', 'G'),
(87620, 'tk015', 'YES', 'G'),
(87654, 'tk016', 'YES', 'G'),
(87678, 'tk012', 'YES', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `t_id` char(5) NOT NULL,
  `t_name` varchar(40) NOT NULL,
  `locations` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`t_id`, `t_name`, `locations`) VALUES
('tk011', '2D Entertainment', 'CHENNAI'),
('tk012', 'YASH RAJ CINEMA', 'MUMBAI'),
('tk014', 'TALKIES Films', 'MUMBAI'),
('tk015', 'COMPLEX THEATRE', 'MUMBAI'),
('tk016', 'RA MANDIR', 'MUMBAI');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(10) NOT NULL,
  `movie_date` date NOT NULL,
  `movie_time` time NOT NULL,
  `th_id` char(5) NOT NULL,
  `movie_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `movie_date`, `movie_time`, `th_id`, `movie_id`) VALUES
(87650, '2022-02-15', '10:01:00', 'tk012', 'mo124'),
(87651, '2022-02-10', '10:10:00', 'tk012', 'mo124'),
(87652, '2022-02-18', '11:01:00', 'tk015', 'mo124'),
(87654, '2022-02-17', '12:01:00', 'tk015', 'mo124'),
(87655, '2022-02-16', '14:01:00', 'tk016', 'mo124');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `a_id` (`a_id`);

--
-- Indexes for table `acts_in`
--
ALTER TABLE `acts_in`
  ADD PRIMARY KEY (`m_id`,`a_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `act_ph`
--
ALTER TABLE `act_ph`
  ADD PRIMARY KEY (`a_id`,`ph_no`),
  ADD UNIQUE KEY `a_id` (`a_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_id` (`c_id`),
  ADD UNIQUE KEY `tkt_id` (`tkt_id`);

--
-- Indexes for table `customer_ph`
--
ALTER TABLE `customer_ph`
  ADD PRIMARY KEY (`c_id`,`cph_no`),
  ADD UNIQUE KEY `c_id` (`c_id`),
  ADD UNIQUE KEY `cph_no` (`cph_no`);

--
-- Indexes for table `customer_ticket`
--
ALTER TABLE `customer_ticket`
  ADD PRIMARY KEY (`ticket_id`,`c_id`),
  ADD UNIQUE KEY `c_id` (`c_id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_id` (`d_id`);

--
-- Indexes for table `directs_in`
--
ALTER TABLE `directs_in`
  ADD PRIMARY KEY (`m_id`,`d_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `direct_ph`
--
ALTER TABLE `direct_ph`
  ADD PRIMARY KEY (`d_id`,`ph_no`),
  ADD UNIQUE KEY `d_id` (`d_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`m_id`,`genre`),
  ADD UNIQUE KEY `genre` (`genre`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`m_id`),
  ADD UNIQUE KEY `m_id` (`m_id`),
  ADD KEY `pr_id` (`pr_id`),
  ADD KEY `th_id` (`th_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ref_id`),
  ADD UNIQUE KEY `ref_id` (`ref_id`),
  ADD UNIQUE KEY `ref_id_2` (`ref_id`),
  ADD KEY `cm_id` (`cm_id`);

--
-- Indexes for table `production_company`
--
ALTER TABLE `production_company`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_no`,`th_id`),
  ADD UNIQUE KEY `seat_no` (`seat_no`),
  ADD KEY `th_id` (`th_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `t_id` (`t_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`),
  ADD KEY `th_id` (`th_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87679;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acts_in`
--
ALTER TABLE `acts_in`
  ADD CONSTRAINT `acts_in_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `movie` (`m_id`),
  ADD CONSTRAINT `acts_in_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `actors` (`a_id`);

--
-- Constraints for table `act_ph`
--
ALTER TABLE `act_ph`
  ADD CONSTRAINT `act_ph_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `actors` (`a_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`tkt_id`) REFERENCES `tickets` (`ticket_id`);

--
-- Constraints for table `customer_ph`
--
ALTER TABLE `customer_ph`
  ADD CONSTRAINT `customer_ph_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `customer_ticket`
--
ALTER TABLE `customer_ticket`
  ADD CONSTRAINT `customer_ticket_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `customer_ticket_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`);

--
-- Constraints for table `directs_in`
--
ALTER TABLE `directs_in`
  ADD CONSTRAINT `directs_in_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `movie` (`m_id`),
  ADD CONSTRAINT `directs_in_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `directors` (`d_id`);

--
-- Constraints for table `direct_ph`
--
ALTER TABLE `direct_ph`
  ADD CONSTRAINT `direct_ph_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `directors` (`d_id`);

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `movie` (`m_id`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`pr_id`) REFERENCES `production_company` (`p_id`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`th_id`) REFERENCES `theatre` (`t_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`cm_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`th_id`) REFERENCES `theatre` (`t_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`th_id`) REFERENCES `theatre` (`t_id`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`m_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
