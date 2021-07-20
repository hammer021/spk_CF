-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 04:28 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `kd_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`kd_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar`
--

CREATE TABLE `t_daftar` (
  `kode_daftar` int(12) NOT NULL,
  `nm_pasien` varchar(50) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `usia` varchar(20) NOT NULL,
  `kd_daftar` varchar(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_daftar`
--

INSERT INTO `t_daftar` (`kode_daftar`, `nm_pasien`, `jk`, `usia`, `kd_daftar`, `tanggal`) VALUES
(1, 'Ijak', 'Laki-laki', '22', 'K1', '2021-07-18 19:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `t_diagnosa`
--

CREATE TABLE `t_diagnosa` (
  `kd_diagnosa` int(11) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_diagnosa`
--

INSERT INTO `t_diagnosa` (`kd_diagnosa`, `mb`, `md`, `kode_penyakit`, `kode_gejala`) VALUES
(1, 0.9, 0, 2, 4),
(2, 0.4, 0, 2, 6),
(3, 0.9, 0, 2, 7),
(4, 0.4, 0, 2, 8),
(5, -0.5, 1, 2, 9),
(6, -0.5, 1, 2, 10),
(7, -0.5, 1, 2, 11),
(8, -0.5, 1, 2, 12),
(9, -0.5, 1, 2, 13),
(10, -0.5, 1, 2, 14),
(11, -0.5, 1, 2, 15),
(12, -0.5, 1, 2, 16),
(13, -0.5, 1, 2, 17),
(14, 0.4, 0, 3, 4),
(15, -0.5, 1, 3, 6),
(16, 0.4, 0, 3, 7),
(17, -0.5, 1, 3, 8),
(18, 0.9, 0, 3, 9),
(19, 0.4, 0, 3, 10),
(20, -0.5, 1, 3, 11),
(21, -0.5, 1, 3, 12),
(22, -0.5, 1, 3, 13),
(23, -0.5, 1, 3, 14),
(24, -0.5, 1, 3, 15),
(25, -0.5, 1, 3, 16),
(26, 0.4, 0, 3, 17),
(27, 0.9, 0, 4, 4),
(28, -0.5, 1, 4, 6),
(29, -0.5, 1, 4, 7),
(30, -0.5, 1, 4, 8),
(31, 0.9, 0, 4, 9),
(32, -0.5, 1, 4, 10),
(33, 0.9, 0, 4, 11),
(34, 0.9, 0, 4, 12),
(35, -0.5, 1, 4, 13),
(36, -0.5, 1, 4, 14),
(37, -0.5, 1, 4, 15),
(38, -0.5, 1, 4, 16),
(39, -0.5, 1, 4, 17),
(40, 0.23, 0, 5, 4),
(41, -0.5, 1, 5, 6),
(42, -0.5, 1, 5, 7),
(43, -0.5, 1, 5, 8),
(44, 0.23, 0, 5, 9),
(45, -0.5, 1, 5, 10),
(46, -0.5, 1, 5, 11),
(47, 0.23, 0, 5, 12),
(48, 0.9, 0, 5, 13),
(49, 0.9, 0, 5, 14),
(50, 0.23, 0, 5, 15),
(51, -0.5, 1, 5, 16),
(52, -0.5, 1, 5, 17),
(53, -0.5, 1, 6, 4),
(54, -0.5, 1, 6, 6),
(55, -0.5, 1, 6, 7),
(56, -0.5, 1, 6, 8),
(57, 0.9, 0, 6, 9),
(58, -0.5, 1, 6, 10),
(59, -0.5, 1, 6, 11),
(60, -0.5, 1, 6, 12),
(61, -0.5, 1, 6, 13),
(62, -0.5, 1, 6, 14),
(63, -0.5, 1, 6, 15),
(64, 0.4, 0, 6, 16),
(65, 0.9, 0, 6, 17);

-- --------------------------------------------------------

--
-- Table structure for table `t_gejala`
--

CREATE TABLE `t_gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nm_gejala` varchar(50) NOT NULL,
  `kd_gejala` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_gejala`
--

INSERT INTO `t_gejala` (`kode_gejala`, `nm_gejala`, `kd_gejala`) VALUES
(4, 'pemucatan tulang daun (vein clearing) pada daun-da', 'G1'),
(6, 'Tulang daun mengkerut', 'G5'),
(7, 'mosaik kuning disertai dengan malformasi daun', 'G7'),
(8, 'Pelepuhan daun', 'G8'),
(9, 'pengerutan daun', 'G9'),
(10, 'Pengerdilan tanamanx', 'G10'),
(11, 'Daun Mengecil', 'G11'),
(12, 'Daun Berlubang', 'G12'),
(13, 'Terdapat gerombolan putih dibawah daun', 'G13'),
(14, 'Buah tidak bisa besar', 'G14'),
(15, 'Terjadi kerusakan dini pada tanaman', 'G15'),
(16, 'Sebagian buah berwarna kuning', 'G16'),
(17, 'Terdapat buah yang membusuk sebelum dipetik', 'G17');

-- --------------------------------------------------------

--
-- Table structure for table `t_penyakit`
--

CREATE TABLE `t_penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nm_penyakit` varchar(50) NOT NULL,
  `penanganan` text NOT NULL,
  `kd_penyakit` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_penyakit`
--

INSERT INTO `t_penyakit` (`kode_penyakit`, `nm_penyakit`, `penanganan`, `kd_penyakit`) VALUES
(2, 'Cucumber mosaic virus CMV', '(belum) ', 'P2'),
(3, 'Kutu Tripsh', '(belum) ', 'P4'),
(4, 'Kutu daun', '(belum) ', 'P5'),
(5, 'Kutu kebul atau kutu putih', '(belum) ', 'P6'),
(6, 'Ulat Grayak', '(belum) ', 'P7');

-- --------------------------------------------------------

--
-- Table structure for table `t_tentangpenyakit`
--

CREATE TABLE `t_tentangpenyakit` (
  `kd_tentangpenyakit` int(11) NOT NULL,
  `nm_tentangpenyakit` varchar(50) NOT NULL,
  `det_tentangpenyakit` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_tentangpenyakit`
--

INSERT INTO `t_tentangpenyakit` (`kd_tentangpenyakit`, `nm_tentangpenyakit`, `det_tentangpenyakit`, `gambar`) VALUES
(1, 'Cucumber mosaic virus CMV', '<p>belum</p>', 'VB.TIF-exhibition.jpg'),
(2, 'Kutu Tripsh', '<p>belumm</p>', 'VB.TIF-exhibition.jpg'),
(3, 'Kutu daun', '<p>belummm</p>', 'VB.TIF-exhibition.jpg'),
(4, 'Kutu kebul atau kutu putih', '<p>belum masih</p>', 'VB.TIF-exhibition.jpg'),
(5, 'Ulat Grayak', '<p>belluummm</p>', 'VB.TIF-exhibition.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `t_daftar`
--
ALTER TABLE `t_daftar`
  ADD PRIMARY KEY (`kode_daftar`);

--
-- Indexes for table `t_diagnosa`
--
ALTER TABLE `t_diagnosa`
  ADD PRIMARY KEY (`kd_diagnosa`);

--
-- Indexes for table `t_gejala`
--
ALTER TABLE `t_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `t_penyakit`
--
ALTER TABLE `t_penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `t_tentangpenyakit`
--
ALTER TABLE `t_tentangpenyakit`
  ADD PRIMARY KEY (`kd_tentangpenyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `kd_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_daftar`
--
ALTER TABLE `t_daftar`
  MODIFY `kode_daftar` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_diagnosa`
--
ALTER TABLE `t_diagnosa`
  MODIFY `kd_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `t_gejala`
--
ALTER TABLE `t_gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t_penyakit`
--
ALTER TABLE `t_penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_tentangpenyakit`
--
ALTER TABLE `t_tentangpenyakit`
  MODIFY `kd_tentangpenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
