-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2021 pada 01.35
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
-- Database: `casebasereason_new`
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
(1, '[TRANSMISI] Rantai Kendor ', 5),
(2, '[TRANSMISI] Rantai Berisik', 5),
(3, '[TRANSMISI] Rantai Kering', 3),
(4, '[TRANSMISI] Rantai Kotor', 3),
(5, '[TRANSMISI] Rantai Terasa Seret', 3),
(6, '[TRANSMISI] Rantai Terasa Tegang', 5),
(7, '[TRANSMISI] Rantai Permukaan Aus', 7),
(8, 'Tarikan Berat', 5),
(9, '[TRANSMISI] Gear Kotor', 3),
(10, '[TRANSMISI] Mata Gear Lincip', 7),
(11, '[TRANSMISI] Mata Gear Bogang', 7),
(12, '[TRANSMISI] Rantai gampang kendor', 7),
(13, 'Brebet', 7),
(14, 'Gas tidak stabil', 5),
(15, 'Tarikan gas lambat', 7),
(16, 'Susah Distarter', 5),
(17, 'Starter lemah', 5),
(18, 'Distarter susah hidup', 5),
(19, 'Distarter bunyi \"tuk tuk\"', 5),
(20, 'Starter macet', 7),
(21, '[FRAME] Kemudi kaku', 5),
(22, '[FRAME] Kemudi tidak stabil', 5),
(23, '[FRAME] Kemudi bunyi di jalan berlubang', 5),
(24, '[FRAME] Rem blong/tidak berfungsi', 5),
(25, '[FRAME] Penekanan rem terlalu dalam', 5),
(26, '[FRAME] Rem bunyi', 7),
(27, '[FRAME] Rem macet', 5),
(28, '[FRAME] Roda seret diputar', 5),
(29, '[FRAME] Rem rembes', 3),
(30, '[ENGINE] Mesin kasar', 5),
(31, '[ENGINE] Mesin bergetar lebih', 3),
(32, '[ENGINE] Mesin cepat panas', 5),
(33, 'Tidak akselerasi', 5),
(34, 'Tenaga kurang', 5),
(35, '[ENGINE] Ganti perseneling susah', 5),
(36, '[ENGINE] Perseneling susah ke N', 5),
(37, '[ENGINE] Rembesan pada mesin', 7),
(38, '[ENGINE] Kipas pendingin radiator ON', 5);

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
(7, 2, 7),
(8, 2, 10),
(9, 2, 12),
(10, 3, 2),
(11, 3, 3),
(12, 3, 5),
(13, 3, 8),
(14, 4, 2),
(15, 4, 4),
(16, 4, 8),
(17, 5, 1),
(18, 5, 2),
(19, 5, 8),
(20, 6, 6),
(21, 7, 9),
(22, 8, 8),
(23, 8, 13),
(24, 8, 15),
(25, 9, 8),
(26, 9, 13),
(27, 9, 15),
(28, 10, 8),
(29, 10, 14),
(30, 10, 16),
(31, 10, 18),
(32, 11, 8),
(33, 11, 13),
(34, 11, 16),
(35, 11, 18),
(36, 12, 16),
(37, 12, 17),
(38, 12, 18),
(39, 13, 16),
(40, 14, 16),
(41, 15, 16),
(42, 16, 16),
(43, 17, 16),
(44, 17, 19),
(45, 17, 20),
(46, 18, 21),
(47, 18, 22),
(48, 18, 23),
(49, 19, 21),
(50, 19, 22),
(51, 20, 24),
(52, 20, 29),
(53, 21, 24),
(54, 21, 25),
(55, 22, 24),
(56, 22, 25),
(57, 22, 26),
(58, 23, 26),
(59, 24, 28),
(60, 25, 27),
(61, 25, 8),
(62, 26, 30),
(63, 26, 32),
(64, 27, 30),
(65, 27, 35),
(66, 27, 32),
(67, 28, 33),
(68, 28, 34),
(69, 28, 35),
(70, 28, 8),
(71, 28, 36),
(72, 29, 33),
(73, 29, 34),
(74, 30, 30),
(75, 30, 31),
(76, 31, 30),
(77, 31, 31),
(78, 32, 8),
(79, 32, 15),
(80, 32, 33),
(81, 32, 34),
(82, 33, 8),
(83, 33, 33),
(84, 33, 34),
(85, 34, 36),
(86, 35, 16),
(87, 36, 33),
(88, 37, 16),
(89, 37, 17),
(90, 37, 18),
(91, 38, 37),
(92, 39, 32),
(93, 40, 32),
(94, 40, 38),
(95, 41, 32),
(96, 41, 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_konsultasi`
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
-- Dumping data untuk tabel `riwayat_konsultasi`
--

INSERT INTO `riwayat_konsultasi` (`id`, `id_riwayat`, `nama`, `alamat`, `hasil_diagnosa`, `nilai`) VALUES
(2, 1, 'RIYATI', 'DSN DEMANGAN', 'rantai harus ganti baru,kencangkan rantai', '0.77'),
(3, 2, 'FENDI', 'DSN KARANG TEMPLEK', 'rantai harus ganti baru', '0.73'),
(4, 4, 'FANI', 'DSN GLANTANGAN', 'lumasi saja rantai', '1'),
(5, 5, 'SUNARMI', 'DSN KRAJAN RT.004 RW.00 JBR', 'Aki,Bendik Starter,Brushing starter', '0.5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rusak`
--

CREATE TABLE `rusak` (
  `kerusakan_id` int(11) NOT NULL,
  `kerusakan_jenis` varchar(50) NOT NULL,
  `kerusakan_foto` varchar(100) NOT NULL,
  `kerusakan_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rusak`
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
-- Struktur dari tabel `rw_gejala`
--

CREATE TABLE `rw_gejala` (
  `id` int(11) NOT NULL,
  `id_riwayat` varchar(50) DEFAULT NULL,
  `gejala_kerusakan` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rw_gejala`
--

INSERT INTO `rw_gejala` (`id`, `id_riwayat`, `gejala_kerusakan`) VALUES
(22, '1', 'Rantai Kendor ,Rantai Berisik,Rantai Kering'),
(24, '2', 'Rantai Kendor ,Rantai Kotor,Rantai Terasa Seret'),
(25, '3', 'Rantai Terasa Seret,Tarikan Gas Berat'),
(26, '5', 'Starter lemah,Distarter bunyi '),
(27, '4', '[TRANSMISI] Rantai Kering');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tambahan`
--

CREATE TABLE `tambahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tambahan`
--

INSERT INTO `tambahan` (`id`, `nama`, `alamat`) VALUES
(1, 'bawik', 'puger'),
(2, 'fahrizal', 'banyuwangi'),
(3, 'nyobak', 'puger'),
(4, 'nyobak', 'f'),
(5, 'SUNARMI', 'DSN KRAJAN RT.004 RW.00 JBR');

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
-- Indeks untuk tabel `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rw_gejala`
--
ALTER TABLE `rw_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tambahan`
--
ALTER TABLE `tambahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ciri`
--
ALTER TABLE `ciri`
  MODIFY `ciri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `hub`
--
ALTER TABLE `hub`
  MODIFY `hub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rw_gejala`
--
ALTER TABLE `rw_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tambahan`
--
ALTER TABLE `tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
