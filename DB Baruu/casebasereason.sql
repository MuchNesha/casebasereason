-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Agu 2021 pada 16.46
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

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
-- Struktur dari tabel `ciri`
--

CREATE TABLE `ciri` (
  `ciri_id` int(11) NOT NULL,
  `ciri_ciri` varchar(100) NOT NULL,
  `ciri_bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ciri`
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
-- Struktur dari tabel `hub`
--

CREATE TABLE `hub` (
  `hub_id` int(11) NOT NULL,
  `hub_solusi` int(11) NOT NULL,
  `hub_ciri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hub`
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
-- Struktur dari tabel `kucing`
--

CREATE TABLE `kucing` (
  `kerusakan_id` int(11) NOT NULL,
  `kerusakan_jenis` varchar(50) NOT NULL,
  `kerusakan_foto` varchar(100) NOT NULL,
  `kerusakan_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kucing`
--

INSERT INTO `kucing` (`kerusakan_id`, `kerusakan_jenis`, `kerusakan_foto`, `kerusakan_deskripsi`) VALUES
(1, 'rantai harus ganti baru dan sesuai', 'p1', ''),
(2, 'gear harus ganti baru dan original', 'p2', ''),
(3, 'undefined', 'undefined', 'undefined'),
(4, 'bersihkan rantai', 'p4', ''),
(5, 'undefined', 'undefined', 'undefined'),
(6, 'kendorkan rantai', 'p6', ''),
(18, '2', '33', '13213');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ciri`
--
ALTER TABLE `ciri`
  ADD PRIMARY KEY (`ciri_id`);

--
-- Indeks untuk tabel `hub`
--
ALTER TABLE `hub`
  ADD PRIMARY KEY (`hub_id`);

--
-- Indeks untuk tabel `kucing`
--
ALTER TABLE `kucing`
  ADD PRIMARY KEY (`kerusakan_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ciri`
--
ALTER TABLE `ciri`
  MODIFY `ciri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `hub`
--
ALTER TABLE `hub`
  MODIFY `hub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT untuk tabel `kucing`
--
ALTER TABLE `kucing`
  MODIFY `kerusakan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
