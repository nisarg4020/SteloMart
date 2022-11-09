-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2020 at 09:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us Information', '\r\nThe business-to-consumer aspect of product commerce (e-commerce) is the most visible business use of the World Wide Web. The primary goal of an e-commerce site is to sell goods online. \r\nThis project deals with developing an e-commerce website for Online Product Sale. It provides the user with a catalog of different product available for purchase in the store. In order to facilitate online purchase a shopping cart is provided to the user. The system is implemented using a 3-tier approach, with a backend database, a middle tier of \r\n', '<p>Apache Server and PHP, and a web browser as the front end client. In order to develop an e-commerce website, a number of Technologies must be studied and understood. These include multi-tiered architecture, server and client side scripting techniques, implementation technologies such as PHP(OOP), JQUERY, BOOTSTRAP, HTML5, relational databases such as MySQLi. This is a project with the objective to develop a basic website where a consumer is provided with a shopping cart application and also to know about the technologies used to develop such an application. This document will discuss each of the underlying technologies to create and implement an e-commerce website.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(5, 'AhmedElshal', 'ahmedelshal@gmail.com', '$2y$10$I4IqpVKbg28rO1g2ijlY5u.8sVYPUkHrwIWLfz9UQgzDyAajBUQ8S', 'profile.jpg', '+201098531786', 'Egypt', 'Software Engineering Student', '   I have a passion for Innovation and Entrepreneurship in Software Engineering  and Data Science.\r\n   '),
(6, 'ahmedelshal', 'ahmedelshal2020@gmail.com', '$2y$10$VXxWSmRSSUhqnBYh/b/O0erTmc7MKJnMmuFQ0ehuzoQ.bnzEQVMO6', '3.jpg', 'Ahmed Morshedy Elshal', 'Egypt', 'Software Engineering Student', '   Freelance Software Testing Engineer  ');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'BEST PRICES', 'You can check on all others sites about the prices and than compare with us.'),
(3, '100% SATISFACTION GUARANTEED From Us', 'Free returns on everything for 3 months. '),
(6, 'WE LOVE OUR CUSTOMERS', ' We are known to provide best possible service ever');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(8, 'jacket bundle relation -1', 33, 11),
(9, 'jacket bundle relation -2', 5, 11),
(10, 'jacket bundle relation -3', 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Female', 'no', 'm12.png'),
(3, 'Kids', 'no', 'co5.png'),
(4, 'Digital', 'no', 'picture14872777482570.png'),
(5, 'Men', 'no', 'm31.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'sad.ahmed22224@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(10) NOT NULL,
  `country_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua And Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia And Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean Territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo, The Democratic Republic Of'),
(52, 'Cook Islands'),
(53, 'Costa Rica'),
(54, 'Cote D\'ivoire'),
(55, 'Croatia'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czech Republic'),
(59, 'Denmark'),
(60, 'Djibouti'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'El Salvador'),
(66, 'Equatorial Guinea'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Ethiopia'),
(70, 'Falkland Islands (malvinas)'),
(71, 'Faroe Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'France'),
(75, 'French Guiana'),
(76, 'French Polynesia'),
(77, 'French Southern Territories'),
(78, 'Gabon'),
(79, 'Gambia'),
(80, 'Georgia'),
(81, 'Germany'),
(82, 'Ghana'),
(83, 'Gibraltar'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guernsey'),
(91, 'Guinea'),
(92, 'Guinea-bissau'),
(93, 'Guyana'),
(94, 'Haiti'),
(95, 'Heard Island And Mcdonald Islands'),
(96, 'Holy See (vatican City State)'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran, Islamic Republic Of'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Isle Of Man'),
(107, 'Israel'),
(108, 'Italy'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jersey'),
(112, 'Jordan'),
(113, 'Kazakhstan'),
(114, 'Kenya'),
(115, 'Kiribati'),
(116, 'Korea, Democratic People\'s Republic Of'),
(117, 'Korea, Republic Of'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macao'),
(130, 'Macedonia, The Former Yugoslav Republic Of'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States Of'),
(144, 'Moldova, Republic Of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montserrat'),
(148, 'Morocco'),
(149, 'Mozambique'),
(150, 'Myanmar'),
(151, 'Namibia'),
(152, 'Nauru'),
(153, 'Nepal'),
(154, 'Netherlands'),
(155, 'Netherlands Antilles'),
(156, 'New Caledonia'),
(157, 'New Zealand'),
(158, 'Nicaragua'),
(159, 'Niger'),
(160, 'Nigeria'),
(161, 'Niue'),
(162, 'Norfolk Island'),
(163, 'Northern Mariana Islands'),
(164, 'Norway'),
(165, 'Oman'),
(166, 'Pakistan'),
(167, 'Palau'),
(168, 'Palestinian Territory, Occupied'),
(169, 'Panama'),
(170, 'Papua New Guinea'),
(171, 'Paraguay'),
(172, 'Peru'),
(173, 'Philippines'),
(174, 'Pitcairn'),
(175, 'Poland'),
(176, 'Portugal'),
(177, 'Puerto Rico'),
(178, 'Qatar'),
(179, 'Reunion'),
(180, 'Romania'),
(181, 'Russian Federation'),
(182, 'Rwanda'),
(183, 'Saint Helena'),
(184, 'Saint Kitts And Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Pierre And Miquelon'),
(187, 'Saint Vincent And The Grenadines'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'Sao Tome And Principe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia And Montenegro'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Slovenia'),
(199, 'Solomon Islands'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'South Georgia And The South Sandwich Islands'),
(203, 'Spain'),
(204, 'Sri Lanka'),
(205, 'Sudan'),
(206, 'Suriname'),
(207, 'Svalbard And Jan Mayen'),
(208, 'Swaziland'),
(209, 'Sweden'),
(210, 'Switzerland'),
(211, 'Syrian Arab Republic'),
(212, 'Taiwan, Province Of China'),
(213, 'Tajikistan'),
(214, 'Tanzania, United Republic Of'),
(215, 'Thailand'),
(216, 'Timor-leste'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad And Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks And Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States Minor Outlying Islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Venezuela'),
(236, 'Viet Nam'),
(237, 'Virgin Islands, British'),
(238, 'Virgin Islands, U.S.'),
(239, 'Wallis And Futuna'),
(240, 'Western Sahara'),
(242, 'Zambia'),
(243, 'Zimbabwe'),
(246, 'Myanmar'),
(247, 'Dominican Republic');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Remind T-shirt', '40', '333444', 5, 3),
(4, 59, 'Hurley Dri-FIT Coronado', '1000', '3', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(5, 'Ahmed Elshal', 'ahmedelshal@gmail.com', '$2y$10$fPU6T7Arm3zdc910IR8jUeZjjQ.ugqY3gGtS0FMao5PYXC5snzNEu', 'Egypt', 'Cairo', '+201098531786', 'cairo', 'Ù¢Ù Ù¡Ù©Ù Ù¥Ù Ù©_Ù¡Ù£Ù Ù¥Ù£Ù¡.jpg', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_addresses`
--

CREATE TABLE `customers_addresses` (
  `address_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_addresses`
--

INSERT INTO `customers_addresses` (`address_id`, `customer_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 5, 'Ahmed ', 'Elshal', '64', 'cairo', 'cairo', 'cairo', 'smart city', '11865', 'Ahmed', 'Elshal', '64', 'Cairo', 'cairo', 'Egypt', 'smart city', '11865'),
(2, 6, 'John', 'Cena', '230', '3560 Powder House Road', '', 'California', 'LOS ANGELES', '90001', 'John', 'Cena', '230', '1814 Quiet Valley Lane', '', 'California', 'LOS ANGELES', ' 90071');

-- --------------------------------------------------------

--
--
--


-- --------------------------------------------------------

--
-- Table structure for table `Sellers`
--

CREATE TABLE `Sellers` (
  `Seller_id` int(10) NOT NULL,
  `Seller_name` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `b_accno` varchar(255) NOT NULL,
  `b_ifsc` varchar(255) NOT NULL,
  `b_name` varchar(255) NOT NULL,
  `tax_no` varchar(255) NOT NULL,
  `tax_info_no` varchar(255) NOT NULL,
  `t_ifsc` varchar(255) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `Seller_email` varchar(255) NOT NULL,
  `Seller_password` varchar(255) NOT NULL,
  `Seller_country` text NOT NULL,
  `Seller_city` text NOT NULL,
  `Seller_contact` varchar(255) NOT NULL,
  `Seller_address` text NOT NULL,
  `Seller_image` text NOT NULL,
  `Seller_ip` varchar(255) NOT NULL,
  `Seller_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sellers`
--

INSERT INTO `Sellers` (`Seller_id`, `Seller_name`, `business_name`, `b_accno`, `b_ifsc`, `b_name`, `tax_no`, `tax_info_no`, `t_ifsc`, `t_name`, `Seller_email`, `Seller_password`, `Seller_country`, `Seller_city`, `Seller_contact`, `Seller_address`, `Seller_image`, `Seller_ip`, `Seller_confirm_code`) VALUES
(5,'Some Human', 'Electonics', '12345678910','CBIN0123', 'Some Human','TAX01234','TAXINFO123', 'TAXN0123', 'Some Human', 'somehuman@gmail.com', '$2y$10$fPU6T7Arm3zdc910IR8jUeZjjQ.ugqY3gGtS0FMao5PYXC5snzNEu', 'Egypt', 'Cairo', '+201098531786', 'cairo', 'Ù¢Ù Ù¡Ù©Ù Ù¥Ù Ù©_Ù¡Ù£Ù Ù¥Ù£Ù¡.jpg', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `Sellers_addresses`
--

CREATE TABLE `Sellers_addresses` (
  `address_id` int(10) NOT NULL,
  `Seller_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sellers_addresses`
--

INSERT INTO `Sellers_addresses` (`address_id`, `Seller_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 5, 'Ahmed ', 'Elshal', '64', 'cairo', 'cairo', 'cairo', 'smart city', '11865', 'Ahmed', 'Elshal', '64', 'Cairo', 'cairo', 'Egypt', 'smart city', '11865'),
(2, 6, 'John', 'Cena', '230', '3560 Powder House Road', '', 'California', 'LOS ANGELES', '90001', 'John', 'Cena', '230', '1814 Quiet Valley Lane', '', 'California', 'LOS ANGELES', ' 90071');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `download_title` text NOT NULL,
  `download_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `hide_admin_orders`
--

CREATE TABLE `hide_admin_orders` (
  `hide_id` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hide_admin_orders`
--

INSERT INTO `hide_admin_orders` (`hide_id`, `admin_id`, `order_id`) VALUES
(1, 5, 5),
(2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(6, 1, 'Icon-6', 'nike.jpg'),
(7, 9, 'Icon-6', 'nike.jpg'),
(8, 36, 'Icon-6', 'nike.jpg'),
(9, 37, 'Icon-6', 'nike.jpg'),
(10, 39, 'Icon-6', 'nike.jpg'),
(11, 40, 'Icon-6', 'nike.jpg'),
(12, 41, 'Icon-6', 'nike.jpg'),
(13, 42, 'Icon-6', 'nike.jpg'),
(14, 43, 'Icon-6', 'nike.jpg'),
(15, 44, 'Icon-6', 'nike.jpg'),
(16, 45, 'Icon-6', 'nike.jpg'),
(17, 59, 'Icon-6', 'nike.jpg'),
(18, 61, 'Icon-6', 'nike.jpg'),
(19, 62, 'Icon-6', 'nike.jpg'),
(20, 63, 'Icon-6', 'nike.jpg'),
(21, 53, 'Icon-7', 'apple.jpg'),
(22, 54, 'Icon-7', 'apple.jpg'),
(23, 55, 'Icon-7', 'apple.jpg'),
(24, 56, 'Icon-7', 'apple.jpg'),
(25, 57, 'Icon-7', 'apple.jpg'),
(26, 58, 'Icon-7', 'apple.jpg'),
(27, 13, 'Icon-8', 'hp.jpg'),
(28, 14, 'Icon-8', 'hp.jpg'),
(29, 16, 'Icon-8', 'hp.jpg'),
(30, 46, 'Icon-8', 'hp.jpg'),
(31, 47, 'Icon-8', 'hp.jpg'),
(32, 48, 'Icon-8', 'hp.jpg'),
(33, 17, 'Icon-9', 'dell.png'),
(34, 21, 'Icon-9', 'dell.png'),
(35, 49, 'Icon-9', 'dell.png'),
(36, 50, 'Icon-9', 'dell.png'),
(37, 51, 'Icon-9', 'dell.png'),
(38, 52, 'Icon-9', 'dell.png'),
(39, 2, 'Icon-10', 'adidas.png'),
(40, 3, 'Icon-10', 'adidas.png'),
(41, 5, 'Icon-10', 'adidas.png'),
(42, 6, 'Icon-10', 'adidas.png'),
(43, 7, 'Icon-10', 'adidas.png'),
(44, 8, 'Icon-10', 'adidas.png'),
(45, 22, 'Icon-10', 'adidas.png'),
(46, 23, 'Icon-10', 'adidas.png'),
(47, 24, 'Icon-10', 'adidas.png'),
(48, 25, 'Icon-10', 'adidas.png'),
(49, 26, 'Icon-10', 'adidas.png'),
(50, 27, 'Icon-10', 'adidas.png'),
(51, 28, 'Icon-10', 'adidas.png'),
(52, 29, 'Icon-10', 'adidas.png'),
(53, 30, 'Icon-10', 'adidas.png'),
(54, 31, 'Icon-10', 'adidas.png'),
(55, 32, 'Icon-10', 'adidas.png'),
(56, 33, 'Icon-10', 'adidas.png'),
(57, 34, 'Icon-10', 'adidas.png'),
(58, 35, 'Icon-10', 'adidas.png'),
(59, 60, 'Icon-10', 'adidas.png'),
(60, 64, 'Icon-10', 'adidas.png');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Nike', 'no', 'large.jpg'),
(3, 'Adidas', 'no', 'adidas-blue-logo-png-download-768x614.png'),
(4, 'HP', 'no', 'hp2019.jpg'),
(5, 'Dell', 'no', 'Dell_logo_2016.svg.png'),
(6, 'Apple', 'no', 'apple-image-e1551210288234.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `payment_method` text NOT NULL,
  `order_date` text NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `payment_method`, `order_date`, `order_total`, `order_status`) VALUES
(1, 5, 1649986913, 'Next Day (orders placed before 7pm)', '45.0', 'pay offline', 'June 14, 2019 02:09', '840.0', 'completed'),
(2, 5, 1039465674, 'Next Day (orders placed before 7pm)', '30.0', 'stripe', 'June 14, 2019 03:49', '588.0', 'completed'),
(3, 5, 479982944, 'Next Day (orders placed before 7pm)', '45.0', 'paypal', 'June 14, 2019 04:04', '705.0', 'completed'),
(4, 5, 1295279799, 'Standard 3-5 days', '6.0', 'pay offline', 'June 14, 2019 08:17', '163.0', 'completed'),
(5, 5, 1251904062, 'Standard 3-5 days', '0.0', 'stripe', 'June 14, 2019 22:44', '150.0', 'completed'),
(6, 5, 297794924, 'Standard 3-5 days', '0.0', 'pay offline', 'June 14, 2019 23:21', '1014.0', 'completed'),
(7, 5, 358360292, 'Standard 3-5 days', '0.0', 'pay offline', 'June 14, 2019 23:38', '41570.0', 'completed'),
(8, 5, 502635461, '', '0.0', 'pay offline', 'June 18, 2019 03:05', '1200.0', 'pending'),
(9, 5, 2092811346, '', '0.0', 'pay offline', 'June 18, 2019 03:06', '1225.0', 'pending'),
(10, 5, 821973276, '', '0.0', 'pay offline', 'June 18, 2019 03:08', '2397.0', 'completed'),
(11, 5, 724424925, '', '0.0', 'pay offline', 'June 19, 2019 04:27', '752.0', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `orders_addresses`
--

CREATE TABLE `orders_addresses` (
  `address_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `is_shipping_address_same` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_addresses`
--

INSERT INTO `orders_addresses` (`address_id`, `order_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `is_shipping_address_same`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 1, 'Ahmed', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(2, 2, 'Ahmed', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(3, 3, 'Ahmed', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'no', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(4, 4, 'Ahmed', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'no', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(5, 5, 'Ahmed', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'none', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(6, 6, 'Ahmed ', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(7, 7, 'Ahmed ', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', 'Ahmed', 'Makled', '64', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Governorate of Matrouh Al Bahr Street House No. 20', 'Matrouh ', 'Moursy Matrouh', 33657),
(8, 8, 'Ahmed ', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', '', '', '', '', '', '', '', 0),
(9, 9, 'Ahmed ', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', '', '', '', '', '', '', '', 0),
(10, 10, 'Ahmed ', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', '', '', '', '', '', '', '', 0),
(11, 11, 'Ahmed ', 'Makled', '64', 'The village of La Siffer Street of the canal number house 12', 'The village of La Siffer Street of the canal number house 12', 'Kafr El Sheikh ', 'Desouk', '33657', 'yes', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `item_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`item_id`, `order_id`, `product_id`, `price`, `qty`, `size`) VALUES
(1, 1, 16, '79.0', 5, 'Large'),
(2, 1, 11, '200.0', 2, 'Large'),
(3, 2, 17, '129.0', 2, 'Small'),
(4, 2, 7, '150.0', 2, 'Extra Large'),
(5, 3, 14, '130.0', 2, 'Large'),
(6, 3, 11, '200.0', 2, 'Extra Large'),
(7, 4, 13, '59.0', 1, 'Small'),
(8, 4, 3, '98.0', 1, 'Extra Large'),
(9, 5, 18, '150.0', 1, 'Large'),
(10, 6, 18, '150.0', 2, 'Small'),
(11, 6, 64, '238.0', 3, 'Medium'),
(12, 7, 60, '980.0', 4, 'Large'),
(13, 7, 57, '36000.0', 1, 'Large'),
(14, 7, 34, '550.0', 3, 'Large'),
(15, 8, 59, '1200.0', 1, 'Medium'),
(16, 9, 41, '1225.0', 1, 'Medium'),
(17, 10, 40, '799.0', 3, 'Medium'),
(18, 11, 3, '376.0', 2, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, '447.0', 'UBL/Omni Paisa', 4174, 451, 'June 14, 2019'),
(3, 314788500, '345.0', 'UBL/Omni Paisa', 4174, 451, 'June 14, 2019'),
(4, 1649986913, '840.0', 'Bank Code', 4174, 451, 'June 14, 2019');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_seo_desc` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `product_type` text NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `status`) VALUES
(1, 5, 5, 2, '2019-06-20 20:24:21', 'Nike Dri-FIT Vapor', 'Nike Dri-FIT Vapor', 't-shirt-n3', 'se7.png', 'se8.png', 'se9.png', 1200, 1000, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Nike Dri-FIT Vapor Polo helps you perform at your best with stretchy, sweat-wicking fabric. Bold colour blocking and pearlised buttons freshen up your look.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Standard fit for a relaxed, easy feel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fold-over collar</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">2-button placket</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 94% polyester/6% elastane</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Sail/Black/Indigo Force/Indigo Force</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AV4180-133</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Vietnam</li>\r\n</ul>', '\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/BxjtpdWeGtI\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(2, 4, 3, 3, '2019-06-16 16:30:00', 'Detachable Hood', 'Detachable Hood', 'kids-1', 'co1.png', 'co2.png', 'co3.jpg', 69, 45, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">A two-tone car coat in showerproof cotton twill, updated with a detachable hood and embroidered Burberry lettering.</p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '', 'kids', 'Kids', 'physical_product', '0.2', 'product'),
(3, 4, 3, 3, '2019-06-16 16:37:44', 'Twill car coat', 'Twill car coat', 'kids-2', 'co4.png', 'co5.png', 'co6.png', 376, 378, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">The Burberry Kids collection stays true to its British heritage with designs fusing the line between classic and funky. A car coat in cotton twill with a quilted Vintage check lining and detachable hood, highlighted with a bold logo print.</p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 100%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>', '', 'kids', 'Kids', 'physical_product', '0.2', 'product'),
(5, 7, 2, 3, '2019-06-16 19:46:32', 'La Comparsa insect ', 'La Comparsa insect ', 'jacket-2', 'm10.png', 'm12.png', 'm11.jpg', 259, 100, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Colombian designer Johanna Ortiz invites women to celebrate their sensuality and feminine form. Daring and dramatic, the collection captures her energetic Latin American spirit. This white linen La Comparsa insect print tassel blazer from Johanna Ortiz features notched lapels, shoulder pads, button cuffs, a front button fastening, front welt pockets and a belted waist with tassel details.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;ECCRU BLUES</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">linen/flax 100%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '', 'jacket', 'Jacket', 'physical_product', '1.5', 'product'),
(6, 7, 2, 3, '2019-06-16 20:00:23', 'Slim-fit blazer', 'Slim-fit blazer', 'jacket-3', 'm13.png', 'm14.png', 'm15.png', 96, 110, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Teal cotton slim-fit blazer from Brunello Cucinelli featuring notched lapels, a deep V neck, long sleeves and a front button fastening.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;C175 PAVONE</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"madeIn\">Made in Italy</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 50%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">linen/flax 49%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">spandex/elastane 1%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '', 'jacket', 'Jacket', 'physical_product', '1.5', 'product'),
(7, 4, 2, 3, '2019-06-16 17:39:05', 'Drawstring waist', 'Drawstring waist', 'coats-1', 'coa1.png', 'coa2.png', 'coa3.png', 1900, 1500, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Launched by fashion legacy Carolina Castiglioni - daughter of Marni founder Consuelo Castiglioni - Plan C offers luxurious made-in-Italy apparel for women who love prints and colour. This camel brown cotton blend shoulder strap trench coat features a classic collar, a front button fastening, long wide sleeves, front flap pockets, a drawstring waist and a drawstring hem.</span></p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;00M45 BROWN</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"madeIn\">Made in Italy</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">rayon 64%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 60%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">nylon 40%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 36%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 'coats', 'Coats', 'physical_product', '1.0', 'product'),
(8, 4, 2, 3, '2019-06-16 17:55:48', 'three pocket blazer ', 'three pocket blazer ', 'coats-2', 'm1.png', 'm2.png', 'm3.png', 245, 100, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Launched by fashion legacy Carolina Castiglioni - daughter of Marni founder Consuelo Castiglioni - Plan C offers luxurious made-in-Italy apparel for the woman who loves bold prints and bright colours. Made from a cotton blend, this jacket has long sleeves, a notched collar, an oversized fit, two flap pockets at the hips and one at the chest.</span></p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;00R25 PINK</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"madeIn\">Made in Italy</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">rayon 67%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 60%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">nylon 40%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 33%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n', 'coats', 'Coats', 'physical_product', '1.0', 'product'),
(9, 5, 2, 2, '2019-06-17 00:23:23', 'Women\'s Football Shirt', 'Women\'s Football Shirt\r\n', 't-shirt-n4', 'se11.png', 'se10.png', 'se12.png', 540, 650, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The England 2019 Stadium Home Shirt features team details on highly breathable fabric to help keep you cool and dry on the pitch or in the stands cheering for your team.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Slim fit for a tailored feel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 100% recycled polyester</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: White/Challenge Red</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AJ4392-100</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Thailand</li>\r\n</ul>', '\r\n\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(11, 7, 2, 3, '2019-06-16 19:39:28', ' leather jacket', ' leather jacket', 'jacket-1', 'm8.png', 'bundle2.png', 'bundle1.png', 300, 200, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Launched by fashion legacy Carolina Castiglioni - daughter of Marni founder Consuelo Castiglioni - Plan C offers luxurious made-in-Italy apparel for the woman who loves bold prints and bright colours. Crafted from lamb skin, this white and green leather jacket from Plan C features a drawstring collar with thick rope cord, a front zip fastening, balloon sleeves, elasticated cuffs, front flap pockets, an elasticated hem and an oversized fit.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;00W01 WHITE GREEN</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"madeIn\">Made in Italy</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">viscose 100%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">lamb skin 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">specialist cleaning</dd>\r\n</dl>', '\r\n\r\n<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/A6H5Xx2nFvM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'jacket bundle', 'Jacket', 'physical_product', '2.0', 'bundle'),
(13, 8, 4, 4, '2019-06-17 14:23:58', 'HP Spectre x360', 'HP Spectre x360', 'hp2', 'hp4.png', 'hp5.png', 'hp6.png', 10550, 10550, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">HP Spectre x360 - 13-ap0005ne, i7-8565U 8 MB cache, 8 GB DDR4, 512 GB PCIe NVMe SSD, Intel UHD Graphics 620, 13.3 inch Touch, Windows 10 Home 64, Dark ash silver, 5MK90EA</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand: HP</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Model: 5MK90EA</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Operating System: Windows</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Capacity: 512 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Screen Size: 13.3 Inch</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ram: 8 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Family: Intel 8th Generation Core i7</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Number of Processor Core: Quad Core</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Speed: 1.8 GHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Optical Drive Type: Without Optical Drive</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Laptop Family: Notebook</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Touch Screen: Yes</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card Capacity: Shared - Built in</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ram Type: ddr4_sdram</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Interface: pcie</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Color: Grey</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Power&nbsp;</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n', 'hp', 'Laptop', 'digital_product', '0.0', 'product'),
(14, 8, 4, 4, '2019-06-19 11:21:28', 'HP Notebook 15', 'HP Notebook 15', 'hp3', 'hp7.png', 'hp8.png', 'hp9.png', 15000, 16000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">HP Notebook 15-rb001ne, AMD E2-9000e, 15.6 Inch, 4GB RAM, 500GB, DOS, AMD Radeon R2, Black</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor:&nbsp;Processor family: AMD Dual-Core E-Series processor. AMD Dual-Core E2-9000e (1.5 GHz base frequency, up to 2 GHz burst frequency, 1 MB cache).â€‹</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory:&nbsp;4 GB DDR4-1866 SDRAM (1 x 4 GB).</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard disk capacity:&nbsp;Internal drive 500 GB 5400 rpm SATA.</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card:&nbsp;Integrated: AMD Radeon&nbsp;R2 Graphics.â€‹</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Display: 39.6 cm (15.6\") diagonal HD SVA anti-glare WLED-backlit (1366 x 768).</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n', 'hp', 'Laptop', 'digital_product', '0.0', 'product'),
(16, 8, 4, 4, '2019-06-17 15:09:36', 'HP Pavilion 15', 'HP Pavilion 15-cs1001ne', 'hp5', 'pp1.png', 'pp2.png', 'pp3.png', 17000, 17000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">HP Pavilion 15-cs1001ne Laptop - Intel Core i7-8565U, 1.8 GHz Quad Core, 15.6 inch, 1 TB +128 GB, 16 GB, Windows 10, Silver, En-ar Keyboard</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand : HP</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hardware Platform : Windows</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Color : Silver</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Operating System Type : Windows</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Capacity : 1 TB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Type : Core i7 (8th Generation)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">USB : USB 3.1</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Interface : serial_ata</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Display Size : 15.6 inch</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory Card Reader : Yes</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">RAM Size : 16 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Family : Intel 8th Generation Core i7</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Number of Processor Core : Quad Core</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Video Controller&nbsp;</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n', 'hp', 'Laptop', 'digital_product', '0.0', 'product'),
(17, 8, 4, 5, '2019-06-17 17:04:04', 'Dell 3580 Laptop', 'Dell 3580 Laptop', 'dell1', 'ee1.png', 'ee3.png', 'ee2.png', 20000, 20000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Dell 3580 Laptop, Intel Core i5-8265U, 15.6 Inch, 1 TB, 4 GB RAM, Graphic Card AMD Radeon 2GB, Linux - Black</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand: Dell</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Operating System: Linux</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Capacity: 1 TB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Screen Size Range: 15 - 15.9 Inch</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Display Size: 15.6 Inch</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory Card Reader: Yes</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">RAM Size: 4 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Video Controller Manufacturer: AMD</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory Technology: DDR4</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Laptop Family: Laptop</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Optical Drive Type: HD DVD-Reader/DVD-Writer</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Keyboard Languages: English and Arabic</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card Capacity: AMD Radeon 2GB</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'dell', 'Laptop', 'digital_product', '0.0', 'product'),
(21, 8, 4, 5, '2019-06-17 15:15:33', 'Dell Inspiron 5570 ', 'Dell Inspiron 5570 ', 'dell2', 'dell4.png', 'dell5.png', 'dell6.png', 14500, 14500, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Dell Inspiron 5570 Laptop ,Intel Core I5-8250U, 15.6 FHD, 8GB, 1TB, AMD 2GB, Ubuntu, Black</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor: Intel Core i5-8250U Processor 6M Cache, up to 3.40 GHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory: 8GB DDR4 2400 (8GBx1)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard drive: 1TB 5400 RPM HDD</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card: AMD Radeon 530 GDDR5 2GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Display: 15.6 Inch AG FHD (1920 x 1080)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Optical Drive: DVD RW Tray</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ports: 2 USB 3.1 Gen 1, 1 USB2.0, 1 HDMI, 1.4b, 1 Noble lock, 3-in-1 SD Media Card Reader (SD, SDHC, SDXC)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Audio: MaxxAudio</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'dell', 'Laptop', 'digital_product', '0.0', 'product'),
(22, 5, 5, 3, '2019-06-15 22:03:28', 'Balenciaga T-Shirt', 'Balenciaga continues the brandâ€™s reputation for uncompromising couture offering styles that take the fashion world in a new direction this season. This white graphic print T-shirt is crafted from cotton and features a round neck, ', 'adidas-t-shirt1', 'a2.png', 'a1.png', 'a3.png', 460, 322, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Balenciaga continues the brand&rsquo;s reputation for uncompromising couture offering styles that take the fashion world in a new direction this season. This white graphic print T-shirt is crafted from cotton and features a round neck, short sleeves, an oversized fit and a straight hem.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;9000 - WHITE</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\"><span style=\"text-transform: lowercase;\">Cotton 100%</span></p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">Washing instructions: hand wash</dd>\r\n</dl>', '\r\n\r\n\r\n\r\n\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(23, 5, 5, 3, '2019-06-16 23:51:55', 'POLO RALPH LAUREN', 'POLO RALPH LAUREN', 'adidas-t-shirt2', 'b2.png', 'b1.png', 'b3.png', 193, 193, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Authentic and iconic, Polo Ralph Lauren is a symbol of the modern preppy lifestyle. Combining Ivy League inspiration with All-American sporting style, the collection appeals to all generations. This white cotton block-colour polo shirt from Polo Ralph Lauren features a stand up collar, a front zip half-fastening, long sleeves with red and blue panels, a logo design to the front with American badge, a logo print with American Flag to the back and an elasticated hem and cuffs.</span></p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;WHITE MULTI</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">Washing instructions: dry clean only</dd>\r\n</dl>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/683Ry-jgFDs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(24, 5, 5, 3, '2019-06-16 18:04:48', 'POLO RALPH LAUREN', 'POLO RALPH LAUREN', 'adidas-t-shirt3', 't1.png', 't2.png', 't3.png', 163, 163, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Authentic and iconic, Polo Ralph Lauren is a symbol of the modern preppy lifestyle. Combining Ivy League inspiration with All-American sporting style, the Polo Ralph Lauren collection appeals to all generations. This multicoloured logo print polo shirt from Polo Ralph Lauren features a classic collar, a front button fastening and short sleeves.</span></p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 96%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">spandex/elastane 4%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(25, 5, 5, 3, '2019-06-16 15:46:11', 'POLO RALPH LAUREN', 'POLO RALPH LAUREN', 'adidas-t-shirt4', 'd1.png', 'd2.png', 'd3.png', 97, 97, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Authentic and iconic, Polo Ralph Lauren is a symbol of the modern preppy lifestyle. Combining Ivy League inspiration with All-American sporting style, the Polo Ralph Lauren collection appeals to all generations. This navy blue cotton logo embroidered polo shirt from Polo Ralph Lauren features a classic polo collar, short sleeves and a contrast embroidered logo to the chest.</span></p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product');
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `status`) VALUES
(26, 5, 5, 3, '2019-06-16 15:57:24', 'LACOSTE polo shirt', 'LACOSTE polo shirt', 'adidas-t-shirt5', 'e1.png', 'e2.png', 'e3.png', 133, 96, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">White and blue cotton polo shirt from Lacoste featuring a classic polo collar, contrasting panels, short sleeves and a relaxed fit.</p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(27, 5, 5, 3, '2019-06-16 16:10:22', 'LACOSTE  polo shirt', 'LACOSTE embroidered logo polo shirt', 'adidas-t-shirt6', 'f1.png', 'f2.png', 'f3.png', 91, 91, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Orange cotton embroidered logo polo shirt from Lacoste featuring a classic polo collar, a front button placket, a contrast embroidered logo at the chest, short sleeves and a straight hem.</p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n\r\n\r\n\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(28, 4, 3, 3, '2019-06-16 16:43:48', 'Perforated Hooded', 'Perforated Hooded', 'kids-2', 'co7.jpg', 'co8.png', 'co9.jpg', 313, 300, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">This pearl rose Logo Print Perforated Hooded Jacket from Burberry Kids features a hood, a front zip fastening, long sleeves, an elasticated hem, a perforated style, side slit pockets and a central printed logo.</span></p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 100%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyamide 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n', 'kids', 'Kids', 'physical_product', '0.2', 'product'),
(29, 6, 5, 3, '2019-06-16 17:11:53', 'x Greg Lauren', 'x Greg Lauren', 'sweater-1', 'sw1.jpg', 'sw2.png', 'sw3.png', 2591, 2591, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Inspired by Navajo-style iconography, Italian label Alanui takes knitwear to new levels with their colourful jacquard designs and expert craftsmanship. Designed in collaboration with Gret Lauren, this icon intarsia cashmere kimono from Alanui features long sleeves, a belted waist, a shawl collar with a distressed denim trim and a fringed hem.</p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cashmere 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '\r\n\r\n', 'sweater', 'Sweater', 'physical_product', '0.2', 'product'),
(30, 6, 5, 3, '2019-06-16 17:18:09', 'Kimono Cardigan', 'Kimono Cardigan', 'sweater-2', 'swe4.jpg', 'swe5.png', 'swe6.jpg', 3269, 3269, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Multicoloured cashmere Greg Lauren x Alanui Icon Kimono Cardigan from Alanui featuring a v-neck, rectangular lapels, a belted waist, long sleeves, a fringed hem, contrasting panels and an abstract pattern.</span></p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cashmere 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '\r\n\r\n', 'sweater', 'Sweater', 'physical_product', '0.2', 'product'),
(31, 6, 5, 3, '2019-06-16 17:25:18', 'Navajo-style stripes', 'Navajo-style stripes', 'sweater-3', 'swe7.jpg', 'swe8.png', 'swe9.jpg', 2963, 2963, '<div class=\"_619010\" style=\"box-sizing: inherit; width: 823.313px; position: relative; margin-bottom: 2.4rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"cardInfo-description\">X Greg Lauren denim and cashmere patch cardigan</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"cardInfo-description\"><span style=\"font-size: inherit;\">Blue and green X Greg Lauren denim and cashmere patch cardigan from Alanui.</span></p>\r\n</div>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cashmere 100%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>', '\r\n\r\n', 'sweater', 'Sweater', 'physical_product', '0.2', 'product'),
(32, 4, 2, 3, '2019-06-17 14:38:50', 'SHRIMPS textured floral', 'SHRIMPS textured floral new', 'coats-3', 'm4.png', 'm5.png', 'm6.png', 518, 518, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Multicolour textured floral print coat from Shrimps featuring a short length.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;Sand multi</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">modacrylic 70%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">viscose 65%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">acetate 35%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">acrylic 30%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '\r\n\r\n\r\n\r\n', 'coats', 'Coats', 'physical_product', '1.0', 'product'),
(33, 7, 5, 3, '2019-06-16 20:54:21', 'Sports Jacket', 'sports jacket', 'jacket-4', 'm16.png', 'm17.png', 'm18.png', 450, 500, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">MSGM create pieces with a sporty aesthetic and a streetwear-inspired edge. With athleisure being a major trend last season and no sign of it dissipating, this AW17 the brand has continued with a blend of luxury fashion with an element of casual leisure-wear in it&rsquo;s collection. This black and white cotton blend colour-block sports jacket from MSGM features a stand up collar, dropped shoulders, long sleeves, elasticated cuffs, a front zip fastening, an elasticated hem, an orange band to each sleeve and a patterned stripe detail.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;99</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"madeIn\">Made in Italy</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyamide 72%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 28%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">hand wash</dd>\r\n</dl>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '1.5', 'product'),
(34, 7, 5, 3, '2019-06-16 23:01:55', 'Zip-up jacket', 'zip-up jacket', 'jacket-5', 'm20.png', 'm21.png', 'm22.png', 550, 770, '<p><span style=\"color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">Multicoloured logo zip-up jacket from Fila featuring a hood with drawstring tie fastenings, a front zip fastening, long sleeves, two chest pockets, a printed logo to the front, a ribbed hem and cuffs and a relaxed fit.</span></p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;B22 WHITE/ PEACOAT</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyamide 100%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '1.5', 'product'),
(35, 7, 5, 3, '2019-06-16 23:14:45', 'Chevron blazer', 'chevron blazer\r\n', 'jacket-6', 'm30.png', 'm31.png', 'm32.png', 1000, 1200, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">A brand with tradition and family at its core, Tagliatore presents elegant tailoring and flattering silhouettes through their ever-evolving collections. This blue cotton and linen blend chevron blazer from Tagliatore will surely make a sophisticated addition to your SS19 wardrobe. Featuring notched lapels, a front button fastening, a chest pocket, front welt pockets and a double vent to the rear.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;I1092</p>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"madeIn\">Made in Italy</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Lining:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">linen/flax 52%</dd>\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Outer:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 48%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">dry clean only</dd>\r\n</dl>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '1.5', 'product'),
(36, 5, 5, 2, '2019-06-16 23:49:55', 'NikeCourt Dri-FIT', 'NikeCourt Dri-FIT\r\n', 't-shirt-n1', 'se1.png', 'se2.png', 'se3.png', 300, 320, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The NikeCourt Dri-FIT Polo upgrades your court look with soft, stretchy fabric and a French-inspired print. The shoulder seams are rolled back so you can serve and make overhead hits with ease.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Slim fit for a tailored feel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">2-button placket</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Curved hem</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 100% recycled polyester</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Nightshade/Canyon Gold</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AO0315-304</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Cambodia</li>\r\n</ul>', '\r\n\r\n<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/VW4sLkPZUUc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(37, 5, 5, 2, '2019-06-16 23:57:50', 'NikeCourt Dri-FIT', 'NikeCourt Dri-FIT\r\n', 't-shirt-n2', 'se4.png', 'se5.png', 'se6.png', 420, 320, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">Hit the court in total comfort in the NikeCourt Dri-FIT Polo. Breathable, sweat-wicking fabric helps you stay dry, while a striped collar and an adjustable placket provide a polished look.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Standard fit for a relaxed, easy feel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">2-button placket</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 100% polyester</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: White/Black/Black</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: BV1194-100</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Thailand</li>\r\n</ul>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(38, 5, 2, 2, '2019-06-17 00:28:17', 'China Stadium Away', 'China 2019 Stadium Away\r\n', 't-shirt-n5', 'se13.png', 'se15.png', 'se14.png', 270, 250, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The China 2019 Stadium Away Shirt features team details on highly breathable fabric to help keep you cool and dry on the pitch or in the stands cheering for your team.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Slim fit for a tailored feel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 100% recycled polyester</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Wolf Grey/Hyper Crimson</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: CJ4784-012</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Indonesia</li>\r\n</ul>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(39, 5, 2, 2, '2019-06-17 00:38:30', 'Hurley Cryptik', 'Hurley Cryptik\r\n', 't-shirt-n6', 'se20.png', 'se21.png', 'se22.png', 880, 920, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Hurley Cryptik Top is made in collaboration with renowned street artist Cryptik. It features a beautifully intricate script print on soft fabric for comfortable confidence all day long.</p>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Hurley Cryptik Top is made in collaboration with renowned street artist Cryptik. It features a beautifully intricate script print on soft fabric for comfortable confidence all day long.</p>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(40, 7, 5, 2, '2019-06-17 01:10:30', 'Nike SB Shield', 'Nike SB Shield', 'jacket11', 'it1.png', 'it2.png', 'it3.png', 799, 899, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Nike SB Shield Men\'s Skateboarding Jacket features weather-resistant fabric and adjustable details to help block the elements while you skate.</p>', '<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Fabric: Face of body fabric: 100% polyester. Back of body fabric: 100% nylon.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Colour Shown: Obsidian/Phantom</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Style: 938478-451</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Country/Region of Origin: China</li>\r\n</ul>', '\r\n\r\n\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '0.2', 'product'),
(41, 7, 5, 2, '2019-06-17 01:09:41', 'Nike Dri-FIT', 'Nike Dri-FIT\r\n', 'jacket-10', 'it4.png', 'it5.png', 'it6.png', 1225, 1225, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Nike Dri-FIT Jacket features sweat-wicking fabric and ergonomic seams to help keep you dry, comfortable and moving freely.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Standard fit for a relaxed, easy feel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: Body: 100% polyester. Mesh: 100% recycled polyester.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Black/Black/Metallic Hematite</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: 928010-013</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Vietnam,Thailand,Indonesia</li>\r\n</ul>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '0.2', 'product'),
(42, 7, 2, 2, '2019-06-17 02:40:47', 'Nike Sportswear NSW', 'Nike Sportswear NSW\r\n', 'jacket13', 'is1.png', 'is4.png', 'is2.png', 2999, 2999, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">When it comes to style, the Nike Sportswear NSW Jacket is no drill. Inspired by coaches\' jackets, this timeless design buttons you up in chic coverage with an extended hem and durable canvas fabric.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Loose fit for an oversized, roomy cut</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">1/4 zip</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: Body: 100% polyester. Mesh: 100% recycled polyester.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Black/Black/Club Gold</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AR3175-010</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: China</li>\r\n</ul>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '0.5', 'product'),
(43, 7, 2, 2, '2019-06-17 02:46:16', 'Nike Sportswear', 'Nike Sportswear\r\n', 'jacket14', 'is13.png', 'is14.png', 'is15.png', 2650, 2650, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">Feed your wild side in the versatile Nike Sportswear Animal Print Windbreaker, which combines old-school design lines inspired by windbreakers with a fierce print on the back.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Loose fit for an oversized, roomy cut</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">1/4 zip</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: Body: 100% polyester. Mesh: 100% recycled polyester.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Black/Black/Club Gold</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AR3175-010</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: China</li>\r\n</ul>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '0.5', 'product'),
(44, 6, 2, 2, '2019-06-17 03:00:25', 'Sportswear Tech Fleece', 'Nike Sportswear Tech Fleece\r\n', 'sweater-4', 'bio1.png', 'bio2.png', 'bio3.png', 4500, 4500, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">High-tech fleece meets high style in the Nike Sportswear Tech Fleece Women\'s Full-Zip Cape. Made with lightweight Nike Tech Fleece fabric, it has a drop-tail hem and keeps you warm in any season.</p>', '<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Fabric: Solid/heather yarn dye: Body/lining: 67% cotton/33% polyester. Pocket bags: 100% cotton. Solid/heather piece dye/fibre dye: Body: 69% cotton/31% polyester.&nbsp;Pocket bags: 100% cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Colour Shown: Rose Gold/White</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Style: 930757-605</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Country/Region of Origin: Cambodia</li>\r\n</ul>', '\r\n\r\n', 'sweater', 'Sweater', 'physical_product', '0.5', 'product');
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `status`) VALUES
(45, 6, 3, 2, '2019-06-17 03:05:03', 'Nike Dri-FIT Therma', 'Nike Dri-FIT Therma\r\n', 'kids-4', 'bio7.png', 'bio9.png', 'bio8.png', 1220, 1220, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Nike Dri-FIT Therma Older Kids\' (Boys\') Full-Zip Training Hoodie features lightweight thermal fabric for warm coverage at training or play.</p>', '<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Fabric: 100% polyester</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Colour Shown: Blue Void/Pure/Blue Void/Blue Hero</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Style: 939851-478</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Country/Region of Origin: China</li>\r\n</ul>', '\r\n\r\n', 'kids', 'Kids', 'physical_product', '0.3', 'product'),
(46, 8, 4, 4, '2019-06-17 14:17:26', 'HP 15-da1018ne', 'HP 15-da1018ne', 'hp-1', 'hp1.png', 'hp2.png', 'hp3.png', 9500, 8990, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">HP 15-da1018ne, Intel&nbsp; i5-8265U 6 MB cache, 8 GB DDR4, 1 TB SATA, NVIDIA GeForce MX130&nbsp; 4 GB, 15.6 Inch, DOS - Jet Black, 4FK12EA</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand: HP</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Model: 4FK12EA</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Operating System: DOS</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Capacity: 1 TB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Screen Size: 15.6 Inch</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ram: 8 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Family: Intel 8th Generation Core i5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Number of Processor Core: Quad Core</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Speed: 1.6 GHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Optical Drive Type: DVD-Writer</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Laptop Family: Notebook</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Touch Screen: No</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card Capacity: 4 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ram Type: ddr4_sdram</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Interface: serial_ata</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Color: Black</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Power supply type: 65 W AC</li>\r\n</ul>', '\r\n\r\n<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/sSgqyd2Mcdc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'hp', 'Laptop', 'digital_product', '0.0', 'product'),
(47, 8, 4, 4, '2019-06-17 14:36:59', 'HP 15-rb003ne', 'HP 15-rb003ne', 'hp4', 'hp10.png', 'hp11.png', 'hp12.png', 18000, 20000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">HP 15-rb003ne Notebook, AMD APU A4, 15.6 Inch, 500 GB, 4 GB RAM, Graphic Card Shared - Built in, Free Dos - Black</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Microprocessor :AMD Dual-Core A4-9120 APU (2.2 GHz base frequency, up&nbsp;</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory, standard: 4 GB DDR4-1866 SDRAM (1 x 4 GB)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Video graphics: AMD Radeon&trade; R3 Graphics</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard drive: 500 GB 5400 rpm SATA</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Optical drive: DVD-Writer</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Display: 39.6 cm (15.6\") diagonal HD SVA anti-glare micro-edge WLED-backlit (1366 x 768)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Wireless connectivity: 802.11b/g/n (1x1) Wi-Fi&reg; and Bluetooth&reg; 4.0 combo</li>\r\n</ul>', '\r\n\r\n', 'hp', 'Laptop', 'digital_product', '0.0', 'product'),
(48, 8, 4, 4, '2019-06-17 17:39:10', 'HP ENVY - 13', 'HP ENVY - 13', 'hp6', 'hp16.png', 'hp17.png', 'hp18.png', 17800, 17800, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">HP ENVY - 13-ah1004ne, i7-8565U 8 MB cache, 16 GB LPDDR3, 1 TB PCIe SSD, NVIDIA GeForce MX150 2 GB GDDR5, &nbsp; 13.3 inch, Windows 10 Home 64, Natural silver, 5QZ62EA</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand: HP</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Model: 5QZ62EA</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Operating System: Windows</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Capacity: 1 TB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Screen Size: 13.3 Inch</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ram: 16 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Family: Intel 8th Generation Core i7</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Number of Processor Core: Quad Core</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Speed: 1.8 GHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Optical Drive Type: Without Optical Drive</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Laptop Family: Notebook</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Touch Screen: No</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card Capacity: 2 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Ram Type: ddr3_sdram</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Interface: pcie</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Color: Silver</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Power supply type</li>\r\n</ul>', '\r\n\r\n\r\n\r\n', 'hp', 'Laptop', 'digital_product', '0.0', 'product'),
(49, 8, 4, 5, '2019-06-17 15:36:26', 'Dell Inspiron 3670', 'Dell Inspiron 3670', 'dell3', 'dell10.png', 'dell11.png', 'dell12.png', 24000, 24000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Dell Inspiron 3580 Ci5-8265U 4GB 1TB VGA 2GB Radeon 520 DOS Black</h1>', '<ul class=\"generatedBullets\" style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Computer CPU Manufacturer : Intel Ci5-8265U</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">External Product ID : 192651155965</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Interface : SATA</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Disk Interface : SATA</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Speed (GHz) : 2.1-3.7 GHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Model Number : Dell Inspiron 3580</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hardware Platform : DOS</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Type : Core i5 (8th Generation)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">USB : USB 3.1</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand : Dell</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Laptop Family : Laptop</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Video Controller Manufacturer : AMD</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card Capacity : 2 GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory Card Reader</li>\r\n</ul>', '\r\n\r\n', 'dell', 'Laptop', 'digital_product', '0.0', 'product'),
(50, 8, 4, 5, '2019-06-17 17:36:14', 'Dell Notebook Inspiron', 'Dell Notebook Inspiron', 'dell4', 'dell26.1_1.png', 'dell27.png', 'dell24.png', 22000, 22000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Dell Notebook Inspiron 14 5000 Series 2 in 1, 5482, 8th Gen i7-8565U, 14 Inch, 256 GB, 8 GB Ram, Windows 10 Home - Platinum Silver</h1>', '<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor: 8th Generation Intel&nbsp;Core&nbsp;i7-8565U Processor (8MB Cache, up to 4.6 GHz)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Operating System: Windows 10 Home 64-bit English&nbsp;&nbsp;</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Video Card: NVIDIA MX130</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory: 8GB, 1x8GB, DDR4, 2666MHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Hard Drive: 256GB M.2 PCIe NVMe Solid State Drive</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Display: 14.0 Inch FHD 1920 x 1080 LED-Backlit Touch Display IPS Pen-Enabled</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Ports and Slots:</p>\r\n<ul style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">SD card</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">USB 2.0</li>\r\n</ul>', '\r\n\r\n\r\n\r\n', 'dell', 'Laptop', 'digital_product', '0.0', 'product'),
(51, 8, 4, 5, '2019-06-17 17:35:58', 'Dell Xps 15-9570', 'Dell Xps 15-9570', 'dell5', 'dell40.png', 'dell41.png', 'dell42.png', 13200, 13200, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Dell Xps 15-9570 Notebook, Intel Core I7-8750H, 15.6 Uhd Touchscreen, 32Gb, 1Tb Ssd, GTX 4G, Windows 10 Pro - Black</h1>', '<ul>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Processor: 8th Generation Intel Core i7-8750H Hexa Core Processor (9M Cache, up to 4.1 GHz)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Operating System Windows 10 Pro 64-bit</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Memory 32 GB DDR4-2666MHz, 2x16GB</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Hard Drive 1TB M.2 2280 PCIe Solid State Drive</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Graphics Card NVIDIA - GeForce - GTX 1050Ti with 4GB GDDR5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Display 15.6Inch 4K Ultra HD (3840 x 2160) InfinityEdge Anti-Reflective Touch IPS 100%</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">Ports:</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: 13px; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif;\">2 USB 3.1 Gen 1</li>\r\n</ul>', '\r\n\r\n\r\n\r\n', 'dell', 'Laptop', 'digital_product', '0.0', 'product'),
(52, 8, 4, 5, '2019-06-17 17:35:42', 'Dell 2 in 1', 'Dell 2 in 1', 'dell6', 'dell50.png', 'dell51.png', 'dell52.png', 40000, 40000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Dell 2 in 1 ,1 TB,32 GB RAM,Intel 8th Generation Core i7,Windows,Grey - Inspiron 13 5000 Series 2-in-1 5379</h1>', '<ul class=\"generatedBullets\" style=\"box-sizing: inherit; line-height: 1.6; margin: 0px 0px 1rem 1.25rem; padding: 0px; list-style-position: outside; color: #0a0a0a; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Speed (GHz) : 4.0 GHz</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Model Number : Inspiron 13 5000 Series 2-in-1 5379</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Processor Type : Core i7 (8th Generation)</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">USB : USB 2.0 &amp; 3.0</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand : Dell</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Laptop Family : 2 in 1</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Video Controller Manufacturer : Intel</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Graphics Card Capacity : Shared - Built in</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory Card Reader : Yes</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Keyboard Languages : English</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Touch screen : Yes</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Usage : Multi</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Memory Technology : DDR4</li>\r\n<li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Screen Size Range : 13 - 13.9</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n', 'dell', 'Laptop', 'digital_product', '0.0', 'product'),
(53, 8, 4, 6, '2019-06-19 11:22:09', 'Latest Apple MacBook', 'Latest Apple MacBook', 'apple1', 'app1.png', 'app2.png', 'app3.png', 35000, 35000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Latest Apple MacBook Air with Touch ID MRE92 Laptop - Intel Core i5-8th Gen, 13.3-Inch with Retina, 256GB SSD, 8GB, Eng-KB, MacOS, Space Grey, International Version</h1>', '<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"medium-6 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 477px; float: left;\">&nbsp;</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"medium-12 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 954px; float: left;\">\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: inherit; text-transform: none;\">The Apple MacBook Air is a perfect modern-day notebook for handling daily computational tasks. The deadly combination of 13.3inch retina display and stereo speakers transport you to the whole new world of entertainment. Call your loved ones without missing out on any details, thanks to the FaceTime HD camera and three microphones. With a long-lasting battery, this Apple Air MacBook keeps you entertained even on the go. The SSD storage of 256GB ensures fast loading of data. It features a macOS operating system that offers reliability and various high-utility features. With the 8GB onboard memory, experience brisk multitasking like never before. The Intel UHD Graphics 617 elevates your gaming experience by delivering crystal-clear images. The Intel Core i5 processor lets you speed through daily activities without a hint of lag. Its aluminum alloy body and slim design grabs the attention of the people around. Plus, the combination of the Touch ID sensor and T2 security chip takes care of the security aspect. The two Thunderbolt ports allow you to transfer files and connect various storage and media devices.</p>\r\n</div>\r\n</div>', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'apple', 'Laptop', 'digital_product', '0.0', 'product'),
(54, 8, 4, 6, '2019-06-17 17:35:11', 'Apple MacBook Pro', 'Apple MacBook Pro', 'apple2', 'app4.png', 'app5.png', 'app6.png', 33000, 32000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Apple MacBook Pro 2016 Laptop With Touch Bar MLH32 - Intel Core i7 2.6GHz, 15 Inch, 256GB SSD, 16GB RAM, 2GB VGA Radeon Pro 450, English Keyboard, macOS, Space Gray - International Version</h1>', '<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"large-6 medium-6 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 477px; float: left;\">&nbsp;</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"large-12 medium-12\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; width: 954px;\">\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: inherit; text-transform: none;\">Apple Macbook Pro is a stunner in terms of looks and performance. This Apple MacBook introduces the Touch Bar to its keyboard and also comes with a Touch ID.The Apple MacBook Pro MLH32LL A Laptop steals the show, beating some of the best laptops available in the market today. This Apple MacBook Pro has a 15.4inch LED LED backlit Retina display that is the epitome of image clarity and smoothness. It runs on macOS Sierra that powers everything you do and comes along with a range of creative and productive apps. Driving the performance of this Apple laptop is the 2.6GHz Intel Core i7 processor, which in conjunction with the 16GB of RAM, gives you a seamless operating experience. Another outstanding introduced in this model is the Touch Bar with integrated Touch ID sensor. Also, it equips a Radeon Pro 450 graphics processor with 2GB VGA memory and automatic graphics switching for an unparalleled performance. The combination of high end technology, a smart exterior, and exciting features, make this Apple MacBook Pro laptop a must have product. This Apple laptop is available in a stunning space gray finish.</p>\r\n</div>\r\n</div>', '\r\n\r\n\r\n\r\n', 'apple', 'Laptop', 'digital_product', '0.0', 'product'),
(55, 8, 4, 6, '2019-06-17 17:34:55', 'Apple MacBook  MR932', 'Apple MacBook  MR932', 'apple3', 'app7.png', 'app8.png', 'app9.png', 28000, 28000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Apple MacBook Pro MR932 with Touch Bar and Touch ID Laptop -8th Gen-Intel Core i7,2.2Ghz, 15.4-Inch, 256GB SSD,16GB, 4GB VGA-Radeon Pro 555x,Eng-KB, macOS, Space Gray, International Version</h1>', '<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"columns medium-6\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 477px; float: left;\">&nbsp;</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"columns medium-12\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 954px; float: left;\">\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: inherit; text-transform: none;\">The Apple MacBook Pro is engineered to deliver a powerful performance. With a perfect combination of 2.2GHz 8th Gen-Intel Core i7 processor and a 16GB RAM, you can expect high performance on a consistent basis. Enjoy gaming to the fullest with the 4GB VGA-Radeon Pro 555x GPU. This GPU allows you to play even high-end games without any lag. The macOS makes this laptop a user-friendly device that can work well with all your other Apply devices. The 256GB SSD provides sufficient space for storing your data effectively, and allows for quick loading of data. With the Apple T2 chip, this MacBook keeps all your data safe and secured. Also, its Touch ID security function restricts unknown users from accessing your laptop. With a 15.4inch screen and the True Tone technology, the laptop takes your movie viewing experience to the next level. The balanced and high-fidelity sound of this laptop delivers an excellent audio performance. This space grey-colored laptop has a beautiful and captivating design.</p>\r\n</div>\r\n</div>', '\r\n\r\n\r\n\r\n', 'apple', 'Laptop', 'digital_product', '0.0', 'product'),
(56, 8, 4, 6, '2019-06-17 19:56:26', 'Apple MacBook 2019', 'Apple MacBook ', 'apple4', 'app100.png', 'app101.png', 'app97.png', 39000, 39000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Apple MacBook Air with Touch ID MREE2 Laptop - Intel Core i5-8th Gen, 13.3-Inch with Retina, 128GB SSD, 8GB, Eng-KB, MacOS, Gold, International Version</h1>', '<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"medium-6 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 477px; float: left;\">&nbsp;</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"medium-12 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 954px; float: left;\">\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: inherit; text-transform: none;\">The Apple MacBook Air simplifies your daily computational tasks. It features a powerful Intel Core i5 processor that delivers fast and efficient performance. The onboard memory of 8GB loads even the high-end games and apps with ease. Moreover, the 128GB SSD speeds up the in-app loading. Enjoy flawless gaming with Intel UHD Graphics 617. Furthermore, the macOS offers excellent overall security to your Apple laptop. Enjoy your favorite content for hours even on the go, thanks to the long lasting battery of this Apple laptop. Enjoy crystal-clear audio and images during calls with FaceTime HD camera and three microphones. The 13.3inch retina display coupled with stereo speakers enhance your overall audio video experience. This Apple i5 MacBook is 15.6mm thin and light in weight. This enables you to carry it almost anywhere you go. Not only does it deliver exceptional performance but is also secure, thanks to the Touch ID sensor and T2 security chip. With Bluetooth 4.2 and WiFi connectivity, it offers reliable connectivity. The backlit keyboard lets you type without any hassle even in the low light environment.</p>\r\n</div>\r\n</div>', '\r\n\r\n\r\n\r\n', 'apple', 'Laptop', 'digital_product', '0.0', 'product'),
(57, 8, 4, 6, '2019-06-17 19:55:42', 'Apple MacBook 2018', 'Apple MacBook 2018', 'apple5', 'app99.png', 'app97.png', 'app22.png', 36000, 36000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Apple MacBook Pro With Touch Bar and Touch ID MPXW2 Laptop - Intel Core i5, 3.1 Ghz Dual Core, 13-Inch, 512GB SSD, 8GB, English Keyboard, Mac OS Sierra, Space Gray - International Version</h1>', '<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"large-6 medium-6 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 477px; float: left;\">&nbsp;</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"large-12 medium-12 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 954px; float: left;\">\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: inherit; text-transform: none;\">Apple MacBook Pro delivers a smooth and fast operational speed with its Intel Core i5 Dual-Core processor. Buy this Apple MacBook laptop at souq.com.Classy and lightweight, the Apple MPXW2 MacBook Pro with Touch Bar and Touch ID Laptop is here to steal the show. It is preinstalled with macOS Sierra operating system, which enriches your user experience with many advanced and innovative features. This device incorporates a 3.1GHz, Intel Core i5 Dual-Core processor that makes multitasking smooth and seamless. With its massive internal storage and 8GB RAM module, you have the freedom to load all your favorite and needed apps, movies, photos, songs, PDFs, and so much more. This Apple MacBook laptop has an Intel Iris Plus Graphics 650 graphics card that runs all graphic-intensive games and apps at an attractive frame rate. This laptop is fitted with a long lasting battery that keeps you going for hours on a single charge. It has a 13inch screen engineered with IPS technology, which allows for vivid colors and looks amazing from almost all angles. It also has stereo speakers that offer an incredible audio output. The integrated webcam along with the built-in microphones provide you clear, face to face experience while video chatting with your loved ones. The Thunderbolt ports offer an amazing transfer speed. This Apple laptop has a full-size backlit keyboard with ambient light sensor that lets you work comfortably even in the darkest of environments. It is available in a beautiful space gray color and flaunts a sleek design that will surely catch everybody&rsquo;s attention instantly. This Apple MacBook laptop not only charms you with its looks but also delivers a flagship-grade performance.</p>\r\n</div>\r\n</div>', '\r\n\r\n\r\n\r\n', 'apple', 'Laptop', 'digital_product', '0.0', 'product'),
(58, 8, 4, 6, '2019-06-17 17:59:43', 'Apple MacBook Air', 'Apple MacBook Air', 'apple6', 'app24.png', 'app25.png', 'app26.png', 41000, 41000, '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: inherit; text-rendering: optimizelegibility; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-weight: bold; margin: 0.2rem 0px 0.357143rem; padding: 0px; font-style: normal; color: #222222; line-height: 1.4; font-size: 1.28571rem; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Apple MacBook Air with Touch ID MREE2 Laptop - Intel Core i5-8th Gen, 13.3-Inch with Retina, 128GB SSD, 8GB, Eng-KB, MacOS, Gold, International Version</h1>', '<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"medium-6 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 477px; float: left;\">&nbsp;</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: inherit; margin: 0px -1.07143rem; padding: 0px; max-width: 71.4286rem; color: #333333; font-family: opensans, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"medium-12 columns\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 1.07143rem; width: 954px; float: left;\">\r\n<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin: 0px 0px 0.714286rem; padding: 0px; font-size: inherit; text-transform: none;\">The Apple MacBook Air simplifies your daily computational tasks. It features a powerful Intel Core i5 processor that delivers fast and efficient performance. The onboard memory of 8GB loads even the high-end games and apps with ease. Moreover, the 128GB SSD speeds up the in-app loading. Enjoy flawless gaming with Intel UHD Graphics 617. Furthermore, the macOS offers excellent overall security to your Apple laptop. Enjoy your favorite content for hours even on the go, thanks to the long lasting battery of this Apple laptop. Enjoy crystal-clear audio and images during calls with FaceTime HD camera and three microphones. The 13.3inch retina display coupled with stereo speakers enhance your overall audio video experience. This Apple i5 MacBook is 15.6mm thin and light in weight. This enables you to carry it almost anywhere you go. Not only does it deliver exceptional performance but is also secure, thanks to the Touch ID sensor and T2 security chip. With Bluetooth 4.2 and WiFi connectivity, it offers reliable connectivity. The backlit keyboard lets you type without any hassle even in the low light environment.</p>\r\n</div>\r\n</div>', '\r\n\r\n', 'apple', 'Laptop', 'digital_product', '0.0', 'product');
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `status`) VALUES
(59, 5, 5, 2, '2019-06-17 19:11:29', 'Hurley Dri-FIT Coronado', 'Hurley Dri-FIT Coronado\r\n', 't-shirt-n30', 'dr1.png', 'dr2.png', 'dr3.png', 1200, 1300, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Hurley Dri-FIT Coronado Polo features sweat-wicking technology and space-dyed yarns for a textured look that keeps you cool and comfortable all day long.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Pulled-forward shoulder seams</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">2-button placket</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Front chest embroidery</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 59% cotton/41% polyester</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Dark Charcoal Heather</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AR7114-045</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Spain</li>\r\n</ul>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(60, 7, 5, 3, '2019-06-17 19:24:56', 'Nhill-TM denim jacket', 'Nhill-TM denim jacket\r\n\r\n', 'jacket-20', 'dr4.png', 'dr5.png', 'dr6.jpg', 980, 980, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Revive your casual wear with this blue cotton Nhill-TM denim jacket from Diesel. Featuring a pointed collar, a front button fastening, long sleeves, button cuffs, ripped details, two chest pockets, side pockets, a straight hem, bandana-printed under patches and reflective bands to the chest.</p>', '<div style=\"box-sizing: inherit; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem;\">\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: inherit; line-height: 2.21rem;\" data-tstid=\"designerColor\">Colour:&nbsp;01</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '0.1', 'product'),
(61, 5, 2, 2, '2019-06-17 23:23:37', 'Hurley Badlands 2018', 'Hurley Pendleton Badlands\r\n', 't-shirt-n33', 'eng7.png', 'eng8.png', 'eng9.png', 750, 750, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Hurley Pendleton Badlands Tank delivers soft cotton in a biker tank silhouette. It features an iconic Pendleton print as part of our Pendleton x Hurley National Park Collection.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">24.25\"/62cm HPS (high point shoulder)</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Ribbed neckband and armholes</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Hurley icon clip label</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Signature Pendleton branding</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 100% cotton</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Armoury Navy</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: AV4136-434</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Spain</li>\r\n</ul>', '\r\n\r\n\r\n\r\n\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(62, 5, 2, 2, '2019-06-17 19:40:40', 'Hurley Dwellers Pocket', 'Hurley Dwellers Pocket\r\n', 't-shirt-n34', 'dr10.png', 'dr11.png', 'dr12.png', 867, 867, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">The Hurley Dwellers Pocket T-Shirt features soft cotton with a cropped cut and cool graphic for effortless comfort and style.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Relaxed fit</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">20.5\" (52cm approx.) HPS</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: 100% cotton</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Colour Shown: Spruce Fog</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: BQ0458-339</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Country/Region of Origin: Spain</li>\r\n</ul>', '\r\n\r\n', 't-shirt', 'T-Shirt', 'physical_product', '0.1', 'product'),
(63, 7, 2, 2, '2019-06-17 19:51:01', 'Nike Sportswear NSW', 'Nike Sportswear NSW\r\n', 'jacket-30', 'dr13.png', 'dr14.png', 'dr15.png', 843, 843, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\">Delivering lightweight warmth, the Nike Sportswear NSW Women\'s Parka redefines the Nike MA-1 bomber with multiple oversized pockets, elongated ribbing and a long, relaxed design.</p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: none; color: #111111;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Fabric: Body: 100% nylon. Rib: 99% polyester/1% elastane. Lining/fill: 100% polyester.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Zip pocket on the left arm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Imported</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #111111;\"><span class=\"headline-baseline-base\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: 1.75; vertical-align: baseline;\">More Details</span></p>\r\n<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Fabric: Body: 100% nylon. Rib: 99% polyester/1% elastane. Lining/fill: 100% polyester.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Durable ribbing on the cuffs, collar and hem helps keep the parka in place</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Machine wash</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Imported</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Colour Shown: String/Phantom</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Style: 932049-221</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; position: relative; list-style-type: none; color: #111111;\">Country/Region of Origin: China</li>\r\n</ul>', '\r\n\r\n', 'jacket', 'Jacket', 'physical_product', '0.3', 'product'),
(64, 4, 5, 3, '2019-06-17 20:18:43', 'Hooded coat', 'hooded coat\r\n\r\n', 'coats25', 'man1.png', 'man2.png', 'man3.png', 238, 235, '<div class=\"_87b3a2\" style=\"box-sizing: inherit; margin-bottom: 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<p class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-tstid=\"fullDescription\">Light blue hooded coat from Stutterheim. This item is unisex. This item fits large, please select the next size down.</p>', '<p style=\"box-sizing: inherit; margin: 0px; font-size: 15px; line-height: 2.21rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif;\">Composition</p>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">pvc 100%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">cotton 52%</dd>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">polyester 48%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: #222222; font-family: Polaris-Book, Helvetica, Arial, sans-serif; font-size: 15px;\">\r\n<dt class=\"_08f981\" style=\"box-sizing: inherit; margin-right: 0.6rem; clear: left; float: left;\">Washing instructions:</dt>\r\n<dd class=\"b4172d\" style=\"box-sizing: inherit; margin-left: 0px; text-transform: lowercase;\">machine wash</dd>\r\n</dl>', '\r\n\r\n\r\n\r\n', 'coats', 'Coats', 'physical_product', '0.2', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'm4.png'),
(5, 'T-Shirts', 'no', 't2.png'),
(6, 'Sweater', 'no', 'sw1.jpg'),
(7, 'jackets', 'no', 'jacket.jpg'),
(8, 'Laptop', 'no', 'l_10184691_003.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(4, 'Wedding Gifts', 'www3.jpg', '<p>You would not forget the day you were getting married so make it a point to celebrate the anniversary of that very special event each year. How you celebrate the anniversary depends on many factors. Can you find a babysitter? Can you book that favourite restaurant? If it is a surprise will it be a welcome one? We talk about a diamond anniversary (60th) golden (50th) and silver (25th) and so much of it stems from traditions started hundreds of years ago. A man would crown his wife with a silver or gold wreath on their 25th or 50th wedding anniversary. Today like many other traditions commercial interests have jumped aboard the bandwagon. In 1937 the main Jewellery Association in the United States invented the specific gifts for every year. So now retailers happily tell us that your first wedding anniversary requires a gift of paper the second cotton third leather fourth silk and the fifth wood. It will remember the anniversary and send you a card.</p>', 'Contact For Details and Rates', 'https://www.facebook.com/Ecom-Store-749422555474096/'),
(5, 'Wedding Florists', 'www2.jpg', '<p>The Secret Garden Floral Studio could be everything you have been searching for. Located in Annandale Townsville this incredible florist is known among local couples for their ability to create stunning flower arrangements for weddings of all themes. Whatever you envision the dedicated team behind The Secret Garden Floral Studio will ensure your dreams are brought to life. Check out their website for more information. The House of Flowers is known as one of Townsville best wedding florist. This amazing florist has a reputation for using top quality fresh flowers to bring dream weddings to life. Whatever your wedding theme or budget there something special for everyone with The House of Flowers. Visit their website to find out more. For thousands of couples across Australia styling their wedding with long-lasting flower arrangements is near the top of their list of wedding planning priorities. For those located in Townsville North Queensland our list</p>', 'Contact For Details and Rates', 'https://www.facebook.com/Ecom-Store-749422555474096/'),
(6, 'Wedding Venues', 'www1.jpg', '<p>Some people really want to focus on their food and drinks for the experience of their guests says Lauren. We have other couples who really value that ceremony space with the view or who really want a personalised service for their day. You have the view to differentiate the space but make sure that the venue you want will still be able to offer all the other elements you have dreamed of for your big day. We agree with this advice as not only will this element help you decide what you want to celebrate on your big day but it can also help you incorporate your view into that. Who would not want to celebrate cocktail hour with a stunning sunset harbour view? But Lauren final advice is what we really love. After all the planning make sure you enjoy yourselves. Weddings can be a big day where a lot of people want to talk to you so if you make sure you have enough time to celebrate yourselves and your love then you will have a perfect day regardless.</p>', 'Contact For Details and Rates', 'https://www.facebook.com/Ecom-Store-749422555474096/');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `shipping_type` int(10) NOT NULL,
  `shipping_zone` int(10) NOT NULL,
  `shipping_country` int(10) NOT NULL,
  `shipping_weight` decimal(10,1) NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_type`, `shipping_zone`, `shipping_country`, `shipping_weight`, `shipping_cost`) VALUES
(1, 4, 5, 0, '1.0', '3.0'),
(3, 4, 5, 0, '1.5', '4.5'),
(4, 4, 5, 0, '2.0', '6.0'),
(5, 4, 5, 0, '2.5', '7.5'),
(6, 4, 5, 0, '3.0', '9.0'),
(7, 4, 5, 0, '3.5', '10.5'),
(8, 4, 5, 0, '4.0', '12.0'),
(9, 4, 5, 0, '4.5', '13.5'),
(14, 4, 5, 0, '6.0', '18.0'),
(15, 4, 5, 0, '6.5', '19.5'),
(16, 4, 5, 0, '7.0', '21.0'),
(17, 4, 5, 0, '7.5', '22.5'),
(18, 4, 5, 0, '8.0', '24.0'),
(19, 4, 5, 0, '8.5', '25.5'),
(20, 4, 5, 0, '9.0', '27.0'),
(21, 4, 5, 0, '9.5', '28.5'),
(22, 4, 5, 0, '10.0', '30.0'),
(23, 4, 5, 0, '5.0', '15.0'),
(24, 4, 5, 0, '5.5', '16.5'),
(25, 3, 5, 0, '1.0', '4.0'),
(26, 3, 5, 0, '1.5', '6.0'),
(27, 3, 5, 0, '2.0', '8.0'),
(28, 3, 5, 0, '2.5', '10.0'),
(29, 3, 5, 0, '3.0', '12.0'),
(30, 3, 5, 0, '3.5', '14.0'),
(31, 3, 5, 0, '4.0', '16.0'),
(32, 3, 5, 0, '4.5', '18.0'),
(33, 3, 5, 0, '6.0', '24.0'),
(34, 3, 5, 0, '6.5', '26.0'),
(35, 3, 5, 0, '7.0', '28.0'),
(36, 3, 5, 0, '7.5', '30.0'),
(37, 3, 5, 0, '8.0', '32.0'),
(38, 3, 5, 0, '8.5', '34.0'),
(39, 3, 5, 0, '9.0', '36.0'),
(40, 3, 5, 0, '9.5', '38.0'),
(41, 3, 5, 0, '10.0', '40.0'),
(42, 1, 5, 0, '1.0', '5.0'),
(43, 1, 5, 0, '1.5', '7.5'),
(44, 1, 5, 0, '2.0', '10.0'),
(45, 1, 5, 0, '2.5', '12.5'),
(46, 1, 5, 0, '3.0', '15.0'),
(47, 1, 5, 0, '3.5', '17.5'),
(48, 4, 5, 0, '4.0', '20.0'),
(49, 1, 5, 0, '4.5', '22.5'),
(50, 1, 5, 0, '5.0', '25.0'),
(51, 1, 5, 0, '5.5', '27.5'),
(52, 1, 5, 0, '6.0', '30.0'),
(53, 1, 5, 0, '6.5', '32.5'),
(54, 1, 5, 0, '7.0', '35.0'),
(55, 1, 5, 0, '7.5', '37.5'),
(56, 1, 5, 0, '8.0', '40.0'),
(57, 1, 5, 0, '8.5', '42.5'),
(58, 1, 5, 0, '9.0', '45.0'),
(59, 1, 5, 0, '9.5', '47.5'),
(60, 1, 5, 0, '10.0', '50.0'),
(61, 7, 0, 230, '1.0', '5.0'),
(62, 7, 0, 230, '1.5', '7.5'),
(64, 7, 0, 230, '2.5', '12.5'),
(65, 7, 0, 230, '3.0', '15.0'),
(66, 7, 0, 230, '3.5', '17.5'),
(67, 7, 0, 230, '4.5', '22.5'),
(68, 7, 0, 230, '5.0', '25.0'),
(69, 7, 0, 230, '5.5', '27.5'),
(70, 7, 0, 230, '6.0', '30.0'),
(71, 7, 0, 230, '6.5', '32.5'),
(72, 7, 0, 230, '7.0', '35.0'),
(73, 7, 0, 230, '7.5', '37.5'),
(74, 7, 0, 230, '8.0', '40.0'),
(75, 7, 0, 230, '8.5', '42.5'),
(76, 7, 0, 230, '9.0', '45.0'),
(77, 7, 0, 230, '9.5', '47.5'),
(78, 7, 0, 230, '10.0', '50.0'),
(79, 7, 0, 230, '2.0', '10.0'),
(80, 6, 0, 230, '1.0', '10.0'),
(81, 6, 0, 230, '1.5', '15.0'),
(82, 6, 0, 230, '2.0', '20.0'),
(83, 6, 0, 230, '2.5', '25.0'),
(84, 6, 0, 230, '3.0', '30.0'),
(85, 6, 0, 230, '3.5', '35.0'),
(86, 6, 0, 230, '4.5', '45.0'),
(87, 6, 0, 230, '5.0', '50.0'),
(88, 6, 0, 230, '5.5', '55.0'),
(89, 6, 0, 230, '6.0', '60.0'),
(90, 6, 0, 230, '6.5', '65.0'),
(91, 6, 0, 230, '7.0', '70.0'),
(92, 6, 0, 230, '7.5', '75.0'),
(93, 6, 0, 230, '8.0', '80.0'),
(94, 6, 0, 230, '8.5', '85.0'),
(95, 6, 0, 230, '9.0', '90.0'),
(96, 6, 0, 230, '9.5', '95.0'),
(97, 6, 0, 230, '10.0', '100.0'),
(98, 1, 5, 0, '4.0', '20.0'),
(99, 6, 0, 230, '4.0', '40.0'),
(100, 7, 0, 230, '4.0', '20.0'),
(102, 1, 6, 0, '1.0', '3.0'),
(103, 1, 6, 0, '2.0', '4.0'),
(104, 1, 6, 0, '3.0', '5.0'),
(105, 1, 6, 0, '6.0', '6.0'),
(106, 1, 6, 0, '10.0', '12.0'),
(107, 1, 7, 0, '1.0', '3.0'),
(108, 1, 7, 0, '2.0', '4.0'),
(109, 1, 7, 0, '3.0', '5.0'),
(110, 1, 7, 0, '6.0', '6.0'),
(111, 1, 7, 0, '10.0', '12.0'),
(112, 1, 7, 0, '12.0', '11.0'),
(113, 3, 6, 0, '1.0', '1.0'),
(114, 3, 6, 0, '2.0', '2.0'),
(115, 3, 6, 0, '3.0', '3.0'),
(116, 3, 6, 0, '9.0', '10.0'),
(117, 3, 6, 0, '15.0', '20.0'),
(118, 3, 7, 0, '1.0', '2.0'),
(119, 3, 7, 0, '2.0', '3.0'),
(120, 3, 7, 0, '4.0', '5.0'),
(121, 3, 7, 0, '6.0', '7.0'),
(122, 3, 7, 0, '10.0', '12.0'),
(123, 3, 7, 0, '15.0', '18.0'),
(124, 4, 6, 0, '1.0', '2.0'),
(125, 4, 6, 0, '2.0', '3.0'),
(126, 4, 6, 0, '4.0', '5.0'),
(127, 4, 6, 0, '6.0', '7.0'),
(128, 4, 6, 0, '8.0', '9.0'),
(129, 4, 6, 0, '10.0', '11.0'),
(130, 4, 6, 0, '15.0', '17.0'),
(131, 4, 7, 0, '1.0', '2.0'),
(132, 4, 7, 0, '2.0', '3.0'),
(133, 4, 7, 0, '3.0', '4.0'),
(134, 4, 7, 0, '5.0', '6.0'),
(135, 4, 7, 0, '7.0', '8.0'),
(136, 4, 7, 0, '9.0', '10.0'),
(137, 4, 7, 0, '11.0', '12.0'),
(138, 4, 7, 0, '15.0', '17.0'),
(139, 1, 6, 0, '15.0', '17.0'),
(140, 1, 5, 0, '15.0', '17.0'),
(141, 3, 5, 0, '15.0', '17.0'),
(142, 4, 5, 0, '15.0', '17.0');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

CREATE TABLE `shipping_types` (
  `type_id` int(10) NOT NULL,
  `type_name` text NOT NULL,
  `type_default` text NOT NULL,
  `type_local` text NOT NULL,
  `type_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`type_id`, `type_name`, `type_default`, `type_local`, `type_order`) VALUES
(1, 'Next Day (orders placed before 7pm)', 'no', 'yes', 1),
(3, ' Speedy 1-2 days', 'no', 'yes', 2),
(4, 'Standard 3-5 days', 'yes', 'yes', 3),
(6, 'Express International', 'yes', 'no', 1),
(7, 'Standard International', 'no', 'no', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide Number 1', 'slide-1.jpg', 'http://localhost/Ecom_store/shop.php'),
(2, 'Slide Number 2', 'slide-2.jpg', 'http://localhost/Ecom_store/shop.php'),
(3, 'Slide Number 3', 'slide-3.jpg', 'http://localhost/Ecom_store/shop.php'),
(7, 'Slide Number 4', 'slide-4.jpg', 'http://localhost/Ecom_store/shop.php');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 64);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(10) NOT NULL,
  `zone_name` text NOT NULL,
  `zone_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(5, 'Kafr El Sheikh Governorate Zone', 1),
(6, 'Giza Governorate Zone', 2),
(7, 'Damietta Governorate Zone', 3);

-- --------------------------------------------------------

--
-- Table structure for table `zones_locations`
--

CREATE TABLE `zones_locations` (
  `location_id` int(10) NOT NULL,
  `zone_id` int(10) NOT NULL,
  `location_code` text NOT NULL,
  `location_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zones_locations`
--

INSERT INTO `zones_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(86, 7, '64', 'country'),
(87, 7, '34711', 'postcode'),
(88, 7, '34726', 'postcode'),
(89, 7, '34611', 'postcode'),
(90, 7, '34511', 'postcode'),
(91, 7, '', 'postcode'),
(92, 7, '', 'postcode'),
(93, 6, '64', 'country'),
(94, 6, '8655', 'postcode'),
(95, 6, '12511', 'postcode'),
(96, 6, '12521', 'postcode'),
(97, 6, '12611', 'postcode'),
(98, 6, '12652', 'postcode'),
(99, 6, '12651', 'postcode'),
(100, 5, '64', 'country'),
(101, 5, '33735', 'postcode'),
(102, 5, '33651', 'postcode'),
(103, 5, '33511', 'postcode'),
(104, 5, '33512', 'postcode'),
(105, 5, '33611', 'postcode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  ADD PRIMARY KEY (`hide_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_types`
--
ALTER TABLE `shipping_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zones_locations`
--
ALTER TABLE `zones_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  MODIFY `address_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  MODIFY `hide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  MODIFY `address_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `shipping_types`
--
ALTER TABLE `shipping_types`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zones_locations`
--
ALTER TABLE `zones_locations`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
