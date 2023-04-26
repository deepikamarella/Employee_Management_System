

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";





CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------



CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(113, 'Rashmi', 'Dongre', 'rashmi@gmail.com', '1234', '1992-08-13', 'female', '9632001919', 12121, 'Razarbagh', 'IT', 'Head', 'b7.jpg'),
(114, 'Nancy', 'lakra', 'nancy@gmail.com', '1234', '1995-01-01', 'female', '9012365487', 303002, 'USA', 'Manager', 'phd', '2.jpg'),
(115, 'pallavi', 'baghel', 'baghel@gmail.com', '1234', '1990-02-02', 'female', '6935147896', 6262, 'paris, UK', 'Creative', 'MSc', '5.jpg'),
(118, 'prashansa', 'Toppo', 'toppo@gmail.com', '1234', '1971-12-01', 'female', '6260409595', 5959, 'Chemsford, USA', 'Creative', 'phd','3.jpg'),
(116, 'sonal', 'Minj', 'Sonal@gmail.com', '1234', '1971-06-28', 'female', '7528308585', 5858, 'LA, USA', 'SpaceTech', 'phd', '3.jpg'),
(119, 'deepika', 'M', 'm@gmail.com', '1234', '1990-03-02', 'female', '9562387575', 5757, 'Underground, Dhaka', 'NetworkSecurity', 'MSc', '1.jpg'),
(117, 'Pallavi', 'sahu', 'sahu@gmail.com', '1234', '1993-03-03', 'female', '8523604545', 5454, 'USA', 'Defense ', 'MS', '4.jpg'),
(120, 'Andrew', 'normar', 'andrew@gamil.com', '1234', '1976-04-16', 'Male', '5238758758', 857857, 'USA', 'AI', 'PhD', '7.jpg'),
(122, 'alan ', 'Goodfellow', 'alan@gmail.com', '1234', '1985-01-01', 'Male', '9300852852', 258258, 'USA', 'AI', 'PhD', 'a3.jpg'),
(123, 'Christopher ', 'newmann', 'newmann@gmail.com', '1234', '1965-09-18', 'Male', '8930147147', 741741, 'USA', 'NLP', 'PhD', '8.jpg'),
(121, 'John', 'willam', 'john@gmail.com', '1234', '1980-02-22', 'Male', '9040187280', 112233, 'Winterfell', 'Management', 'BSc.', '9.jpg');

-- --------------------------------------------------------


CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(113, 301, '2019-04-07', '2019-04-08', 'Sick Leave', 'Approved'),
(115, 305, '2019-04-07', '2019-04-08', 'Urgent Family Cause', 'Approved'),
(116, 306, '2019-04-08', '2019-04-08', 'Concert Tour', 'Approved'),
(121, 307, '2019-04-14', '2019-04-30', 'Want to see GOT', 'Pending'),
(114, 308, '2019-04-26', '2019-04-30', 'Launching Tesla Model Y', 'Pending'),
(118, 309, '2019-04-09', '2019-04-13', 'Visit to Kings Landing', 'Pending'),
(123, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending');

-- --------------------------------------------------------



CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 113, 'Database', '2019-04-07', '2019-04-04', 10, 'Submitted'),
(214, 114, 'Test', '2019-04-10', '2019-04-01', 9, 'submitted'),
(215, 115, 'Tesla Model Y', '2019-04-19', '2019-04-06', 10, 'Submitted'),
(216, 116, 'Hack', '2019-05-04', '2019-04-05', 5, 'Submitted'),
(217, 121, 'Do Nothing', '2019-04-02', '2019-04-01', 8, 'Submitted'),
(218, 117, 'Tesla Model X', '2019-04-03', '2019-04-03', 10, 'Submitted'),
(219, 118, 'PHP', '2019-04-07', '0000-00-00', 8, 'Due'),
(220, 119, 'Data Analysis', '2019-04-16', '2019-04-04', 8, 'Submitted'),
(221, 122, 'Data Analysis', '2019-04-16', '2019-04-04', 7, 'Submitted'),
(222, 123, 'Statistical', '2019-04-19', '2019-04-04', 6, 'Submitted'),
(223, 113, 'Software Scema', '2019-04-09', '2019-04-02', 3, 'Submitted'),
(224, 117, 'Security Check', '2019-04-26', '2019-04-05', 9, 'Submitted'),
(225, 116, 'ML', '2019-04-03', '2019-04-04', 6, 'Submitted');

-- --------------------------------------------------------



CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `rank` (`eid`, `points`) VALUES
(113, 10),
(114, 7),
(115, 6),
(116, 6),
(117, 20),
(118, 5),
(119, 9),
(120, 3),
(121, 0),
(122, 15),
(123, 8);

-- --------------------------------------------------------


CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(113, 55000, 10, 60500),
(114, 16500, 7, 16500),
(115, 65000, 6, 68900),
(116, 78000, 6, 78000),
(117, 105000, 20, 126000),
(118, 60000, 5, 63000),
(119, 77000, 9, 83930),
(120, 50000, 3, 51500),
(121, 85000, 0, 90100),
(122, 47000, 15, 54050),
(123, 45000, 8, 48600);




ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);


ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);


ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;


ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
