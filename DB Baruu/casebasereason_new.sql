-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 11:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casebasereason`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciri`
--

CREATE TABLE `ciri` (
  `ciri_id` int(11) NOT NULL,
  `ciri_ciri` varchar(100) NOT NULL,
  `ciri_bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciri`
--

INSERT INTO `ciri` (`ciri_id`, `ciri_ciri`, `ciri_bobot`) VALUES
(1, 'Rantai Kendor ', 5),
(2, 'Rantai Berisik', 5),
(3, 'Rantai Kering', 3),
(4, 'Rantai Kotor', 3),
(5, 'Rantai Terasa Seret', 3),
(6, 'Rantai Terasa Tegang', 5),
(7, 'Rantai Permukaan Aus', 7),
(8, 'Tarikan Gas Berat', 5),
(9, 'Gear Kotor', 3),
(10, 'Mata Gear Lincip', 7),
(11, 'Mata Gear Bogang', 7),
(12, 'rantai gampang kendor', 7);

-- --------------------------------------------------------

--
-- Table structure for table `hub`
--

CREATE TABLE `hub` (
  `hub_id` int(11) NOT NULL,
  `hub_solusi` int(11) NOT NULL,
  `hub_ciri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hub`
--

INSERT INTO `hub` (`hub_id`, `hub_solusi`, `hub_ciri`) VALUES
(1, 1, 2),
(2, 1, 7),
(3, 1, 10),
(4, 1, 11),
(5, 1, 12),
(6, 2, 2),
(7, 2, 10),
(8, 2, 12),
(9, 3, 2),
(10, 3, 3),
(11, 3, 5),
(12, 3, 8),
(13, 4, 2),
(14, 4, 4),
(15, 4, 8),
(16, 5, 1),
(17, 5, 2),
(18, 5, 2),
(19, 5, 8),
(20, 6, 6),
(119, 7, 9),
(120, 1, 1),
(121, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kucing`
--

CREATE TABLE `kucing` (
  `kerusakan_id` int(11) NOT NULL,
  `kerusakan_jenis` varchar(50) NOT NULL,
  `kerusakan_foto` varchar(100) NOT NULL,
  `kerusakan_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kucing`
--

INSERT INTO `kucing` (`kerusakan_id`, `kerusakan_jenis`, `kerusakan_foto`, `kerusakan_deskripsi`) VALUES
(1, 'rantai harus ganti baru dan sesuai', 'p1', ''),
(2, 'gear harus ganti baru dan original', 'p2', ''),
(3, 'undefined', 'undefined', 'undefined'),
(4, 'bersihkan rantai', 'p4', ''),
(5, 'undefined', 'undefined', 'undefined'),
(6, 'kendorkan rantai', 'p6', ''),
(18, '2', '33', '13213');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_konsultasi`
--

CREATE TABLE `riwayat_konsultasi` (
  `id` int(11) NOT NULL,
  `id_riwayat` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `hasil_diagnosa` varchar(500) DEFAULT NULL,
  `nilai` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_konsultasi`
--

INSERT INTO `riwayat_konsultasi` (`id`, `id_riwayat`, `nama`, `alamat`, `hasil_diagnosa`, `nilai`) VALUES
(2, 1, 'bawik', 'puger', 'rantai harus ganti baru,kencangkan rantai', '0.77'),
(3, 2, 'fahrizal', 'banyuwangi', 'rantai harus ganti baru', '0.73');

-- --------------------------------------------------------

--
-- Table structure for table `rusak`
--

CREATE TABLE `rusak` (
  `kerusakan_id` int(11) NOT NULL,
  `kerusakan_jenis` varchar(50) NOT NULL,
  `kerusakan_foto` varchar(100) NOT NULL,
  `kerusakan_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rusak`
--

INSERT INTO `rusak` (`kerusakan_id`, `kerusakan_jenis`, `kerusakan_foto`, `kerusakan_deskripsi`) VALUES
(1, 'rantai harus ganti baru', '', ''),
(2, 'gear harus ganti baru', '', ''),
(3, 'lumasi saja rantai', '', 'Lumasi rantai secara berkala (seminggu sekali) dengan chain lube '),
(4, 'bersihkan rantai', '', 'Bersihkan rantai secara rutin dengan semprotan chain cleaner kemudian seusai dibersihkan berikan chain lube'),
(5, 'kencangkan rantai', '', 'Kecangkan rantai dengan jarak bebas 30 mm (3 cm).'),
(6, 'kendorkan rantai', '', 'Jarak bebas rantai adalah sebesar 30mm (3cm)'),
(7, 'bersihkan gear', '', 'Bersihkan gear secara rutin dengan semprotan chain cleaner kemudian seusai dibersihkan berikan chain lube pada rantai.'),
(8, 'Saringan fuelpump kotor', '', ''),
(9, 'Injektor Kotor', '', ''),
(10, 'Busi', '', ''),
(11, 'Cop Busi kurang tepat', '', ''),
(12, 'Aki', '', 'Periksa tegangan Aki. Bila tegangan Aki kurang dari 12.7 Volt, maka aki harus diganti dengan yang baru.'),
(13, 'Pengisian tidak normal', '', ''),
(14, 'Kiprok', '', ''),
(15, 'Kelistrikan kabel sistem starter', '', ''),
(16, 'Armature Starter', '', ''),
(17, 'Bendik Starter', '', ''),
(18, 'Kones ', '', ''),
(19, 'Bearing as roda', '', ''),
(20, 'Seal master rem bocor', '', ''),
(21, 'Minyak rem habis', '', ''),
(22, 'Kanvas rem habis', '', ''),
(23, 'Kanvas rem kotor', '', ''),
(24, 'Master rem butuh grease', '', ''),
(25, 'Master rem kemasukan udara', '', ''),
(26, 'Kehabisan oli', '', ''),
(27, 'Ganti Oli', '', ''),
(28, 'Kanvas kopling aus', '', ''),
(29, 'Kompresi kurang', '', ''),
(30, 'Tensioner', '', ''),
(31, 'Rantai timing', '', ''),
(32, 'Throttle kotor', '', ''),
(33, 'Filter udara kotor', '', ''),
(34, 'Setel kopling', '', ''),
(35, 'Saluran BBM', '', ''),
(36, 'Kelistrikan sistem pengapian', '', ''),
(37, 'Brushing starter', '', ''),
(38, 'Gasket, paking magnet', '', ''),
(39, 'Coolant', '', ''),
(40, 'Sirkulasi Radiator', '', ''),
(41, 'Thermostart', '', ''),
(42, 'uji test', '', 'uji');

-- --------------------------------------------------------

--
-- Table structure for table `rw_gejala`
--

CREATE TABLE `rw_gejala` (
  `id` int(11) NOT NULL,
  `id_riwayat` varchar(50) DEFAULT NULL,
  `gejala_kerusakan` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rw_gejala`
--

INSERT INTO `rw_gejala` (`id`, `id_riwayat`, `gejala_kerusakan`) VALUES
(22, '1', 'Rantai Kendor ,Rantai Berisik,Rantai Kering'),
(24, '2', 'Rantai Kendor ,Rantai Kotor,Rantai Terasa Seret');

-- --------------------------------------------------------

--
-- Table structure for table `tambahan`
--

CREATE TABLE `tambahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tambahan`
--

INSERT INTO `tambahan` (`id`, `nama`, `alamat`) VALUES
(1, 'bawik', 'puger'),
(2, 'fahrizal', 'banyuwangi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ciri`
--
ALTER TABLE `ciri`
  ADD PRIMARY KEY (`ciri_id`);

--
-- Indexes for table `hub`
--
ALTER TABLE `hub`
  ADD PRIMARY KEY (`hub_id`);

--
-- Indexes for table `kucing`
--
ALTER TABLE `kucing`
  ADD PRIMARY KEY (`kerusakan_id`);

--
-- Indexes for table `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rw_gejala`
--
ALTER TABLE `rw_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tambahan`
--
ALTER TABLE `tambahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciri`
--
ALTER TABLE `ciri`
  MODIFY `ciri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hub`
--
ALTER TABLE `hub`
  MODIFY `hub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `kucing`
--
ALTER TABLE `kucing`
  MODIFY `kerusakan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rw_gejala`
--
ALTER TABLE `rw_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tambahan`
--
ALTER TABLE `tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
