-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 12:12 AM
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
-- Table structure for table `cabang_bank`
--

CREATE TABLE `cabang_bank` (
  `id_cabang` int(15) NOT NULL,
  `id_petugas` int(15) DEFAULT NULL,
  `kepala_cabang` varchar(20) DEFAULT NULL,
  `nama_cabang` varchar(25) DEFAULT NULL,
  `kantor_cabang` varchar(20) DEFAULT NULL,
  `alamat_cabang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id_nasabah` int(10) NOT NULL,
  `id_rekening` int(25) DEFAULT NULL,
  `ktp` int(11) DEFAULT NULL,
  `no_hp` int(15) DEFAULT NULL,
  `nama_Lengkap` varchar(25) DEFAULT NULL,
  `jenis_Kelamin` enum('P','L') DEFAULT NULL,
  `status` enum('Sudah Kawin','Belum Kawin') DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `rekening_bank`
--

CREATE TABLE `rekening_bank` (
  `id_rekening` int(25) NOT NULL,
  `id_nasabah` int(10) DEFAULT NULL,
  `asal_bank` varchar(10) DEFAULT NULL,
  `kode_rekening` int(6) DEFAULT NULL,
  `saldo` int(15) DEFAULT NULL,
  `tanggal_dibuka` date DEFAULT NULL,
  `status_rekening` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `id_rekening` int(25) DEFAULT NULL,
  `tujuan_transaksi` varchar(20) DEFAULT NULL,
  `jumlah_transaksi` int(15) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `jenis_transaksi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang_bank`
--
ALTER TABLE `cabang_bank`
  ADD PRIMARY KEY (`id_cabang`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id_nasabah`),
  ADD KEY `id_rekening` (`id_rekening`);

--
-- Indexes for table `petugas_bank`
--
ALTER TABLE `petugas_bank`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_cabang` (`id_cabang`);

--
-- Indexes for table `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD PRIMARY KEY (`id_rekening`),
  ADD KEY `id_nasabah` (`id_nasabah`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_rekening` (`id_rekening`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cabang_bank`
--
ALTER TABLE `cabang_bank`
  ADD CONSTRAINT `cabang_bank_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas_bank` (`id_petugas`);

--
-- Constraints for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD CONSTRAINT `nasabah_ibfk_1` FOREIGN KEY (`id_rekening`) REFERENCES `rekening_bank` (`id_rekening`);

--
-- Constraints for table `petugas_bank`
--
ALTER TABLE `petugas_bank`
  ADD CONSTRAINT `petugas_bank_ibfk_1` FOREIGN KEY (`id_cabang`) REFERENCES `cabang_bank` (`id_cabang`);

--
-- Constraints for table `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD CONSTRAINT `rekening_bank_ibfk_1` FOREIGN KEY (`id_nasabah`) REFERENCES `nasabah` (`id_nasabah`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_rekening`) REFERENCES `rekening_bank` (`id_rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
