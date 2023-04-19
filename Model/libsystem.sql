-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 04:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Mrittika', '$2y$10$A7f/KqG5LploFZFm1Hj20OZg/OdZUsbQ1UizMt/z.ottVdMGEBlYy', 'Admin', '', '', '2023-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
(2, '9780078022128', 1, 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'McGraw Hill', '2005-09-15', 2),
(4, '9780321714114', 1, 'C++ Primer', 'Stanley Lippman', 'Addison-Wesley Professional', '1986-11-24', 1),
(5, '1118008189', 1, 'HTML and CSS: Design and Build Websites', 'Jon Duckett', 'John Wiley & Sons', '2010-05-07', 1),
(7, '1491905018', 1, 'Modern PHP: New Features and Good Practices', 'Josh Lockhart', 'O\'Reilly Media', '2018-04-03', 1),
(8, '9780553380163', 3, 'A Brief History of Time', 'Stephen Hawkings', 'Bantam Dell Publishing Group', '1988-06-09', 1),
(9, '0070495432', 1, 'Java 2: The Complete Reference', 'Herbert Schildt', '?McGraw-Hill', '2002-08-13', 0),
(10, '1491919531', 1, 'Head First Python: A Brain-Friendly Guide', 'Paul Barry', 'O\'Reilly Media', '2013-12-22', 0),
(11, '9780062316097', 4, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Dvir Publishing House Ltd.', '0000-00-00', 0),
(15, '0439708184', 5, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Scholastic', '1998-09-01', 1),
(18, '1070495432', 4, 'Vietnam: An Epic Tragedy', 'Max Hastings', 'Harper', '2018-10-16', 2),
(20, '0374533555', 5, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', '2013-04-02', 1),
(21, '1791319531', 5, 'Things We Hide from the Light', 'Lucy Score', 'That\'s What She Said Publishing', '2020-02-21', 1),
(22, '1501110365', 5, 'It Ends with Us', 'Colleen Hoover', 'Atria Books', '2016-08-02', 0),
(24, '9789845061100', 4, 'The Unfinished Memoirs', 'Sheikh Mujibur Rahman', 'The University Press Limited', '2012-06-12', 1),
(25, '0074624806', 2, 'Number Theory', 'S. Telang', 'Penguin Publication', '2001-01-01', 1),
(26, '8989606314', 2, 'The Elements of Probability Theory and Some of Its Applications', 'Harald Cramer', 'Wiley', '1955-01-02', 0),
(27, '0521679745', 4, 'A History of Bangladesh', 'Willem van Schendel', 'Cambridge University Press', '2009-03-02', 1),
(28, '1982164360', 3, 'Breathless: The Scientific Race to Defeat a Deadly Virus', 'David Quammen', 'Simon & Schuster', '2022-10-04', 1),
(30, '0593186583', 3, 'The Biggest Ideas in the Universe: Space, Time, and Motion', 'Sean Carroll', 'Dutton', '2022-09-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `student_id`, `book_id`, `date_borrow`, `status`) VALUES
(25, 3, 26, '2023-03-03', 1),
(26, 7, 24, '2023-03-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Science'),
(4, 'History'),
(5, 'Novel and Fictions');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `code`) VALUES
(1, 'Bachelor of Science in Mathematics', 'MAT'),
(2, 'Bachelor of Science in Computer Science', 'CS'),
(3, 'Bachelors of Information Technology', 'IT'),
(4, 'Bachelor of science in Biology', 'BIO');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `student_id`, `book_id`, `date_return`) VALUES
(6, 3, 26, '2023-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `firstname`, `lastname`, `photo`, `course_id`, `created_on`) VALUES
(3, '123', 'Anik', 'Hasan', '', 1, '2023-02-15'),
(4, '345', 'Sakib', 'Rahman', '', 2, '2023-02-19'),
(5, '456', 'Adhora', 'Ahsan', '', 1, '2023-02-21'),
(6, '678', 'Sameha', 'Karim', '', 3, '2023-02-21'),
(7, '987', 'Noor', 'Elahi', '', 4, '2023-02-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;