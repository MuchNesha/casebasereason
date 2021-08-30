-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Agu 2021 pada 01.00
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
(1, 'Rantai Kendor', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hub`
--

CREATE TABLE `hub` (
  `hub_id` int(11) NOT NULL,
  `hub_solusi` int(11) NOT NULL,
  `hub_ciri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'rantai harus ganti baru', '0', 'Jarak bebas rantai adalah sebesar 30mm (3 cm)');

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
  MODIFY `ciri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hub`
--
ALTER TABLE `hub`
  MODIFY `hub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kucing`
--
ALTER TABLE `kucing`
  MODIFY `kerusakan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
