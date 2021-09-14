-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2021 pada 03.57
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
(5, 5, 'SUNARMI', 'DSN KRAJAN RT.004 RW.00 JBR', 'Aki,Bendik Starter,Brushing starter', '0.5'),
(6, 6, 'SUTIKNO', 'DSN TEGALBANTENG RT/RW JBR', 'Minyak rem habis,Kanvas rem habis,Master rem butuh grease', '0.5'),
(7, 7, 'INDAH DISMAWATI', 'DSN KRAJAN RT/RW:01/03 JBR', 'Sirkulasi Radiator,Thermostart', '1'),
(8, 8, 'JARKASI PRABOWO', 'DSN KRAJAN', 'Kones ,Bearing as roda', '1'),
(9, 9, 'ACHMAD CHOIRON EFENDI', 'DSN PANDEAN RT.7 RW.1 SIDOARJO', 'Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.41'),
(10, 10, 'SUDARMAN', 'DSN KRAJAN RT1 RW1 JBR', 'rantai harus ganti baru', '1'),
(11, 11, 'WASIYO', 'DSN DARUSSALAM RT9 JBR', 'Aki,Brushing starter', '1'),
(12, 12, 'JOKO WAHYUDI', 'DSN KRAJAN RT2 RW12', 'rantai harus ganti baru,gear harus ganti baru', '0.7'),
(13, 13, 'FIFN HUMAIDAH', 'DSN KRAJAN RT1 RW10 JBR', 'Kones ', '1'),
(14, 14, 'RIZAL RIVALDI', 'PERUM BUMI AMBULU PERMAI JBR', 'Gasket, paking magnet', '1'),
(15, 15, 'SURTISNO', 'DSN POMO RT 4 RW17 JBR', 'Kanvas kopling aus,Setel kopling', '1'),
(16, 16, 'SRI WAHYUNI ', 'DSN KARANG TEMPLEK RT1 JBR', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '0.63'),
(17, 17, 'SUPRIYANTO', 'DSN MANDIKU RT3 RW 6 JBR', 'Bendik Starter', '0.58'),
(18, 18, 'PIPIT INDAH OKTAVIA', 'DSN DEMANGAN RT4 JBR', 'Sirkulasi Radiator,Thermostart', '1'),
(19, 19, 'SUMIATI', 'DSN KRAJAN 1 RW2 JBR', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '0.67'),
(20, 20, 'DIDIK', 'DSN KRAJAN 1 RT1 JBR', 'Kanvas rem habis,Kanvas rem kotor', '0.58'),
(21, 21, 'JUNAIDAH', 'DSN KRAJAN RT/RW.09 JBR', 'Saringan fuelpump kotor,Injektor Kotor,Throttle kotor', '0.58'),
(22, 22, 'ANANG APRIONO', 'DSN TEGALBANTENG RT/RW JBR', 'Kanvas rem habis,Kanvas rem kotor', '0.58'),
(23, 23, 'HENDRA MARDHIONO', 'DSN TEGALSARI RT3 RW7', 'Bendik Starter', '1'),
(24, 24, 'SUTARMI', 'DSN SUMBERAN', 'lumasi saja rantai', '1'),
(25, 25, 'BIBIT AYU PURNANINGSIH', 'DSN TEGALSARI', 'lumasi saja rantai,bersihkan rantai', '0.5'),
(26, 26, 'RUDIK ANANG BAHTIAR', 'JL. AGUS SALIM', 'rantai harus ganti baru,gear harus ganti baru', '1'),
(27, 27, 'MITRA SUGIHARJO', 'DSN KARANG TEMPLEK', 'Kehabisan oli,Ganti Oli,Kanvas kopling aus,Kompresi kurang,Tensioner,Rantai timing,Throttle kotor,Filter udara kotor', '0.38'),
(28, 28, 'IKA ZUNIARTI', 'DSN TEGALREJO', 'Master rem butuh grease', '0.63'),
(29, 29, 'RUSMIATI NINGSIH', 'DSN GUMUKRASE', 'Kanvas rem habis,Kanvas rem kotor', '1'),
(30, 30, 'NURUL HANDAYANI', 'DSN SENTONG', 'Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '1'),
(31, 31, 'WAYAN AJI BAYU SAPTO', 'DSN KRAJAN 1 RW2 JBR', 'lumasi saja rantai,bersihkan rantai,kencangkan rantai,Saringan fuelpump kotor,Injektor Kotor,Busi,Cop Busi kurang tepat,Master rem kemasukan udara,Kanvas kopling aus,Throttle kotor,Filter udara kotor', '1'),
(32, 32, 'KHOIRUL ANWAR', 'DSN KRAJAN', 'Bendik Starter', '1'),
(33, 33, 'RISTIANINGRUM', 'DSN KRAJAN', 'lumasi saja rantai', '1'),
(34, 34, 'SUCIPTO', 'DSN KRAJAN RT/RW.09 JBR', 'Kanvas rem habis,Kanvas rem kotor', '0.58'),
(35, 35, 'SUKESI', 'DSN KRAJAN', 'Master rem kemasukan udara', '1'),
(36, 36, 'ADI SUTRISNO', 'DSN DEMANGAN', 'kencangkan rantai', '1'),
(37, 37, 'AMALIA WULANDARI', 'DSN KRAJAN RT/RW.09 JBR', 'Seal master rem bocor', '1'),
(38, 38, 'MUHAMAD FAIQOTUL RIZA', 'DSN KRAJAN', 'Bendik Starter', '1'),
(39, 39, 'DWI SUGIANTO', 'DSN TEGALSARI', 'Kanvas kopling aus,Setel kopling', '1'),
(40, 40, 'IMAM MAKSUM', 'DSN POMO', 'Saringan fuelpump kotor,Injektor Kotor,Throttle kotor', '0.58'),
(41, 41, 'ADINIYAH', 'DSN KRAJAN', 'Kones ,Bearing as roda', '1'),
(42, 42, 'NINUK NURUL HUDA', 'DSN SUMBERAN', 'Aki,Brushing starter', '1'),
(43, 43, 'MAKI', 'DSN GLANTANGAN', 'lumasi saja rantai,bersihkan rantai,kencangkan rantai,Saringan fuelpump kotor,Injektor Kotor,Busi,Cop Busi kurang tepat,Master rem kemasukan udara,Kanvas kopling aus,Throttle kotor,Filter udara kotor', '1'),
(44, 44, 'RUDI BUDIONO', 'DSN TEGAL BANTENG', 'kencangkan rantai', '0.77'),
(45, 45, 'LASIEM PRATIWI', 'DSN KRAJAN 1 RW2 JBR', 'lumasi saja rantai', '1'),
(46, 46, 'SYAEFULLAH', 'DSN WATU ULO', 'rantai harus ganti baru', '1'),
(47, 47, 'ALI SIHABUDIN', 'DSN MANDILIS', 'Kanvas kopling aus', '1'),
(48, 48, 'ISMAIL JA\'FAR', 'DSN KRAJAN', 'Kehabisan oli,Ganti Oli,Tensioner,Rantai timing', '1'),
(49, 49, 'NUR SITI ARISONA ', 'DSN DEMANGAN', 'Master rem butuh grease', '1'),
(50, 50, 'SITI JAENAP', 'DSN KRAJAN RT/RW.09 JBR', 'Kehabisan oli,Ganti Oli,Coolant,Sirkulasi Radiator,Thermostart', '0.63'),
(51, 51, 'AGUS SANTOSO', 'DSN KRAJAN LOR', 'rantai harus ganti baru,gear harus ganti baru', '1'),
(52, 52, 'UMI KULSUM', 'DSN CURAH LELE', 'Saringan fuelpump kotor,Injektor Kotor,Throttle kotor', '0.58'),
(53, 53, 'SRI SULISTYANINGSIH', 'DSN DURENAN', 'Kanvas rem habis,Kanvas rem kotor', '1'),
(54, 54, 'MAD KHOIRI', 'DSN TEGALSARI', 'rantai harus ganti baru,gear harus ganti baru', '0.7'),
(55, 55, 'SITI ALFIAH', 'DSN KARANG TEMPLEK', 'Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.58'),
(56, 56, 'ENDANG TRI SULASTRI', 'DSN LANGON', 'Busi,Cop Busi kurang tepat,Aki,Brushing starter', '1'),
(57, 57, 'ABDUL HAMID', 'DSN WATUKEBO', 'rantai harus ganti baru', '1'),
(58, 58, 'AHMAD ROKIM', 'DSN BEGOH', 'lumasi saja rantai', '1'),
(59, 59, 'RIYATI', 'DSN DEMANGAN', 'Bendik Starter', '1'),
(60, 60, 'JOKO WAHYUDI', 'DSN KARJAN', 'Master rem butuh grease', '0.63'),
(61, 61, 'INDAH DISMAWATI NURAH', 'DSN KRAJAN', 'Kones ,Bearing as roda', '1'),
(62, 62, 'SITI MUNATUN', 'DSN KRAJAN', 'Kones ,Bearing as roda', '1'),
(63, 63, 'NURIANA ALFI LAILI', 'DSN KEBONSARI', 'lumasi saja rantai', '1'),
(64, 64, 'SUDARMAN', 'DSN KRAJAN', 'Tensioner,Rantai timing', '1'),
(65, 65, 'SUPIAH', 'DSN SAMBIRINGIK ', 'kencangkan rantai', '0.77'),
(66, 66, 'DYNO', 'DSN PONTANG UTARA', 'Bendik Starter', '1'),
(67, 67, 'DIAN ARI FATMAWATI', 'DSN TEGAL BANTENG', 'Kanvas rem habis,Kanvas rem kotor', '0.7'),
(68, 68, 'FATCHUR ROZIQ', 'DSN DEMANGAN', 'Aki,Brushing starter', '1'),
(69, 69, 'SUCIPTO', 'DSN KRAJAN 1 RW2 JBR', 'kendorkan rantai', '1'),
(70, 70, 'RUSMAN', 'DSN KRAJAN', 'lumasi saja rantai', '1'),
(71, 71, 'KHOIRUL ANWAR', 'DSN KRAJAN', 'bersihkan rantai', '1'),
(72, 72, 'SARDI', 'DSN KRAJAN', 'rantai harus ganti baru', '1'),
(73, 73, 'RUSMINI', 'DSN BREGOH', 'Aki,Brushing starter', '1'),
(74, 74, 'JARKASI', 'DSN KRAJAN', 'Master rem butuh grease', '1'),
(75, 75, 'DWI SUGIANTO BIMANTORO', 'DSN TEGALSARI', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '1'),
(76, 76, 'RUDIK ANANG BAHTIAR EDI', 'DSN TEGALSARI', 'rantai harus ganti baru,gear harus ganti baru,lumasi saja rantai,bersihkan rantai,kencangkan rantai', '1'),
(77, 77, 'SUNTIKNO', 'DSN TEGAL BANTENG', 'Saringan fuelpump kotor,Injektor Kotor,Throttle kotor', '0.58'),
(78, 78, 'ADINIYAH ERIKA', 'DSN TEGAL BANTENG', 'Minyak rem habis,Kanvas rem habis', '1'),
(79, 79, 'ARSAI', 'DSN JUMAPOLO', 'Cop Busi kurang tepat', '0.55'),
(80, 80, 'ALI SIHABUDIN ', 'DSN KRAJAN', 'Bendik Starter', '0.41'),
(81, 81, 'SYAEFULLAH SITI', 'DSN BREGOH', 'rantai harus ganti baru,gear harus ganti baru', '0.74'),
(82, 82, 'NUR S ARISONA', 'DSN TEGAL BANTENG', 'rantai harus ganti baru,gear harus ganti baru,Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.5'),
(83, 83, 'LULUK AL QOMARIA', 'DSN MANDARAN', 'Kones ,Bearing as roda', '1'),
(84, 84, 'SAMSIYATI', 'DSN PONTANG UTARA', 'Kehabisan oli,Ganti Oli,Coolant,Sirkulasi Radiator,Thermostart', '1'),
(85, 85, 'SRI WAHYUNI', 'DSN KEBONSARI', 'Kones ,Bearing as roda', '1'),
(86, 86, 'ADI PURNA IRAWAN', 'DSN GUMUK RASE', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '1'),
(87, 87, 'BADRIYAH', 'DSN WULUHAN ', 'Sirkulasi Radiator,Thermostart', '1'),
(88, 88, 'HANIFAH', 'DSN MANDIKU', 'Gasket, paking magnet', '0.58'),
(89, 89, 'BUARI', 'DUSUN KRAJAN', 'Kones ,Bearing as roda,Kehabisan oli,Ganti Oli,Tensioner,Rantai timing', '0.5'),
(90, 90, 'AGUS GUNAWAN', 'DUSUN KRAJAN', 'rantai harus ganti baru', '1'),
(91, 91, 'IRA WAHYUNI', 'DSN TEGAL BANTENG', 'lumasi saja rantai', '1'),
(92, 92, 'ANDI IRAWAN', 'DUSUN KRAJAN', 'rantai harus ganti baru,gear harus ganti baru', '0.58'),
(93, 93, 'PONIYEM', 'DSN KEBONSARI', 'Bendik Starter', '0.58'),
(94, 94, 'EKO WAHYUDI', 'DSN WATUKEBO', 'Kehabisan oli,Ganti Oli,Kanvas kopling aus,Kompresi kurang,Tensioner,Rantai timing,Throttle kotor,Filter udara kotor', '0.5'),
(95, 95, 'SUJOKO', 'DSN KRATON', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '1'),
(96, 96, 'SUPARMAN', 'DUSUN TEGALSARI', 'rantai harus ganti baru,gear harus ganti baru', '0.54'),
(97, 97, 'DASAR WIKANTO', 'JL. MOJOPAHIT', 'kencangkan rantai', '1'),
(98, 98, 'ZAINUL ARIFIN', 'DSN BREGOH', 'kencangkan rantai', '0.45'),
(99, 99, 'YULISTIN ISAWANTI', 'DSN KRAJAN', 'rantai harus ganti baru,gear harus ganti baru', '0.58'),
(100, 100, 'SANIYEM', 'DSN DARUSSALAM', 'Kehabisan oli,Ganti Oli,Coolant,Sirkulasi Radiator,Thermostart', '0.63'),
(101, 101, 'LEGITYONO', 'DSN PONTANG UTARA', 'rantai harus ganti baru', '1'),
(102, 102, 'NGADI', 'DSN MADUREJO', 'Bendik Starter', '1'),
(103, 103, 'SUGIYANTO', 'DSN TEGALSARI', 'Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.58'),
(104, 104, 'ST UMI HOTIJAH', 'DSN KRAJAN 1 RW2 JBR', 'Kehabisan oli,Ganti Oli', '1'),
(105, 105, 'AGUS SETIAWAN', 'DSN TEGAL BANTENG', 'Kehabisan oli,Ganti Oli,Tensioner,Rantai timing', '0.63'),
(106, 106, 'EKO WAHYUDI', 'DSN TEGALSARI', 'Aki,Brushing starter', '1'),
(107, 107, 'EMI UMI HOTIJAH', 'DSN KRAJAN', 'Seal master rem bocor,Minyak rem habis,Kanvas rem habis,Kehabisan oli,Ganti Oli,Tensioner,Rantai timing', '0.5'),
(108, 108, 'SUDARTIK', 'DSN PONTANG UTARA', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '1'),
(109, 109, 'IMAM SUBAGI', 'DSN KRAJAN', 'Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.58'),
(110, 110, 'KHOLIDIYAH', 'DSN DARUSALAM', 'kencangkan rantai,Kanvas kopling aus,Setel kopling,Sirkulasi Radiator,Thermostart', '0.28'),
(111, 111, 'SUDARMI', 'DSN KRAJAN', 'Gasket, paking magnet', '0.58'),
(112, 112, 'ANDREAS SURANI', 'DSN TRITISARI', 'bersihkan rantai', '0.44'),
(113, 113, 'BUDIANTO', 'DSN KRATON', 'Gasket, paking magnet', '0.35'),
(114, 114, 'YETIK INDRIYANI', 'DSN DUKUH ', 'Kones ,Seal master rem bocor,Minyak rem habis,Kanvas rem habis', '0.5'),
(115, 115, 'SUNDARI', 'DSN WATU ULO', 'bersihkan rantai', '0.44'),
(116, 116, 'SUTARJI', 'DSN GONDOSARI', 'rantai harus ganti baru,gear harus ganti baru', '0.7'),
(117, 117, 'SULASTIN', 'DSN DEMANGAN', 'kencangkan rantai,Sirkulasi Radiator,Thermostart', '0.5'),
(118, 118, 'SITI ASIYAH', 'DSN KRATON', 'Bendik Starter,Kones ,Bearing as roda', '0.5'),
(119, 119, 'DASAR WIKANTO MARWAN', 'JEMBER', 'Master rem butuh grease,Master rem kemasukan udara', '0.5'),
(120, 120, 'SEGIYONO', 'DSN PONTANG', 'rantai harus ganti baru,gear harus ganti baru', '0.35'),
(121, 121, 'SUYATMAN', 'DSN KRAJAN', 'Kanvas kopling aus,Throttle kotor,Filter udara kotor', '0.56'),
(122, 122, 'ENDANG SULASTRI', 'DUSUN KRAJAN', 'Kones ,Bearing as roda', '1'),
(123, 123, 'HARTONO', 'DSN BREGOH', 'Busi', '1'),
(124, 124, 'AGUS RIYANTO', 'DSN TEGAL BANTENG', 'lumasi saja rantai', '0.4'),
(125, 125, 'LASINAH', 'DSN PAGERAJI', 'Bendik Starter', '0.58'),
(126, 126, 'JOKO WAHUDI', 'DSN KRAJAN', 'Kanvas rem habis,Kanvas rem kotor', '0.58'),
(127, 127, 'ENDANG SULASTRI TRI', 'DSN LANGON', 'rantai harus ganti baru,gear harus ganti baru', '0.7'),
(128, 128, 'AGUS SETIAWAN', 'DSN TEGAL BANTENG', 'Kanvas kopling aus,Kompresi kurang,Throttle kotor,Filter udara kotor', '1'),
(129, 129, 'SITI UMI HOTIJAH', 'DUSUN KRAJAN', 'rantai harus ganti baru,Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.5'),
(130, 130, 'EKO WAHYUDI SETYO', 'DSN TEGAL BANTENG', 'Kones ,Bearing as roda,Seal master rem bocor,Minyak rem habis,Kanvas rem habis', '0.5'),
(131, 131, 'MUHAMMAD RIYAN', 'DSN SUMEREJO', 'Tensioner,Rantai timing', '1'),
(132, 132, 'HALIMATUS SA\'SIYAH', 'DSN CURAH LELE', 'Kones ,Seal master rem bocor,Minyak rem habis,Kanvas rem habis', '0.5'),
(133, 133, 'M FATHUL IMAMI', 'DSN CANGKRING', 'Kanvas rem habis', '1'),
(134, 134, 'SITI ALFIYAH', 'DSN KARANG TEMPLEK', 'Busi,Cop Busi kurang tepat,Aki,Brushing starter', '1'),
(135, 135, 'MUSLIM AL HUDA', 'DSN KEBONSARI', 'Saringan fuelpump kotor,Injektor Kotor,Throttle kotor', '0.58'),
(136, 136, 'AHMAD KASMUNI', 'DSN KRAJAN', 'Saringan fuelpump kotor,Injektor Kotor', '1'),
(137, 137, 'MARTINI', 'JL. IRIAN PURWOJATI', 'Master rem kemasukan udara,Kehabisan oli,Ganti Oli,Tensioner,Rantai timing', '0.38'),
(138, 138, 'MASIS', '`DSN KRAJAN', 'kencangkan rantai', '0.63'),
(139, 139, 'DEVI RAHAYU', 'DSN CURAHREJO', 'Saringan fuelpump kotor,Injektor Kotor,Cop Busi kurang tepat', '0.58'),
(140, 140, 'SULISTINA', 'DSN TEGALSARI', 'Kanvas kopling aus,Setel kopling,Sirkulasi Radiator,Thermostart', '0.5'),
(141, 141, 'KHUSNUL KHOTIMAH', 'DSN KEPEL', 'Busi', '1'),
(142, 142, 'NURHADI', 'DSN WONOGIRI', 'Busi', '1');

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
(27, '4', '[TRANSMISI] Rantai Kering'),
(28, '6', '[FRAME] Penekanan rem terlalu dalam,[FRAME] Roda seret diputar'),
(29, '6', '[FRAME] Penekanan rem terlalu dalam,[FRAME] Roda seret diputar'),
(30, '7', '[ENGINE] Mesin cepat panas,[ENGINE] Kipas pendingin radiator ON'),
(31, '8', '[FRAME] Kemudi tidak stabil'),
(32, '9', 'Brebet,Gas tidak stabil,Tenaga kurang'),
(33, '10', '[TRANSMISI] Mata Gear Bogang,[TRANSMISI] Rantai gampang kendor'),
(34, '11', 'Susah Distarter,Starter lemah'),
(35, '12', '[TRANSMISI] Rantai Kotor,[TRANSMISI] Rantai Permukaan Aus'),
(36, '13', '[FRAME] Kemudi kaku,[FRAME] Kemudi bunyi di jalan berlubang'),
(37, '14', '[ENGINE] Rembesan pada mesin'),
(38, '15', '[ENGINE] Perseneling susah ke N'),
(39, '16', '[ENGINE] Mesin bergetar lebih,Tenaga kurang'),
(40, '17', 'Distarter susah hidup,Starter macet'),
(41, '18', '[ENGINE] Kipas pendingin radiator ON'),
(42, '19', '[ENGINE] Mesin cepat panas,Tidak akselerasi,Tenaga kurang'),
(43, '20', '[FRAME] Rem bunyi,[FRAME] Roda seret diputar'),
(44, '21', 'Gas tidak stabil,Tarikan gas lambat'),
(45, '22', '[FRAME] Rem bunyi,[FRAME] Rem macet'),
(46, '23', 'Susah Distarter,Distarter bunyi '),
(47, '24', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Terasa Seret'),
(48, '25', '[TRANSMISI] Rantai Kotor,[TRANSMISI] Rantai Terasa Seret'),
(49, '26', '[TRANSMISI] Mata Gear Lincip'),
(50, '27', '[FRAME] Rem rembes,[ENGINE] Mesin kasar,Tenaga kurang'),
(51, '28', '[FRAME] Roda seret diputar,[ENGINE] Mesin bergetar lebih'),
(52, '30', 'Brebet'),
(53, '32', 'Susah Distarter,Starter macet'),
(54, '33', '[TRANSMISI] Rantai Kering,[TRANSMISI] Rantai Terasa Seret'),
(55, '34', '[FRAME] Rem bunyi,[FRAME] Rem macet'),
(56, '35', '[FRAME] Rem macet'),
(57, '36', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Berisik'),
(58, '37', '[FRAME] Rem rembes'),
(59, '38', 'Starter macet'),
(60, '39', '[ENGINE] Perseneling susah ke N'),
(61, '40', 'Gas tidak stabil,Tarikan gas lambat'),
(62, '41', '[FRAME] Kemudi tidak stabil'),
(63, '42', 'Starter lemah,Distarter susah hidup'),
(64, '43', 'Tarikan Berat'),
(65, '44', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kering'),
(66, '45', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Terasa Seret'),
(67, '46', '[TRANSMISI] Mata Gear Lincip,[TRANSMISI] Mata Gear Bogang'),
(68, '47', '[ENGINE] Ganti perseneling susah,[ENGINE] Perseneling susah ke N'),
(69, '48', '[ENGINE] Mesin kasar'),
(70, '49', '[FRAME] Roda seret diputar'),
(71, '50', '[ENGINE] Mesin bergetar lebih,[ENGINE] Mesin cepat panas'),
(72, '51', '[TRANSMISI] Rantai Permukaan Aus'),
(73, '52', 'Gas tidak stabil,Tarikan gas lambat'),
(74, '53', '[FRAME] Rem bunyi'),
(75, '54', '[TRANSMISI] Rantai Terasa Seret,[TRANSMISI] Rantai Permukaan Aus'),
(76, '55', 'Brebet,Gas tidak stabil'),
(77, '56', 'Distarter susah hidup'),
(78, '57', '[TRANSMISI] Mata Gear Bogang,[TRANSMISI] Rantai gampang kendor'),
(79, '58', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kering'),
(80, '59', 'Distarter bunyi ,Starter macet'),
(81, '60', '[FRAME] Roda seret diputar,[FRAME] Rem rembes'),
(82, '61', '[FRAME] Kemudi kaku'),
(83, '62', '[FRAME] Kemudi tidak stabil'),
(84, '63', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kering'),
(85, '64', '[ENGINE] Mesin bergetar lebih'),
(86, '65', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kering'),
(87, '66', 'Distarter bunyi ,Starter macet'),
(88, '67', '[FRAME] Rem bunyi,[FRAME] Rem rembes'),
(89, '68', 'Starter lemah'),
(90, '69', '[TRANSMISI] Rantai Terasa Tegang'),
(91, '70', '[TRANSMISI] Rantai Terasa Seret'),
(92, '71', '[TRANSMISI] Rantai Kotor'),
(93, '72', '[TRANSMISI] Mata Gear Bogang'),
(94, '73', 'Starter lemah'),
(95, '74', '[FRAME] Roda seret diputar'),
(96, '75', 'Tenaga kurang'),
(97, '76', '[TRANSMISI] Rantai Berisik'),
(98, '77', 'Tarikan gas lambat,Distarter susah hidup'),
(99, '78', '[FRAME] Penekanan rem terlalu dalam'),
(100, '79', 'Brebet,Gas tidak stabil,Susah Distarter,Starter lemah'),
(101, '80', 'Starter lemah,Starter macet,[ENGINE] Kipas pendingin radiator ON'),
(102, '81', '[TRANSMISI] Rantai Permukaan Aus,[TRANSMISI] Mata Gear Lincip,Susah Distarter'),
(103, '82', '[TRANSMISI] Mata Gear Lincip,Brebet'),
(104, '83', '[FRAME] Kemudi tidak stabil'),
(105, '84', '[ENGINE] Mesin cepat panas'),
(106, '85', '[FRAME] Kemudi kaku'),
(107, '86', 'Tenaga kurang'),
(108, '86', 'Tenaga kurang'),
(109, '87', '[ENGINE] Kipas pendingin radiator ON'),
(110, '88', 'Tenaga kurang,[ENGINE] Rembesan pada mesin'),
(111, '89', '[FRAME] Kemudi kaku,[ENGINE] Mesin kasar'),
(112, '90', '[TRANSMISI] Mata Gear Bogang'),
(113, '91', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Terasa Seret'),
(114, '92', '[TRANSMISI] Mata Gear Lincip,Gas tidak stabil'),
(115, '93', 'Tarikan Berat,Starter macet'),
(116, '94', '[ENGINE] Mesin kasar,Tenaga kurang'),
(117, '95', 'Tidak akselerasi,Tenaga kurang'),
(118, '96', '[TRANSMISI] Rantai Terasa Seret,[TRANSMISI] Rantai Permukaan Aus,[TRANSMISI] Gear Kotor'),
(119, '97', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Berisik'),
(120, '98', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Berisik,[ENGINE] Rembesan pada mesin,[ENGINE] Kipas pendingin radiator ON'),
(121, '99', '[TRANSMISI] Rantai Permukaan Aus,Tarikan Berat'),
(122, '100', '[ENGINE] Mesin bergetar lebih,[ENGINE] Mesin cepat panas'),
(123, '101', '[TRANSMISI] Mata Gear Bogang,[TRANSMISI] Rantai gampang kendor'),
(124, '102', 'Distarter bunyi ,Starter macet'),
(125, '102', 'Distarter bunyi ,Starter macet'),
(126, '103', 'Brebet,Gas tidak stabil'),
(127, '104', '[ENGINE] Mesin kasar,[ENGINE] Mesin cepat panas'),
(128, '105', '[FRAME] Rem macet,[FRAME] Roda seret diputar'),
(129, '106', 'Starter lemah,Distarter susah hidup'),
(130, '107', 'Starter macet,[FRAME] Roda seret diputar'),
(131, '108', 'Tidak akselerasi,Tenaga kurang'),
(132, '109', 'Brebet,Gas tidak stabil'),
(133, '110', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Kering,[ENGINE] Perseneling susah ke N,[ENGINE] Kipas pendingin radiator ON'),
(134, '111', '[TRANSMISI] Rantai Berisik,[ENGINE] Rembesan pada mesin'),
(135, '112', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kotor,[ENGINE] Perseneling susah ke N,[ENGINE] Kipas pendingin radiator ON'),
(136, '113', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Kering,[ENGINE] Ganti perseneling susah,[ENGINE] Rembesan pada mesin'),
(137, '113', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Kering,[ENGINE] Ganti perseneling susah,[ENGINE] Rembesan pada mesin'),
(138, '114', '[FRAME] Kemudi bunyi di jalan berlubang,[FRAME] Rem blong/tidak berfungsi'),
(139, '115', '[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kotor,[ENGINE] Perseneling susah ke N,[ENGINE] Kipas pendingin radiator ON'),
(140, '116', '[TRANSMISI] Gear Kotor,[TRANSMISI] Mata Gear Lincip'),
(141, '117', '[TRANSMISI] Rantai Kendor ,[ENGINE] Kipas pendingin radiator ON'),
(142, '118', 'Distarter bunyi ,[FRAME] Kemudi kaku'),
(143, '119', '[FRAME] Rem macet,[FRAME] Roda seret diputar'),
(144, '120', '[TRANSMISI] Rantai Terasa Seret,[TRANSMISI] Rantai Permukaan Aus,[ENGINE] Mesin cepat panas,Tenaga kurang'),
(145, '121', '[TRANSMISI] Rantai Terasa Tegang,Tarikan Berat,[ENGINE] Mesin bergetar lebih,Tidak akselerasi'),
(146, '122', '[FRAME] Kemudi kaku,[FRAME] Kemudi tidak stabil'),
(147, '123', 'Gas tidak stabil,Susah Distarter'),
(148, '124', '[TRANSMISI] Rantai Terasa Seret,[TRANSMISI] Rantai Terasa Tegang,[TRANSMISI] Rantai Permukaan Aus,Tarikan Berat'),
(149, '125', '[TRANSMISI] Rantai Kendor ,Starter macet'),
(150, '126', '[FRAME] Kemudi kaku,[FRAME] Rem bunyi'),
(151, '127', '[TRANSMISI] Gear Kotor,[TRANSMISI] Mata Gear Lincip'),
(152, '128', 'Tidak akselerasi,Tenaga kurang'),
(153, '129', '[TRANSMISI] Mata Gear Bogang,Brebet'),
(154, '130', '[FRAME] Kemudi tidak stabil,[FRAME] Rem blong/tidak berfungsi'),
(155, '131', '[ENGINE] Mesin kasar,[ENGINE] Mesin bergetar lebih'),
(156, '132', '[FRAME] Kemudi bunyi di jalan berlubang,[FRAME] Rem blong/tidak berfungsi'),
(157, '133', '[FRAME] Penekanan rem terlalu dalam,[FRAME] Rem bunyi'),
(158, '134', 'Susah Distarter,Distarter susah hidup'),
(159, '135', 'Tarikan gas lambat,Susah Distarter'),
(160, '136', 'Brebet,Tarikan gas lambat'),
(161, '137', '[FRAME] Rem rembes,[ENGINE] Mesin cepat panas'),
(162, '138', '[TRANSMISI] Rantai Kendor ,[TRANSMISI] Rantai Berisik,[TRANSMISI] Rantai Kering,[TRANSMISI] Rantai Kotor'),
(163, '139', 'Brebet,Gas tidak stabil'),
(164, '140', '[ENGINE] Perseneling susah ke N,[ENGINE] Kipas pendingin radiator ON'),
(165, '140', '[ENGINE] Perseneling susah ke N,[ENGINE] Kipas pendingin radiator ON'),
(166, '141', 'Gas tidak stabil,Susah Distarter'),
(167, '142', 'Gas tidak stabil,Susah Distarter');

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
(5, 'SUNARMI', 'DSN KRAJAN RT.004 RW.00 JBR'),
(6, 'SUTIKNO', 'DSN TEGALBANTENG RT/RW JBR'),
(7, 'INDAH DISMAWATI', 'DSN KRAJAN RT/RW:01/03 JBR'),
(8, 'JARKASI PRABOWO', 'DSN KRAJAN'),
(9, 'ACHMAD CHOIRON EFENDI', 'DSN PANDEAN RT.7 RW.1 SIDOARJO'),
(10, 'SUDARMAN', 'DSN KRAJAN RT1 RW1 JBR'),
(11, 'WASIYO', 'DSN DARUSSALAM RT9 JBR'),
(12, 'JOKO WAHYUDI', 'DSN KRAJAN RT2 RW12'),
(13, 'FIFN HUMAIDAH', 'DSN KRAJAN RT1 RW10 JBR'),
(14, 'RIZAL RIVALDI', 'PERUM BUMI AMBULU PERMAI JBR'),
(15, 'SURTISNO', 'DSN POMO RT 4 RW17 JBR'),
(16, 'SRI WAHYUNI ', 'DSN KARANG TEMPLEK RT1 JBR'),
(17, 'SUPRIYANTO', 'DSN MANDIKU RT3 RW 6 JBR'),
(18, 'PIPIT INDAH OKTAVIA', 'DSN DEMANGAN RT4 JBR'),
(19, 'SUMIATI', 'DSN KRAJAN 1 RW2 JBR'),
(20, 'DIDIK', 'DSN KRAJAN 1 RT1 JBR'),
(21, 'JUNAIDAH', 'DSN KRAJAN RT/RW.09 JBR'),
(22, 'ANANG APRIONO', 'DSN TEGALBANTENG RT/RW JBR'),
(23, 'HENDRA MARDHIONO', 'DSN TEGALSARI RT3 RW7'),
(24, 'SUTARMI', 'DSN SUMBERAN'),
(25, 'BIBIT AYU PURNANINGSIH', 'DSN TEGALSARI'),
(26, 'RUDIK ANANG BAHTIAR', 'JL. AGUS SALIM'),
(27, 'MITRA SUGIHARJO', 'DSN KARANG TEMPLEK'),
(28, 'IKA ZUNIARTI', 'DSN TEGALREJO'),
(29, 'RUSMIATI NINGSIH', 'DSN GUMUKRASE'),
(30, 'NURUL HANDAYANI', 'DSN SENTONG'),
(31, 'WAYAN AJI BAYU SAPTO', 'DSN KRAJAN 1 RW2 JBR'),
(32, 'KHOIRUL ANWAR', 'DSN KRAJAN'),
(33, 'RISTIANINGRUM', 'DSN KRAJAN'),
(34, 'SUCIPTO', 'DSN KRAJAN RT/RW.09 JBR'),
(35, 'SUKESI', 'DSN KRAJAN'),
(36, 'ADI SUTRISNO', 'DSN DEMANGAN'),
(37, 'AMALIA WULANDARI', 'DSN KRAJAN RT/RW.09 JBR'),
(38, 'MUHAMAD FAIQOTUL RIZA', 'DSN KRAJAN'),
(39, 'DWI SUGIANTO', 'DSN TEGALSARI'),
(40, 'IMAM MAKSUM', 'DSN POMO'),
(41, 'ADINIYAH', 'DSN KRAJAN'),
(42, 'NINUK NURUL HUDA', 'DSN SUMBERAN'),
(43, 'MAKI', 'DSN GLANTANGAN'),
(44, 'RUDI BUDIONO', 'DSN TEGAL BANTENG'),
(45, 'LASIEM PRATIWI', 'DSN KRAJAN 1 RW2 JBR'),
(46, 'SYAEFULLAH', 'DSN WATU ULO'),
(47, 'ALI SIHABUDIN', 'DSN MANDILIS'),
(48, 'ISMAIL JA\'FAR', 'DSN KRAJAN'),
(49, 'NUR SITI ARISONA ', 'DSN DEMANGAN'),
(50, 'SITI JAENAP', 'DSN KRAJAN RT/RW.09 JBR'),
(51, 'AGUS SANTOSO', 'DSN KRAJAN LOR'),
(52, 'UMI KULSUM', 'DSN CURAH LELE'),
(53, 'SRI SULISTYANINGSIH', 'DSN DURENAN'),
(54, 'MAD KHOIRI', 'DSN TEGALSARI'),
(55, 'SITI ALFIAH', 'DSN KARANG TEMPLEK'),
(56, 'ENDANG TRI SULASTRI', 'DSN LANGON'),
(57, 'ABDUL HAMID', 'DSN WATUKEBO'),
(58, 'AHMAD ROKIM', 'DSN BEGOH'),
(59, 'RIYATI', 'DSN DEMANGAN'),
(60, 'JOKO WAHYUDI', 'DSN KARJAN'),
(61, 'INDAH DISMAWATI NURAH', 'DSN KRAJAN'),
(62, 'SITI MUNATUN', 'DSN KRAJAN'),
(63, 'NURIANA ALFI LAILI', 'DSN KEBONSARI'),
(64, 'SUDARMAN', 'DSN KRAJAN'),
(65, 'SUPIAH', 'DSN SAMBIRINGIK '),
(66, 'DYNO', 'DSN PONTANG UTARA'),
(67, 'DIAN ARI FATMAWATI', 'DSN TEGAL BANTENG'),
(68, 'FATCHUR ROZIQ', 'DSN DEMANGAN'),
(69, 'SUCIPTO', 'DSN KRAJAN 1 RW2 JBR'),
(70, 'RUSMAN', 'DSN KRAJAN'),
(71, 'KHOIRUL ANWAR', 'DSN KRAJAN'),
(72, 'SARDI', 'DSN KRAJAN'),
(73, 'RUSMINI', 'DSN BREGOH'),
(74, 'JARKASI', 'DSN KRAJAN'),
(75, 'DWI SUGIANTO BIMANTORO', 'DSN TEGALSARI'),
(76, 'RUDIK ANANG BAHTIAR EDI', 'DSN TEGALSARI'),
(77, 'SUNTIKNO', 'DSN TEGAL BANTENG'),
(78, 'ADINIYAH ERIKA', 'DSN TEGAL BANTENG'),
(79, 'ARSAI', 'DSN JUMAPOLO'),
(80, 'ALI SIHABUDIN ', 'DSN KRAJAN'),
(81, 'SYAEFULLAH SITI', 'DSN BREGOH'),
(82, 'NUR S ARISONA', 'DSN TEGAL BANTENG'),
(83, 'LULUK AL QOMARIA', 'DSN MANDARAN'),
(84, 'SAMSIYATI', 'DSN PONTANG UTARA'),
(85, 'SRI WAHYUNI', 'DSN KEBONSARI'),
(86, 'ADI PURNA IRAWAN', 'DSN GUMUK RASE'),
(87, 'BADRIYAH', 'DSN WULUHAN '),
(88, 'HANIFAH', 'DSN MANDIKU'),
(89, 'BUARI', 'DUSUN KRAJAN'),
(90, 'AGUS GUNAWAN', 'DUSUN KRAJAN'),
(91, 'IRA WAHYUNI', 'DSN TEGAL BANTENG'),
(92, 'ANDI IRAWAN', 'DUSUN KRAJAN'),
(93, 'PONIYEM', 'DSN KEBONSARI'),
(94, 'EKO WAHYUDI', 'DSN WATUKEBO'),
(95, 'SUJOKO', 'DSN KRATON'),
(96, 'SUPARMAN', 'DUSUN TEGALSARI'),
(97, 'DASAR WIKANTO', 'JL. MOJOPAHIT'),
(98, 'ZAINUL ARIFIN', 'DSN BREGOH'),
(99, 'YULISTIN ISAWANTI', 'DSN KRAJAN'),
(100, 'SANIYEM', 'DSN DARUSSALAM'),
(101, 'LEGITYONO', 'DSN PONTANG UTARA'),
(102, 'NGADI', 'DSN MADUREJO'),
(103, 'SUGIYANTO', 'DSN TEGALSARI'),
(104, 'ST UMI HOTIJAH', 'DSN KRAJAN 1 RW2 JBR'),
(105, 'AGUS SETIAWAN', 'DSN TEGAL BANTENG'),
(106, 'EKO WAHYUDI', 'DSN TEGALSARI'),
(107, 'EMI UMI HOTIJAH', 'DSN KRAJAN'),
(108, 'SUDARTIK', 'DSN PONTANG UTARA'),
(109, 'IMAM SUBAGI', 'DSN KRAJAN'),
(110, 'KHOLIDIYAH', 'DSN DARUSALAM'),
(111, 'SUDARMI', 'DSN KRAJAN'),
(112, 'ANDREAS SURANI', 'DSN TRITISARI'),
(113, 'BUDIANTO', 'DSN KRATON'),
(114, 'YETIK INDRIYANI', 'DSN DUKUH '),
(115, 'SUNDARI', 'DSN WATU ULO'),
(116, 'SUTARJI', 'DSN GONDOSARI'),
(117, 'SULASTIN', 'DSN DEMANGAN'),
(118, 'SITI ASIYAH', 'DSN KRATON'),
(119, 'DASAR WIKANTO MARWAN', 'JEMBER'),
(120, 'SEGIYONO', 'DSN PONTANG'),
(121, 'SUYATMAN', 'DSN KRAJAN'),
(122, 'ENDANG SULASTRI', 'DUSUN KRAJAN'),
(123, 'HARTONO', 'DSN BREGOH'),
(124, 'AGUS RIYANTO', 'DSN TEGAL BANTENG'),
(125, 'LASINAH', 'DSN PAGERAJI'),
(126, 'JOKO WAHUDI', 'DSN KRAJAN'),
(127, 'ENDANG SULASTRI TRI', 'DSN LANGON'),
(128, 'AGUS SETIAWAN', 'DSN TEGAL BANTENG'),
(129, 'SITI UMI HOTIJAH', 'DUSUN KRAJAN'),
(130, 'EKO WAHYUDI SETYO', 'DSN TEGAL BANTENG'),
(131, 'MUHAMMAD RIYAN', 'DSN SUMEREJO'),
(132, 'HALIMATUS SA\'SIYAH', 'DSN CURAH LELE'),
(133, 'M FATHUL IMAMI', 'DSN CANGKRING'),
(134, 'SITI ALFIYAH', 'DSN KARANG TEMPLEK'),
(135, 'MUSLIM AL HUDA', 'DSN KEBONSARI'),
(136, 'AHMAD KASMUNI', 'DSN KRAJAN'),
(137, 'MARTINI', 'JL. IRIAN PURWOJATI'),
(138, 'MASIS', '`DSN KRAJAN'),
(139, 'DEVI RAHAYU', 'DSN CURAHREJO'),
(140, 'SULISTINA', 'DSN TEGALSARI'),
(141, 'KHUSNUL KHOTIMAH', 'DSN KEPEL'),
(142, 'NURHADI', 'DSN WONOGIRI');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `rw_gejala`
--
ALTER TABLE `rw_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT untuk tabel `tambahan`
--
ALTER TABLE `tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
