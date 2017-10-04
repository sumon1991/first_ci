-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2017 at 11:20 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2017-10-04 20:49:39'),
(2, 'Technology', '2017-10-04 20:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `created_at`) VALUES
(1, 1, 'Post One', 'post-one', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur, velit eget faucibus accumsan, nibh enim mollis nisl, nec faucibus nisi elit a metus. Duis efficitur consequat nunc, eu molestie magna suscipit in. Vivamus feugiat ultrices pulvinar. Vestibulum sem leo, suscipit quis interdum sed, elementum quis eros. Sed malesuada urna sit amet ligula lobortis sagittis. Sed finibus varius nisi in dapibus. Fusce malesuada suscipit diam quis luctus. Curabitur malesuada magna quis aliquet aliquam. Morbi blandit at mi at dapibus. Fusce porta, eros sed pellentesque egestas, nibh diam interdum dui, a posuere enim mauris quis purus. Vivamus interdum sit amet lorem eget varius. Nunc augue diam, placerat quis metus tincidunt, luctus lacinia ligula. Duis mollis gravida dui. Vivamus ac ante at felis lobortis lobortis eu nec magna. Fusce consequat tortor et sollicitudin aliquam. Vestibulum luctus arcu facilisis arcu blandit pretium.', '2017-09-28 21:00:52'),
(2, 2, 'Post Two(2)', 'Post-Two2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur, velit eget faucibus accumsan, nibh enim mollis nisl, nec faucibus nisi elit a metus. Duis efficitur consequat nunc, eu molestie magna suscipit in. Vivamus feugiat ultrices pulvinar. Vestibulum sem leo, suscipit quis interdum sed, elementum quis eros. Sed malesuada urna sit amet ligula lobortis sagittis. Sed finibus varius nisi in dapibus. Fusce malesuada suscipit diam quis luctus. Curabitur malesuada magna quis aliquet aliquam. Morbi blandit at mi at dapibus. Fusce porta, eros sed pellentesque egestas, nibh diam interdum dui, a posuere enim mauris quis purus. Vivamus interdum sit amet lorem eget varius. Nunc augue diam, placerat quis metus tincidunt, luctus lacinia ligula. Duis mollis gravida dui. Vivamus ac ante at felis lobortis lobortis eu nec magna. Fusce consequat tortor et sollicitudin aliquam. Vestibulum luctus arcu facilisis arcu blandit pretium.', '2017-09-28 21:00:52'),
(4, 1, 'Post Four (4)', 'Post-Four-4', '<p>This is my fourth post<img alt=\"Microsoft Logo\" src=\"https://c.s-microsoft.com/en-us/CMSImages/Windows_rgb_Blue_D.png?version=BB37434B-A839-E749-E855-00086444FEEC\" style=\"height:300px; width:835px\" /></p>\r\n', '2017-10-02 13:46:08'),
(5, 2, 'Post Three', 'Post-Three', '<p><strong>This is post three</strong></p>\r\n\r\n<p>Take control.</p>\r\n\r\n<p>Swing a golf club or wield a magic wand. The Daydream controller transforms with your&nbsp;imagination.</p>\r\n', '2017-10-04 21:10:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
