-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 11:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apollo`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(255) NOT NULL,
  `archive` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `title`, `description`, `date`, `picture`, `archive`) VALUES
(1, 'Apollo 1', 'Not flown. All crew members died in a fire during a launch pad test on January 27, 1967.\r\nOne of the worst tragedies in the history of spaceflight occurred on January 27, 1967 when the crew of Gus Grissom, Ed White, and Roger Chaffee were killed in a fire in the Apollo Command Module during a preflight test at Cape Canaveral. They were training for the first crewed Apollo flight, an Earth orbiting mission scheduled to be launched on 21 February. They were taking part in a &quot;plugs-out&quot; test, in which the Command Module was mounted on the Saturn 1B on the launch pad just as it would be for the actual launch, but the Saturn 1B was not fueled. The plan was to go through an entire countdown sequence.\r\n\r\nAt 1 p.m. on Friday, 27 January 1967 the astronauts entered the capsule on Pad 34 to begin the test. A number of minor problems cropped up which delayed the test considerably and finally a failure in communications forced a hold in the count at 5:40 p.m. At 6:30 p.m., Grissom said &quot;How are we going to get to the Moon if we can&#039;t talk between three buildings?&quot;. At 6:31 p.m. a surge was recorded in the AC bus 2 voltage readings, possibly indicating a short-circuit. The cockpit recording is difficult to interpret in places but a few seconds later one of the astronauts (probably Chaffee) is heard to say what sounds like &quot;Flames!&quot;. Two seconds after that White was heard to say, &quot;We&#039;ve got a fire in the cockpit.&quot; The fire spread throughout the cabin in a matter of seconds. Chaffee said, &quot;We have a bad fire!&quot;, followed by shouting. The last crew communication ended 17 seconds after the first indication of the start of the fire, followed by loss of all telemetry. The Apollo hatch could only open inward and was held closed by a number of latches which had to be operated by ratchets. It was also held closed by the interior pressure, which was higher than outside atmospheric pressure and required venting of the command module before the hatch could be opened. It took at least 90 seconds to get the hatch open under ideal conditions. Because the cabin had been filled with a pure oxygen atmosphere at normal pressure for the test and there had been many hours for the oxygen to permeate all the material in the cabin, the fire spread rapidly and the astronauts had no chance to get the hatch open. Nearby technicians tried to get to the hatch but were repeatedly driven back by the heat and smoke. By the time they succeeded in getting the hatch open roughly 5 minutes after the fire started the astronauts had already perished, probably within the first 30 seconds, due to smoke inhalation and burns.\r\n\r\nThe Apollo program was put on hold while an exhaustive investigation was made of the accident. It was concluded that the most likely cause was a spark from a short circuit in a bundle of wires that ran to the left and just in front of Grissom&#039;s seat. The large amount of flammable material in the cabin in the oxygen environment allowed the fire to start and spread quickly. A number of changes were instigated in the program over the next year and a half, including designing a new hatch which opened outward and could be operated quickly, removing much of the flammable material and replacing it with self-extinguishing components, using a nitrogen-oxygen mixture at launch, and recording all changes and overseeing all modifications to the spacecraft design more rigorously.\r\n\r\nThe mission, originally designated Apollo 204 but commonly referred to as Apollo 1, was officially assigned the name &quot;Apollo 1&quot; in honor of Grissom, White, and Chaffee. The first Saturn V launch (uncrewed) in November 1967 was designated Apollo 4 (no missions were ever designated Apollo 2 or 3). The Apollo 1 Command Module capsule 012 was impounded and studied after the accident and was then locked away in a storage facility at NASA Langley Research Center. The changes made to the Apollo Command Module as a result of the tragedy resulted in a highly reliable craft which, with the exception of Apollo 13, helped make the complex and dangerous trip to the Moon almost commonplace. The eventual success of the Apollo program is a tribute to Gus Grissom, Ed White, and Roger Chaffee, three fine astronauts whose tragic loss was not in vain. ', '2021-01-07 22:07:41', 'Apollo1.jpg', 'N'),
(3, 'Apollo 4', 'Mission was the first all-up test of the three stage Saturn V rocket. It carried a payload of an Apollo Command and Service Module (CSM) into Earth orbit. The mission was designed to test all aspects of the Saturn V launch vehicle and also returned pictures of Earth taken by the automatic Command Module apogee camera from about one hour before to one hour after apogee. Mission objectives included testing of structural integrity, compatibility of launch vehicle and spacecraft, heat shield and thermal seal integrity, overall reentry operations, launch loads and dynamic characteristics, stage separation, launch vehicle subsystems, the emergency detection system, and mission support facilities and operations. The mission was deemed a successful test.\r\n\r\nOrbital insertion was achieved by ignition of the third (S-IVB) stage, putting the spacecraft (S-IVB and CSM) into a 184 x 192 km parking orbit with a period of 88.2 minutes and an inclination of 32.6 degrees. After two orbits the S-IVB was re-ignited for a simulated translunar injection burn, putting the spacecraft into an Earth-intersecting trajectory with an apogee of 17,346 km. The S-IVB stage then separated from the CSM, and the service propulsion system (SPS) ignited for 16 seconds, raising the apogee to 18,216 km. Later the SPS was re-ignited for 271 seconds to accelerate the CSM to beyond lunar trajectory return velocities. SPS cutoff was followed by separation of the Command Module (CM) from the Service Module and orientation of the CM for reentry. Atmospheric entry at 122 km occurred at a flight path angle of 7.077 degrees with a velocity of 11,140 meters/second. The CM landed near Hawaii at 20:37 UT 9 November 1967 about 16 km from the target landing point.', '2021-01-07 22:10:56', '3-23.jpg', 'N'),
(4, 'Apollo 5', 'Mission objectives were to verify the ascent and descent stages, the propulsion systems, and the restart operations, and to evaluate the spacecraft structure, LM staging, 2nd stage (S-IVB) and instrument unit (Iu) orbital performance.\r\n\r\nAfter launch, the S-IVB 2nd stage ignited to insert the spacecraft into a 163 x 222 km Earth orbit with a period of 88.3 minutes and an inclination of 31.63 degrees. The nose cone was jettisoned and after a coast of 43 min 52 sec the LM was separated from the LM adapter. The LM entered a 167 x 222 km orbit with a period of 88.4 min and an inclination of 31.63 degrees. A planned descent propulsion system (DPS) of 39 seconds was cut short after only 4 seconds. The burn was designed to simulate deceleration for descent to the lunar surface, but was stopped prematurely due to overly conservative programming of the flight software. An alternate flight plan was put into effect, in which the DPS fired for 26 seconds at 10% thrust and then for 7 seconds at maximum thrust. A third DPS firing was performed 32 seconds later, consisting of a 26 second burn at 10% thrust and 2 seconds at maximum thrust, followed by a burn to simulate an abort during the landing phase, in which the ascent propulsion system (APS) was ignited simultaneously with the DPS being shut down. The APS burn lasted 60 seconds, followed by a 6 min 23 sec firing which depleted APS fuel. At the end of the 11 hr, 10 min test period, both LM stages were left in orbit eventually to reenter and disintegrate. Despite the initial premature DPS shutdown, the mission was deemed a success and operation of all LM systems was confirmed.', '2021-01-07 22:13:00', '4-98.jpg', 'N'),
(5, 'Apollo 6', 'The spacecraft consisted of the three stage Saturn V, the Apollo Command and Service Module (CSM) and a boilerplate Lunar Module (LM). The primary objectives of the mission were to demonstrate structural and thermal integrity and compatibility of the launch vehicle and spacecraft, confirm launch loads and dynamic characteristics, and verify stage separations, propulsion, guidance and control, electrical systems, emergency detection system, and mission support facilities and operations, including Command Module recovery.\r\n\r\nThree major problems occurred during the mission. Two minutes and five seconds after launch, the Saturn V structure underwent a severe pogo oscillation, without damage to the spacecraft structure. Due to a manufacturing flaw and unrelated to the pogo oscillations, structural panels were lost from the lunar module adapter. Finally, after the completion of first stage firing and part way through the second stage burn, two of the five second stage J-2 engines shut down prematurely. The planned 175 km circular Earth orbit was not achieved, instead, after completion of the third stage burn, the spacecraft was in a 172.1 x 223.1 km, 89.8 min orbit. After two orbits, the third stage failed to reignite as planned, so the Service Module propulsion system was used to boost the spacecraft to an apogee of 22,225.4 km, from which the planned lunar reentry simulation took place at 36,025 km/hr, slightly less than the planned velocity of 40,000 km/hr. The Command Module splashed down 80 km off target 9 hr 50 min after launch and was recovered in good condition.', '2021-01-08 08:24:13', '5-56.jpg', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` char(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `country`, `date`, `archive`) VALUES
(20, 'Vedran', 'Uremovic', 'vedran.uremovic@gmail.com', 'vuremovic', '$2y$12$YzTq.Q..RAqjuH1crnyew.GigfhU1Lyjd.6ejiS6MoUWXQSbNI/MS', 'HR', '2021-01-07 20:18:56', 'Y'),
(21, 'Pero', 'Peric', 'pero.peric@gmail.com', 'pperic', '$2y$12$ZQEi0BN6rb0GhcdngTqIWOCKnQtaoD5ieYUJPrrB1EaFc7bcKCGqu', 'HR', '2021-01-07 22:01:54', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
