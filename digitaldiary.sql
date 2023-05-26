-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2023 at 10:53 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `digitaldiary`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `contact_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `person` varchar(50) NOT NULL,
  `office_address` varchar(200) NOT NULL,
  `home_address` varchar(200) NOT NULL,
  `whatsapp_no` varchar(20) NOT NULL,
  `call_no` varchar(20) NOT NULL,
  `details` varchar(200) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `username`, `person`, `office_address`, `home_address`, `whatsapp_no`, `call_no`, `details`) VALUES
(1, 'ashutosh', 'Rahul Dubey', 'Badali khera', 'Badali khera', '9546549846', '6546432134', 'Friend'),
(2, 'ashutosh', 'Pranay Shukla', 'SMS', 'haidargarh', '9879839873', '9837987398', 'Brother , friend'),
(3, 'ashutosh', 'Michael', 'Karnataka', 'Australia', '1093988390', '9829873987', 'Employee'),
(4, 'ashutosh', 'Surbhi sharma', 'Hind nagar', 'Hind nagar', '9873987398', '7637639839', 'classmate,best friend,'),
(33, 'ashutosh', 'Mili', 'hindnagar', 'hindnagar', '5465469536', '', ''),
(6, 'ashutosh', 'Srishti', 'hind nagar', 'hind nagar', '9263652887', '7627683876', 'friend,sis\r\n\r\n'),
(7, 'ashutosh', 'Ankit Gautam', 'Swiggy Manager', 'Baldi khera', '9872987987', '9879873987', 'bro,friend'),
(8, 'ashutosh', 'Jaya ', 'BPO call , teacher parag', 'parag near nirvana club', '9872987298', '3682938763', 'friend,sis\r\n'),
(9, 'ashutosh', 'Rakesh Gahlot', 'Uttrakhand ', 'Uttar pradesh', '3987987298', '2298729872', 'employee'),
(10, 'ashutosh', 'Rohit ', 'Uttranchal', 'UP', '9839876352', '9862433097', 'bro'),
(11, 'Mahendar Solanki', 'Dhirendar verma', 'Punjab ', 'Punjab', '4828038392', '8798798798', 'Partner'),
(12, 'Mahendar Solanki', 'Ramesh', 'C-1 sector lko UP', 'UP', '9873987398', '9387363828', 'classmate'),
(13, 'Mahendar Solanki', 'Aman ', 'dehradun', 'dehradun', '9837492839', '9877686589', 'friend'),
(14, 'Mahendar Solanki', 'Ahamd', 'Dhaka', 'Dhaka', '9818717819', '8787987656', 'employee.'),
(15, 'Mahendar Solanki', 'Arohi', 'firozabad', 'firozabad', '9288919473', '9283748274', 'sis'),
(16, 'Mahendar Solanki', 'Daesy', 'New delhi', 'Australia', '1983283029', '9272838918', 'Employee'),
(17, 'Mahendar Solanki', 'Mahesh Kumar', 'badali khera', 'badali khera', '9828472183', '7638297427', 'friend'),
(18, 'Mahendar Solanki', 'Himesh', 'sector LDA sector E', 'UP', '7292749283', '9383983948', 'employee'),
(19, 'Mahendar Solanki', 'Hermaini disouza', 'Mumbai', 'mumbai', '9278827291', '9373847237', 'actor'),
(20, 'Mahendar Solanki', 'Abhay', 'PAC', 'LKO UP', '6294822940', '9849374983', 'brother''s friend'),
(21, 'Rajan Shah', 'Abhi', 'LDA', 'LDA C-1 sector', '6132165132', '3216532165', 'friend\r\n'),
(22, 'Rajan Shah', 'Tinku', 'PAC', 'PAC', '63256325', '9659845325', 'brother'),
(23, 'Rajan Shah', 'Rehmaan', 'jankipuram lko', 'UP', '3165135165', '6516165161', 'foe'),
(24, 'Rajan Shah', 'Uddeshya', 'echo garden', 'echo garden', '3265465464', '9865132161', 'friend'),
(25, 'Rajan Shah', 'unknown', 'unknown', 'unknown', '3251654654', '9654964354', 'unknown'),
(26, 'Rajan Shah', 'Abigael', 'Srilanka', 'Srilanka', '9885565534', '1655699895', 'employee'),
(27, 'Rajan Shah', 'Parul', 'ruchikhand', 'ruchikhand', '9658658745', '932158742', 'friend'),
(28, 'Soha Quraishi', 'Rehman bhai', 'Dhaka', 'Dhaka Bangladesh', '6565465465', '3216546516', 'bhaijaan.'),
(29, 'Soha Quraishi', 'Ahmad ', 'pakistan', 'pakistan', '3565465495', '3216565432', 'bhaijana'),
(30, 'Soha Quraishi', 'Farookh shekh', 'mumbai', 'mumbai', '9865468943', '6432654665', 'employee as telnet'),
(31, 'Soha Quraishi', 'Soma ', 'Afghanistan', 'Afghanistan', '4795654684', '4354684354', 'BPO Caller'),
(32, 'Soha Quraishi', 'Bade papa', 'home', 'home ', '4676432165', '6546365465', 'no work'),
(34, 'Shalini Kumari', 'Lakhan Kumar', 'Baldi khera', 'Baldi Khera', '9879876543', '9135468423', 'Friend');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`username`, `contact_no`, `email`, `msg`) VALUES
('ashutosh', '3546543241', 'ashu@gmail.com', 'hello bhai lya haal hai '),
('Rahul Dubey', '9134265413', 'rahul@gmail.com', 'awesome site!'),
('Hinata', '9463256546', 'hianata@gmail.com', 'How to be make admin account.'),
('Deepak', '9874654984', 'deep@gmail.com', 'I want to be an administrator of this site.'),
('Emiliy', '1946513565', 'emi@gmail.com', 'keep working on pictures related settings.'),
('Afzal Quraishi', '9546543546', 'quraishi2727@gmail.com', 'quite nice site.'),
('Robert michael', '9845468432', 'mister@gmail.com', 'How to  be an member?'),
('Virendra Gupta', '2363565656', 'viru@gmail.com', 'How we can be a admin partner of this site.'),
('Supriya Sharma', '6956879874', 'priya@gmail.com', 'How we become a admin of this site'),
('ABCD', '1234568965', 'abc@gmail', 'HELLO !'),
('Akash Kumar ', '1234556532', 'akash@gmail.com', 'hello ! its akash here'),
('', '', '', ''),
('Pikachu', '+913388388', 'abcpika@gmail.com', 'pika pika'),
('Pikachu', '+913388388', 'abcpika@gmail.com', 'pika pika');

-- --------------------------------------------------------

--
-- Table structure for table `fdbkreply`
--

CREATE TABLE IF NOT EXISTS `fdbkreply` (
  `fdid` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `reply` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fdbkreply`
--

INSERT INTO `fdbkreply` (`fdid`, `username`, `reply`) VALUES
('Ashu9289@', 'ashutosh', 'Thank you !\r\nfor chosing our website.\r\nwe makes your data secure online.');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fbid` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `cont` varchar(50) NOT NULL,
  `details` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fbid`, `subject`, `username`, `cont`, `details`) VALUES
('Ashu9289@', 'issue', 'ashutosh', 'ashutoshprasad2427@gmail.com', 'pic upload feature missing !'),
('MAHE@89', 'suggestion', 'Mahendar Solanki', 'msolanki@gmail.com', 'Quite a nice web app.'),
('RAJ@34', 'suggestion', 'Rajan Shah', 'shah@gmail.com', 'Awesome site as per personal data storing....for daily wise rules.'),
('SOH@7638', 'suggestion', 'Soha Quraishi', 'soha@gmail.com', 'quite a nice site....but provide images features to save the images.'),
('', 'SUBJCET', '', '', ''),
('', 'SUBJCET', '', '', ''),
('', 'SUBJCET', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jokes`
--

CREATE TABLE IF NOT EXISTS `jokes` (
  `jokeid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `jokerefered` varchar(50) NOT NULL,
  `jokedetails` varchar(100) NOT NULL,
  `jokedate` varchar(20) NOT NULL,
  `joketime` varchar(20) NOT NULL,
  PRIMARY KEY (`jokeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `jokes`
--

INSERT INTO `jokes` (`jokeid`, `username`, `jokerefered`, `jokedetails`, `jokedate`, `joketime`) VALUES
(4, 'ashutosh', 'Intrnet', 'My name is little dancing man but you can call me dark and every day I do a jig from morning until d', '1332-11-11', '11:11'),
(5, 'ashutosh', 'Internet', 'Pappu went to a doctor to get a solution of loose motions.\r\nDoctor: tell me, what’s your problem?\r\nP', '1995-03-03', '02:13'),
(6, 'ashutosh', 'Rahul Dubey', 'Manager: What is your qualification?\r\nPappu: I’m Ph.D.\r\nManager: What do you mean by Ph.D.?\r\nPappu: ', '3002-03-03', '14:32'),
(7, 'ashutosh', 'Shikamaru', ' Once Rajnikanth went to Switzerland and accidentally dropped his wallet in a building. Since then t', '2003-02-02', '12:20'),
(8, 'ashutosh', 'Internet', 'The best day for you in the whole year is April 1 because that’s the day that suits you best.', '2000-02-02', '02:00'),
(9, 'ashutosh', 'Rakesh Gahlot', 'The best day for you in the whole year is April 1 because that’s the day that suits you best.', '1010-05-15', '15:20'),
(10, 'ashutosh', 'Internet', 'Interviewer: What is a skeleton?\r\nSardar: Sir, skeleton is a person who started dieting, but forgot ', '1995-02-02', '15:06'),
(11, 'ashutosh', 'Friends', 'A cute Nurse came for interview.\r\nDoctor: What salary do you expect?\r\nNurse: Rs 10,000\r\nDoctor was o', '2012-10-10', '10:10'),
(12, 'ashutosh', 'Surbhi sharma', 'Wife: whenever we keep the money in the bags our son steals it, I don’t know what to do?\r\nHusband: K', '2000-02-07', '00:02'),
(13, 'ashutosh', 'Internet', 'New way of writing answers in exams.\r\nIf you don’t know the answer,\r\nthen put lines like this:\r\n||||', '2222-02-22', '01:21'),
(14, 'ashutosh', 'Internet', 'One boy on his way to home with his mom after school,\r\nSaw a couple kissing on the road,\r\nHe suddenl', '2000-12-01', '10:12'),
(17, 'Mahendar Solanki', 'Anil', '. TIPS 4 Boys: If you marry one girl, she will fight WITH you.\r\n\r\nIf you marry two girls, they will ', '2000-01-01', '15:26'),
(18, 'Mahendar Solanki', 'Amit', 'Don’t give importance to money\r\nBecause,\r\nIt can give bed but not sleep,\r\nBooks but not brains,\r\nClo', '2200-01-20', '14:22'),
(19, 'Mahendar Solanki', 'Sumit', 'Send this message to 5,00,000 people…\r\n.\r\nDO NOT IGNORE,\r\nIt’s very serious,\r\nThis is not a joke,\r\n.', '2003-02-02', '14:32'),
(20, 'Mahendar Solanki', 'Aman', 'Best Error Message of The Century! Very Funny!\r\n.\r\nAn Error Shown by A Computer:\r\nNo Keyboard Connec', '2005-01-20', '14:02'),
(21, 'Mahendar Solanki', 'Kuldeep', ' A man to Santa: your friend is kissing your wife in your\r\n\r\nhome he rushes to his home and come bac', '2004-05-09', '14:15'),
(22, 'Mahendar Solanki', 'Internet', 'Thoughts for the night:\r\nDon’t waste time by thinking about your past or future!\r\nBetter kill some m', '2002-09-01', '09:08'),
(23, 'Mahendar Solanki', 'Susmita', 'Thoughts for the night:\r\nDon’t waste time by thinking about your past or future!\r\nBetter kill some m', '2009-01-01', '02:00'),
(24, 'Mahendar Solanki', 'Mahendar Solanki', 'Once A Secretary at Apple Was Late\r\nBecause Of Car Trouble, Steve Jobs\r\nGave Her a Jaguar and Said,\r', '2005-09-02', '14:02'),
(25, 'Mahendar Solanki', 'Parshuram', 'Money Can Buy a House Not Home A\r\nBed but Not Sleep, Medicine But\r\nNot Health, Money Is Dirty It\r\nOn', '1665-03-12', '00:21'),
(26, 'Mahendar Solanki', 'Piyush', 'Don’t Lose Hope If You Aren’t\r\nGetting Promotion in Office.\r\nRemember, Pradyumann Is Still\r\nAn Acp A', '1995-12-12', '00:54'),
(28, 'Rajan Shah', 'Mr. Pawar', ' 90% Girls in Facebook Say\r\nThey Are in Relationship.\r\n90% Boys in Facebook Say\r\nThey Are Single.\r\nT', '2000-02-12', '00:54'),
(29, 'Rajan Shah', 'Soha', 'Manager: What Is Your Qualification?\r\nSanta: Sir I Am PHSD.\r\nManager: What Do U Mean By PHSD?\r\nSanta', '2005-02-12', '10:45'),
(30, 'Rajan Shah', 'Raju Lamba', 'Jeeto: What Do You Think About\r\nOur Love?\r\nSanta: Try to Count the Stars\r\nIn the Sky.\r\nJeeto: Wow, S', '2000-02-02', '14:33'),
(31, 'Rajan Shah', 'Internet', 'Santa: I Lost Rs 1000 In A Bet.\r\nBanta: How?\r\nSanta: On Cricket Match I Bet\r\nRs 500 And Lost.\r\nBanta', '2010-02-12', '12:54'),
(32, 'Rajan Shah', 'ashutosh', 'Father: You Should Marry This\r\nGirl, She Is Kalavati,\r\nGunwanti And Roopmati.\r\nSon: I’ll Have to Mar', '2000-10-05', '00:05'),
(33, 'Rajan Shah', 'Amit Shah', 'Wife: I Had to Marry You To\r\nFind Out How Stupid You Are.\r\nHusband: You Should Have Known It\r\nThe Mi', '2001-02-05', '14:02'),
(34, 'Rajan Shah', 'Mahendar Solanki', 'Doctor: Your Husband Needs Rest and Peace,\r\nHere Are Some Sleeping Pills…\r\nWife: When Must I Give Th', '2000-02-02', '10:21'),
(35, 'Soha Quraishi', 'Rajan Shah', 'Husband: Do You Know the Meaning\r\nOf Wife?\r\nIt Means Without Information\r\nFighting Every time…\r\nWife', '2001-02-05', '00:54'),
(36, 'Soha Quraishi', 'Internet', 'Please Forward This Msg To All You Care,\r\nDon’t Drink Water Without Boiling.\r\nBecause Fishes Swim Wi', '2001-12-05', '14:36'),
(37, 'Soha Quraishi', 'Internet', 'If You Feel Stressed,\r\nGive Yourself a Break,\r\nEnjoy Some.\r\nIce Cream Chocolates Candy\r\nCake. Why? B', '2001-02-02', '00:54'),
(38, 'Soha Quraishi', 'Internet', 'God: I Can’t Be Everywhere,\r\nSo, I Created Mother.\r\nEvil: I Too Can’t Be Everywhere,\r\nSo, I Created ', '2001-05-05', '00:54'),
(39, 'Soha Quraishi', 'Internet', 'Aiswariya’s Daughter Araddhya\r\nGoing to Play School.\r\nTeacher: Who Is Your Grandfather.?\r\nAraddhya: ', '2001-12-02', '00:54'),
(40, 'Soha Quraishi', 'Friends', 'Wife: Jaanu!\r\nMonday … Shopping\r\nTuesday … Hotel\r\nWednesday … Outing\r\nThursday … Dinner\r\nFriday … Mo', '2003-02-05', '00:54'),
(41, 'Soha Quraishi', 'Internet', 'Two Friends Were Walking But\r\nSuddenly They Stopped.\r\n1st: Oh, My God, My Girlfriend And\r\nMy Wife Ar', '2010-02-05', '00:54'),
(42, 'Soha Quraishi', 'Amit pathak', 'Arranged Marriage Is Like.\r\nYou Are Walking and Unfortunately\r\nA Snake Bites You…\r\nAnd Love Marriage', '2015-03-11', '12:35');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('ashutosh', 'ashu'),
('Mahendar Solanki', 'solanki'),
('Rajan Shah', 'shah'),
('Soha Quraishi', 'soha'),
('Dezy ', 'dezy'),
('Huma Khan', 'khan'),
('Akash Jatt', 'jatt'),
('hgfHGF', 'GFHG'),
('Shalini Kumari', 'shalini'),
('asdas', 'gjhgjhgjhg'),
('ash', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsid` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsid`, `title`, `description`, `date`, `time`) VALUES
(1, 'New feature Updates are coming soon.', 'optimization\r\nreliability\r\nperformace patches', '2000-01-01', '12:00'),
(2, 'Pic upload section added coming soon', 'user wil upload his profiles pictures', '2000-02-01', '13:00'),
(3, 'Security patches available on every month.', 'performance related setting will be provided', '2000-03-01', '15:00'),
(4, 'Feature are related to your will', 'Keep support!', '2000-04-01', '16:00'),
(5, 'updates are comming on 2021', 'get ready for UI changes.', '2000-02-01', '02:30'),
(6, '2020 Features updates releases !', 'UI changes,fix optimality.', '2020-06-05', '06:56'),
(7, 'NEW USER INTERFACE', 'We make some UI changes to the website, let''s go and check this out now !', '2020-12-10', '16:33');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `noteid` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`noteid`, `username`, `title`, `description`, `date`, `time`) VALUES
('1012S', 'ashutosh', 'Bike payment', 'paid-25,000\r\npend-25,600\r\ndead line is 02/12/2020', '2020-02-12', '12:00'),
('1013S', 'ashutosh', 'Electricity Payment', 'paid - 8,000\r\npend-0 Rs/-\r\n', '2020-10-10', '13:34'),
('1014S', 'ashutosh', 'Water plant payment', 'paid - 100\r\npend - 0', '2020-10-10', '10:23'),
('1015S', 'ashutosh', 'Fee payment', 'college semester -30,000 Rs/-\r\nexam - 3,000 Rs/-\r\npractical - 2,000 Rs/-\r\n', '2020-07-09', '02:19'),
('8937D', 'ashutosh', 'Canteen Payment', 'paid -5,000\r\n', '2020-01-01', '14:33'),
('87372A', 'ashutosh', 'Hostel Payment', 'paid - 10,000\r\n', '2020-01-01', '14:30'),
('8727F', 'ashutosh', 'Gas payment', 'paid 749 Rs/-', '2020-02-03', '13:28'),
('72628Q', 'ashutosh', 'Maid payment', 'paid - 5,000\r\npend - 5,000', '2020-04-04', '10:23'),
('12728E', 'ashutosh', 'Mobile Payments', 'Realme 6T -12,000\r\npend - 5,000\r\n', '2020-02-02', '21:29'),
('O2837W', 'ashutosh', 'Bus Fees.', 'paid - 10,000\r\npend - 8,000', '2020-02-05', '12:02'),
('MAHE372', 'Mahendar Solanki', 'Electricity Payment', 'paid - 2000\r\npend - 0', '2020-02-09', '14:08'),
('MAHE829', 'Mahendar Solanki', 'Water plant payment', 'pay - 0 \r\npend - 0', '2022-11-11', '01:00'),
('MAHE929', 'Mahendar Solanki', 'Room rent', 'paid full fee.30,000/-', '2020-02-02', '14:01'),
('MAHE827', 'Mahendar Solanki', 'Food cattering', 'paid - 10,000/-\r\npend - 2,000/-\r\n', '2003-11-08', '12:12'),
('MAHE001', 'Mahendar Solanki', 'transport Payment', 'full paid.30,000/-', '2008-02-02', '14:02'),
('76fytf', 'Mahendar Solanki', 'GK', 'Q.1 Name of the first Atomic Submarine of India?\r\n\r\nI.N.S Chakra', '2020-02-02', '14:22'),
('MAHEJHV', 'Mahendar Solanki', 'GK', 'What is the name of first British to visit India? \r\n\r\nHawkins\r\n\r\n\r\n Name of the first election commissioner of India?\r\n\r\n Sukumar Sen', '0002-02-11', '11:11'),
('MAHE005', 'Mahendar Solanki', 'GK', 'Name of the first university of India?Nalanda University\r\n\r\n\r\nWhere is India''s First nuclear centre?Tarapur\r\n\r\n\r\nName of the first Chinese pilgrim to visit India? Fa-hien', '2222-09-09', '14:22'),
('MAHE012', 'Mahendar Solanki', 'GK', 'Name of first foreign recipient of Bharat Ratna? Khan Abdul Gaffar Khan\r\n\r\n\r\nWhere was the first Post Office opened in India? Kolkata in 1727\r\n\r\n\r\n Name of the first deputy Prime Minister of India? Sa', '2009-02-03', '14:22'),
('MAHE023', 'Mahendar Solanki', 'GK', ' Name of the first Aircraft Carrier Indian Ship?I.N.S. Vikrant\r\n\r\n Name of First Indian who reached south pole?Col. I K Bajaj\r\n\r\n Name of first Indian who won Billiards Trophy?Wilson Jones\r\n\r\n Name of', '2929-09-11', '11:11'),
('RAL344', 'Rajan Shah', 'pend bills.', 'pend bill\r\n\r\n  car finance\r\n', '2000-12-12', '14:41'),
('RAJ988', 'Rajan Shah', 'finance of car.', '12,000/mon-', '22000-02-02', '12:12'),
('RAJ001', 'Rajan Shah', 'Electricity Payment', 'paid - 1000/-', '2000-02-02', '12:05'),
('RAL222', 'Rajan Shah', 'library book return date.', 'Busines economic\r\nC++\r\nDepth in C\r\ndate of issue- 15/06/2020\r\nreturn date -30/06/2020', '2020-12-06', '12:45'),
('RAJ003', 'Rajan Shah', 'Water plant payment.', 'paid -70/mon\r\n', '2000-12-04', '12:54'),
('ASHU246', 'ashutosh', 'practical fee', 'paid 1200/-', '2020-03-10', '18:54');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pincode``` varchar(20) NOT NULL,
  `mstatus` varchar(20) NOT NULL,
  `lstatus` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `timeline` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `images` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `confirm_password`, `gender`, `email`, `pincode```, `mstatus`, `lstatus`, `dob`, `timeline`, `address`, `images`) VALUES
('ashutosh', 'ashu', 'ashu', 'male', 'ashutoshprasad2427@gmail.com', '226012', 'unmaried', 'middle class', '2000-02-04', '12:15', 'PAC BATALIAN 32 Kanpur Road Lko', 'me.jpg'),
('Mahendar Solanki', 'solanki', 'solanki', 'male', 'msolanki@gmail.com', '236521', 'married', 'high class', '1989-12-11', '17:42', 'Ranchi Uttar Pradesh', 'mahendra.jpg'),
('Rajan Shah', 'shah', 'shah', 'male', 'shah@gmail.com', '265321', 'unmaried', 'middle class', '2000-02-01', '02:12', 'Delhi near  red fort', 'Wr3comVZJxU.jpg'),
('Soha Quraishi', 'soha', 'soha', 'female', 'soha@gmail.com', '324132', 'unmaried', 'high class', '2014-03-11', '02:12', 'Uttrakhand', 'YCWP6MMu4ns.jpg'),
('Dezy ', 'dezy', 'dezy', 'female', 'dezisoul@gmail,com', '562120', 'unmaried', 'high class', '1995-02-12', '14:36', 'Australia', 'Ko3IHJbwD6s.jpg'),
('Huma Khan', 'khan', 'khan', 'female', 'humakhan@gmail.com', '213215', 'married', 'high class', '2000-11-12', '02:15', 'Pakistan', 'BEKv1HnpbW4.jpg'),
('Akash Jatt', 'jatt', 'jatt', 'male', 'jattladka@gmail.com', '323262', 'married', 'middle class', '1195-02-05', '14:36', 'Punjab', 'gaWpUHstFWs.jpg'),
('Shalini Kumari', 'shalini', 'shalini', 'female', 'kumarishalini@gmail.com', '321324', 'unmaried', 'middle class', '2000-12-04', '20:54', 'PAC Kanpur road Lko', 'Screenshot (11).png'),
('asdas', 'gjhgjhgjhg', 'jhghjhgjh', 'male', 'kjhkjhkjH@gmail.com', '654654', 'unmaried', 'high class', '2016-12-08', '17:45', 'asfsdf', 'IMG_20201208_111950237.jpg'),
('ash', '123456', '123456', 'male', 'ash@gmail.com', '123456', '', '', '2000-02-24', '01:01', 'kanpur', 'Screenshot (159).png');
