-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2017 at 07:16 PM
-- Server version: 10.0.27-MariaDB-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wizstres2_cyanide`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `admin` varchar(64) NOT NULL,
  `client` varchar(64) NOT NULL,
  `action` varchar(6444) NOT NULL,
  `date` int(21) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=654 ;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `admin`, `client`, `action`, `date`) VALUES
(636, 'MemeLord', 'Hub', 'Disabled Hub - 600 seconds', 1458336022),
(637, 'MemeLord', 'Hub', 'Enable Hub ', 1458336041),
(638, 'MemeLord', 'MemeLord', 'User updated to plan: Diamond V.I.P', 1458336081),
(639, 'dandan', 'MemeLord', 'User updated to plan: Gold V.I.P', 1458336082),
(640, 'dandan', 'dandan', 'User updated to plan: Private Admin', 1458336089),
(641, 'dandan', 'Rissy', 'User updated to plan: Gold V.I.P', 1459897264),
(642, 'dandan', 'dandan', 'User updated to plan: Private Admin', 1459897270),
(643, 'Rissy', 'Rissy', 'Users expire updated from 1462489264 to 06-05-2016', 1459897382),
(644, 'Zenon', 'Zenon', 'User updated to plan: Private Admin', 1485484836),
(645, 'Zenon', 'JosieLopez', 'User updated to plan: Private Admin', 1485485823),
(646, 'Zenon', 'JigZz', 'Users expire updated from 0 to 01-01-1970', 1485561380),
(647, 'JigZz', 'JigZz', 'User updated to plan: Owner', 1485562054),
(648, 'Zenon', 'Advanced', 'Users expire updated from 0 to 01-01-1970', 1485562492),
(649, 'Advanced', 'Advanced', 'User updated to plan: Owner', 1485564472),
(650, 'Zenon', 'Ping', 'Users expire updated from 1738022854 to 28-01-2025', 1485577154),
(651, 'Zenon', 'Zenon', 'User updated to plan: Premium Plan', 1485584656),
(652, 'Ping', 'Ping', 'User updated to plan: Supreme Plan', 1485615899),
(653, 'Ping', 'Ping', 'User updated to plan: Owner', 1485642882);

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE IF NOT EXISTS `api` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `api` varchar(1024) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(100) NOT NULL,
  `type` int(88) NOT NULL,
  `status` int(88) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id`, `name`, `api`, `slots`, `methods`, `type`, `status`) VALUES
(146, 'Bravo', 'http://185.106.122.224/lol2.php?host=[host]&port=[port]&time=[time]&method=[method]', 10, 'chargen SSDP NTP SSYN', 0, 1),
(145, 'Alpha', 'http://185.106.122.224/bitch2.php?key=kill&host=[host]&port=[port]&time=[time]&method=[method]', 10, 'HTTPFLOOD TCP', 0, 1),
(147, 'Charlie', 'http://185.106.122.224/bitch3.php?key=kill&host=[host]&port=[port]&time=[time]&method=[method]', 10, 'HTTPFLOOD TCP', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `username` varchar(15) NOT NULL,
  `reason` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE IF NOT EXISTS `blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `blacklist`
--

INSERT INTO `blacklist` (`ID`, `data`, `type`) VALUES
(68, '185.61.137.49', 'victim');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(16, 'Trial Plan', 'Massive attack is not allowed when you have Trial Plan.'),
(17, 'Trial Rebuy.', 'You are not allowed to buy trial plan more than 1 time'),
(18, 'Changning The F.A.Q', 'CyanideStresser has the premssion to change their F.A.Q any time they want without telling any customer.'),
(19, 'VPN/PROXY/RDP', 'PROXY / RDP / VPN isnt allowed!'),
(20, 'Can I apply for support or admin', 'No you can not if you ask for admin or support in live chat / ticket the chat will be closed immediately.'),
(21, 'Can i get 1 free trial', 'Absolutely Not!! '),
(22, 'What is VIP', 'With VIP you can use private network, you have more power and can drop protected servers easy! '),
(14, 'Do you offer any free trials?', 'No we do not offer free trials.'),
(3, 'Do you offer any lifetime/unlimited packages?', 'Yes we do, but to get these you must talk to our support team and we will teach you how!\n'),
(4, 'What payment methods do you accept?', 'We accept Paypal and Bitcoin ONLY.'),
(5, 'Why can''t I pay with PayPal?', 'You can pay using PayPal but at times it won''t appear do to accounts being limited. If this occurs please don''t make a ticket about it but instead wait until it reappears.'),
(6, 'What''s the point of using a Layer 7 attack method?', 'Layer 7 attack methods target servers at an application layer in attempt to trick servers into allowing and process dirty traffic. This generally means utilizing the maximum amount of resources so no clients are allocated any.'),
(7, 'What is the difference between bits and bytes?', 'Usually bits (lowercase b) are used to describe data transfer and bytes (uppercase B) for data storage. The only physical difference between the two is that every byte contains eight bits of data.\r\nOn our site you will run into three common units:\r\nMbps (megabits per second) - average data transfer rate\r\nB (bytes) - packet size\r\nkB (kilobytes) - packet size (1024 bytes = 1 kilobyte)'),
(8, 'Is there a limit on how many boots I can launch per day?', 'No! You can launch as many attacks as you would like'),
(13, 'What''s the difference between attack methods?', 'SSDP - Layer 4 UDP amplification vector, usually our hardest hitting attack method, should render most targets inaccessible.\r\nDNS - Layer 4 UDP amplification vector, DNS amplification vector, oldest UDP amplification vector and should be used for low protection targets.\r\nNTP - Layer 4 UDP amplification vector, being famous for downing CloudFlare, and many other targets it has the best amplification factor, but the least vulnerability rate, shouldn''t be used for highly protected targets.\r\nTCP-FUCK (NGSSYN) - Layer 4 TCP - Spoofed TCP attack method, exhausting most connections.\r\nACK - Layer 4 TCP - Spoofed TCP attack method.\r\nSYN - Layer 4 TCP - Spoofed TCP attack method.\r\nDOMINATE - Layer 4 TCP - Spoofed TCP attack method ( strong for home connections ).\r\nTCOP - Layer 4 TCP - Spoofed TCP attack method randomly attacking port.\r\nSNMP - Layer 4 UDP amplification vector - Spoofed Udp attack method.\r\nJoomla (Recommended)- Layer 7 - Strong. spamming web bandwitdh.\r\nXMLRPC - Layer 7 - Taking down websites fast.\r\nGET & POST - Layer 7 - Flooding web with client request.\r\n'),
(10, 'I bought a package and i didnt received it.', 'Wait 15 mintues. if you still didnt received the pacakge. open ticket with your payment method & email or identify.'),
(11, 'Can i share my account?', 'Absolutely not.'),
(12, 'What is the guarantee that my target will be offline?', 'We provide no guarantee that your stress test will cause the target to be down. If your target does not go offline then submit a ticket and we will have our power department investigate the target and do our best to cause it to go offline. Please note that CyanideStresser blocks all DDoS attacks sent to OVH, NFO, or any other DDoS protected server companies.'),
(23, 'Multi Accounts', 'You are allowed to have multiple accounts but if you buy a plan it does not go on all of your accounts');

-- --------------------------------------------------------

--
-- Table structure for table `fe`
--

CREATE TABLE IF NOT EXISTS `fe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fe`
--

INSERT INTO `fe` (`ID`, `userID`, `type`, `ip`) VALUES
(8, 1161, 'f', '5.196.68.28'),
(9, 1135, 'e', '99.239.213.40');

-- --------------------------------------------------------

--
-- Table structure for table `iplogs`
--

CREATE TABLE IF NOT EXISTS `iplogs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `logged` varchar(15) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loginlogs`
--

CREATE TABLE IF NOT EXISTS `loginlogs` (
  `username` varchar(15) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` int(11) NOT NULL,
  `country` varchar(20) NOT NULL,
  KEY `date` (`date`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlogs`
--

INSERT INTO `loginlogs` (`username`, `ip`, `date`, `country`) VALUES
('MemeLord', '69.248.136.104', 1458335902, 'United States'),
('dandan', '188.120.148.141', 1458335935, 'Israel'),
(' fawfdasdf - fa', '31.210.186.242', 1459895952, 'XX'),
(' fawfdasdf - fa', '31.210.186.242', 1459895952, 'XX'),
('dandan - failed', '31.210.186.242', 1459897173, 'XX'),
('dandan', '31.210.186.242', 1459897180, 'Israel'),
('Rissy', '75.91.180.173', 1459897209, 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL,
  `ip` varchar(1024) NOT NULL,
  `port` int(5) NOT NULL,
  `time` int(4) NOT NULL,
  `method` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `stopped` int(1) NOT NULL DEFAULT '0',
  `handler` varchar(50) NOT NULL,
  `network` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_date` (`time`,`date`,`handler`,`stopped`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30588 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user`, `ip`, `port`, `time`, `method`, `date`, `stopped`, `handler`, `network`) VALUES
(30568, 'Zenon', '172.88.233.70', 80, 100, 'UDP', 1485484897, 1, 'Alph', 'Normal'),
(30569, 'Zenon', '73.203.238.67', 80, 3000, 'udp', 1485485393, 1, 'Alph,Charlie,Bravo,Delta,Foxtrot,Echo', 'Normal'),
(30570, 'JosieLopez', '73.171.223.27', 80, 10, 'udp', 1485485883, 0, 'Charlie,Alph,Delta,Bravo,Foxtrot,Echo', 'Normal'),
(30571, 'JosieLopez', '73.171.223.27', 80, 30, 'udp', 1485485906, 0, 'Alph,Bravo,Charlie,Delta,Foxtrot,Echo', 'Normal'),
(30572, 'JosieLopez', '73.171.223.27', 80, 10, 'chargen', 1485486076, 0, 'Golf', 'Normal'),
(30573, 'Zenon', '73.203.238.67', 80, 100, 'chargen', 1485562191, 0, 'Golf', 'Normal'),
(30574, 'Zenon', '172.88.234.15', 80, 100, 'chargen', 1485564862, 0, 'Golf', 'Normal'),
(30575, 'Advanced', '71.85.208.49', 80, 100, 'chargen', 1485566322, 1, 'Golf', 'Normal'),
(30576, 'Zenon', '73.203.238.67', 80, 100, 'chargen', 1485594931, 1, 'Golf', 'Normal'),
(30577, 'Ping', '174.49.143.159', 80, 60, 'chargen', 1485624016, 1, 'Golf', 'Normal'),
(30578, 'Ping', '174.49.143.159', 80, 60, 'chargen', 1485624094, 1, 'Golf', 'Normal'),
(30579, 'Zenon', 'http://www.wizstress.tk', 80, 90, 'gang', 1485651423, 1, 'Alpha', 'Normal'),
(30580, 'Zenon', '174.49.143.159', 80, 90, 'chargen', 1485651527, 0, 'Alpha', 'Normal'),
(30581, 'JosieLopez', '75.28.180.178', 80, 30, 'udp', 1485656677, 1, 'Alpha', 'Normal'),
(30582, 'JosieLopez', '75.28.180.178', 80, 30, 'chargen', 1485656723, 1, 'Alpha', 'Normal'),
(30583, 'Zenon', '24.182.180.73', 80, 100, 'chargen', 1485741078, 1, 'Alpha', 'Normal'),
(30584, 'Zenon', '73.203.238.67', 80, 100, 'udp', 1485745043, 1, 'Bravo,Alpha', 'Normal'),
(30585, 'Zenon', '138.68.166.239', 80, 20, 'SSYN', 1486285504, 1, 'Bravo', 'Normal'),
(30586, 'Zenon', '138.68.166.239', 80, 20, 'TCP', 1486285522, 1, 'Charlie,Alpha', 'Normal'),
(30587, 'Zenon', '138.68.166.239', 80, 20, 'chargen', 1486285570, 1, 'Bravo', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `date` int(20) NOT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=570 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `ticketid`, `content`, `sender`, `date`) VALUES
(569, 248, '<a href="test">atest</a>', 'Client', 1459897238);

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE IF NOT EXISTS `methods` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `type` varchar(6) NOT NULL,
  `command` varchar(1000) NOT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=933 ;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `name`, `fullname`, `type`, `command`) VALUES
(928, 'HTTPFLOOD', 'HTTPFLOOD', 'udp', ''),
(924, 'udp', 'UDP', 'udp', ''),
(925, 'chargen', 'CHARGEN', 'udp', ''),
(929, 'TCP', 'TCP', 'tcp', ''),
(930, 'SSDP', 'SSDP', 'udp', ''),
(931, 'NTP', 'NTP', 'udp', ''),
(932, 'SSYN', 'SSYN', 'udp', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(25) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`ID`, `color`, `icon`, `title`, `content`, `date`) VALUES
(95, 'bg-success', 'fa fa-check', 'Welcome', 'Hello everyone and welcome to CyanideStresser, my name is Zenon I am one of the owners here at CyanideStresser. I would like to welcome all new custom and people just looking. If you are a customer than thank you so much for your business and if you are just looking than make sure to check out or special deals in our FAQ section! Thats all, thank you', 1485494528),
(96, 'bg-success', 'fa fa-check', 'Servers and Power', 'Hello everyone we have added many servers in the past days and we will be adding more, all servers will have amazing boot times and they will be unlimited. We will be adding new VIP servers very soon and they will be amazing!', 1485494609);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `paid` float NOT NULL,
  `plan` int(11) NOT NULL,
  `user` int(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tid` varchar(30) NOT NULL,
  `date` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=360 ;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mbt` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `concurrents` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`ID`, `name`, `mbt`, `unit`, `length`, `price`, `concurrents`, `private`) VALUES
(1, 'Trial Plan', 120, 'Days', 1, 1.99, 1, 0),
(2, 'Plus Package', 1200, 'Months', 1, 8.99, 2, 0),
(3, 'Deluxe Package', 2400, 'Months', 1, 13.99, 3, 0),
(4, 'Premium Plan', 3600, 'Months', 1, 24.99, 4, 0),
(5, 'Supreme Plan', 4800, 'Months', 2, 49.99, 5, 0),
(6, 'Extreme Benefactor', 6200, 'Months', 2, 249.99, 10, 2),
(22, 'Owner', 600000, 'Years', 8, 999, 10, 1),
(16, 'Basic Plan', 600, 'Months', 1, 4.99, 1, 0),
(23, 'Normal Benefactor', 5000, 'Months', 1, 69.99, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `report` varchar(644) NOT NULL,
  `date` int(64) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `username`, `report`, `date`) VALUES
(1, 'admin', 'Changing payment settings', 1439249609),
(2, 'Zenon', 'Changing payment settings', 1485488276);

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `sitename` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `paypal` varchar(50) NOT NULL,
  `bitcoin` varchar(50) NOT NULL,
  `maintaince` varchar(100) NOT NULL,
  `rotation` int(1) NOT NULL DEFAULT '0',
  `system` varchar(7) NOT NULL,
  `maxattacks` int(5) NOT NULL,
  `testboots` int(1) NOT NULL,
  `cloudflare` int(1) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `key` varchar(100) NOT NULL,
  `issuerId` varchar(50) NOT NULL,
  `coinpayments` varchar(50) NOT NULL,
  `ipnSecret` varchar(100) NOT NULL,
  `google_site` varchar(644) NOT NULL,
  `google_secret` varchar(644) NOT NULL,
  `btc_address` varchar(64) NOT NULL,
  `secretKey` varchar(50) NOT NULL,
  `cbp` int(1) NOT NULL,
  `paypal_email` varchar(64) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `hub_status` int(77) NOT NULL,
  `hub_reason` varchar(77) NOT NULL,
  `hub_time` int(43) NOT NULL,
  `hub_rtime` int(65) NOT NULL,
  UNIQUE KEY `key` (`key`),
  KEY `sitename` (`sitename`(767))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sitename`, `description`, `paypal`, `bitcoin`, `maintaince`, `rotation`, `system`, `maxattacks`, `testboots`, `cloudflare`, `skype`, `key`, `issuerId`, `coinpayments`, `ipnSecret`, `google_site`, `google_secret`, `btc_address`, `secretKey`, `cbp`, `paypal_email`, `theme`, `logo`, `hub_status`, `hub_reason`, `hub_time`, `hub_rtime`) VALUES
('CyanideStresser', 'Welcome to CyanideStresser', '1', '1', '', 0, 'api', 50, 0, 1, '', 'nu113dstr3ss3r', '0', 'a7fd48467b6c1a9f2b75db3fc5c26cc7', 'gdVI1757', '6LeCghMUAAAAAFcjSunoaylnjyRatc--q1e7PGqO', '6LeCghMUAAAAAPdvSIRsyXL7912DvSUrLgZJNIue', '1MMZxo8RfGgsgXcCrFgbg2VLXKphutk76c', 'x01AhBQ8Uc-Vivhtvp-j7w', 1, 'payments759@gmail.com', 'default.min.css', 'energy', 1, '', 0, 1454521325);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(1024) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `date` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `content`, `status`, `username`, `date`) VALUES
(248, 'Test', 'test', 'Closed', 'Rissy', 1459897226);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `membership` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `referralbalance` int(3) NOT NULL DEFAULT '0',
  `testattack` int(1) NOT NULL,
  `activity` int(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1469 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `email`, `rank`, `membership`, `expire`, `status`, `referral`, `referralbalance`, `testattack`, `activity`) VALUES
(1462, 'JosieLopez', '07c9989a18d82e6301ee13b65b23850c42f609d7', 'kile.kapral@aol.com', 0, 22, 1737946623, 0, '0', 0, 0, 0),
(1463, 'Ping', '7003d0995f8968b13cab6101a3de0db8e0d5d1a7', 'grant15231523@gmail.com', 1, 22, 1738103682, 0, '0', 0, 0, 1486248356),
(1461, 'Zenon', 'a7eede808b090eecc40250f56de433a76d6c2f0d', 'a@a.com', 1, 4, 1488263056, 0, '0', 0, 0, 1486319050),
(1464, 'Advanced', '8ca47a07e4ca8b3c03a74660e974bb337e47c795', 'email@advanced.net', 1, 22, 1738025272, 0, '0', 0, 0, 1485640862),
(1466, 'NaNoMoDz', '573b9508b72899de48b235e49d8de9ab0a317620', 'manwarren_john@icloud.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1465, 'RuztyJasper', 'fadfbfca673805920a82f56edc789b82c220a152', 'ruztyjasper@hotmail.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1467, 'JIgZz', 'f5ac1d45bf10eb68cb4c684825788ade5fb58a38', 'asdf@asdf.com', 0, 0, 0, 0, '0', 0, 0, 0),
(1468, 'admin', '7186ebfb69adb98029cce10975245bf1e6c44194', 'afdasfg@gmail.com', 0, 0, 0, 0, '0', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
