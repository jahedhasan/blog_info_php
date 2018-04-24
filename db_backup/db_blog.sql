-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 10:23 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(50) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email_address` text NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `password`) VALUES
(1, 'Jahed', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(5) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `blog_description` text NOT NULL,
  `blog_image` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_title`, `author_name`, `blog_description`, `blog_image`, `publication_status`) VALUES
(8, 'formars bank', 'jahed', 'à§­ à¦®à¦¹à§€à¦‰à¦¦à§à¦¦à§€à¦¨ à¦–à¦¾à¦¨ à¦†à¦²à¦®à¦—à§€à¦°à¦«à¦¾à¦°à¦®à¦¾à¦°à§à¦¸ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨à§‡à¦° à¦ªà¦¦ à¦›à§‡à§œà§‡ à¦¦à¦¿à¦²à§‡à¦¨ à¦®à¦¹à§€à¦‰à¦¦à§à¦¦à§€à¦¨ à¦–à¦¾à¦¨ à¦†à¦²à¦®à¦—à§€à¦°à¥¤ à¦ à¦›à¦¾à§œà¦¾ à¦¬à§à¦¯à¦¾à¦‚à¦•à¦Ÿà¦¿à¦° à¦¨à¦¿à¦°à§€à¦•à§à¦·à¦¾ à¦•à¦®à¦¿à¦Ÿà¦¿à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨ à¦“ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦®à¦¾à¦¹à¦¾à¦¬à§à¦¬à§à¦² à¦¹à¦• à¦šà¦¿à¦¶à¦¤à§€à¦•à§‡à¦“ à¦ªà¦¦ à¦›à¦¾à§œà¦¤à§‡ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¸à§‹à¦®à¦¬à¦¾à¦° à¦¬à§à¦¯à¦¾à¦‚à¦•à¦Ÿà¦¿à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦ªà¦°à§à¦·à¦¦à§‡à¦° à¦¬à¦¿à¦¶à§‡à¦· à¦¸à¦­à¦¾à§Ÿ à¦à¦¸à¦¬ à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦¹à§Ÿà¥¤ à¦¸à¦­à¦¾à¦¤à§‡à¦‡ à¦¨à¦¤à§à¦¨ à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦­à¦¾à¦‡à¦¸ à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨à¦¸à¦¹ à¦¬à§à¦¯à¦¾à¦‚à¦•à¦Ÿà¦¿à¦° à¦¨à¦¿à¦°à§à¦¬à¦¾à¦¹à§€ à¦•à¦®à¦¿à¦Ÿà¦¿, à¦¨à¦¿à¦°à§€à¦•à§à¦·à¦¾ à¦•à¦®à¦¿à¦Ÿà¦¿ à¦“ à¦à§à¦à¦•à¦¿ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦ªà¦¨à¦¾ à¦•à¦®à¦¿à¦Ÿà¦¿ à¦ªà§à¦¨à¦°à§à¦—à¦ à¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à¦à¦° à¦†à¦—à§‡ à¦—à¦¤ à¦°à§‹à¦¬à¦¬à¦¾à¦° à¦°à¦¾à¦¤à§‡ à¦¬à§à¦¯à¦¾à¦‚à¦•à¦Ÿà¦¿à¦° à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦ªà¦¨à¦¾ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦ à¦•à§‡ à¦à¦® à¦¶à¦¾à¦®à§€à¦®à¦•à§‡ à¦•à§‡à¦¨ à¦…à¦ªà¦¸à¦¾à¦°à¦£ à¦•à¦°à¦¾ à¦¹à¦¬à§‡ à¦¨à¦¾, à¦¤à¦¾ à¦œà¦¾à¦¨à¦¤à§‡ à¦¸à¦¾à¦¤ à¦¦à¦¿à¦¨à§‡à¦° à¦¸à¦®à§Ÿ à¦¬à§‡à¦à¦§à§‡ à¦¦à§‡à§Ÿ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à§à¦¯à¦¾à¦‚à¦•à¥¤ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦¨à¦¿à¦°à§à¦¬à¦¾à¦¹à§€ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦“ à¦®à§à¦–à¦ªà¦¾à¦¤à§à¦° à¦¶à§à¦­à¦™à§à¦•à¦° à¦¸à¦¾à¦¹à¦¾ à¦¸à§‹à¦®à¦¬à¦¾à¦° à¦°à¦¾à¦¤à§‡ à¦ªà§à¦°à¦¥à¦® à¦†à¦²à§‹à¦•à§‡ à¦¬à¦¿à¦·à§Ÿà¦Ÿà¦¿ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤ à¦°à¦¾à¦¤ à¦¸à¦¾à§œà§‡ à¦¨à§Ÿà¦Ÿà¦¾à§Ÿ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¥à§‡à¦•à§‡ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦†à¦¨à§à¦·à§à¦ à¦¾à¦¨à¦¿à¦• ', '../asset/images/1385009_720180401343956_1884751192_n.jpg', 1),
(9, 'banding shop', 'hasan', 'à¦¦à§‡à¦¶à§‡à¦° à¦¶à§€à¦°à§à¦·à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦¶à¦¾à¦¹ à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿ à¦à¦¬à¦¾à¦°à¦“ à¦…à¦°à§à¦œà¦¨ à¦•à¦°à¦² â€˜à¦¶à§à¦°à§‡à¦·à§à¦  à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à§¨à§¦à§§à§­â€™-à¦à¦° à¦¸à¦®à§à¦®à¦¾à¦¨à¦¨à¦¾à¥¤ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦«à§‹à¦°à¦¾à¦® à¦à¦¬à¦‚ à¦•à¦¾à¦¨à§à¦¤à¦¾à¦° à¦®à¦¿à¦²à¦“à§Ÿà¦¾à¦°à§à¦¡ à¦¬à§à¦°à¦¾à¦‰à¦¨à§‡à¦° à¦¯à§Œà¦¥ à¦‰à¦¦à§à¦¯à§‹à¦—à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¬à§à¦¯à¦¾à¦ªà§€ à¦¸à¦žà§à¦šà¦¾à¦²à¦¿à¦¤ à¦à¦•à¦Ÿà¦¿ à¦­à§‹à¦•à§à¦¤à¦¾ à¦œà¦°à¦¿à¦ªà§‡à¦° à¦­à¦¿à¦¤à§à¦¤à¦¿à¦¤à§‡ à¦ à¦¸à¦®à§à¦®à¦¾à¦¨à¦¨à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à¦—à¦¤ à¦¶à¦¨à¦¿à¦¬à¦¾à¦° (à§¨à§« à¦¨à¦­à§‡à¦®à§à¦¬à¦°) à¦°à¦¾à¦œà¦§à¦¾à¦¨à§€à¦° à¦²à¦¾ à¦®à§‡à¦°à¦¿à¦¡à¦¿à§Ÿà¦¾à¦¨ à¦¹à§‹à¦Ÿà§‡à¦²à§‡ à¦†à§Ÿà§‹à¦œà¦¿à¦¤ à¦…à¦¨à§à¦·à§à¦ à¦¾à¦¨à§‡ à¦¶à¦¾à¦¹ à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦ªà¦•à§à¦·à§‡ à¦ à¦¸à¦®à§à¦®à¦¾à¦¨à¦¨à¦¾ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à§‡à¦¨ à¦†à¦¬à§à¦² à¦–à¦¾à§Ÿà§‡à¦° à¦—à§à¦°à§à¦ªà§‡à¦° à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦®à¦¾à¦°à§à¦•à§‡à¦Ÿà¦¿à¦‚ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦¨à¦“à¦¶à¦¾à¦¦ à¦šà§Œà¦§à§à¦°à§€à¥¤ à¦¤à§ƒà¦¤à§€à§Ÿà¦¬à¦¾à¦°à§‡à¦° à¦®à¦¤à§‹ à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿à¦¤à§‡ à¦¶à§à¦°à§‡à¦·à§à¦ à¦¤à§à¦¬à§‡à¦° à¦¸à§à¦¬à§€à¦•à§ƒà¦¤à¦¿ à¦¶à¦¾à¦¹ à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦œà¦¨à§à¦¯ à¦…à¦¨à¦¨à§à¦¯ à¦…à¦°à§à¦œà¦¨à¥¤ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡ à¦«à§‹à¦°à¦¾à¦® à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿à¦¤à§‡ à¦¸à§‡à¦°à¦¾ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦° à¦ªà§à¦°à¦¸à§à¦•à¦¾à¦° à¦šà¦¾à¦²à§ à¦•à¦°à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦¬à¦›à¦°à§‡à¦‡ à¦¶à¦¾à¦¹ à¦¸à¦¿à¦®à§‡à¦¨à§à¦Ÿ à§¨à§¦à§§à§¦ à¦¸à¦¾à¦²à§‡ à¦¸à§‡à¦°à¦¾ à¦¬à§à¦°à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦° à¦¸à§à¦¬à§€à¦•à§ƒà¦¤à¦¿ à¦…à¦°à§à¦œà¦¨ à¦•à¦°à§‡à¥¤ à¦à¦°à¦ªà¦° à§¨à§¦à§§à§¬ à¦¸à¦¾à¦²à§‡à¦“ à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿà¦¬à¦¾à¦°à§‡à¦° à¦®à¦¤à§‹ ', '../asset/images/64539_314673361986182_573423018_n.jpg', 1),
(10, 'head title', 'apon khan', 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis eu', '../asset/images/1974038_1720798551481171_1755892398198462985_o.jpg', 1),
(11, 'hasan blog', 'hasan', 'te recusandae aliquid doloribus vel cumque repellat, minima fugit distinctio aliquam nemo magnam soluta explite recusandae aliquid doloribus vel cumque repellat, minima fugit distinctio aliquam nemo magnam soluta explite recusandae aliquid doloribus vel cumque repellat, minima fugit distinctio aliquam nemo magnam soluta expli', '../asset/images/1loveyou rashal.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_img`
--

CREATE TABLE `tbl_img` (
  `image_id` int(2) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_img`
--

INSERT INTO `tbl_img` (`image_id`, `image`) VALUES
(1, '../asset/images/2017-07-18-20-02-48.jpg'),
(2, '../asset/images/2017-02-03-19-01-49.jpg'),
(3, '../asset/images/IMG_20171010_122343-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD PRIMARY KEY (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_img`
--
ALTER TABLE `tbl_img`
  MODIFY `image_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
