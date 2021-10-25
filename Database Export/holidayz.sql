-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 07:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holidayz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins_country`
--

CREATE TABLE `admins_country` (
  `id` bigint(20) NOT NULL,
  `Description` varchar(60) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Number` int(11) NOT NULL,
  `bg_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_country`
--

INSERT INTO `admins_country` (`id`, `Description`, `Image`, `Name`, `Number`, `bg_url`) VALUES
(15, 'Place of Lord Gautam Buddha', 'static/uploads/country/pexels-ding-lei-4028822.jpg', 'Nepal', 6, 'https://images.pexels.com/photos/2902939/pexels-photo-2902939.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
(16, 'Located at southeast europe', 'static/uploads/country/pexels-valdemaras-d-2291340_1.jpg', 'Greece', 5, 'https://images.pexels.com/photos/6478033/pexels-photo-6478033.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
(17, 'Winter hits the most, High standard', 'static/uploads/country/pexels-sahil-1868676.jpg', 'Canada', 4, 'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
(18, 'Catch a glimpse of Indonesia\'s bewitching attractions', 'static/uploads/country/pexels-pixabay-161293.jpg', 'Indonesia', 3, 'https://www.nationsonline.org/gallery/Indonesia/Piaynemo-West-Papua.jpg'),
(19, 'France, country of northwestern Europe.', 'static/uploads/country/france_waNzjhF.jpg', 'France', 2, 'https://th.bing.com/th/id/R.31991509dacc5e91a49cd020091db14c?rik=YOzfng9eKnFbxg&pid=ImgRaw&r=0'),
(20, 'Wuhan to test whole population as virus resurfaces', 'static/uploads/country/China.jpg', 'China', 3, 'https://th.bing.com/th/id/R.6b196d441ac8da633dd5e192b066fb95?rik=Ng2EsGj2prionw&pid=ImgRaw&r=0');

-- --------------------------------------------------------

--
-- Table structure for table `admins_offer`
--

CREATE TABLE `admins_offer` (
  `id` bigint(20) NOT NULL,
  `accommodation` varchar(100) NOT NULL,
  `adventure` varchar(100) NOT NULL,
  `extra` longtext NOT NULL,
  `offer_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_offer`
--

INSERT INTO `admins_offer` (`id`, `accommodation`, `adventure`, `extra`, `offer_name`) VALUES
(1, 'Hotels - 3 bedroom', 'Cycling', 'Free Wifi package', 'Premium'),
(2, 'Deluxe Hotel Room', 'Hiking', 'Free Pocket Guns', 'Deluxe');

-- --------------------------------------------------------

--
-- Table structure for table `admins_place`
--

CREATE TABLE `admins_place` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `day_one` longtext NOT NULL,
  `day_two` longtext NOT NULL,
  `dest_desc` longtext NOT NULL,
  `dest_image` varchar(100) NOT NULL,
  `dest_location` varchar(120) NOT NULL,
  `dest_name` varchar(50) NOT NULL,
  `dest_type` varchar(50) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `dest_price` int(11) NOT NULL,
  `total_person` int(11) NOT NULL,
  `day_three` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_place`
--

INSERT INTO `admins_place` (`id`, `created_date`, `day_one`, `day_two`, `dest_desc`, `dest_image`, `dest_location`, `dest_name`, `dest_type`, `country_id`, `dest_price`, `total_person`, `day_three`) VALUES
(36, '2021-09-12 15:08:52.261831', 'On Day 1 in Mustang village, focus on the first portion of Going-to-the-Sun Road (from west to east) starting in West Glacier at mile 0.', 'Begin driving the Going-to-the-Sun Road and follow the signs to Apgar Village located 2-miles into the drive.', 'Mustang was an important route of crossing the Himalayas between Tibet and Nepal. Many salt caravans travelled through Mustang in the old times. Once a major thoroughfare for the trade of salt and grain between Tibet and Nepal\'s southern hills, the Mustang District.', 'static/uploads/destination/pexels-ashok-sharma-8680763.jpg', 'Mustang District', 'Mustang', 'Hilly', 15, 356, 2, 'We will travel along with some plans of barbeque and wine celebrations'),
(37, '2021-09-12 15:11:06.758003', 'On Day 1 in Glacier National Park, focus on the first portion of Going-to-the-Sun Road (from west to east) starting in West Glacier at mile 0.', 'On Day 2 in Glacier National Park, focus on the first portion of Going-to-the-Sun Road (from west to east) starting in West Glacier at mile 0.', 'Kathmandu is the capital and largest city of Nepal, with a population of around 1 million. The city stands at an elevation of approximately 1,400 metres (4,600 feet) above sea level in the bowl-shaped Kathmandu Valley in central Nepal.', 'static/uploads/destination/pexels-sunil-poudel-4056175_3nYUHHp.jpg', 'Center of Nepalds', 'Kathmandu', 'Hilly', 15, 500, 2, 'We will travel along with some plans of barbeque and wine celebrations'),
(38, '2021-09-20 14:11:55.928589', 'Welcome to Bali. Upon your arrival, meet our representative at the arrival hall who will escort you till your Vehicle.\r\nArrive at the hotel and check in. The day is free at leisure. You can unwind at the hotel or relax at the nearest beach or you can opt for Romantic  Sunset Dinner Cruise by Bounty.\r\nThere is no better way to spend a balmy evening dinner cruise. As the sun goes down you set off an relaxing cruise at the harbor. Be entertained by live music, enjoy the delicious  buffet dinner  on board. Evening at the sunset dinner cruise will always make you nostalgic in the future. Overnight stay at the hotel.\r\n\r\n', 'Enjoy continental breakfast in the Hotel.\r\nToday you will proceed for Full Day Kintamani Tour With Ubaid Village Tour. It is the most favorite tour of any first time visitor to Bali. Ubud tour will let you to visit Legong batik famous for traditional Batik and hand wearing, then past the Celuk village famous for silver and gold works at UC silver & Mas village famous for wood carving and will drop to Rai Shop. Continue your tour to visit the mount & Lake Batur view from Kintamani Point (not go down to caldera). And continue visit coffee plantation to see how to make Santi Agro Wisata. Enjoy dinner in the hotel with choice of Indian /Continental/Local Cuisine. Overnight stay at the hotel.', 'There is no other place like Bali in this world. A magical blend of culture, people, nature, activities, weather, culinary delights, nightlife, and beautiful accommodation. Bali is rated as one of the best travel destinations. will always make you nostalgic in the future. Overnight stay at the.', 'static/uploads/destination/pexels-alexandr-podvalny-2070485_V4Fi5yT.jpg', 'Pura Tanah Lot', 'Serene Bali', 'Greenary', 18, 600, 2, 'We will travel along with some plans of barbeque and wine celebrations'),
(39, '2021-09-20 14:34:15.344588', 'Board an international flight bound for Bangkok, eager to begin our Asia vacation. Spend the night aboard as our flight crosses the International Date Line.', 'Welcome to Bangkok, the capital city of Thailand!Upon arrival, greeted by our local tour guide at the airport and transfer to your luxury hotel. Time to rest, relax and acclimate to your new time zone.', 'Located in Southwest China, Yunnan is the most diverse and colorful area in China, with features ranging from snowcapped mountains to tropical rain forests, from highland lakes to canyons, and from ancient towns to fascinating minority villages.', 'static/uploads/destination/pexels-sam-lim-1586205.jpg', 'Yongta, china sea', 'Yunnan', 'Mountain', 20, 1000, 2, 'We will travel along with some plans of barbeque and wine celebrations'),
(40, '2021-09-20 14:39:27.518078', 'Bypass the long lines at the Eiffel Tower with this tour that includes summit access. After fast track, skip-the-line access, proceed to the second level to survey the city from the viewing platforms while listening to commentary about Paris culture, traditions, and history.Read more about Skip the Line Ticket: Eiffel Tower Summit Priority Access with Host 2021 - Paris ', 'Bypass the long lines at the Eiffel Tower with this tour that includes summit access. After fast track, skip-the-line access, proceed to the second level to survey the city from the viewing platforms while listening to commentary about Paris culture, traditions, and history.Read more about Skip the Line Ticket: Eiffel Tower Summit Priority Access with Host 2021 - Paris ', 'After breakfast, make your way to the Grand Palace, a “must-see” for every visitor to Bangkok. Located close to the banks of the Chao Phraya River (The River of Kings) the Grand Palace is the perfect example of an ancient Siamese court.', 'static/uploads/destination/pexels-alex-azabache-3879160.jpg', 'Paris Andrey', 'Paris', 'Greenary', 19, 960, 2, 'We will travel along with some plans of barbeque and wine celebrations');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add country', 7, 'add_country'),
(26, 'Can change country', 7, 'change_country'),
(27, 'Can delete country', 7, 'delete_country'),
(28, 'Can view country', 7, 'view_country'),
(29, 'Can add offer', 8, 'add_offer'),
(30, 'Can change offer', 8, 'change_offer'),
(31, 'Can delete offer', 8, 'delete_offer'),
(32, 'Can view offer', 8, 'view_offer'),
(33, 'Can add place', 9, 'add_place'),
(34, 'Can change place', 9, 'change_place'),
(35, 'Can delete place', 9, 'delete_place'),
(36, 'Can view place', 9, 'view_place'),
(37, 'Can add country', 10, 'add_country'),
(38, 'Can change country', 10, 'change_country'),
(39, 'Can delete country', 10, 'delete_country'),
(40, 'Can view country', 10, 'view_country'),
(41, 'Can add offer', 11, 'add_offer'),
(42, 'Can change offer', 11, 'change_offer'),
(43, 'Can delete offer', 11, 'delete_offer'),
(44, 'Can view offer', 11, 'view_offer'),
(45, 'Can add place', 12, 'add_place'),
(46, 'Can change place', 12, 'change_place'),
(47, 'Can delete place', 12, 'delete_place'),
(48, 'Can view place', 12, 'view_place'),
(49, 'Can add ecard', 13, 'add_ecard'),
(50, 'Can change ecard', 13, 'change_ecard'),
(51, 'Can delete ecard', 13, 'delete_ecard'),
(52, 'Can view ecard', 13, 'view_ecard'),
(53, 'Can add places', 14, 'add_places'),
(54, 'Can change places', 14, 'change_places'),
(55, 'Can delete places', 14, 'delete_places'),
(56, 'Can view places', 14, 'view_places'),
(57, 'Can add add country', 15, 'add_addcountry'),
(58, 'Can change add country', 15, 'change_addcountry'),
(59, 'Can delete add country', 15, 'delete_addcountry'),
(60, 'Can view add country', 15, 'view_addcountry'),
(61, 'Can add add offer', 16, 'add_addoffer'),
(62, 'Can change add offer', 16, 'change_addoffer'),
(63, 'Can delete add offer', 16, 'delete_addoffer'),
(64, 'Can view add offer', 16, 'view_addoffer'),
(65, 'Can add test', 17, 'add_test'),
(66, 'Can change test', 17, 'change_test'),
(67, 'Can delete test', 17, 'delete_test'),
(68, 'Can view test', 17, 'view_test'),
(69, 'Can add profile', 18, 'add_profile'),
(70, 'Can change profile', 18, 'change_profile'),
(71, 'Can delete profile', 18, 'delete_profile'),
(72, 'Can view profile', 18, 'view_profile'),
(73, 'Can add watchlist', 19, 'add_watchlist'),
(74, 'Can change watchlist', 19, 'change_watchlist'),
(75, 'Can delete watchlist', 19, 'delete_watchlist'),
(76, 'Can view watchlist', 19, 'view_watchlist'),
(77, 'Can add booking', 20, 'add_booking'),
(78, 'Can change booking', 20, 'change_booking'),
(79, 'Can delete booking', 20, 'delete_booking'),
(80, 'Can view booking', 20, 'view_booking'),
(81, 'Can add booking_ draft', 21, 'add_booking_draft'),
(82, 'Can change booking_ draft', 21, 'change_booking_draft'),
(83, 'Can delete booking_ draft', 21, 'delete_booking_draft'),
(84, 'Can view booking_ draft', 21, 'view_booking_draft'),
(85, 'Can add contact', 22, 'add_contact'),
(86, 'Can change contact', 22, 'change_contact'),
(87, 'Can delete contact', 22, 'delete_contact'),
(88, 'Can view contact', 22, 'view_contact'),
(89, 'Can add contact form', 23, 'add_contactform'),
(90, 'Can change contact form', 23, 'change_contactform'),
(91, 'Can delete contact form', 23, 'delete_contactform'),
(92, 'Can view contact form', 23, 'view_contactform'),
(93, 'Can add booking_ draftt', 24, 'add_booking_draftt'),
(94, 'Can change booking_ draftt', 24, 'change_booking_draftt'),
(95, 'Can delete booking_ draftt', 24, 'delete_booking_draftt'),
(96, 'Can view booking_ draftt', 24, 'view_booking_draftt');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(13, 'pbkdf2_sha256$150000$xRlDVAtiGcFS$Pz8Y7k6dfUlMMWj95eIV3wloViiELVBPYhfQMpB8ElY=', '2021-09-28 05:33:07.904001', 1, 'admin', '', '', 'bimalstha291@gmail.com', 1, 1, '2021-09-03 11:43:11.569885'),
(25, 'pbkdf2_sha256$150000$crmqUqLFOSSR$Ug4P66YERNy10/KWBvUfWtObiS5Nq5en3kZMS1uphXE=', '2021-09-28 05:21:06.483007', 0, 'test', 'test', 'test', 'bimalstha293@gmail.com', 0, 1, '2021-09-18 15:19:31.787686'),
(26, '', NULL, 0, 'mylod', 'Mylod', 'mylod', 'mylod@gmail.com', 1, 1, '2021-09-19 05:45:47.558421'),
(27, 'pbkdf2_sha256$260000$fbYudQb23JKT0xBbDsrleW$YJA5xzJSZLLAonR+iLFzvpcngocT+UArYZXUHft0GV8=', NULL, 0, 'shyam0', 'Shyam', 'Sharma', 'shayam@gmail.com', 0, 1, '2021-09-20 05:06:58.852118'),
(28, 'pbkdf2_sha256$260000$hjwOGZ8shIigy7P5pm19vz$qjSWnewpwgH7L0voyEiCQnVaiWiR7+sofArN5tDvAH0=', NULL, 0, 'cloieb', 'Cloie', 'Baryan', 'cloie@gmail.com', 0, 1, '2021-09-20 05:07:32.734647'),
(29, 'pbkdf2_sha256$260000$8wO03Lpwsv1Oib2APW4fSZ$Qo517OyOr1lGNa+5yUoNjXAyeGx/xp6xAOfuO6hrwpc=', '2021-09-22 02:08:51.559730', 0, 'thompson', 'Thompson', 'Shrestha', 'thom@gmail.com', 0, 1, '2021-09-20 05:08:05.814546'),
(30, 'pbkdf2_sha256$260000$4UkMWQogWptiFlFPh8QPQa$J5wF8dmLsRvXaiWjQXE9RkPfaHbTWWoECPdr93Y92aY=', NULL, 0, 'albertein22', 'Albert', 'Einstein', 'albert@gmail.com', 0, 1, '2021-09-20 05:08:51.231408'),
(31, 'pbkdf2_sha256$260000$FNWWgVTJ7sLwhz4VWKLfsV$Fx6gwM/8zNuxjsJ3dPlKP9CaP3f7VtBKdu2DrpH8ygU=', NULL, 0, 'pradeep008', 'Pradeep', 'Kandel', 'pradeep@gmail.com', 0, 1, '2021-09-20 05:09:25.909552'),
(32, 'pbkdf2_sha256$260000$OBeY8YAGwC0pQLNJQ2olWi$CUR/00gm10V7qsfjU17XOstS1k4xwsnyAHkUmpzvfA4=', '2021-09-23 10:46:59.842276', 0, 'sabiyag', 'Sabiya', 'Gurung', 'sabiya@gmail.com', 0, 1, '2021-09-23 10:45:42.608581'),
(36, 'pbkdf2_sha256$260000$C6QG5IOyTHRCdqMvs0ymdg$Fwhl7h/kvCmYBITwFNwneChKa/3fC1udhQp+HTDXuAc=', '2021-09-24 02:47:59.634276', 0, 'jhkks', 'fgjnj', 'jhkl,h', 'cshf@jsfhejr.com', 0, 1, '2021-09-24 02:47:41.052028');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_booking`
--

CREATE TABLE `dashboard_booking` (
  `id` bigint(20) NOT NULL,
  `total_person` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `booked_date` date NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `place_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `offer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_booking`
--

INSERT INTO `dashboard_booking` (`id`, `total_person`, `total_price`, `status`, `booked_date`, `created_date`, `place_id`, `user_id`, `offer_id`) VALUES
(31, 4, 2000, 'Confirmed', '2021-09-08', '2021-09-20 04:37:27.561724', 37, 25, 1),
(32, 2, 712, 'Denied', '2021-09-12', '2021-09-20 05:19:15.690931', 36, 29, 2),
(33, 8, 4000, 'In-Review', '2021-09-26', '2021-09-20 05:19:44.393933', 37, 29, 1),
(34, 6, 2136, 'Confirmed', '2021-10-10', '2021-09-23 10:50:41.386651', 36, 25, 2),
(35, 2, 1920, 'In-Review', '2021-09-19', '2021-09-25 15:12:40.987009', 40, 25, 1),
(36, 2, 1200, 'Denied', '2021-09-28', '2021-09-26 16:48:15.860065', 38, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_profile`
--

CREATE TABLE `dashboard_profile` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ecard_cvv` varchar(3) NOT NULL,
  `ecard_no` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_profile`
--

INSERT INTO `dashboard_profile` (`id`, `firstname`, `lastname`, `username`, `email`, `phone`, `profile_pic`, `created_date`, `user_id`, `ecard_cvv`, `ecard_no`) VALUES
(17, 'Bimal', 'Shrestha', 'test', 'bimalstha293@gmail.com', '98404415', 'static/images/user.png', '2021-09-18 15:19:31.913142', 25, '210', '5424635439032771'),
(18, '', '', 'shyam0', 'shayam@gmail.com', '', 'static/images/user.png', '2021-09-20 05:06:58.977872', 27, '609', '6888342459950898'),
(19, '', '', 'cloieb', 'cloie@gmail.com', '', 'static/images/user.png', '2021-09-20 05:07:32.845328', 28, '345', '4987616154204498'),
(20, '', '', 'thompson', 'thom@gmail.com', '', 'static/images/user.png', '2021-09-20 05:08:05.929086', 29, '180', '7024697729105115'),
(21, '', '', 'albertein22', 'albert@gmail.com', '', 'static/images/user.png', '2021-09-20 05:08:51.339711', 30, '271', '1807094529664117'),
(22, '', '', 'pradeep008', 'pradeep@gmail.com', '', 'static/images/user.png', '2021-09-20 05:09:26.022811', 31, '782', '5371501738807780'),
(23, 'fgjnj', 'jhkl,h', 'jhkks', 'cshf@jsfhejr.com', NULL, 'static/images/user.png', '2021-09-24 02:47:41.168328', 36, '795', '9767235411915624');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_watchlist`
--

CREATE TABLE `dashboard_watchlist` (
  `id` bigint(20) NOT NULL,
  `person` int(11) NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_watchlist`
--

INSERT INTO `dashboard_watchlist` (`id`, `person`, `place_id`, `user_id`) VALUES
(24, 1, 40, 29);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-03 12:02:15.370149', '1', 'Watchlist object (1)', 3, '', 19, 13),
(2, '2021-09-03 12:02:18.977241', '2', 'Watchlist object (2)', 3, '', 19, 13),
(3, '2021-09-03 12:37:48.086589', '29', 'Place object (29)', 2, '[{\"changed\": {\"fields\": [\"Dest image\"]}}]', 12, 13),
(4, '2021-09-16 13:44:23.796236', '26', 'Booking object (26)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 20, 13),
(5, '2021-09-16 13:44:39.710151', '25', 'Booking object (25)', 2, '[{\"changed\": {\"fields\": [\"Total person\", \"Status\"]}}]', 20, 13),
(6, '2021-09-16 13:44:45.993949', '24', 'Booking object (24)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(15, 'admins', 'addcountry'),
(16, 'admins', 'addoffer'),
(10, 'admins', 'country'),
(11, 'admins', 'offer'),
(12, 'admins', 'place'),
(14, 'admins', 'places'),
(17, 'admins', 'test'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(20, 'dashboard', 'booking'),
(21, 'dashboard', 'booking_draft'),
(24, 'dashboard', 'booking_draftt'),
(7, 'dashboard', 'country'),
(13, 'dashboard', 'ecard'),
(8, 'dashboard', 'offer'),
(9, 'dashboard', 'place'),
(18, 'dashboard', 'profile'),
(19, 'dashboard', 'watchlist'),
(22, 'homepage', 'contact'),
(23, 'homepage', 'contactform'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-25 14:50:31.172457'),
(2, 'auth', '0001_initial', '2021-08-25 14:50:31.756279'),
(3, 'admin', '0001_initial', '2021-08-25 14:50:31.870431'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-25 14:50:31.878403'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-25 14:50:31.887383'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-25 14:50:31.944211'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-25 14:50:32.044349'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-25 14:50:32.184117'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-25 14:50:32.245050'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-25 14:50:32.812948'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-25 14:50:32.860985'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-25 14:50:32.902885'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-25 14:50:32.922911'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-25 14:50:32.943104'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-25 14:50:32.964015'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-25 14:50:32.975116'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-25 14:50:32.998303'),
(18, 'dashboard', '0001_initial', '2021-08-25 14:50:33.102650'),
(19, 'dashboard', '0002_auto_20210824_1017', '2021-08-25 14:50:33.128634'),
(20, 'dashboard', '0003_rename_upload_image_country_image', '2021-08-25 14:50:33.138615'),
(21, 'homepage', '0001_initial', '2021-08-25 14:50:33.160576'),
(22, 'homepage', '0002_rename_category_country', '2021-08-25 14:50:33.180512'),
(23, 'homepage', '0003_auto_20210823_1526', '2021-08-25 14:50:33.271959'),
(24, 'homepage', '0004_auto_20210823_1528', '2021-08-25 14:50:33.369762'),
(25, 'homepage', '0005_auto_20210823_1750', '2021-08-25 14:50:33.375812'),
(26, 'homepage', '0006_auto_20210823_1801', '2021-08-25 14:50:33.380808'),
(27, 'homepage', '0007_country_desc', '2021-08-25 14:50:33.398744'),
(28, 'homepage', '0008_remove_country_desc', '2021-08-25 14:50:33.408724'),
(29, 'homepage', '0009_country_desc', '2021-08-25 14:50:33.425655'),
(30, 'homepage', '0010_alter_country_desc', '2021-08-25 14:50:33.466488'),
(31, 'homepage', '0011_alter_country_desc', '2021-08-25 14:50:33.506771'),
(32, 'homepage', '0012_auto_20210823_2051', '2021-08-25 14:50:33.675720'),
(33, 'sessions', '0001_initial', '2021-08-25 14:50:33.720089'),
(34, 'admins', '0001_initial', '2021-08-26 14:54:16.324536'),
(35, 'admins', '0002_auto_20210824_1017', '2021-08-26 14:54:16.419622'),
(36, 'admins', '0003_rename_upload_image_country_image', '2021-08-26 14:54:16.453678'),
(37, 'dashboard', '0002_rename_category_country', '2021-08-28 06:47:39.188264'),
(38, 'dashboard', '0003_auto_20210823_1526', '2021-08-28 06:47:39.308052'),
(39, 'dashboard', '0004_auto_20210823_1528', '2021-08-28 06:47:39.462131'),
(40, 'dashboard', '0005_auto_20210823_1750', '2021-08-28 06:47:39.472805'),
(41, 'dashboard', '0006_auto_20210823_1801', '2021-08-28 06:47:39.482109'),
(42, 'dashboard', '0007_country_desc', '2021-08-28 06:47:39.510055'),
(43, 'dashboard', '0008_remove_country_desc', '2021-08-28 06:47:39.527683'),
(44, 'dashboard', '0009_country_desc', '2021-08-28 06:47:39.557136'),
(45, 'dashboard', '0010_alter_country_desc', '2021-08-28 06:47:39.623580'),
(46, 'dashboard', '0011_alter_country_desc', '2021-08-28 06:47:39.678966'),
(47, 'dashboard', '0012_auto_20210823_2051', '2021-08-28 06:47:39.746466'),
(48, 'dashboard', '0013_ecard', '2021-08-28 06:47:39.777829'),
(49, 'admins', '0002_auto_20210828_2035', '2021-08-28 14:51:27.660483'),
(50, 'admins', '0002_auto_20210828_2037', '2021-08-28 14:54:50.141195'),
(51, 'admins', '0003_auto_20210828_2045', '2021-08-28 15:01:18.419032'),
(52, 'admins', '0004_auto_20210828_2051', '2021-08-28 15:06:31.865932'),
(53, 'admins', '0005_test', '2021-08-28 15:15:23.410072'),
(54, 'admins', '0006_auto_20210828_2114', '2021-08-28 15:29:48.679911'),
(55, 'admins', '0007_auto_20210828_2231', '2021-08-28 16:46:30.207992'),
(56, 'admins', '0007_remove_place_offer', '2021-08-28 16:50:59.982282'),
(57, 'admins', '0008_place_offer', '2021-08-28 16:51:00.042619'),
(58, 'admins', '0009_remove_place_offer', '2021-08-28 16:51:30.151633'),
(59, 'admins', '0010_remove_place_country', '2021-08-28 17:20:23.769988'),
(60, 'admins', '0011_place_country', '2021-08-28 17:27:53.183545'),
(61, 'admins', '0012_remove_place_continents', '2021-08-29 13:45:37.095057'),
(62, 'admins', '0013_alter_place_dest_image', '2021-08-29 14:17:36.612884'),
(63, 'admins', '0014_alter_place_dest_image', '2021-08-29 14:19:19.838011'),
(64, 'dashboard', '0014_profile', '2021-08-30 09:17:43.987632'),
(65, 'dashboard', '0015_auto_20210901_2148', '2021-09-01 16:03:33.636677'),
(66, 'admins', '0014_country_number', '2021-09-02 12:54:26.027111'),
(67, 'admins', '0015_place_dest_price', '2021-09-03 02:53:21.661230'),
(68, 'admins', '0016_alter_place_dest_image', '2021-09-03 11:41:17.275667'),
(69, 'dashboard', '0016_watchlist', '2021-09-03 11:41:17.429219'),
(70, 'admins', '0017_country_video_url', '2021-09-05 16:47:31.887921'),
(71, 'dashboard', '0017_booking', '2021-09-06 10:24:54.762747'),
(72, 'dashboard', '0018_booking_draft', '2021-09-06 12:45:54.550206'),
(73, 'dashboard', '0019_booking_draft_country', '2021-09-06 13:10:04.787806'),
(74, 'dashboard', '0020_remove_booking_draft_country', '2021-09-06 13:19:12.298022'),
(75, 'admins', '0018_auto_20210906_1943', '2021-09-06 13:58:47.853655'),
(76, 'dashboard', '0021_booking_draft_total_person', '2021-09-06 15:19:05.864203'),
(77, 'dashboard', '0022_booking_offer', '2021-09-06 15:29:13.381774'),
(78, 'dashboard', '0023_alter_booking_draft_total_person', '2021-09-06 15:31:18.595986'),
(79, 'dashboard', '0024_remove_booking_contact_no', '2021-09-06 16:28:48.862971'),
(80, 'dashboard', '0025_remove_booking_offer', '2021-09-06 17:52:42.353255'),
(81, 'dashboard', '0026_booking_offer', '2021-09-07 02:26:34.502148'),
(82, 'admins', '0019_rename_video_url_country_bg_url', '2021-09-07 11:38:09.085799'),
(83, 'dashboard', '0027_alter_profile_profile_pic', '2021-09-07 11:38:09.097763'),
(84, 'admins', '0020_place_total_person', '2021-09-07 13:06:38.749434'),
(85, 'homepage', '0002_auto_20210907_2148', '2021-09-07 16:03:53.590163'),
(86, 'dashboard', '0028_rename_profile_pic_profile_profile_picture', '2021-09-08 12:08:11.859232'),
(87, 'dashboard', '0029_rename_profile_picture_profile_profile_pic', '2021-09-08 12:08:34.216870'),
(88, 'homepage', '0003_auto_20210908_1759', '2021-09-08 12:14:36.638308'),
(89, 'admins', '0021_auto_20210910_0858', '2021-09-10 03:13:38.857239'),
(90, 'dashboard', '0028_alter_watchlist_person', '2021-09-10 03:13:38.871683'),
(91, 'homepage', '0004_alter_contactform_phone', '2021-09-10 03:13:38.875934'),
(92, 'dashboard', '0029_auto_20210912_1944', '2021-09-12 14:00:03.229468'),
(93, 'admins', '0022_auto_20210924_0822', '2021-09-24 02:37:48.507807'),
(94, 'admins', '0023_place_day_three', '2021-09-25 14:50:34.444154'),
(95, 'admins', '0024_auto_20210925_2143', '2021-09-25 15:58:43.582011');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0dob0leglk67r7nebin304csd18bvwxy', '.eJxVjMsOwiAQRf-FtSG8EZfu_QYyzIBUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJzU6_MAE-c9sNPaDdO8felnlKfE_4YQe_dcqv69H-HVQYdVsro1GenbMhULbGC6mlJKGKJy2yVOjSRhJkgT6h1h6EwwBFFGdNIWSfL91KN7k:1mSK9b:gkkl4Cpa81imRxPVEexObb_wvMpsT3uaLO1buQR1kU0', '2021-10-04 14:20:19.379102'),
('0jrcnjid6p2axnh2gp2o8x6ap01f1pre', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNvsp:j9DPevqksyGf7JX-AC-voHjcIuzF7zvirg3B204is9k', '2021-09-22 11:36:51.664731'),
('1anwxuxnm33fbcoqduaeojstzwn2ysu1', '.eJxVjMsOwiAQRf-FtSEUGEZcuu83NMMw2KqBpI-V8d-1SRe6veec-1IDbes4bIvMw5TVRVlQp98xET-k7iTfqd6a5lbXeUp6V_RBF923LM_r4f4djLSM3xoRY0EQMcEJQETrnGdTxHae6ByMYAngbUiM1PnMkAJLjKWgcGecen8A8mc37g:1mRd5c:9E_m6WzbVf35J9kWktijVTcFIefzC_l20Jk_VSmPsas', '2021-10-02 16:21:20.594841'),
('2g6e3bmrgyzqe0nm2f0uz0dr4ldqc6ah', '.eJxVjMsOwiAQRf-FtSEUGEZcuu83NMMw2KqBpI-V8d-1SRe6veec-1IDbes4bIvMw5TVRVlQp98xET-k7iTfqd6a5lbXeUp6V_RBF923LM_r4f4djLSM3xoRY0EQMcEJQETrnGdTxHae6ByMYAngbUiM1PnMkAJLjKWgcGecen8A8mc37g:1mRd78:DWbKn3q5kp404UbMShDfYpdC7dJCx4IHqRwqt7F_CWk', '2021-10-02 16:22:54.712497'),
('2l2rxa74jmffx0k7oevd4psqcljx46aa', 'ZDMwNjhjYzRmZjVjNzJmMGJjMTQyYjc1MzQ4MTI0ZjlkOWJkZjE0Zjp7fQ==', '2021-10-12 05:32:11.358779'),
('2pzpy8h9u77tad85zc5a9m4wd8mhjdww', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mQrrK:2CxNncgqOaELE0wk6RMiXVBv9DD7LKxiyCxG3-9XyCY', '2021-09-30 13:55:26.304180'),
('37zyb5v7a77w9s7sqo38xlqokeuk1pjc', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mLmhw:NPzzLlvb49bWNEwU0HZ9xVKAK44Z_hfE2YSe3-7w6IY', '2021-09-16 13:24:44.348868'),
('3d2ynv512eoi1tsicqqr9645g1y3bzd2', '.eJxVjDsOwjAQBe_iGlnyZ702JT1nsHb9wQHkSHFSIe4OkVJA-2bmvUSkbW1xG2WJUxZnoUGcfkem9Ch9J_lO_TbLNPd1mVjuijzokNc5l-flcP8OGo32rYkNuYBFo_GelbeQSFUgVpWzU1WjDugQg2NfrIdkq_YAyZgcAlgl3h8Cljdq:1mU5u8:HBknSkt0_Y_lk2RlV_UC7chsCbDaxiEOzMyWYDrOIjs', '2021-10-09 11:31:40.196078'),
('3hb8ftbt5aj02kjs41of6zw07lfsspcu', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNEEB:oPMqgptpqO3hG75SWutf0xsKHjk3VoxskVRYky447Dc', '2021-09-20 12:59:59.280694'),
('4km9oa7l5fuq51dic7z1hbjfn1lhe47m', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mMjJR:NSpzicQ-szEfDWdPNexA793EWJmqFw-A3uiURKG2pyo', '2021-09-19 03:59:21.921475'),
('4u6v5kedf3pzkb3idij5krea0gjpfc4n', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNHLI:Ndzu5UEtG2_QteE1MH74CLiKv14I8qsCMrimOHq6GXQ', '2021-09-20 16:19:32.440024'),
('5ckk4zszqk3a9jgvyh34yqyof3ih6pvb', '.eJxVjMsOgjAQRf-la9NQ-pji0j3fQKZ3qkUNJBRWxn9XEha6veec-1IDb2sZtpqXYRR1Vq1Rp98xMR552oncebrNGvO0LmPSu6IPWnU_S35eDvfvoHAt3xoe1kc4G2Js8tXbQCQB8B0gHaGhLG2KJnjjBcxIbEnYkXUshqDeHwzPOJo:1mQudo:cIosvZnr7GrK2zvAl-x0uc84ty4deYmHsJqchNRByRU', '2021-09-30 16:53:40.612585'),
('5w1nxqekcx19nl54331k70apg3k3n0kv', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mLkzP:p3juHLeh7Dr0BtzGCB_sZBODGWoYy2ykzIV4Cvhmt1s', '2021-09-16 11:34:39.027871'),
('7h4519zr25mqp3uexftqestubtr9zt0t', '.eJxVjMsOwiAQRf-FtSEUGEZcuu83NMMw2KqBpI-V8d-1SRe6veec-1IDbes4bIvMw5TVRVlQp98xET-k7iTfqd6a5lbXeUp6V_RBF923LM_r4f4djLSM3xoRY0EQMcEJQETrnGdTxHae6ByMYAngbUiM1PnMkAJLjKWgcGecen8A8mc37g:1mRd5D:MNmPKWAXFzitdq7e1CldI0dGUK9wCdkPgiFpZB2b_U8', '2021-10-02 16:20:55.048892'),
('7ttm5wmf2r7b3ous9hgczjn0amhge72y', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNB1G:LKbdAZ7l89q3icUOAzJxoazUzLvjpLUNyixTXIzbuJs', '2021-09-20 09:34:26.191525'),
('91gvov22ta68rxpl6q0cmoepakl8g71e', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNW73:Xj5zJOXYGgzxY8FKcSyY44c0A2ywtWzQSvxvI75pYRM', '2021-09-21 08:05:49.573029'),
('9oavm1mcuchpp0ztwxmdcqbwvgdzrj45', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mQoje:XM1tjJ2B_0Kjp7LcEw34CKGuH3pDpBlwkdrj6q1sZ2k', '2021-09-30 10:35:18.982476'),
('bt5kwd2qrjn2gyzbzgylf9ppzrq5qqg8', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNwHe:h8fJPc_1XuI69erNmLh38CVVzBO11teCvKktQr3KbmY', '2021-09-22 12:02:30.746054'),
('bugfleq1bdmlmgx9c29fn4vn692ag9ai', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mQrkn:UTUK_GEOwVO1zf0ELY60bNTBh90bOsxK-IhEZZj4q2Q', '2021-09-30 13:48:41.078722'),
('chvp4buj92whsitmfsk4mrpc3tp5m68j', '.eJxVjEEOgjAQRe_StWlwSjvFpXvOQKYzHUENTSisjHdXEha6_e-9_zIDbes4bDUvwyTmYsCcfrdE_MjzDuRO861YLvO6TMnuij1otX2R_Lwe7t_BSHX81glFXASfMap6lxECUJO4DW3XeeAACq2iDxoccHPG2EQmRAmiIKTm_QHXMje6:1mKdpX:uhMSV9mkdS2dWKFBcnCUhds9TjUekGLUfkKa2fFLUpU', '2021-09-13 09:43:51.129819'),
('cvs7ercoeirsnihip7db7w8c0zocqb9x', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mLmgd:Q4eWhySraLq9F2queBRJDBlN1ABatlc4jaMQtMKGBmo', '2021-09-16 13:23:23.024910'),
('dnd4g1mecf42djap92k90myv7rsker3f', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mLzdN:RvKfSbfP5ndZ7jqbzRgD9jxmrL6BpuzeBHxKe0tWNpo', '2021-09-17 03:12:53.473099'),
('ewh5fo2ixd8k68396a771y9mv2rpg5nj', 'M2RhNGNhNGM1YTI5NzY2Mjg4OTU3MmVlMmU2MGM3NmIzZTUyM2QxZjp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFhNmE3N2NlN2E2NzE4ZmQ4YWRmMDJlYTYxMzRlN2U0YWRiN2JlMCJ9', '2021-10-12 05:33:07.907959'),
('fr15nd2qlbak0n10xbuf45mmryzt3sgz', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mM3i2:lV69ebHiLRV2CCi8UzUXPAzjtypbrwQKBYJrZAyMlG8', '2021-09-17 07:33:58.153089'),
('gas4inv8mek8l3hp8pzg5ds309zbf1t6', '.eJxVjEsOwiAUAO_C2hDgSeG5dN8zED4PqRpISrsy3l1JutDtzGRezPl9K27vtLolsQuTwE6_MPj4oDpMuvt6azy2uq1L4CPhh-18bome16P9GxTfy_gSokaRp5Q9KjgLsERIwiQZsoWoMeasvpU26IGmgEoaEgmEpEjGsvcHB4I4JA:1mM7bc:vC-wXSfPrD7CwwcqON58AbxoQXd3Bpmw7ZuFFj4HCTE', '2021-09-17 11:43:36.543002'),
('hjtgbgfw3jybkssaogxi639drmveglug', '.eJxVjbEOwyAQQ_-FuUKQQCAdu-cb0B13lLQVkUIyVf33BilDO9p-tt8iwL7lsFdew0ziKgZx-fUQ4pNLC-gB5b7IuJRtnVE2RJ5pldNC_Lqd7N9Ahppb29qUVDSOfI-Ahlklpdi7DsmC0aMbkDz0NmrFHA_ZdHccsPYjOvH5Agf9OMk:1mKduD:sJWu6YQee-1DYe9rYnCkqVjgafPLJ-4X9Ajdt9fZfEE', '2021-09-13 09:48:41.417439'),
('huj2s9p049toi53jm6ubg1abjx7be9wb', '.eJxVjMsOwiAQRf-FtSEUGEZcuu83NMMw2KqBpI-V8d-1SRe6veec-1IDbes4bIvMw5TVRVlQp98xET-k7iTfqd6a5lbXeUp6V_RBF923LM_r4f4djLSM3xoRY0EQMcEJQETrnGdTxHae6ByMYAngbUiM1PnMkAJLjKWgcGecen8A8mc37g:1mRpeV:dkbs_F5kBiMyk7FVAXXcU_qo2XeO-XxsjunsoSVyl3s', '2021-10-03 05:46:11.416730'),
('ivftmwi3b854nzpsgtj9qti6n88c369c', '.eJxVjMsOwiAQRf-FtSEUGEZcuu83NMMw2KqBpI-V8d-1SRe6veec-1IDbes4bIvMw5TVRVlQp98xET-k7iTfqd6a5lbXeUp6V_RBF923LM_r4f4djLSM3xoRY0EQMcEJQETrnGdTxHae6ByMYAngbUiM1PnMkAJLjKWgcGecen8A8mc37g:1mStBc:e6woXBq4c-MMSuRlYoaQSkHAbP-lY8CWp31qr_xkTDM', '2021-10-06 03:44:44.227764'),
('j0e5wrm0a4hnkcm1uvmjhxa1cbj2x86f', '.eJxVjMsOwiAQRf-FtSG8EZfu_QYyzIBUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJzU6_MAE-c9sNPaDdO8felnlKfE_4YQe_dcqv69H-HVQYdVsro1GenbMhULbGC6mlJKGKJy2yVOjSRhJkgT6h1h6EwwBFFGdNIWSfL91KN7k:1mUiVh:SYYF75mTNdN7lx-xCkZmtJtI0WcgmeYvCgyZamLTQl4', '2021-10-11 04:45:01.272724'),
('l506qmoqqshpe1e8ybbyfn737zf15asi', '.eJxVjDsOwjAQBe_iGln-xD9Kes5grddrHEC2FCcV4u4QKQW0b2bei0XY1hq3QUucMzszz06_WwJ8UNtBvkO7dY69rcuc-K7wgw5-7Zmel8P9O6gw6rc2yU0pq1CyJZOL8wGdB0t6IiGMFEGC10qDkKiUVbYUcqagS74YFF6y9wfnBDez:1mKx9s:UnzHFu7avyNcG6PWCd6nvicYJW_Ro0G7bNzBgExlFg8', '2021-09-14 06:22:08.206947'),
('mkzknybruts5csseok69g3usvwmw8fdd', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mMjM8:f1dBYeF_M9mJ-xtxmJoj4Qunoya6LbkRoKAXmggE0hs', '2021-09-19 04:02:08.513185'),
('mttx70t5g2kxgp5m1f4uwr9ips5qop26', '.eJxVjEEOwiAQRe_C2pABSsu4dO8ZyDAMtmpKUtqV8e7apAvd_vfef6lI2zrGrckSp6zOyoA6_Y6J-CHzTvKd5lvVXOd1mZLeFX3Qpq81y_NyuH8HI7XxW1tHZQghZC9d6W2PjoEFk3WOjO9L59FbKMUmcGABh0CIhsEzDyYIqvcH64w3IQ:1mL5Pe:PtarIYyk5F4jUOvZ02mE9bH99Vl_-_LbiQtxMVYp17M', '2021-09-14 15:10:58.754417'),
('nsiqk4anccqjc2cuefl58g3hpa93krer', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mLpxI:SJSeaAvNgEhMnpbTJcQcVw-TgqogxOpAFX-IZ5YgvR4', '2021-09-16 16:52:48.021862'),
('ogwnbiuzofp6wvm8dhy5xckb3o6an7kh', '.eJxVjMsOgjAQRf-la9PA2MfUpXu-gcx0BkFNSSisjP-uJCx0e88592V62tax36ou_STmYgDM6Xdkyg8tO5E7ldts81zWZWK7K_ag1Xaz6PN6uH8HI9XxWyNLSH6Q4IVadDFjTJhZA_gAA2grHjCoZ9CQqInuzAyQBocNNhCzeX8ABXg3kQ:1mRYUX:Wv7EtUljQnoLcAVgPPiBTvsn7WU6YiSEjJ-fexOlncY', '2021-10-02 11:26:45.779029'),
('ou9avurwdtzatlkxxbihd9jt4p492vdg', '.eJxVjEEOwiAQRe_C2hDAwoBL9z0DmRnAVg1NSrsy3l1JutDte-__l4i4b1PcW17jnMRF6EGcfiEhP3LtJt2x3hbJS93WmWRP5GGbHJeUn9ej_TuYsE3ftXXnwEDAWFSxAGxIc3Fq8CEoY73NxvmQmCiTKgOC9RB0x5QMFhDvDwUDOCE:1mNwCE:-vr-SCn6Nn2W2JY2XlbxnFWoJ0qzXrfU3n2-G-PnW5E', '2021-09-22 11:56:54.426045'),
('ps06znw3qcb6xrofw04xkrto16dj5wus', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mLz2x:nvgytR2UHQxf0g5PacPyLJMGZMfurz269AKzzmcKnkQ', '2021-09-17 02:35:15.750398'),
('q1kksua4gtqiv4aufa0z6xkch3dv6pnc', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mM66d:fiiUNCWZXNRZ4mtf8bHAdhEYVmgtxOmHwRqCYrfFjzo', '2021-09-17 10:07:31.973772'),
('qco0xk8u89i96yaams6ty7xu9lxa40n9', '.eJxVjEEOgjAQRe_StWlwSjvFpXvOQKYzHUENTSisjHdXEha6_e-9_zIDbes4bDUvwyTmYsCcfrdE_MjzDuRO861YLvO6TMnuij1otX2R_Lwe7t_BSHX81glFXASfMap6lxECUJO4DW3XeeAACq2iDxoccHPG2EQmRAmiIKTm_QHXMje6:1mKbEn:TWSQq5vP01yjpoJvLUafxagwVzxNPWRAGNuLZ6AB-1I', '2021-09-13 06:57:45.275866'),
('r0m9om8v5w5dmonpio1k0ukk7f7pw6ij', '.eJxVjMsOwiAQRf-FtSEUGEZcuu83NMMw2KqBpI-V8d-1SRe6veec-1IDbes4bIvMw5TVRVlQp98xET-k7iTfqd6a5lbXeUp6V_RBF923LM_r4f4djLSM3xoRY0EQMcEJQETrnGdTxHae6ByMYAngbUiM1PnMkAJLjKWgcGecen8A8mc37g:1mRctV:yD1p6J0g0axXRJ3kj2GaTbYtm8LbN349H20OnPxHpvE', '2021-10-02 16:08:49.584332'),
('sgy24ja2fmyk0itebb32hhqothmlcdz8', '.eJxVjEEOgjAQRe_StWlwSjvFpXvOQKYzHUENTSisjHdXEha6_e-9_zIDbes4bDUvwyTmYsCcfrdE_MjzDuRO861YLvO6TMnuij1otX2R_Lwe7t_BSHX81glFXASfMap6lxECUJO4DW3XeeAACq2iDxoccHPG2EQmRAmiIKTm_QHXMje6:1mJdSM:00k0uPI0XcHFwgrNubCQDGrPJ4qsMrVhETvDjJwSOtE', '2021-09-10 15:07:46.214369'),
('t2tzyr29t25d3kc6gcxay3mqj40ql9qp', '.eJxVjMsOwiAQRf-FtSG8EZfu_QYyzIBUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJzU6_MAE-c9sNPaDdO8felnlKfE_4YQe_dcqv69H-HVQYdVsro1GenbMhULbGC6mlJKGKJy2yVOjSRhJkgT6h1h6EwwBFFGdNIWSfL91KN7k:1mTbKR:tOCPPguhBj8Byb6krcdwFgD4h4rfVw-xq7SUsjd4pbY', '2021-10-08 02:52:47.676283'),
('tzmq8o3ixwm81ckgqcod8ckey8x5cqin', '.eJxVjDsOwjAQBe_iGlnyZ702JT1nsHb9wQHkSHFSIe4OkVJA-2bmvUSkbW1xG2WJUxZnoUGcfkem9Ch9J_lO_TbLNPd1mVjuijzokNc5l-flcP8OGo32rYkNuYBFo_GelbeQSFUgVpWzU1WjDugQg2NfrIdkq_YAyZgcAlgl3h8Cljdq:1mUqfZ:mbQFXre3ddjdRYb3PWTRpCek7-05DpSQ0uRLdus8ryI', '2021-10-11 13:27:45.438967'),
('ug6vmdghvjmkik0m0r1dhebzhfad6yzh', '.eJxVjEsOwiAUAO_C2hDgSeG5dN8zED4PqRpISrsy3l1JutDtzGRezPl9K27vtLolsQuTwE6_MPj4oDpMuvt6azy2uq1L4CPhh-18bome16P9GxTfy_gSokaRp5Q9KjgLsERIwiQZsoWoMeasvpU26IGmgEoaEgmEpEjGsvcHB4I4JA:1mNveE:_E5AByseqTw_R1BoCGI-sGGbhuKhffjSI7HqP_d0usc', '2021-09-22 11:21:46.227260'),
('up4clco35lzkh1adjhoz6zwt4hu0s3lb', '.eJxVjEEOwiAQRe_C2hCYKZS6dO8ZyMAMUjVtUtqV8e7apAvd_vfef6lI21rj1mSJI6uzsr06_Y6J8kOmnfCdptus8zyty5j0ruiDNn2dWZ6Xw_07qNTqt0Y2EEgQ0FoWyAP2QIYQxZUhszeBgQjEgoSuOExdB05yKMTWG_Lq_QEC7jgZ:1mOLHO:Y_goUaGNWlklwRB50n5Zhx_rPAZ7pCi_dfCCKxzukD4', '2021-09-23 14:43:54.999424'),
('v0ew8ms983yo53vf483idaljyts8je7b', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mNQxn:pCKDAgq5p3NIKh-I-Mp0BB07dd8xHEJSA85kOI11OjQ', '2021-09-21 02:35:55.930635'),
('vfjl63kao060u20y4ncoyma6qlb8qjrw', '.eJxVjEsOwiAUAO_C2hDgSeG5dN8zED4PqRpISrsy3l1JutDtzGRezPl9K27vtLolsQuTwE6_MPj4oDpMuvt6azy2uq1L4CPhh-18bome16P9GxTfy_gSokaRp5Q9KjgLsERIwiQZsoWoMeasvpU26IGmgEoaEgmEpEjGsvcHB4I4JA:1mNDFo:MbUjWHIJI31hAo9QsjQhhWhiUUBzrXYT_eHYDfF9kJc', '2021-09-20 11:57:36.738282'),
('vgaqjwf17zpmvs3wj1azgvmw4d07vrdh', '.eJxVjEEOwiAQRe_C2hDAwoBL9z0DmRnAVg1NSrsy3l1JutDte-__l4i4b1PcW17jnMRF6EGcfiEhP3LtJt2x3hbJS93WmWRP5GGbHJeUn9ej_TuYsE3ftXXnwEDAWFSxAGxIc3Fq8CEoY73NxvmQmCiTKgOC9RB0x5QMFhDvDwUDOCE:1mOX6F:KPbvtyj2jJijV_PVwfERxlHCyCPrBzrMe_q_HkoUWIs', '2021-09-24 03:21:11.751331'),
('wgayd6tqtc91q36gft1l6gpz2l3vr5xh', '.eJxVjEEOwiAQRe_C2hA6LQO4dO8ZminDSNVAUtqV8e7apAvd_vfef6mRtjWPW0vLOLM6qw7U6XecKD5S2QnfqdyqjrWsyzzpXdEHbfpaOT0vh_t3kKnlb-16BzZMPgok5s7BIEQmMRqLngWMtY7Ec9-ZREEGdAIDht4hGBTD6v0BBPc3sQ:1mQrhq:YMSvQkthr1owIDIp98qFz4pEZ3bCee6X-3OziXaGF-U', '2021-09-30 13:45:38.264240'),
('wmtowttj6tm2dvccllhnlesabg5pespg', '.eJxVjEEOwiAQRe_C2hDAwoBL9z0DmRnAVg1NSrsy3l1JutDte-__l4i4b1PcW17jnMRF6EGcfiEhP3LtJt2x3hbJS93WmWRP5GGbHJeUn9ej_TuYsE3ftXXnwEDAWFSxAGxIc3Fq8CEoY73NxvmQmCiTKgOC9RB0x5QMFhDvDwUDOCE:1mNYj5:VT1QLuby6d1soBF2WDhlaLLtlMnZ8YJ0XVgJDhEW4v0', '2021-09-21 10:53:15.772402'),
('x37m7n828feqn6l1l6j1j0qqr5xz4hpi', '.eJxVjEsOwiAUAO_C2hDgSeG5dN8zED4PqRpISrsy3l1JutDtzGRezPl9K27vtLolsQuTwE6_MPj4oDpMuvt6azy2uq1L4CPhh-18bome16P9GxTfy_gSokaRp5Q9KjgLsERIwiQZsoWoMeasvpU26IGmgEoaEgmEpEjGsvcHB4I4JA:1mM96C:SPjFOem1uGXkAmy9Y0WxLoDbISpZikEt1Ffl-7tQVow', '2021-09-17 13:19:16.316983'),
('za1jldn8ba47f3zfb4y30qny0owyrirg', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhdGZzeHYtNzAzMzU3YjI5OTcxMzA0ODZhMDYzNmUxYTY0ZmNjOGYifQ:1mTMNV:liOMTb654oszN8rdmHLPtP63atJAbaW5bGkf4OLbWEw', '2021-10-07 10:54:57.853284'),
('zzmhruphua1vv5qlp947szccq7068d2u', '.eJxVjDEOwjAMRe-SGUVNHAphZOcMkV3bpIBSqWknxN1JpQ6wvvf-f5uE65LTWmVOI5uLcd4cfiHh8JSyGX5guU92mMoyj2S3xO622tvE8rru7d9BxprbOvaoR5bgAPXkBT2LUgdAJGcgp9poS1hB-0EFhEVAYwQKnQ8hms8XS645vQ:1mR9Zb:Z_Lk2MKDnawvxOW0fso_CEexhqGnqm91dsggc4fT9v4', '2021-10-01 08:50:19.647082');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_contactform`
--

CREATE TABLE `homepage_contactform` (
  `id` bigint(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` int(11) NOT NULL,
  `preferred_call_date` varchar(50) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homepage_contactform`
--

INSERT INTO `homepage_contactform` (`id`, `name`, `email`, `phone`, `preferred_call_date`, `message`) VALUES
(1, 'Bimal Shrestha', 'bimal@gmail.com', 2147483647, '21 July', 'What are the services?'),
(2, 'Akash Majhi', 'asash@hotmail.com', 9844451, '32 September', 'Can we get free lunch?'),
(3, 'Nabin Bhatt', 'nabin@gmail.com', 9844451, '31 November', 'can it be a bit longer stay?'),
(4, 'Albert Ghosle', 'gosle@gmail.com', 9844451, '5 June', 'I am glad you are providing good service'),
(5, 'Maichan Lama', 'lamam@gmail.com', 9844451, '14 Feburary', 'What a bad place, can i change it?'),
(6, 'Kiran Rana', 'ranag@gmail.com', 9844451, '1 January', 'It is affordable to go to space?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_country`
--
ALTER TABLE `admins_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_country_Name_f788230f` (`Name`);

--
-- Indexes for table `admins_offer`
--
ALTER TABLE `admins_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_place`
--
ALTER TABLE `admins_place`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_place_country_id_35d8a5c9_fk_admins_country_id` (`country_id`),
  ADD KEY `admins_place_dest_name_32831685` (`dest_name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_booking`
--
ALTER TABLE `dashboard_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_booking_place_id_ecda60a8_fk_admins_place_id` (`place_id`),
  ADD KEY `dashboard_booking_user_id_c3bf1b56_fk_auth_user_id` (`user_id`),
  ADD KEY `dashboard_booking_offer_id_b54df7b7_fk_admins_offer_id` (`offer_id`);

--
-- Indexes for table `dashboard_profile`
--
ALTER TABLE `dashboard_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `dashboard_watchlist`
--
ALTER TABLE `dashboard_watchlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_watchlist_place_id_91f39d5a_fk_admins_place_id` (`place_id`),
  ADD KEY `dashboard_watchlist_user_id_898b0d70_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `homepage_contactform`
--
ALTER TABLE `homepage_contactform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_country`
--
ALTER TABLE `admins_country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admins_offer`
--
ALTER TABLE `admins_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins_place`
--
ALTER TABLE `admins_place`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_booking`
--
ALTER TABLE `dashboard_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `dashboard_profile`
--
ALTER TABLE `dashboard_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dashboard_watchlist`
--
ALTER TABLE `dashboard_watchlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `homepage_contactform`
--
ALTER TABLE `homepage_contactform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins_place`
--
ALTER TABLE `admins_place`
  ADD CONSTRAINT `admins_place_country_id_35d8a5c9_fk_admins_country_id` FOREIGN KEY (`country_id`) REFERENCES `admins_country` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_booking`
--
ALTER TABLE `dashboard_booking`
  ADD CONSTRAINT `dashboard_booking_offer_id_b54df7b7_fk_admins_offer_id` FOREIGN KEY (`offer_id`) REFERENCES `admins_offer` (`id`),
  ADD CONSTRAINT `dashboard_booking_place_id_ecda60a8_fk_admins_place_id` FOREIGN KEY (`place_id`) REFERENCES `admins_place` (`id`),
  ADD CONSTRAINT `dashboard_booking_user_id_c3bf1b56_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_profile`
--
ALTER TABLE `dashboard_profile`
  ADD CONSTRAINT `dashboard_profile_user_id_3e392fce_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_watchlist`
--
ALTER TABLE `dashboard_watchlist`
  ADD CONSTRAINT `dashboard_watchlist_place_id_91f39d5a_fk_admins_place_id` FOREIGN KEY (`place_id`) REFERENCES `admins_place` (`id`),
  ADD CONSTRAINT `dashboard_watchlist_user_id_898b0d70_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
