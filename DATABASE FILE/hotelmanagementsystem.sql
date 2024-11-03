
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2022-11-13 05:45:17', '13-11-2022', '15-11-2022', 3000, 3000, 0),
(2, 2, 2, '2022-11-13 05:46:04', '13-11-2022', '16-11-2022', 6000, 0, 1),
(3, 3, 2, '2022-11-11 06:49:19', '11-11-2022', '14-11-2022', 6000, 3000, 0),
(4, 4, 7, '2017-11-09 06:50:24', '11-11-2017', '15-11-2017', 10000, 10000, 0),
(5, 5, 13, '2017-11-17 06:59:10', '17-11-2017', '20-11-2017', 12000, 0, 1),
(6, 6, 9, '2021-04-08 09:45:56', '08-04-2021', '10-04-2021', 3000, 3000, 0),
(7, 7, 14, '2023-04-08 17:56:41', '08-04-2023', '10-04-2023', 16500, 11500, 0),
(8, 8, 22, '2021-04-09 08:32:57', '09-04-2021', '13-04-2021', 34500, 0, 1),
(10, 10, 15, '2023-04-29 18:13:40', '01-05-2023', '03-05-2023', 16500, 8000, 0),
(11, 11, 15, '2023-05-01 04:03:08', '03-05-2023', '11-05-2023', 49500, 49500, 0),
(12, 12, 4, '2023-05-01 06:34:49', '25-05-2023', '27-05-2023', 9000, 9000, 0),
(13, 13, 23, '2023-05-01 06:50:46', '04-05-2023', '07-05-2023', 32000, 32000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complainant_name`, `complaint_type`, `complaint`, `created_at`, `resolve_status`, `resolve_date`, `budget`) VALUES
(1, 'Yanice Alexander\n', 'Television', 'Does not operate properly', '2020-07-16 06:51:24', 1, '2020-07-17 06:51:58', 3600),
(2, 'Rupert Peter\n', 'Air Conditioner', 'Having a lot of Problems', '2020-10-01 06:51:44', 1, '2020-10-03 07:06:02', 7950),
(3, 'Jason Momoa\n', 'Foul Smells', 'Really bad odour around room', '2018-04-01 07:01:17', 1, '2018-04-01 07:01:52', 500),
(5, 'Will Smith', 'Bath Tub', 'Bath Tub overflowing when filled completely; some voltage problems too - M-135', '2021-04-09 08:38:19', 1, '2021-04-09 08:38:39', 2500),
(6, 'Pradeep Kumar', 'Heater not working', 'heater not working ', '2023-04-29 18:36:17', 1, '2023-04-29 18:36:27', 340);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Boony S. Burke', 7543451240, 'boonyb9@gmail.com', 1, '425678099122', '3123 Rockford Road'),
(2, 'Johny Mitchell', 2870214970, 'johdnm@gmail.com', 2, '422510099122', '19154 memory Road'),
(3, 'Beaiz M. Matews', 1247778460, 'mahews@gmail.com', 1, '434560099122', '6789 Shood Forest Drive'),
(4, 'Keonin Johnson', 1471246500, 'kjohn@gmail.com', 3, 'P398789', '92226 Rind Avenue\r\n'),
(5, 'Dayne Scott', 2453249780, 'dayney@gmail.com', 1, '411230099122', '198 Columbia Road\r\n'),
(6, 'Buno Denn', 1987654780, 'denbu@gmail.com', 4, 'AASS 12567384541', '64 Warner Street\r\n'),
(7, 'Rick Austin', 2450006974, 'austinric@gmail.com', 1, '457823450002', '160  Browntown Road'),
(8, 'Andrew Tate', 2451238450, 'tateandrew@gmail.com', 1, '147000234610', '766  Lagarville Road'),
(9, 'Riley Reynolds', 9678765655, 'Riley@gmail.com', 2, '567765434', '56 Sherwood Road'),
(10, 'Keanu Reaves', 3622265653, 'reaves@gmail.com', 2, '554881541', '4010 W Housing drive, Fort wayne, Indiana zip -46815'),
(11, 'Pradeep Kumar', 4567894567, 'pradeep@gmail.com', 2, '445784445', '4010 W Housing Drive Michigan'),
(12, 'Kriti Senon', 8456994560, 'kriti@gmail.com', 2, '4454454845', '8876 Elm Street Palo Alto'),
(13, 'Jay Sean', 5446131254, 'jaysean@gmail.com', 2, '865995623', '1646 Santillan Ave Santa Maria California CA 93458');

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `emp_history`
--

INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2022-11-13 05:39:06', '2022-11-15 02:22:26', '2022-11-13 05:39:06'),
(2, 2, 3, '2022-11-13 05:39:39', '2022-11-15 02:22:43', '2022-11-13 05:39:39'),
(3, 3, 1, '2022-11-13 05:40:18', '2022-11-15 02:22:49', '2022-11-13 05:40:18'),
(4, 4, 1, '2022-11-13 05:40:56', '2022-11-15 02:22:35', '2022-11-13 05:40:56'),
(5, 5, 1, '2022-11-13 05:41:31', NULL, '2022-11-13 05:41:31'),
(6, 6, 3, '2022-11-13 05:42:03', NULL, '2022-11-13 05:42:03'),
(7, 7, 4, '2022-11-13 05:42:35', '2022-11-18 02:35:02', '2022-11-13 05:42:35'),
(8, 8, 3, '2022-11-13 05:43:13', '2022-11-18 02:32:26', '2022-11-13 05:43:13'),
(9, 9, 2, '2022-11-13 05:43:49', NULL, '2022-11-13 05:43:49'),
(10, 10, 1, '2022-11-13 06:30:45', '2022-11-18 02:34:28', '2022-11-13 06:30:45'),
(11, 1, 2, '2022-11-15 06:52:26', '2022-11-17 02:23:05', '2022-11-15 06:52:26'),
(12, 4, 3, '2022-11-15 06:52:35', NULL, '2022-11-15 06:52:35'),
(13, 2, 3, '2022-11-15 06:52:43', NULL, '2022-11-15 06:52:43'),
(14, 3, 3, '2022-11-15 06:52:49', NULL, '2022-11-15 06:52:49'),
(15, 1, 3, '2022-11-17 06:53:05', NULL, '2022-11-17 06:53:05'),
(16, 8, 1, '2022-11-18 07:02:26', NULL, '2022-11-18 07:02:26'),
(17, 11, 2, '2022-11-18 07:04:03', NULL, '2022-11-18 07:04:03'),
(18, 10, 2, '2022-11-18 07:04:28', NULL, '2022-11-18 07:04:28'),
(19, 7, 2, '2022-11-18 07:05:02', NULL, '2022-11-18 07:05:02'),
(20, 12, 1, '2021-04-08 17:54:22', NULL, '2021-04-08 17:54:22'),
(21, 13, 2, '2021-04-09 08:35:27', NULL, '2021-04-09 08:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'State ID'),
(2, 'Social Security Number'),
(3, 'Passport'),
(4, 'Drivers License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 1, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', 1, 0, 0, 0),
(5, 1, 'B-101', 1, 0, 0, 0),
(6, 2, 'B-102', NULL, 0, 0, 1),
(7, 3, 'B-103', 1, 0, 0, 0),
(8, 4, 'B-104', NULL, 0, 0, 1),
(9, 1, 'C-101', 1, 0, 0, 0),
(10, 2, 'C-102', NULL, 0, 0, 0),
(11, 3, 'C-103', NULL, 0, 0, 1),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 1),
(14, 5, 'K-699', 1, 1, 0, 0),
(15, 5, 'K-799', 1, 0, 1, 0),
(16, 5, 'K-899', NULL, 0, 0, 0),
(17, 6, 'M-333', NULL, 0, 0, 0),
(18, 6, 'M-444', NULL, 0, 0, 0),
(19, 6, 'M-555', NULL, 0, 0, 0),
(20, 9, 'P-696', NULL, 0, 0, 0),
(21, 10, 'M-966', NULL, 0, 0, 0),
(22, 10, 'M-869', NULL, 0, 1, 0),
(23, 8, 'Z-666', 1, 0, 0, 0),
(24, 7, 'X-969', NULL, 0, 0, 0),
(25, 8, 'Z-111', NULL, 0, 0, 0),
(26, 6, 'M-135', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 2),
(5, 'King Sized', 5500, 4),
(6, 'Master Suite', 6500, 6),
(7, 'Mini-Suite', 3600, 3),
(8, 'Connecting Rooms', 8000, 6),
(9, 'Presidential Suite', 21000, 4),
(10, 'Murphy Room', 6900, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '5:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 5:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Scarlett Whitney', 1, 3, 1, '123410099122', '1234 Belkin Drive\n', 2256465952, 21000, '2020-11-13 05:39:06', '2021-04-08 17:36:16'),
(2, 'Leonardo Andrade', 3, 3, 1, '151410099122', '3456 horse Drive', 1154648156, 12500, '2021-04-07 20:21:00', '2021-04-08 17:36:23'),
(3, 'Shepard Marks', 2, 3, 1, '635610099122', 'Ap 12-1359 Label Avenue', 5466595656, 25000, '2019-11-13 05:40:18', '2021-04-08 17:36:27'),
(4, 'Kaden Harrington', 2, 3, 1, '111110099122', '1111 Moon Valley Road\n', 4451156451, 31000, '2017-11-13 05:40:55', '2021-04-08 17:36:33'),
(5, 'Camden Schroeder', 4, 1, 1, '54665341212', '9876 Happy Drive\n', 2654451987, 28000, '2018-11-13 05:41:31', '2021-04-08 17:36:42'),
(6, 'Bennett Yang', 3, 3, 1, '111110099122', 'Apt Drive Avenue ', 2655987845, 40000, '2017-11-13 05:42:03', '2021-04-08 17:36:47'),
(7, 'Tristen Giles', 2, 2, 1, '154610099122', '4732 Hershey Road\n', 1124511124, 40000, '2017-11-13 05:42:35', '2021-04-08 17:36:51'),
(8, 'Pearl Cordova', 1, 1, 1, '879410099122', '8756 Fable Drive\n', 4584464523, 15000, '2020-11-13 05:43:13', '2021-04-08 17:36:56'),
(9, 'Valeria Crosby', 3, 2, 1, '345210099122', '0893 Boys Avenue\n', 2236595262, 20000, '2020-11-13 05:43:49', '2021-04-08 17:36:59'),
(10, 'Salvador Gallegos', 5, 2, 1, '696510099122', '1216 Street Court\n', 4587845965, 24000, '2019-11-13 06:30:45', '2021-04-08 17:37:07'),
(11, 'Callie Glover', 3, 2, 1, '336510099122', '324 Lovers Drive\n', 1546695262, 20000, '2019-11-18 07:04:03', '2021-04-08 17:37:10'),
(12, 'Bailee Gregory', 2, 1, 4, 'AD69 14579500002', '987  Goofy Avenue', 1124569784, 13500, '2021-04-08 17:54:22', '2021-04-08 17:54:22'),
(13, 'Jovanni Benitez', 9, 2, 1, '457854555012', '983 James Place', 2245518496, 65500, '2021-04-09 08:35:27', '2021-04-09 08:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Housekeeping Manager'),
(3, 'Front Desk Receptionist'),
(4, 'Chef'),
(5, 'Waiter'),
(6, 'Room Attendant'),
(7, 'Concierge'),
(8, 'Hotel Maintenance Engineer'),
(9, 'Hotel Sales Manager');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Pradeep Kumar', 'pradeep', 'kumap02@pfw.edu', 'febc8f8ac083f5fc27e032c81e7b536a', '2023-03-12 12:49:22'),
(2, 'Navyaprabha Rajappa', 'navya', 'rajan02@pfw.edu', '9c58b17949185ceb3de4df9dbadfab87', '2023-03-12 12:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;
