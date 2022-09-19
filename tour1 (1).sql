-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 02:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `cdate` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `email`, `password`, `fname`, `lname`, `contact`, `address`, `file`, `cdate`, `group_id`, `total_amount`, `delete_status`) VALUES
(2, 'Mayuri', 'admin@admin.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Admin', 'Admin', '0123456789', 'Pune', 'admin.jpg', '2018-04-30', 1, 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `traveller_id` varchar(200) NOT NULL,
  `state_id` varchar(200) NOT NULL,
  `package_id` varchar(200) NOT NULL,
  `no_of_adults` int(11) NOT NULL,
  `no_of_children` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `adv_amount` varchar(200) NOT NULL,
  `total` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `traveller_id`, `state_id`, `package_id`, `no_of_adults`, `no_of_children`, `from_date`, `to_date`, `total_amount`, `adv_amount`, `total`, `tax`, `created_date`) VALUES
(3, '1', 'Maharashtra', '4', 2, 2, '2022-03-20', '2022-03-22', 30000, '10000', 33000, 10, '2022-03-20'),
(4, '7', 'Gujrat', '3', 2, 1, '2022-03-22', '2022-03-26', 60000, '25000', 66000, 10, '2022-03-20'),
(5, '10', 'Maharashtra', '2', 5, 2, '2022-03-25', '2022-03-27', 58000, '50000', 63800, 10, '2022-03-20'),
(6, '1', 'Maharashtra', '3', 2, 2, '2022-05-23', '2022-05-29', 108000, '50000', 118800, 10, '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `booking_payment`
--

CREATE TABLE `booking_payment` (
  `id` int(11) NOT NULL,
  `advance_amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_report`
--

CREATE TABLE `booking_report` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `curr_code` varchar(200) NOT NULL,
  `curr_symbol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `curr_code`, `curr_symbol`) VALUES
(1, 'INR', 'Rs');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_setup`
--

CREATE TABLE `email_setup` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail_driver_host` varchar(50) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_setup`
--

INSERT INTO `email_setup` (`id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`) VALUES
(1, 'Mayuri K.', 'mail.gmail.com', 587, 'mayuri.infospace@gmail.com', 'programmers324');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expense_for` varchar(200) NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `expense_for`, `expense_name`, `amount`, `created_date`) VALUES
(1, 'Feb Electricity ', '2', 2500, '2022-03-20'),
(2, 'Feb Office rent', '2', 4000, '2022-03-20'),
(3, 'may Electricity ', '2', 10000, '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `expense_name`, `status`) VALUES
(2, 'Bills', 'Active'),
(3, 'Office Rent', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `price_adult` int(11) NOT NULL,
  `price_children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `pname`, `price_adult`, `price_children`) VALUES
(2, 'Goa tour Package', 5000, 2000),
(3, 'Agra Tour Package', 6000, 3000),
(4, 'Jaipur Tour Package', 5000, 2500),
(5, 'Manali Tour Package', 6000, 3000),
(6, 'Shimla Tour Package', 6000, 2500),
(7, 'Varanasi Tour Package', 6000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `pending_amount` int(11) NOT NULL,
  `insert_amount` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `cdate` varchar(200) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `booking_id`, `amount`, `paid_amount`, `pending_amount`, `insert_amount`, `payment_type`, `cdate`, `due_date`) VALUES
(3, 3, 30000, 0, 0, 10000, '1', '2022-03-20', '0000-00-00'),
(4, 4, 60000, 0, 0, 25000, '3', '2022-03-20', '0000-00-00'),
(5, 5, 58000, 0, 0, 50000, '', '2022-03-20', '0000-00-00'),
(6, 6, 108000, 0, 0, 50000, '2', '2022-05-20', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `payment_type`) VALUES
(1, 'Card'),
(2, 'Cash'),
(3, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `docs` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `uname`, `email`, `password`, `contact`, `photo`, `docs`) VALUES
(0, 'admin@admin.com', 'admin@admin.com', 'admin', '9588625234', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `f_image` varchar(200) NOT NULL,
  `logo_image` varchar(200) NOT NULL,
  `login_image` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `footer` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `add1` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `f_image`, `logo_image`, `login_image`, `currency`, `footer`, `address`, `add1`) VALUES
(2, 'Tours and Travels', 'favi.png', 'logo_by NB.png', 'logo_by NB.png', '11', 'Nikhil B', 'Nashik, India', 'Maharashtra 422002');

-- --------------------------------------------------------

--
-- Table structure for table `sms_setting`
--

CREATE TABLE `sms_setting` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sender_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `tname` varchar(200) NOT NULL,
  `percent` varchar(200) NOT NULL,
  `short_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `tname`, `percent`, `short_code`) VALUES
(1, 'Central Goods and Service Tax', '9', 'CGST'),
(2, 'State Goods and Service Tax', '10', 'SGST');

-- --------------------------------------------------------

--
-- Table structure for table `travellers`
--

CREATE TABLE `travellers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirm` varchar(200) NOT NULL,
  `state_name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'register'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travellers`
--

INSERT INTO `travellers` (`id`, `name`, `email`, `password`, `confirm`, `state_name`, `mobile`, `address`, `photo`, `status`) VALUES
(1, 'sagar patil', 'sagarvighne16111@gmail.com', '9f0cdb9c620f75593d04260172dae5133c1e0582d9d7b62f4a9d1cbf457bcac8', '676ae6a63f0477be581542b045fcf90a0655c56772533f191b5701d0953cdd00', 'Maharashtra', '9588625234', 'pune maharashtra', 'D-9632_LI.jpg', 'Activate'),
(7, 'ganesh', 'admin@admin.com', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'Gujrat', '9588625234', 'sss', 'D-9632_LI.jpg', 'Activate'),
(10, 'sss', 'abc@gmail.com', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'Maharashtra', '9588625234', 'aa', 'Photoshop-Replace-Background-Featured.jpg', 'Activate'),
(11, 'sagar patil', 'abc@gmail.com', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'Maharashtra', '9588625234', 'Pune', '', 'register'),
(12, 'Ganesh More', 'sagarvighne16111@gmail.com', '5110726e33ef2219c303cae3828bda412dc579280397e1057f86f0a13b0e2fe8', '5110726e33ef2219c303cae3828bda412dc579280397e1057f86f0a13b0e2fe8', 'Maharashtra', '8793939799', 'Pune Maharashtra', '', 'register'),
(13, 'sagar patil', 'sagarvighne16111@gmail.com', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'Maharashtra', '9588625234', 'Pune mh', '', 'register'),
(14, 'sagar patil', 'sagarvighne16111@gmail.com', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'e918b3982dbb5a4bbe594b82593a1e3992cfffedac312ae8f2e0f68e3576499f', 'Maharashtra', '9588625234', 'pune,mharashtra', '', 'Activate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_payment`
--
ALTER TABLE `booking_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_report`
--
ALTER TABLE `booking_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_setup`
--
ALTER TABLE `email_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_setting`
--
ALTER TABLE `sms_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travellers`
--
ALTER TABLE `travellers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_payment`
--
ALTER TABLE `booking_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_report`
--
ALTER TABLE `booking_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_setup`
--
ALTER TABLE `email_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_setting`
--
ALTER TABLE `sms_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travellers`
--
ALTER TABLE `travellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
