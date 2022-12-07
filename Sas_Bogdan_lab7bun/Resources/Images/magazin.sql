-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2022 at 04:43 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magazin`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `breed_id` int(10) UNSIGNED DEFAULT NULL,
  `gender` char(1) NOT NULL DEFAULT 'M',
  `birth_date` datetime NOT NULL,
  `death_date` datetime DEFAULT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `father_id` int(10) UNSIGNED DEFAULT NULL,
  `mother_id` int(10) UNSIGNED DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `breed_id`, `gender`, `birth_date`, `death_date`, `owner_id`, `father_id`, `mother_id`) VALUES
(1, 'Rocky', 1, 'M', '2001-01-20 10:00:00', NULL, 4, NULL, NULL),
(2, 'Cleopatra', 5, 'F', '2031-12-20 14:00:00', NULL, 3, NULL, NULL),
(3, 'Lola', 2, 'F', '2015-06-20 12:00:00', NULL, 2, NULL, NULL),
(4, 'Hutch', 4, 'M', '2010-03-20 11:00:00', NULL, 5, NULL, NULL),
(5, 'Logan', 3, 'M', '2020-09-20 13:00:00', NULL, 1, NULL, NULL),
(6, 'Koby', 1, 'M', '2005-06-20 12:00:00', NULL, 4, 1, NULL),
(7, 'Ivory', 2, 'F', '2025-06-20 14:00:00', NULL, 2, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

DROP TABLE IF EXISTS `clienti`;
CREATE TABLE IF NOT EXISTS `clienti` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_pass` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_email` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_str` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_oras` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_tara` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_codpost` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_nrcard` int(100) DEFAULT NULL,
  `client_tipcard` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_dataexp` datetime DEFAULT NULL,
  `acceptareemail` int(3) DEFAULT NULL,
  `client_nrinregRC` int(100) DEFAULT NULL,
  `client_nume` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_fiscal` int(100) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clienti`
--

INSERT INTO `clienti` (`client_id`, `client_username`, `client_pass`, `client_email`, `client_str`, `client_oras`, `client_tara`, `client_codpost`, `client_nrcard`, `client_tipcard`, `client_dataexp`, `acceptareemail`, `client_nrinregRC`, `client_nume`, `cod_fiscal`) VALUES
(1, 'Ioana', 'Ioana1234', 'Ioana@yahoo.com', 'Tarnita nr 7', 'Braila', 'Romania', '40589', 1234, 'MasterCard', '2024-08-31 09:12:05', 1, 1234, 'Popescu', 1234),
(2, 'Ioana', 'Ioana1234', 'Ioana@yahoo.com', 'Tarnita nr 7', 'Braila', 'Romania', '40589', 1234, 'MasterCard', '2024-08-31 09:12:05', 1, 1234, 'Popescu', 1234),
(3, 'dan', '$2y$10$pzmHJQcHXLPu3JGzmQwF7u6vjWPJGeaUCxBWzpZ3aBNovEo6U0tG.', 'dan@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ex', '$2y$10$QV7MAlB8SSdOJ1XJzPZGU.hOJKDdxkbxFrDTDCkarhj6bmA6JCkjW', 'ex@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ex1', 'ex1', 'cc@email.ro', '', '', '', '', 0, '', '1970-01-01 02:00:00', 0, 0, '', 0),
(9, 'exemplu', 'exemplu', 'cc@email.ro', '', '', '', '', 0, '', '1970-01-01 02:00:12', 0, 0, '', 0),
(10, 'exemplu', 'exemplu', 'cc@email.ro', 'Tarnita', 'Cluj', 'Romania', '400659', 12347, 'visa', '1970-01-01 02:00:12', 1, 1234567, 'Sergiu', 1234556),
(11, 'exemplu', 'exemplu', 'cc@email.ro', 'Tarnita', 'Cluj', 'Romania', '400659', 12347, 'visa', '1970-01-01 02:33:41', 1, 1234567, 'Sergiu', 1234556),
(12, 'exemplu1', 'exemplu', 'cc@email.ro', 'Tarnita', 'Cluj', 'Romania', '400659', 12347, 'visa', '1970-01-01 02:00:12', 1, 1234567, 'Sergiu', 1234556),
(13, 'exemplu1', 'exemplu', 'cc@email.ro', 'Tarnita', 'Cluj', 'Romania', '400659', 12347, 'visa', '1970-01-01 02:33:41', 1, 1234567, 'Sergiu', 1234556),
(14, 'exemplu1', 'exemplu', 'cc@email.ro', 'Tarnita', 'Cluj', 'Romania', '400659', 12347, 'visa', '2021-11-10 12:04:30', 1, 1234567, 'Sergiu', 1234556);

-- --------------------------------------------------------

--
-- Table structure for table `cos`
--

DROP TABLE IF EXISTS `cos`;
CREATE TABLE IF NOT EXISTS `cos` (
  `cos_id` int(11) NOT NULL AUTO_INCREMENT,
  `produs_id` int(11) NOT NULL,
  `clientID` int(11) NOT NULL,
  `cantitate` int(40) NOT NULL,
  PRIMARY KEY (`cos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cos`
--

INSERT INTO `cos` (`cos_id`, `produs_id`, `clientID`, `cantitate`) VALUES
(4, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Smart Watch', '<p>Unique watch made with stainless steel, ideal for those that prefer interative watches.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Powered by Android with built-in apps.</li>\r\n<li>Adjustable to fit most.</li>\r\n<li>Long battery life, continuous wear for up to 2 days.</li>\r\n<li>Lightweight design, comfort on your wrist.</li>\r\n</ul>', '29.99', '0.00', 10, 'watch.jpg', '2019-03-13 17:55:22'),
(2, 'Wallet', '', '14.99', '19.99', 34, 'wallet.jpg', '2019-03-13 18:52:49'),
(3, 'Headphones', '', '19.99', '0.00', 23, 'headphones.jpg', '2019-03-13 18:47:56'),
(4, 'Digital Camera', '', '69.99', '0.00', 7, 'camera.jpg', '2019-03-13 17:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `produse`
--

DROP TABLE IF EXISTS `produse`;
CREATE TABLE IF NOT EXISTS `produse` (
  `produs_id` int(11) NOT NULL AUTO_INCREMENT,
  `produs_nume` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produs_pret` decimal(13,2) NOT NULL,
  `produs_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produs_categ` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produs_descriere` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produs_desccompl` varchar(1250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produs_stare` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produs_oferta` int(2) NOT NULL,
  `produs_noutati` int(2) NOT NULL,
  PRIMARY KEY (`produs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produse`
--

INSERT INTO `produse` (`produs_id`, `produs_nume`, `produs_pret`, `produs_img`, `produs_categ`, `produs_descriere`, `produs_desccompl`, `produs_stare`, `produs_oferta`, `produs_noutati`) VALUES
(1, 'Laptop Dell', '123.00', 'C:\\wamp64\\www\\shop\\product-images', 'Laptopuri', 'Ultrabook Dell XPS 15 9500 FHD+ i7-10750H 5.0Ghz 16GB Nvidia GTX 1650Ti 512GB SSD Windows 10', 'Inspiron N5010, Intel® CoreTM i5-460M(2.53GHz), 15.6in High Definition (1366X768) WLED, Integrated 1.3 Mega Pixel Camera, Memorie: 3072MB (1x1024 + 1x2048) 1333MHz DDR3, HDD 320GB (5400RPM), ODD 8X DVD+/-RW, Baterie 6-cell 48W/HR LI-ION, Bluetooth 365, Wireless 1501 (802.11g/n), Graphics : 512MB ATI Mobility Radeon HD 5470, 2y Carry in Service, Mars Black', '1', 1, 1),
(2, 'Laptop Dell', '123.00', 'C:\\wamp64\\www\\shop\\product-images', 'Laptopuri', 'Ultrabook Dell XPS 15 9500 FHD+ i7-10750H 5.0Ghz 16GB Nvidia GTX 1650Ti 512GB SSD Windows 10', 'Inspiron N5010, Intel® CoreTM i5-460M(2.53GHz), 15.6in High Definition (1366X768) WLED, Integrated 1.3 Mega Pixel Camera, Memorie: 3072MB (1x1024 + 1x2048) 1333MHz DDR3, HDD 320GB (5400RPM), ODD 8X DVD+/-RW, Baterie 6-cell 48W/HR LI-ION, Bluetooth 365, Wireless 1501 (802.11g/n), Graphics : 512MB ATI Mobility Radeon HD 5470, 2y Carry in Service, Mars Black', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

DROP TABLE IF EXISTS `registered_users`;
CREATE TABLE IF NOT EXISTS `registered_users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `user_name`, `display_name`, `password`, `email`) VALUES
(1, 'admin', 'Administrator', 'admin123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `product_id`, `quantity`, `client_id`) VALUES
(58, 2, 2, 2),
(59, 3, 2, 2),
(60, 1, 1, 2),
(109, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL,
  `descriere` varchar(150) DEFAULT NULL,
  `categorie` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `code`, `image`, `price`, `descriere`, `categorie`) VALUES
(1, '3D Camera', '3DcAM', 'product-images/camera.jpg', 1500.00, 'Camera digitala', 'Aparate foto 3'),
(2, 'External Hard Drive', 'USB02', 'product-images/external-hard-drive.jpg', 800.00, 'Este un hard promitator', 'IT'),
(3, 'Wrist Watch', 'wristWear03', 'product-images/watch.jpg', 300.00, 'Ceas de ultima generatie ', 'Ceasuri'),
(11, 'Mama', 'wasw', 'product-images/watch.jpg', 12345.00, 'este frumos si sanatos', 'Nedefinita');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(2, 'ex', '$2y$10$J8tqvj7YY54Grqf.4sfz8uM2zLPdZg6Reb0PC4UKZTP4mlIWtnbYy', 'ex@gmail.com'),
(3, 'exemplu', '$2y$10$9AoeMhfeKFJmt1n0SgO6Ju/NuUEmkyiuAOMVha46CTV5Dre.ysKt6', 'liana@gmail.com'),
(4, 'etc', '$2y$10$wLoeJWObTQlPoljUJPGApOVxfMkbvHWIHXM5l/Q6yobBkPsVzxOVq', 'etc@g.com'),
(5, 'liana', '$2y$10$abb5lp2sTMqaIDLKo6xJTuT0Iutb1AuyptN6irS8afmINKEgI3IKy', 'lia@gmail.com'),
(6, 'ion', '$2y$10$4baqJ1TfAtWc9ooBSAQV1uEMchmlbJFh09oEDU3k9u.53C15kd2Uu', 'ion@gmail.com'),
(7, 'petrica', '$2y$10$aIq1RL1ZW6r2FkxxHCcNU.6otk83alGSoYVjG7BrTng92W.lGDiUe', 'petrica@econ.com'),
(8, 'ana', '$2y$10$8.7e/d2HWoqrOIB8RhbneuWcwQT4Ky/QDxiQJqO0zVMs9fbMJktD2', 'ana@gmail.com'),
(9, 'ioana', '$2y$10$2K/xisc5BQlNG1eodaCmb.6mq0ViKD5BIw3wpd9Xs2h0aaqoMLtn2', 'ioana@gmail.com'),
(11, 'August', '$2y$10$y7rLL8fIC/AZvwx0nEkzs.95Tbg7tgxqsUQXgOGXoKkUtTKhNvs0.', 'august@yahoo.com'),
(12, 'Ionela', '$2y$10$vqKdioFr8VQaqLQmXw81aeiiVU4OQEad04zZhIGMuGUjEGwuA8Rt.', 'ionela@yahoo.com'),
(13, 'Mama1', '$2y$10$hfjbk1.sNgOXWXD63YJzXOuEDjubl3X9gBTx/tTVI4ymxM6hbMZVu', 'mama@yahoo.com'),
(14, 'Miriam', '$2y$10$0Fv3krZpxiSy0gWP9VgfH.umkcQ87G.4pBLkFRHdc0VplUCD.SHWy', 'miriam@yahoo.com'),
(15, 'Romeoa', '$2y$10$jrUeD.1UGJYfzousIehdSeqtnwsHUR7RZohzdMDbxnpp4CKAWaCdS', 'romoe@yahoo.com'),
(16, 'Lucian', '$2y$10$B7OYRyp0AByz4QMWVsc2NOsY1MnAKbRZHXNz7xJ73whq7d8zDH5jm', 'lucian@gmail.com'),
(17, 'Mimosa', '$2y$10$B6d5jNzx01n9uUhqQTvBsuYsiNr/.QAMmBf7a24i59rXegqISd1kq', 'mimosa@yahoo.com'),
(18, 'Tudor', '$2y$10$dF.S0HxGJuhXooBGvuThF.avb06lCAf3YiTiy8PKEuNao8./X7KXi', 'tudor@yahoo.com'),
(19, 'admin', '$2y$10$Ay9T/MI/CViznkMKH1iawObT8CnB04Ki7KM11VEjBp2GsDECOKom.', 'admin@yahoo.com'),
(20, 'Nelu', '$2y$10$fQoSIuv2G1AyOrUyRBuQp.Bw0MWQuLRgXqo3AeoKOVxEb2k.Cu/x.', 'nelu@yahoo.com'),
(21, 'curs', '$2y$10$hWjW5TTwlOBbZpZiHswDB.D9VRxpBlreAK34h542.C14OO5a5poXK', 'liana.stanca@email.ro'),
(22, 'eu', '$2y$10$BeE/xtDvyhurQyJKywoyZePVcTJq8nuWjBAtrBCk7x4Vgsx8cMexe', 'eu@yahoo.com'),
(23, 'curs1', '$2y$10$9g7ycLcafTuJWymPt1mRS.RWLYta12.UKEa0ZQFa7tVIaMNDUDpKG', 'curs@yahoo.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
