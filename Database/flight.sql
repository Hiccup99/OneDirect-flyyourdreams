-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2018 at 08:31 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flightinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `leaving` varchar(256) NOT NULL,
  `going` varchar(256) NOT NULL,
  `depart_date` date NOT NULL,
  `dept_time` time NOT NULL,
  `arr_time` time NOT NULL,
  `booked` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `name`, `leaving`, `going`, `depart_date`, `dept_time`, `arr_time`, `booked`, `fare`, `image`, `duration`) VALUES
(1, 'AIR INDIA', 'CHENNAI', 'BENGALURU', '2018-08-24', '10:00:00', '11:00:00', 0, 3000, 'https://logos-download.com/wp-content/uploads/2016/04/Air_India_logo_logotype_emblem.png', '01:00:00'),
(2, 'GO INDIGO', 'DELHI', 'MUMBAI', '2018-08-24', '14:00:00', '15:30:00', 0, 4500, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IndiGo_Airlines_logo.svg/2000px-IndiGo_Airlines_logo.svg.png', '01:30:00'),
(3, 'SPICE JET', 'DELHI', 'KOLKATA', '2018-08-24', '05:00:00', '08:00:00', 0, 3000, 'https://i.pinimg.com/originals/c0/e9/13/c0e9134cea71190d29f1e0955b678feb.png', '03:00:00'),
(4, 'JET AIRWAYS', 'PUNE', 'HYDERABAD', '2018-08-24', '06:50:00', '07:55:00', 0, 3276, 'https://www.seeklogo.net/wp-content/uploads/2013/03/jet-airways-vector-logo.png', '01:05:00'),
(5, 'VISTARA', 'MUMBAI', 'AMRITSAR', '2018-08-24', '13:10:00', '15:40:00', 0, 3799, 'https://www.featuredcustomers.com/media/Company.logo/Vistara.png', '02:30:00'),
(6, 'GO AIR', 'DELHI', 'MUMBAI', '2018-08-24', '07:35:00', '10:00:00', 0, 2864, 'https://upload.wikimedia.org/wikipedia/commons/8/86/GoAir_Logo.png', '02:25:00'),
(7, 'VISTARA', 'DELHI', 'MUMBAI', '2018-08-24', '06:00:00', '08:05:00', 0, 6557, 'https://www.featuredcustomers.com/media/Company.logo/Vistara.png', '02:05:00'),
(9, 'AIR ASIA', 'DELHI', 'JAIPUR', '2018-08-24', '16:30:00', '19:15:00', 0, 6560, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/AirAsia_New_Logo.svg/2000px-AirAsia_New_Logo.svg.png', '02:45:00'),
(10, 'GO INDIGO', 'PUNE', 'AHMEDABAD', '2018-08-24', '06:25:00', '07:40:00', 0, 6295, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IndiGo_Airlines_logo.svg/2000px-IndiGo_Airlines_logo.svg.png', '01:15:00'),
(11, 'SPICE JET', 'PUNE', 'AHMEDABAD', '2018-08-24', '21:00:00', '22:15:00', 0, 12870, 'https://i.pinimg.com/originals/c0/e9/13/c0e9134cea71190d29f1e0955b678feb.png', '01:15:00'),
(12, 'VISTARA', 'PUNE', 'AHMEDABAD', '2018-08-24', '05:55:00', '19:50:00', 0, 156069, 'https://www.featuredcustomers.com/media/Company.logo/Vistara.png', '13:55:00'),
(13, 'SPICE JET', 'BENGALURU', 'CHENNAI', '2018-08-24', '17:45:00', '18:50:00', 0, 3560, 'https://i.pinimg.com/originals/c0/e9/13/c0e9134cea71190d29f1e0955b678feb.png', '01:05:00'),
(14, 'AIR ASIA', 'BENGALURU', 'CHENNAI', '2018-08-24', '17:30:00', '18:25:00', 0, 3630, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/AirAsia_New_Logo.svg/2000px-AirAsia_New_Logo.svg.png', '00:55:00'),
(15, 'INDIGO', 'BENGALURU', 'CHENNAI', '2018-08-24', '12:25:00', '13:20:00', 0, 4084, '\r\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IndiGo_Airlines_logo.svg/2000px-IndiGo_Airlines_logo.svg.png', '00:55:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
