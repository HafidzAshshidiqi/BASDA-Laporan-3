-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 07:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nasabah_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `petugas_bank`
--

CREATE TABLE `petugas_bank` (
  `id_petugas` int(15) NOT NULL,
  `id_cabang` int(15) DEFAULT NULL,
  `nama_petugas` varchar(25) DEFAULT NULL,
  `kepala_cabang` varchar(25) DEFAULT NULL,
  `jabatan` varchar(15) DEFAULT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `no_hp` int(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `petugas_bank`
--
ALTER TABLE `petugas_bank`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_cabang` (`id_cabang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `petugas_bank`
--
ALTER TABLE `petugas_bank`
  ADD CONSTRAINT `petugas_bank_ibfk_1` FOREIGN KEY (`id_cabang`) REFERENCES `cabang_bank` (`id_cabang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
