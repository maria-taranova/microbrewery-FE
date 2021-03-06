-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 26, 2016 at 09:06 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beer`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `product_id` int(11) NOT NULL,
  `image_url` varchar(800) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`product_id`, `image_url`, `id`) VALUES
(1, 'http://i1070.photobucket.com/albums/u496/md_mcc/arron%20label_zps2zy4oqjb.png', 1),
(1, 'http://i1070.photobucket.com/albums/u496/md_mcc/arron%20bottle_zpsavnuxtcs.jpg', 2),
(1, 'http://pngimg.com/upload/beer_PNG2388.png', 3),
(2, 'http://i1070.photobucket.com/albums/u496/md_mcc/holly%20label_zpswopdbkvh.png', 4),
(2, 'http://i1070.photobucket.com/albums/u496/md_mcc/holly%20bottle_zpslehazaho.jpg', 5),
(2, 'http://pngimg.com/upload/beer_PNG2388.png', 6),
(3, 'http://i1070.photobucket.com/albums/u496/md_mcc/campbell%20label_zpsylvk6m1g.png', 7),
(3, 'http://i1070.photobucket.com/albums/u496/md_mcc/campbell%20bottle_zpslzwdfb1y.jpg', 8),
(3, 'http://pngimg.com/upload/beer_PNG2388.png', 9),
(4, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', 10),
(4, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 11),
(4, 'http://pngimg.com/upload/beer_PNG2388.png', 12),
(5, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', 13),
(5, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 14),
(5, 'http://pngimg.com/upload/beer_PNG2388.png', 15),
(6, 'http://i1070.photobucket.com/albums/u496/md_mcc/skeleton%20label_zpsanojgvgx.png', 16),
(6, 'http://i1070.photobucket.com/albums/u496/md_mcc/skeleton%20bottle_zpsrl3itvj9.jpg', 17),
(6, 'http://pngimg.com/upload/beer_PNG2388.png', 18),
(7, 'http://i1070.photobucket.com/albums/u496/md_mcc/ramin%20label_zpsqkcqxbt5.png', 19),
(7, 'http://i1070.photobucket.com/albums/u496/md_mcc/ramin%20bottle_zpshm3d5ce9.jpg', 20),
(7, 'http://pngimg.com/upload/beer_PNG2388.png', 21),
(8, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', 22),
(8, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 23),
(8, 'http://pngimg.com/upload/beer_PNG2388.png', 24),
(9, 'http://i1070.photobucket.com/albums/u496/md_mcc/bro%20label_zps0gao5hme.png', 25),
(9, 'http://i1070.photobucket.com/albums/u496/md_mcc/bro%20bottle_zpsezfneb9s.jpg', 26),
(9, 'http://pngimg.com/upload/beer_PNG2388.png', 27),
(10, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', 28),
(10, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 29),
(10, 'http://pngimg.com/upload/beer_PNG2388.png', 30),
(11, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', 31),
(11, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 32),
(11, 'http://pngimg.com/upload/beer_PNG2388.png', 33),
(12, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', 34),
(12, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 35),
(12, 'http://pngimg.com/upload/beer_PNG2388.png', 36);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `beer_id` int(11) NOT NULL,
  `likes_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`beer_id`, `likes_num`) VALUES
(1, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_id`, `date`) VALUES
(3, '2016-02-06 02:01:29'),
(8, '2016-02-26 18:30:41'),
(9, '2016-02-26 18:35:04'),
(10, '2016-02-26 18:35:35'),
(11, '2016-02-26 18:49:24'),
(12, '2016-02-26 18:51:06'),
(26, '2016-02-26 19:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(3, 7),
(7, 22),
(6, 61),
(8, 66),
(9, 67),
(10, 68),
(11, 69),
(12, 72),
(26, 92);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `product_id` int(11) NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`product_id`, `product_price`, `order_id`, `product_qty`) VALUES
(3, 3, 8, 0),
(3, 3, 9, 0),
(3, 3, 10, 0),
(6, 4, 10, 0),
(1, 1, 6, 11),
(3, 12, 3, 22),
(3, 3, 12, 19),
(6, 4, 12, 18),
(9, 3, 12, 1),
(3, 3, 12, 24),
(6, 4, 12, 23),
(9, 3, 12, 6),
(1, 4, 12, 6),
(3, 3, 26, 24),
(6, 4, 26, 23),
(9, 3, 26, 6),
(1, 4, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(900) NOT NULL,
  `price` int(50) NOT NULL,
  `alcohol` int(50) NOT NULL,
  `image` varchar(400) NOT NULL,
  `vol` varchar(200) NOT NULL,
  `inventory` int(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `alcohol`, `image`, `vol`, `inventory`) VALUES
(1, 'Arron Amber Ale', 'This crisp amber ale is a filling, malty beer. Pair it with a burger eaten on a patio after a day spent in front of a computer screen. ', 4, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/arron%20label_zps2zy4oqjb.png', '341', 100),
(2, 'Sleeping Holly Winter Ale', 'Bundle up and have a snooze on those cold winter days with the Sleeping Holly Winter Ale. The dark vanilla flavour pairs well with fruit pies and naps.', 3, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/holly%20label_zpswopdbkvh.png', '500', 100),
(3, 'Campbell Blonde Ale', 'A light ale reminiscent of flowing blonde locks. Pairs well with Adobe Illustrator and Starbucks.', 3, 7, 'http://i1070.photobucket.com/albums/u496/md_mcc/campbell%20label_zpsylvk6m1g.png', '341', 50),
(4, 'Ethical Non-Alcoholic Beer', 'A light drink with the flavour of a pale lager without the lack of critical thinking that comes with it.', 3, 0, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 200),
(5, 'DJ Amensky IPA', 'A dry, hoppy beer with fruity undertones. The bitterness is complemented by spicy food.', 4, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 75),
(6, 'Skeleton War Pumpkin Ale', 'Fortify your army for the coming Skeleton War with this rich pumpkin ale. With just a hint of cinnamon and nutmeg, it pairs well with ginger snap cookies and chocolate.', 4, 8, 'http://i1070.photobucket.com/albums/u496/md_mcc/skeleton%20label_zpsanojgvgx.png', '500', 50),
(7, 'Shadmehr Imperial Stout', 'Dark and rich with notes of chocolate, this regal beer is fit for the most discerning of leaders. Pair with a slice of cherry cheesecake for a dessert worthy of a program head.', 6, 9, 'http://i1070.photobucket.com/albums/u496/md_mcc/ramin%20label_zpsqkcqxbt5.png', '500', 20),
(8, 'Henry Honey Lager', 'Whether you’re coding in a dark room, saving the world with your super strength, or keeping hordes of students from having a collective nervous breakdown, take a break at the end of the day with this crisp lager. The hint of sweetness and light flavour will surely calm your nerves.', 3, 4, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 200),
(9, 'Bromance Brown Ale', 'Sometimes things are just meant to be. Find your true bromance by pairing this dark malty ale with a bowl of stew, an Amiibo, and your best friend.', 3, 6, 'http://i1070.photobucket.com/albums/u496/md_mcc/bro%20label_zps0gao5hme.png', '341', 100),
(10, 'Fajardo Hefeweizen', 'Hard to pronounce, but not hard to swallow, this light wheat beer pairs well with fruit and extended due dates.', 3, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 200),
(11, 'Michael or Mike Ho Double IPA', 'Go double or nothing with this IPA. A full-bodied beer rich with hops, pair it with spicy dim sum and general confusion.', 3, 6, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 150),
(12, 'PHP Pilsner', 'A light blonde beer that goes down easy when you want more than one glass. And you’re going to need more than one glass if you’re coding PHP.', 3, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lname` varchar(400) NOT NULL,
  `fname` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `city` varchar(400) NOT NULL,
  `postalcode` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lname`, `fname`, `email`, `city`, `postalcode`) VALUES
(1, 'Lname', 'Fname', 'jaidex@list.ru', 'city', 'pcode'),
(2, 'lname', 'fname', 'email', 'cit', 'pcode'),
(3, 'test', 'test', 'email', 'cit', 'pcode'),
(4, 'test', 'test', 'email', 'cit', 'pcode'),
(5, 'test', 'test', 'email', 'cit', 'pcode'),
(6, 'test', 'test', 'email', 'cit', 'pcode'),
(7, 'test', 'test', 'email', 'cit', 'pcode'),
(8, 'test', 'test', 'email', 'cit', 'pcode'),
(9, 'test', 'test', 'email', 'cit', 'pcode'),
(10, 'test', 'test', 'email', 'cit', 'pcode'),
(11, 'test', 'test', 'email', 'cit', 'pcode'),
(12, 'test', 'test', 'email', 'cit', 'pcode'),
(13, 'test', 'test', 'email', 'cit', 'pcode'),
(14, 'test', 'test', 'email', 'cit', 'pcode'),
(15, 'test', 'test', 'email', 'cit', 'pcode'),
(16, 'test', 'test', 'email', 'cit', 'pcode'),
(17, 'test', 'test', 'email', 'cit', 'pcode'),
(18, 'test', 'test', 'email', 'cit', 'pcode'),
(19, 'test', 'test', 'email', 'cit', 'pcode'),
(20, 'test', 'test', 'email', 'cit', 'pcode'),
(21, 'test', 'test', 'email', 'cit', 'pcode'),
(22, 'test', 'test', 'u@list.ru', 'cit', 'pcode'),
(23, 'test', 'test', 'email', 'cit', 'pcode'),
(26, 'test', 'test', 'email', 'cit', 'pcode'),
(27, 'EEtest', 'test', 'email', 'cit', 'pcode'),
(28, 'EEtest', 'test', '..', 'cit', 'pcode'),
(29, 'EEtest', 'test', '', 'cit', 'pcode'),
(30, 'EEtest', 'test', '', 'cit', 'pcode'),
(31, 'EEtest', 'test', '', 'cit', 'pcode'),
(32, 'EEtest', 'test', '', 'cit', 'pcode'),
(33, 'EEtest', 'test', '', 'cit', 'pcode'),
(34, 'EEtest', 'test', '', 'city', 'pcode'),
(35, 'EEtest', 'test', 'd', 'city', 'pcode'),
(36, '', '', 'f', 'f', ''),
(37, '', '', 'f', 'f', ''),
(38, '', '', 'r', 'r', ''),
(39, '', '', 'r', 'r', ''),
(40, 'd', 'd', 'd', 'd', 'd'),
(41, 'f', 'f', 'f', 'f', 'f'),
(42, 'd', 'd', 'd', 'd', 'd'),
(43, 'd', 'd', 'd', 'd', 'd'),
(44, 'd', 'd', 'd', 'd', 'd'),
(45, 'd', 'd', 'd', 'd', 'd'),
(46, 'd', 'd', 'd', 'd', 'd'),
(47, '', '', '', '', ''),
(48, 's', 's', 's', 's', 's'),
(49, 's', 's', 's', 's', 's'),
(50, 's', 's', 's', 's', 's'),
(51, 's', 's', 's', 's', 's'),
(52, 's', 's', 's', 's', 's'),
(53, 's', 's', 's', 's', 's'),
(54, 's', 's', 's', 's', 's'),
(55, 's', 's', 'sfrg', 's', 's'),
(56, 's', 's', 'sfrg', 's', 's'),
(57, 's', 's', 'sfrg', 's', 's'),
(58, 's', 's', 'sfrg', 's', 's'),
(59, 's', 's', 'sfrg', 's', 's'),
(60, 's', 's', 'sfrg', 's', 's'),
(61, 's', 's', 'sfrggtf', 's', 's'),
(62, 's', 's', 'sfrggtfd', 's', 's'),
(63, 's', 's', 'sfrggtfd', 's', 's'),
(64, 's', 's', 'sfrggtfd', 's', 's'),
(65, 's', 's', 'sfrggtfd', 's', 's'),
(66, 'ii', 'mari', 'ii@ii.fo', 'Oostende, Belgium', 'oo'),
(67, 'ii', 'mari', 'ii@ii.fog', 'Oostende, Belgium', 'oo'),
(68, 'lname', 'name', 'jaidex@list.rud', 'St. John Ambulance, Alpha Avenue, Burnaby, BC, Canada', 'lsdk'),
(69, 'sd', 'sd', 'sd@df.jk', 'sd', 'sd'),
(70, 'sd', 'sd', 'sd@df.jk', 'sd', 'sd'),
(71, 'sd', 'sd', 'sd@df.jk', 'sd', 'sd'),
(72, 'sd', 'sd', 'sd@df.jkd', 'sd', 'sd'),
(73, 'sd', 'sd', 'sd@df.jkdd', 'sd', 'sd'),
(74, 'sd', 'sd', 'sd@df.jkdd', 'sd', 'sd'),
(75, 'sd', 'sd', 'sd@df.jkdd', 'sd', 'sd'),
(76, 'sd', 'sd', 'sd@df.jkddcvf', 'sd', 'sd'),
(77, 'sd', 'sd', 'sd@df.jkddcvfd', 'sd', 'sd'),
(78, 'sd', 'sd', 'sd@df.jkddcvfddd', 'sd', 'sd'),
(79, 'sd', 'sd', 'sdd@df.jkddcvfddd', 'sd', 'sd'),
(80, 'sd', 'sd', 'sdd@df.v', 'sd', 'sd'),
(81, 'df', 'df', 'sds@sd.hj', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(82, 'df', 'df', 'sds@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(83, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(84, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(85, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(86, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(87, 'df', 'df', 'sdrfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(88, 'df', 'df', 'sdrsfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(89, 'df', 'df', 'sdrsfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(90, 'df', 'df', 'sdfrsfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(91, 'df', 'df', 'uu@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(92, 'df', 'df', 'uud@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy'),
(93, 'f', 'f', '', 'Delta, BC, Canada', 'd'),
(94, '', '', '', '', ''),
(95, '', '', '', '', ''),
(96, '', '', '', '', ''),
(97, '', '', '', '', ''),
(98, '', '', '', '', ''),
(99, '', '', '', '', ''),
(100, '', '', '', '', ''),
(101, '', '', '', '', ''),
(102, '', '', '', '', ''),
(103, '', '', '', '', ''),
(104, '', '', '', '', ''),
(105, '', '', '', '', ''),
(106, '', '', '', '', ''),
(107, '', '', '', '', ''),
(108, '', '', '', '', ''),
(109, '', '', '', '', ''),
(110, '', '', '', '', ''),
(111, '', '', '', '', ''),
(112, '', '', '', '', ''),
(113, '', '', '', '', ''),
(114, '', '', '', '', ''),
(115, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD KEY `beer_id` (`beer_id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `product_id` (`product_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`beer_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
