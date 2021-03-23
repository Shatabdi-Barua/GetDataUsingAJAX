-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 09:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home`
--

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `emergency` text NOT NULL,
  `number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`emergency`, `number`) VALUES
('Fire Service', '001112222'),
('Ambulance', '112234455'),
('Police Station', '1234546788'),
('Doctor(medicine)', '1213456'),
('Doctor(Cardiologist)', '23456658'),
('doctor(neurologist)', '234567878'),
('Ambulance', '298393'),
('popular', 'Ambulance'),
('fire service', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(20) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `employee_adrs` varchar(40) NOT NULL,
  `employee_contact` int(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_adrs`, `employee_contact`) VALUES
(156, 'qwerty', 'asdfghjkl', 1023);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_name` varchar(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_name`, `password`) VALUES
('sakura', 29),
('jui', 26),
('Shatabdi', 23);

-- --------------------------------------------------------

--
-- Table structure for table `residents_info`
--

CREATE TABLE `residents_info` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `contact_of_gurdian` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `residents_info`
--

INSERT INTO `residents_info` (`id`, `name`, `sex`, `age`, `location`, `contact_of_gurdian`) VALUES
('687', 'Aklima khatun', 'Female', '70', 'Sylhet', '554545'),
('1104118', 'Mahbuba Hossain Sakura', 'Female', '56', 'Barisjal', '847875'),
('1104118', 'chilli', 'Female', '56', 'Barisjal', '847875');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `time` text NOT NULL,
  `activities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`time`, `activities`) VALUES
('8:00-10:00 am ', 'medicine & breakfast'),
('10:00-11:30 am', 'Visiting hour'),
('1:00-3:00', 'Lunch'),
('5:00- 6:30 pm', 'snacks'),
('8:00-10:00 pm', 'dinner'),
('9pm', 'Dinner'),
('9', 'vvbvb'),
('10:00-11:00', 'snacks');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
