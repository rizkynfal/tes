-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 02:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antihoax`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritafakta`
--

CREATE TABLE `beritafakta` (
  `id` int(11) NOT NULL,
  `namafkt` varchar(255) NOT NULL,
  `emailfkt` varchar(255) NOT NULL,
  `judulfkt` varchar(255) NOT NULL,
  `cpytxtfkt` varchar(255) NOT NULL,
  `cpylinkfkt` varchar(255) NOT NULL,
  `alasanfkt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beritafakta`
--

INSERT INTO `beritafakta` (`id`, `namafkt`, `emailfkt`, `judulfkt`, `cpytxtfkt`, `cpylinkfkt`, `alasanfkt`) VALUES
(6, 'danda', 'dandakomang@gmail.com', 'susu penyembuh covid', 'susu penyembuh covid', 'inicontoh.com', 'gatau'),
(7, 'i komang', 'dandakomang@yahoo.co.id', 'tempe penyembu covid', 'tempe penyembu covid', 'inicontoh.com', 'tempe penyembu covid');

-- --------------------------------------------------------

--
-- Table structure for table `beritahoax`
--

CREATE TABLE `beritahoax` (
  `id` int(11) NOT NULL,
  `namahx` varchar(255) NOT NULL,
  `emailhx` varchar(255) NOT NULL,
  `judulhx` varchar(255) NOT NULL,
  `cpytxthx` varchar(255) NOT NULL,
  `cpylinkhx` varchar(255) NOT NULL,
  `alasanhx` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beritahoax`
--

INSERT INTO `beritahoax` (`id`, `namahx`, `emailhx`, `judulhx`, `cpytxthx`, `cpylinkhx`, `alasanhx`) VALUES
(19, 'i komang danda', 'formaturrpl@gmail.com', 'minum minyak angin bisa menyembuhkan covid', 'minyak angin dipercaya bisa menyembuhkan covid', 'inicontoh.com', 'karena meminum minyak angin dapat menyebabkan efek tertentu dikarenakan minyak angin mengandung bahan kimia'),
(20, 'kayla alif', 'pinkeuluv@gmail.com', 'vaksin sinovac dapat membunuh', 'vaksin sinovac dapat membunuh manusia', 'inicontoh.com', 'vaksin sinovac sudah teruji aman oleh pihak dinas kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `laporhoax`
--

CREATE TABLE `laporhoax` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `cpytxt` text NOT NULL,
  `cpylink` varchar(150) NOT NULL,
  `alasan` text NOT NULL,
  `imglink` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporhoax`
--

INSERT INTO `laporhoax` (`id`, `nama`, `email`, `judul`, `cpytxt`, `cpylink`, `alasan`, `imglink`) VALUES
(1, 'danda', 'dandakomang@gmail.com', 'susu penyembuh covid', 'susu penyembuh covid', 'inicontoh.com', 'gatau', 'https://akcdn.detik.net.id/visual/2021/10/25/penambahan-sistem-titik-ganjil-genap-8_169.jpeg?w=650'),
(2, 'i komang', 'dandakomang@yahoo.co.id', 'tempe penyembu covid', 'tempe penyembu covid', 'inicontoh.com', 'tempe penyembu covid', 'https://asset.kompas.com/crops/U2E3yxKcSM2XBl2Q5fvA1VXsAtQ=/83x78:1887x1280/780x390/data/photo/2021/06/24/60d40b95c6c1d.jpg'),
(3, 'i komang danda', 'formaturrpl@gmail.com', 'minum minyak angin bisa menyembuhkan covid', 'minyak angin dipercaya bisa menyembuhkan covid', 'inicontoh.com', 'karena meminum minyak angin dapat menyebabkan efek tertentu dikarenakan minyak angin mengandung bahan kimia', 'https://asset.kompas.com/crops/U2E3yxKcSM2XBl2Q5fvA1VXsAtQ=/83x78:1887x1280/780x390/data/photo/2021/06/24/60d40b95c6c1d.jpg'),
(4, 'kayla alif', 'pinkeuluv@gmail.com', 'vaksin sinovac dapat membunuh', 'vaksin sinovac dapat membunuh manusia', 'inicontoh.com', 'vaksin sinovac sudah teruji aman oleh pihak dinas kesehatan', 'https://asset.kompas.com/crops/U2E3yxKcSM2XBl2Q5fvA1VXsAtQ=/83x78:1887x1280/780x390/data/photo/2021/06/24/60d40b95c6c1d.jpg'),
(6, 'Ihsan', 'Ihsanasfari@gmail.com', 'Test', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `level` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fullname`, `level`) VALUES
(2, 'admin', 'admin', 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritafakta`
--
ALTER TABLE `beritafakta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritahoax`
--
ALTER TABLE `beritahoax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporhoax`
--
ALTER TABLE `laporhoax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritafakta`
--
ALTER TABLE `beritafakta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `beritahoax`
--
ALTER TABLE `beritahoax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `laporhoax`
--
ALTER TABLE `laporhoax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
