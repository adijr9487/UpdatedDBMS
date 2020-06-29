-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 02:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp_man`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch_table`
--

CREATE TABLE `branch_table` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `branch_city` text NOT NULL,
  `branch_add` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_table`
--

INSERT INTO `branch_table` (`id`, `branch_name`, `branch_code`, `branch_city`, `branch_add`) VALUES
(11, 'branch_1', 'brch0001', 'Lucknow', 'address-value-branch-0001, sector-A1, area-unknown, Big City'),
(12, 'branch_2', 'brch0002', 'Mumbai', 'any address which is close to Mumbai City for ease'),
(13, 'branch_2', 'brch0002', 'Delhi', 'any address which is close to Delhi City for ease'),
(14, 'branch_3', 'brch0003', 'Bangalore', 'any address which is close to Bangalore City for ease'),
(15, 'branch_4', 'brch0004', 'Hyderabad', 'any address which is close to Hyderabad City for ease'),
(16, 'branch_5', 'brch0005', 'Ahmedabad', 'any address which is close to Ahmedabad City for ease'),
(17, 'branch_6', 'brch0006', 'Chennai', 'any address which is close to Chennai City for ease'),
(18, 'branch_7', 'brch0007', 'Kolkata', 'any address which is close to Kolkata City for ease'),
(19, 'branch_8', 'brch0008', 'Surat', 'any address which is close to Surat City for ease'),
(20, 'branch_9', 'brch0009', 'Pune', 'any address which is close to Pune City for ease'),
(21, 'branch_10', 'brch00010', 'Jaipur', 'any address which is close to Jaipur City for ease'),
(22, 'branch_11', 'brch00011', 'Kanpur', 'any address which is close to Kanpur City for ease'),
(23, 'branch_12', 'brch00012', 'Nagpur', 'any address which is close to Nagpur City for ease'),
(24, 'branch_13', 'brch00013', 'Lucknow', 'any address which is close to Lucknow City for ease'),
(25, 'branch_14', 'brch00014', 'Visakhapatn', 'any address which is close to Visakhapatn City for ease'),
(26, 'branch_15', 'brch00015', 'Thane', 'any address which is close to Thane City for ease'),
(27, 'branch_16', 'brch00016', 'Bhopal', 'any address which is close to Bhopal City for ease'),
(28, 'branch_17', 'brch00017', 'Indore', 'any address which is close to Indore City for ease'),
(29, 'branch_18', 'brch00018', 'Pimpri-Chin', 'any address which is close to Pimpri-Chin City for ease'),
(30, 'branch_19', 'brch00019', 'Patna', 'any address which is close to Patna City for ease'),
(31, 'branch_20', 'brch00020', 'Vadodara', 'any address which is close to Vadodara City for ease'),
(32, 'branch_21', 'brch00021', 'Ghaziabad', 'any address which is close to Ghaziabad City for ease'),
(33, 'branch_22', 'brch00022', 'Ludhiana', 'any address which is close to Ludhiana City for ease'),
(34, 'branch_23', 'brch00023', 'Agra', 'any address which is close to Agra City for ease'),
(35, 'branch_24', 'brch00024', 'Nashik', 'any address which is close to Nashik City for ease'),
(36, 'branch_25', 'brch00025', 'Faridabad', 'any address which is close to Faridabad City for ease'),
(37, 'branch_26', 'brch00026', 'Meerut', 'any address which is close to Meerut City for ease'),
(38, 'branch_27', 'brch00027', 'Rajkot', 'any address which is close to Rajkot City for ease'),
(39, 'branch_28', 'brch00028', 'Kalyan-Domb', 'any address which is close to Kalyan-Domb City for ease'),
(40, 'branch_29', 'brch00029', 'Vasai-Virar', 'any address which is close to Vasai-Virar City for ease'),
(41, 'branch_30', 'brch00030', 'Varanasi', 'any address which is close to Varanasi City for ease'),
(42, 'branch_31', 'brch00031', 'Srinagar', 'any address which is close to Srinagar City for ease'),
(43, 'branch_32', 'brch00032', 'Aurangabad', 'any address which is close to Aurangabad City for ease'),
(44, 'branch_33', 'brch00033', 'Dhanbad', 'any address which is close to Dhanbad City for ease'),
(45, 'branch_34', 'brch00034', 'Amritsar', 'any address which is close to Amritsar City for ease');

-- --------------------------------------------------------

--
-- Table structure for table `complain_table`
--

CREATE TABLE `complain_table` (
  `Id` int(11) NOT NULL,
  `vic_name` varchar(75) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `post_time` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complain_table`
--

INSERT INTO `complain_table` (`Id`, `vic_name`, `date`, `time`, `city`, `address`, `type`, `phone`, `description`, `post_time`) VALUES
(54, 'Marlene Nold ', '2020-05-14', '10:00PM', 'Hyderabad', '318 Indian Summer Ave. Flint, MI 48504', 'Antisocial behaviour', '7555624997', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. Eget aliquet nibh praesent tristique magna. In fermentum et sollicitudin ac orci. Tellus in hac habitasse platea. Duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Purus faucibus ornare.', 'Posted at 8:52:56 on 19-4-2020'),
(55, 'Margarett Hollmann', '2020-05-23', '12:00PM', 'Mumbai', '827 East Vine Avenue Rosedale, NY 11422', 'Antisocial behaviour', '8555157138', 'suspendisse sed nisi lacus. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Ac feugiat sed lectus vestibulum mattis ullamcorper velit. Facilisis magna etiam tempor orci eu lobortis elementum. Tempor nec feugiat nisl pretium fusce id velit. Facilisis gravida neque convallis a cras. Tincidunt dui ut ornare lectus sit amet est.', 'Posted at 8:56:30 on 19-4-2020'),
(56, 'Karly Naples', '2020-05-12', '11:00AM', 'Mumbai', '68 Ridgeview St. Sterling, VA 20164', 'Antisocial behaviour', '933006442', 'habitant morbi tristique. Eget aliquet nibh praesent tristique magna. In fermentum et sollicitudin ac orci. Tellus in hac habitasse platea. Duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Purus faucibus ornare suspendisse sed nisi lacus. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Ac feugiat sed lectus vestibulum', 'Posted at 8:57:53 on 19-4-2020'),
(57, 'Pasquale Romanelli  ', '2020-05-08', '20:00', 'Nagpur', '787 Randall Mill Ave. Riverview, FL 33569', 'Antisocial behaviour', '8555933188', 'id aliquet risus feugiat. Purus faucibus ornare suspendisse sed nisi lacus. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Ac feugiat sed ', 'Posted at 8:58:59 on 19-4-2020'),
(58, 'Blossom Scala ', '2020-05-09', '11Pm', 'Surat', '68 Ridgeview St. Sterling, VA 20164', 'Antisocial behaviour', '765787661', 'praesent tristique magna. In fermentum et sollicitudin ac orci. Tellus in hac habitasse platea. Duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Purus faucibus', 'Posted at 9:0:21 on 19-4-2020'),
(59, 'Yael Gayle', '2020-05-30', '13:00', 'Lucknow', '787 Randall Mill Ave. Riverview, FL 33569', 'Antisocial behaviour', '86758645', 'Amet luctus. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. Eget aliquet nibh praesent tristique magna. In fermentum et sollicitudin ac orci. Tellus in hac habitasse platea. Duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Purus faucibus ornare suspendisse sed nisi lacus. Justo eget magna ', 'Posted at 9:24:4 on 19-4-2020'),
(60, 'Marcelino Brooks', '2020-05-17', '4:30PM', 'Pune', '7231 Bay Meadows Ave. Asheville, NC 28803', 'Antisocial behaviour', '9355510314', 'Tellus in hac habitasse platea. Duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Purus faucibus ornare suspendisse sed nisi lacus. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Ac feugiat sed lectus v', 'Posted at 10:8:3 on 19-4-2020'),
(61, 'Norberto Mccook', '2020-05-23', '12PM', 'Jaipur', '7231 Bay Meadows Ave. Asheville, NC 28803', 'False Imprisonment', '132545455', 'Porttitor eget dolor morbi non. Metus aliquam eleifend mi in nulla. Eget dolor morbi non arcu risus quis. Diam vulputate ut pharetra sit amet aliquam id diam. Vitae et leo duis ut diam quam nulla porttitor. Montes nascetur ridiculus mus mauris vitae ultricies leo. Congue nisi vitae suscipit tellus. Cursus mattis molestie.', 'Posted at 10:15:4 on 19-4-2020'),
(62, 'Shelli Veit  ', '2020-05-22', '11AM', 'Thane', '827 East Vine Avenue Rosedale, NY 11422', 'Childhood abuse', '564356788', 'Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum quisque non. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Molestie ac feugiat sed lectus vestibulum mattis ulla', 'Posted at 10:16:9 on 19-4-2020'),
(63, 'Josiline Duccker', '', '10:45AM', 'Mumbai', '87 Randall Mill Ave. Riverview, FL 33569', 'Burglary', '876987658', 'In hendrerit gravida rutrum quisque non. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Dui faucibus in ornare quam. Consectetur adipiscing elit ut aliquam purus sit amet. Sed odio morbi quis commodo odio aenean. Netus et malesuada fames ac turpis egestas maecenas.', 'Posted at 10:17:42 on 19-4-2020'),
(64, 'Polard James', '2020-05-29', '1:00 AM', 'Delhi', '827 East Vine Avenue Rosedale, NY 11422', 'Cyber Crime', '8765467887', 'Vitae et leo duis ut diam quam nulla porttitor. Montes nascetur ridiculus mus mauris vitae ultricies leo. Congue nisi vitae suscipit tellus. Cursus mattis molestie a iaculis. Pharetra vel turpis nunc eget lorem dolor sed viverra ipsum.', 'Posted at 10:18:32 on 19-4-2020'),
(65, 'Nordic Chel', '2020-05-23', '3:20PM', 'Indore', '127 Glendale Street Alexandria, VA 22304', 'Antisocial behaviour', '765435678', 'Nibh nisl condimentum id venenatis a condimentum vitae. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Odio facilisis mauris sit amet massa vitae. Justo laoreet sit amet cursus sit amet dictum sit amet. Elementum integer enim neque volutpat ac tincidunt vitae semper. Ipsum dolor sit amet consectetur adipiscing. Purus sit amet luctus venenatis', 'Posted at 10:19:34 on 19-4-2020'),
(66, 'Jimmy Cook', '2020-05-23', '13:30', 'Lucknow', '', 'Robbery', '143567867', ' Metus aliquam eleifend mi in nulla. Eget dolor morbi non arcu risus quis. Diam vulputate ut pharetra sit amet aliquam id diam. Vitae et leo duis ut diam quam nulla porttitor. Montes nascetur ridiculus mus mauris vitae ultricies leo. Congue nisi vitae suscipit tellus. Cursus mattis molestie a iaculis. Pharetra vel turpis nunc eget lorem dolor sed viverra ipsum. ', 'Posted at 10:22:57 on 19-4-2020'),
(67, 'Tim Holland', '2020-05-30', '2AM', 'Nagpur', '827 East Vine Avenue Rosedale, NY 11422', 'Cyber Crime', '132456645', 'Nibh nisl condimentum id venenatis a condimentum vitae. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Odio facilisis mauris sit amet massa vitae. Justo laoreet sit amet cursus sit amet dictum sit amet. Elementum integer enim neque volutpat ac tincidunt vitae semper. Ipsum dolor sit amet consectetur adipiscing. Purus sit amet luctus venenatis.\r\n\r\n', 'Posted at 10:23:45 on 19-4-2020'),
(68, 'Jocobe Brown', '2020-04-25', 'Don\'t Know', 'Nashik', '127 Glendale Street Alexandria, VA 22304', 'Kidnapping', '24356544', 'is. In hendrerit gravida rutrum quisque non. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Dui faucibus in ornare quam. Consectetur adipiscing elit ut aliquam pu', 'Posted at 10:25:2 on 19-4-2020'),
(69, 'Jimmy Cogan', '2020-05-30', '19', 'Mumbai', '', 'Antisocial behaviour', '', '', 'Posted at 10:32:6 on 19-4-2020'),
(70, 'Jimmy Cogan', '2020-05-23', '16:00', 'Visakhapatn', '80 N. Fremont Drive Ottawa, IL 61350', 'Antisocial behaviour', '456754324', 'piscing elit ut aliquam purus sit. Nascetur ridiculus mus mauris vitae ultricies leo integer. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum quisque non. Gravida cum sociis natoque pena', 'Posted at 10:33:13 on 19-4-2020'),
(71, 'Richard Feymann', '2020-05-26', '12:12', 'Mumbai', '222 Riverside Lane Lutherville Timonium, MD 21093', 'White Collar Crimes', '123454565', 'bus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Dui faucibus in ornare quam. Consectetur adipiscing elit ut aliquam pur', 'Posted at 10:35:28 on 19-4-2020'),
(72, 'Peter Higgs', '2020-05-23', '19:19', 'Lucknow', '181 Livingston Ave. Grosse Pointe, MI 48236', 'Arson', '34256543', 'idunt ut labore et dolore magna aliqua. Dolor sit amet consectetur adipiscing elit ut aliquam purus sit. Nascetur ridiculus mus mauris vitae ultricies leo integer. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum qui', 'Posted at 10:36:12 on 19-4-2020'),
(73, 'Tulk Hank', '2020-05-29', '11:12', 'Mumbai', '06 W. Grove Dr. Windermere, FL 34786', 'Sexual harrassment', '343565433', 'er. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum qui', 'Posted at 10:36:50 on 19-4-2020'),
(74, 'Samuel Cold', '2020-05-31', '10:10', 'Bangalore', '368 Brandywine St. Warner Robins, GA 31088', 'Antisocial behaviour', '345676543', 's vitae ultricies leo integer. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum quisque non. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viverra ipsum nunc aliquet bibendum ', 'Posted at 10:38:3 on 19-4-2020'),
(75, 'Tide Mild', '2020-05-27', '18:00', 'Ahmedabad', '368 Brandywine St. Warner Robins, GA 31088', 'Antisocial behaviour', '123456543', 'r ridiculus mus mauris vitae ultricies leo. Congue nisi vitae suscipit tellus. Cursus mattis molestie a iaculis. Pharetra vel turpis nunc eget lorem dolor sed viverra ipsum. Nibh nisl condimentum id venenatis a condimentum vitae. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Odio facilisis mauris sit amet massa vitae. Justo laoreet sit amet cursus sit amet dictum sit amet. Elementum integer enim neque volutpat ac tincidunt vitae semper. Ipsum dolor', 'Posted at 10:38:51 on 19-4-2020'),
(76, ' Noel Efli', '2020-01-30', '13:12', 'Lucknow', '705 Goldfield Street Desoto, TX 75115', 'Antisocial behaviour', '', 'ur adipiscing elit ut aliquam purus sit amet. Sed odio morbi quis commodo odio aenean. Netus et malesuada fames ac turpis egestas maecenas.\r\n\r\nPorttitor eget dolor morbi non. Metus aliquam eleifend mi in nulla. Eget dolor morbi non arcu risus quis. Diam vulputate ut pharetra sit amet aliquam id diam. Vitae et leo duis ut diam q', 'Posted at 10:40:24 on 19-4-2020'),
(77, 'Kim Kobel', '2020-04-17', '16:32', 'Kolkata', '785 Longbranch Court West Lafayette, IN 4790', 'Antisocial behaviour', '123456543', 'ur adipiscing elit ut aliquam purus sit amet. Sed odio morbi quis lor morbi non. Metus aliquam eleifend mi in nulla. Eget dolor morbi non arcu risus quis. Diam vulputate ut pharetra sit amet aliquam id diam. Vitae et leo duis ut diam q', 'Posted at 10:41:9 on 19-4-2020'),
(78, 'Turnus Kimbel', '2020-05-01', '14:00', 'Faridabad	', '81 West Riverside St. Amityville, NY 11701', 'Antisocial behaviour', '32456545', 'orbi non. Metus aliquam eleifend mi in nulla. Eget dolor morbi non arcu risus quis. Diam vulputate ut pharetra sit amet aliquam id diam. Vitae et leo duis ut diam quam nulla porttitor. Montes nascetur ridiculus mus mauris vitae ', 'Posted at 10:42:37 on 19-4-2020'),
(79, 'deck dok', '2020-05-21', '19:00', 'Faridabad	', '85 Longbranch Court West Lafayette, IN 47906', 'Sexual harrassment', '12324354', 'met consectetur adipiscing elit ut aliquam purus sit. Nascetur ridiculus mus mauris vitae ultricies leo integer. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum quisque non. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viver', 'Posted at 10:48:11 on 19-4-2020'),
(80, 'Hik Kired', '2020-05-29', '12:12', 'Jaipur', '85 Longbranch Court West Lafayette, IN 47906', 'Rape', '324565434', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dolor sit amet consectetur adipiscing elit ut aliquam purus sit. Nascetur ridiculus mus mauris vitae ultricies leo integer. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis co', 'Posted at 10:51:36 on 19-4-2020'),
(81, 'Vormo Portioso', '2020-05-29', '19:21', 'Faridabad	', '9803 Pierce Ave. Chicopee, MA 01020', 'Cyber Crime', '21345643', 'gravida rutrum quisque non. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Semper risus in hendrerit gravida rutrum quisque. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit', 'Posted at 10:52:46 on 19-4-2020'),
(82, 'Noppp Pol', '2020-05-09', '12:09', 'Pimpri-Chin', '827 East Vine Avenue Rosedale, NY 11422', 'Antisocial behaviour', '123435654', 'am purus sit. Nascetur ridiculus mus mauris vitae ultricies leo integer. Varius quam quisque id diam vel quam elementum. Netus et malesuada fames ac turpis egestas integer eget. At lectus urna duis convallis. In hendrerit gravida rutrum quisque non', 'Posted at 10:58:33 on 19-4-2020'),
(83, 'Osmium Vend', '2020-05-22', '14:00', 'Faridabad', '827 East Vine Avenue Rosedale, NY 11422', 'Terrorism', '87654678', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups', 'Posted at 11:21:2 on 20-4-2020');

-- --------------------------------------------------------

--
-- Table structure for table `comp_bran`
--

CREATE TABLE `comp_bran` (
  `complain_id` smallint(6) NOT NULL,
  `branch_id` smallint(6) NOT NULL,
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp_bran`
--

INSERT INTO `comp_bran` (`complain_id`, `branch_id`, `id`, `status`) VALUES
(54, 15, 5, ''),
(55, 12, 6, ''),
(56, 12, 7, ''),
(57, 23, 8, ''),
(58, 19, 9, ''),
(59, 11, 10, ''),
(60, 20, 11, ''),
(61, 21, 12, ''),
(62, 26, 13, ''),
(63, 12, 14, ''),
(64, 13, 15, ''),
(65, 28, 16, ''),
(66, 11, 17, ''),
(67, 23, 18, ''),
(68, 35, 19, ''),
(69, 12, 20, ''),
(70, 25, 21, ''),
(71, 12, 22, ''),
(72, 11, 23, ''),
(73, 12, 24, ''),
(74, 14, 25, ''),
(75, 16, 26, ''),
(76, 11, 27, ''),
(77, 18, 28, ''),
(80, 21, 29, ''),
(82, 29, 30, ''),
(83, 36, 31, '');

-- --------------------------------------------------------

--
-- Table structure for table `coustomer_table`
--

CREATE TABLE `coustomer_table` (
  `Id` int(7) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(75) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coustomer_table`
--

INSERT INTO `coustomer_table` (`Id`, `email`, `phone`, `first_name`, `last_name`, `password`) VALUES
(13, 'ManOnMoon@mail.com', '912985153', 'Neil', 'Armstrong', 'apollo11'),
(14, 'munson@hotmail.com', '7555463929', 'Estella', 'Stein', 'ebUYmhNF'),
(15, 'tbmaddux@icloud.com', '9055573178', 'Jeannette', 'Schmucker', '6GvT5DDC'),
(16, 'yzheng@hotmail.com', '7555997853', 'Patrica', 'Mazzoni', 'ZAzRB72k'),
(17, 'vganesh@outlook.com', '9955591590', 'Darwin', 'Vanasse', 'tmsVgK5L'),
(18, 'qmacro@sbcglobal.net', '9355508809', 'Eula', 'Ascencio', 'FsXcA9cg'),
(19, 'rsteiner@att.net', '9855592097', 'Whitney', 'Linares', '9TH7HKZ7'),
(20, 'mrobshaw@live.com', '9255530251', 'Carli', 'Alvord', 'Q5x6wkCq'),
(21, 'mschilli@live.com', '9255511205', 'Toshiko', 'Lack', 'rjxjWtxa'),
(22, 'lushe@verizon.net', '9555551387', 'Isabel', 'Gibson', 'aG3A6Bt5'),
(23, 'dsowsy@sbcglobal.net', '8555610108', 'Carissa', 'Mandelbaum', 'Rkhn2D2g'),
(24, 'jbryan@outlook.com', '7555107839', 'Jana', 'Sholar', 'mStLG2ws'),
(25, 'sartak@yahoo.ca', '8555585580', 'Evelin', 'Secrest', 'qAXf2u5t'),
(26, 'malvar@live.com', '9855506669', 'Shanika', 'Leader', 'GK4UAVrZ'),
(27, 'fukuchi@hotmail.com', '7555637187', 'Ozella', 'Mcclinton', 'eqXWdqNC'),
(28, 'stevelim@mac.com', '9755578697', 'Isaias', 'Brickhouse', '7LMLJtpb'),
(29, 'jipsen@msn.com', '9755535219', 'Janay', 'Demello', 'aVTZhDb9'),
(30, 'szymansk@yahoo.ca', '9255564257', 'Tessie', 'Obregon', 'uJw8LGLc'),
(31, 'zwood@verizon.net', '8555309671', 'Virgilio', 'Villines', 'JAS5cZpt'),
(32, 'sartak@yahoo.com', '8555311479', 'Fumiko', 'Gail', 'bET7M6EF'),
(33, 'hampton@yahoo.ca', '9355522227', 'Brandon', 'Blust', 'ppPD5sfS');

-- --------------------------------------------------------

--
-- Table structure for table `coust_comp`
--

CREATE TABLE `coust_comp` (
  `id` int(11) NOT NULL,
  `customer_id` smallint(6) NOT NULL,
  `complaint_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coust_comp`
--

INSERT INTO `coust_comp` (`id`, `customer_id`, `complaint_id`) VALUES
(26, 13, 54),
(27, 13, 55),
(28, 13, 56),
(29, 13, 57),
(30, 14, 58),
(31, 14, 59),
(32, 17, 60),
(33, 17, 61),
(34, 17, 62),
(35, 18, 63),
(36, 18, 64),
(37, 18, 65),
(38, 20, 66),
(39, 20, 67),
(40, 21, 68),
(41, 21, 69),
(42, 21, 70),
(43, 22, 71),
(44, 22, 72),
(45, 22, 73),
(46, 25, 74),
(47, 25, 75),
(48, 26, 76),
(49, 26, 77),
(50, 29, 78),
(51, 30, 79),
(52, 29, 80),
(53, 29, 81),
(54, 30, 82),
(55, 29, 83);

-- --------------------------------------------------------

--
-- Table structure for table `managers_table`
--

CREATE TABLE `managers_table` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers_table`
--

INSERT INTO `managers_table` (`id`, `name`, `address`, `phone`, `password`) VALUES
(6, 'Manager_11234', 'address near his branch area', '1234567890', '1234567890'),
(7, 'Manager_11235', 'address near his branch area', '1234567891', '1234567891'),
(8, 'Manager_11236', 'address near his branch area', '1234567892', '1234567892'),
(9, 'Manager_11237', 'address near his branch area', '1234567893', '1234567893'),
(10, 'Manager_11238', 'address near his branch area', '1234567894', '1234567894'),
(11, 'Manager_11239', 'address near his branch area', '1234567895', '1234567895'),
(12, 'Manager_11240', 'address near his branch area', '1234567896', '1234567896'),
(13, 'Manager_11241', 'address near his branch area', '1234567897', '1234567897'),
(14, 'Manager_11242', 'address near his branch area', '1234567898', '1234567898'),
(15, 'Manager_11243', 'address near his branch area', '1234567899', '1234567899'),
(16, 'Manager_11244', 'address near his branch area', '1234567900', '1234567900'),
(17, 'Manager_11245', 'address near his branch area', '1234567901', '1234567901'),
(18, 'Manager_11246', 'address near his branch area', '1234567902', '1234567902'),
(19, 'Manager_11247', 'address near his branch area', '1234567903', '1234567903'),
(20, 'Manager_11248', 'address near his branch area', '1234567904', '1234567904'),
(21, 'Manager_11249', 'address near his branch area', '1234567905', '1234567905'),
(22, 'Manager_11250', 'address near his branch area', '1234567906', '1234567906'),
(23, 'Manager_11251', 'address near his branch area', '1234567907', '1234567907'),
(24, 'Manager_11252', 'address near his branch area', '1234567908', '1234567908'),
(25, 'Manager_11253', 'address near his branch area', '1234567909', '1234567909'),
(26, 'Manager_11254', 'address near his branch area', '1234567910', '1234567910'),
(27, 'Manager_11255', 'address near his branch area', '1234567911', '1234567911'),
(28, 'Manager_11256', 'address near his branch area', '1234567912', '1234567912'),
(29, 'Manager_11257', 'address near his branch area', '1234567913', '1234567913'),
(30, 'Manager_11258', 'address near his branch area', '1234567914', '1234567914'),
(31, 'Manager_11259', 'address near his branch area', '1234567915', '1234567915'),
(32, 'Manager_11260', 'address near his branch area', '1234567916', '1234567916'),
(33, 'Manager_11261', 'address near his branch area', '1234567917', '1234567917'),
(34, 'Manager_11262', 'address near his branch area', '1234567918', '1234567918'),
(35, 'Manager_11263', 'address near his branch area', '1234567919', '1234567919'),
(36, 'Manager_11264', 'address near his branch area', '1234567920', '1234567920'),
(37, 'Manager_11265', 'address near his branch area', '1234567921', '1234567921'),
(38, 'Manager_11266', 'address near his branch area', '1234567922', '1234567922'),
(39, 'Manager_11267', 'address near his branch area', '1234567923', '1234567923'),
(40, 'Manager_11268', 'address near his branch area', '1234567924', '1234567924');

-- --------------------------------------------------------

--
-- Table structure for table `man_bra`
--

CREATE TABLE `man_bra` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `man_bra`
--

INSERT INTO `man_bra` (`id`, `manager_id`, `branch_id`) VALUES
(1, 6, 11),
(2, 7, 12),
(3, 8, 13),
(4, 9, 14),
(5, 10, 15),
(6, 11, 16),
(7, 12, 17),
(8, 13, 18),
(9, 14, 19),
(10, 15, 20),
(11, 16, 21),
(12, 17, 22),
(13, 18, 23),
(14, 19, 24),
(15, 20, 25),
(16, 21, 26),
(17, 22, 27),
(18, 23, 28),
(19, 24, 29),
(20, 25, 30),
(21, 26, 31),
(22, 27, 32),
(23, 28, 33),
(24, 29, 34),
(25, 30, 35),
(26, 31, 36),
(27, 32, 37),
(28, 33, 38),
(29, 34, 39),
(30, 35, 40),
(31, 36, 41),
(32, 37, 42),
(33, 38, 43),
(34, 39, 44),
(35, 40, 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch_table`
--
ALTER TABLE `branch_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_table`
--
ALTER TABLE `complain_table`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `comp_bran`
--
ALTER TABLE `comp_bran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coustomer_table`
--
ALTER TABLE `coustomer_table`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `coust_comp`
--
ALTER TABLE `coust_comp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers_table`
--
ALTER TABLE `managers_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `man_bra`
--
ALTER TABLE `man_bra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch_table`
--
ALTER TABLE `branch_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `complain_table`
--
ALTER TABLE `complain_table`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `comp_bran`
--
ALTER TABLE `comp_bran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `coustomer_table`
--
ALTER TABLE `coustomer_table`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `coust_comp`
--
ALTER TABLE `coust_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `managers_table`
--
ALTER TABLE `managers_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `man_bra`
--
ALTER TABLE `man_bra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
