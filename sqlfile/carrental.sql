
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e93f3bf64110ed09a7a811915479c271', '2020-01-14 22:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE IF NOT EXISTS `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'ankit@gmail.com', 2, '22/01/2020', '25/02/2020', 'I need this booking urgently.', 1, '2020-01-19 00:15:43'),
(2, 'ayush@gmail.com', 3, '30/03/2020', '02/04/2020', 'Finally going to drive my dream car', 2, '2020-01-26 00:15:43'),
(3, 'happy@gmail.com', 1, '02/07/2020', '07/07/2020', 'Wow! Nice Car ', 0, '2020-01-26 00:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE IF NOT EXISTS `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Lamborghini', '2020-01-18 16:24:34', '2020-06-19 06:42:23'),
(2, 'Bugatti', '2020-01-18 16:24:50', NULL),
(3, 'Hyundai', '2020-01-18 16:25:03', NULL),
(4, 'Rolls Royce', '2020-01-18 16:25:13', NULL),
(5, 'BMW', '2020-01-18 16:25:24', NULL),
(6, 'Audi', '2020-01-19 06:22:13', NULL),
(7, 'Ford', '2020-01-19 10:22:18', NULL),
(8, 'Toyota','2020-01-19 10:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'XYZ Floor, Gulf Road, Gurgaon', 'yourcaryourstyle@gmail.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Shelby', 'newuser@gmail.com', '2147483647', 'Can I book multiple cars for ocassion', '2020-01-17 10:50:48', 1),
(2, 'Friendly', 'happyuser@gmail.com', '1177889955', 'Do you have cars for every brand?', '2020-02-14 14:30:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Enjoy.</P>\r\n'),
(2, 'Privacy Policy', 'privacy', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Nothing.</span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;"><b>Welcome to our website</b>
<br>
<br>
That wonderful feeling – you start the engine and your adventure begins…
<br>
Here everything we do is about giving you the freedom to discover more. We’ll move mountains to find you the right rental car, and bring you a smooth, hassle-free experience from start to finish. 
Here you can find out more about how we work.</span>'),
(4, 'FAQs', 'faqs', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">No Worries.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE IF NOT EXISTS `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'carlover@gmail.com', '2020-01-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE IF NOT EXISTS `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'ankit@gmail.com', 'Booked for the 3d time this year ,hope it is going to be good', '2020-02-18 07:44:31', 1),
(2, 'ayush@gmail.com', '\nThe booking went fine, received an email to inform me that the
car was reserved, all good.', '2020-03-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Ankit Kumar', 'happy@gmail.com', '25e884082d818b76b462409f19f7795f', '2147483647', NULL, NULL, NULL, NULL, '2020-01-17 19:59:27', '2020-01-26 21:02:58'),
(2, 'Shelby', 'ankit@gmail.com', '17540aef7b8470cc3ea8b2b9046af3b6', '8285703354', NULL, NULL, NULL, NULL, '2020-02-17 20:00:49', '2020-02-26 21:03:09'),
(3, 'AV', 'av@gmail.com', 'be68582f77aecadc0389a785aefd64e9', '09999857868', '03/02/1999', 'New Delhi', 'New Delhi', 'New Delhi', '2020-03-17 20:01:43', '2020-03-17 21:07:41'),
(4, 'Ayush Verma', 'ayush@gmail.com', '66049c07d9e8546699fe0872fd32d8f6', '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2020-06-17 20:03:36', '2020-06-26 19:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE IF NOT EXISTS `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'X7', 5, 'The 2019 BMW X7 is the German automakers late entry into the three-row luxury crossover SUV arena-but it proves itself worth the wait with excellent interior space, fine road manners, and a cabin worthy of comparison to its prettiest rivals.', 12000, 'Diesel', 2019, 7, 'x7.jpg', 'x7b.jpg', 'x7c.jpg', 'x7d.jpg', 'x7e.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-19 16:16:17', '2020-01-20 16:57:11'),
(2,  '7 Series', 5, 'The 2020 BMW 7 Series strikes a nice balance between luxurious indulgences and driver enjoyment, pairing an exceptionally roomy cabin with powerful engine options. The 2020 BMW 7-Series is ranked #3 in super luxury cars category', 10000, 'Petrol', 2020, 5, '7a.jpg', '7b.jpg', '7c.jpg', '7d.jpg', '7e.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-19 11:46:23', '2020-01-20 18:38:13'),
(3, 'R8', 6, 'The 2019 R8 spent plenty of time in Neckarsulm’s gym, beefing up the 5.2-liter V10 to 562 horsepower and 406 pound-feet of torque, gains of 30 hp and seven lb-ft over last year’s model. With the R8 Performance, the improvements are smaller, with just nine hp and 15 lb-ft, bringing the total to 612 hp and 428 lb-ft. In other words, the refreshed R8 is on par with its Italian sibling, the Lamborghini Huracan, although if power is all you care about, the Huracan Performante is still king of the hill with 640 hp.', 7000, 'Petrol', 2019, 2, 'r1.jpg', 'r2.jpg', 'r3.jpg', 'r4.jpg', 'r5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-19 16:18:20', '2020-01-20 18:40:11'),
(4, 'Veneno', 1, 'Like with all the other Lambo supercars, the new Venevo takes its name from the fighting arena: Veneno is one of the strongest and most aggressive fighting bulls ever. In 1914 he wounded the famous torero José Sánchez Rodríguez during the bullfight in the arena Sanlúcar de Barrameda’s, Andalusia, Spain. And the best thing is that there only 9 units produced by lamborghini and the best thing is we have that 9th unit.', 50000, 'Petrol', 2013, 2, 'l1.jpg', 'l2.jpg', 'l3.jpg', 'l4.jpg', 'l5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-19 16:18:43', '2020-01-20 18:44:12'),
(5, 'Chiron', 2, 'For the most well-heeled among us, the average run-of-the-mill supercar may fall short of fulfilling our needs. If transportation with a six-figure price is not exclusive enough for your tastes, there is the 2019 Bugatti Chiron. The Chiron costs almost $3 million, and it is about as exotic as hypercars get. With fluid curves and angrily squinting headlights, this coupe is exterior design communicates power and performance, and its standard 1500-hp engine endows it with acceleration capabilities worthy of a bullet train. The Chiron cabin is deluxe, but storage space is minimal, and amenities such as driver-assistance technology and an infotainment screen are missing. While this Bugatti may not be the most accommodating choice for something as mundane as a daily commute, it excels as a head-turning lust object and all-around performance machine.', 40000, 'Petrol', 2019, 2, 'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg', 'b5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-20 17:57:09', '2020-01-21 16:56:43'),
(6, 'Venue', 3, 'In a market place that remains under pressure, where cars are not really selling as they should, the Hyundai Venue comes like a beacon in the fog. The subcompact SUV has already garnered over 20,000 bookings and the juggernaut looks set to roll on. The reason for the popularity, says Hyundai, is the segment itself - which already accounts for 47 per cent of all SUV sales, and is set to go past 50 per cent in a year or two. Hyundai also makes a bold claim of wanting to gain market leadership in this space', 500, 'CNG', 2019, 5, 'h1.jpg', 'h2.jpg', 'h3.jpg', 'h4.jpg', 'h5.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2020-01-20 18:15:09', '2020-01-21 16:58:23'),
(7, 'Ghost', 4, 'The Ghost is a Rolls-Royce to take when the parking is tighter and the chauffeur’s got the day off. Smaller, in the same way a tanker is to a supertanker, the Ghost keeps Rolls-Royce’s imperious manner, but hides it behind slightly more bluff edges and not quite as aggrandising a front grille.', 20000, 'Petrol', 2019, 5, 'g1.jpg', 'g2.jpg', 'g3.jpg', 'g4.jpg', 'g5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-20 18:20:19', '2020-01-21 17:06:03'),
(8, 'Mustang', 7, 'Six available high-powered engines means that every 2019 Mustang comes with performance in its DNA. And with nine unique trims, you’ve got options, from the fun and energetic GT Convertible to the 2020 Shelby GT500® , host to the most power-dense supercharged V8 production engine in the world. At the peak of the storied Mustang lineup is the all-new Shelby GT500®, the most powerful street-legal Ford vehicle of all time. It combines a supercharged 5.2-liter V8 engine and a TREMEC 7-speed transmission for awe-inspiring power. And with a nod to adrenaline junkies everywhere, the GT500 was designed with fighter jets in mind — the result is a precise and aerodynamic exterior and a top speed of 186 mph. With an ergonomic build and superior powertrain, the GT500 takes performance to new heights as the fastest Mustang ever on a straight line and around curves.', 1000, 'Petrol', 2019, 4, 'f1.jpg', 'f2.jpg', 'f3.jpg', 'f4.jpg', 'f5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-20 18:27:29', '2020-01-21 17:16:10'),
(9, 'Camry', 8, 'The 2019 Toyota Camry and its distinction for unsullied reliability allow it to be a strong contender in the fading family-sedan segment. Its three powertrain options cover a diversified range: there is a fuel-efficient four-cylinder, a potent V-6, and an eco-friendly hybrid. Though the Toyota Camry has a compliant ride and proficient handling, it trails in performance behind the sportier and turbocharged rivals such as the acclaimed Honda Accord or the elegant Mazda 6. There’s also plentiful standard driver-assistance technology, including forward-collision warning, adaptive cruise control and lane-departure warning. The Camry may be plagued by small imperfections, but even so, it is the best-executed Camry that Toyota has ever produced.', 300, 'CNG', 2019, 4, 'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg', 'c5.jpg', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2020-01-20 18:37:19', '2020-01-21 17:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
