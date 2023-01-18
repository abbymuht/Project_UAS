-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2023 pada 16.19
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_checklist`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checklist`
--

CREATE TABLE `checklist` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `toilet_id` int(11) NOT NULL,
  `kloset` varchar(10) DEFAULT NULL,
  `wastafel` varchar(10) DEFAULT NULL,
  `lantai` varchar(10) DEFAULT NULL,
  `dinding` varchar(10) DEFAULT NULL,
  `kaca` varchar(10) DEFAULT NULL,
  `bau` varchar(10) DEFAULT NULL,
  `sabun` varchar(10) DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checklist`
--

INSERT INTO `checklist` (`id`, `tanggal`, `toilet_id`, `kloset`, `wastafel`, `lantai`, `dinding`, `kaca`, `bau`, `sabun`, `users_id`) VALUES
(1, '0000-00-00 00:00:00', 111, 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Tidak', 'Ada', 001),
(2, '0000-00-00 00:00:00', 222, 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Ya', 'Ada', 002),
(3, '0000-00-00 00:00:00', 333, 'Kotor', 'Bersih', 'Bersih', 'Bersih', 'Kotor', 'Ya', 'Ada', 003),
(4, '0000-00-00 00:00:00', 444, 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Ya', 'Ada', 004),
(5, '0000-00-00 00:00:00', 555, 'Bersih', 'Bersih', 'Rusak', 'Bersih', 'Bersih', 'Ya', 'Ada', 005),
(6, '0000-00-00 00:00:00', 666, 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Bersih', 'Tidak', 'Habis', 006),
(7, '0000-00-00 00:00:00', 777, 'Bersih', 'Rusak', 'Kotor', 'Kotor', 'Bersih', 'Ya', 'Ada', 007),
(8, '2023-11-11 00:00:00', 888, 'Kotor', 'Kotor', 'Kotor', 'Kotor', 'Rusak', 'Ya', 'Hilang', 008);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toilet`
--

CREATE TABLE `toilet` (
  `id` int(11) NOT NULL,
  `lokasi` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toilet`
--

INSERT INTO `toilet` (`id`, `lokasi`, `keterangan`) VALUES
(12, 'Office', 'Belum'),
(320, 'Security', 'Sudah'),
(321, 'Office', 'Sudah'),
(322, 'Factory 2', 'Sudah'),
(323, 'Office', 'Sudah'),
(324, 'Factory 1', 'Belum'),
(325, 'Factory 2', 'Belum'),
(326, 'Office', 'Belum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `stat` varchar(10) DEFAULT NULL,
  `rol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `pass`, `nama`, `email`, `stat`, `rol`) VALUES
(1, 'admin', 'admin', 'admin', 'hidayat@mhs.pelitabangsa.ac.id', 'Aktif', 'Admin'),
(2, 'user', 'user', 'user', 'hidayat@mhs.pelitabangsa.ac.id', 'Non Aktif', 'Admin'),
(0, 'admin', '123123', 'raihan', 'raihan.syahwal02@mhs.pelitabangsa.ac.id', 'Aktif', 'Admin'),
(0, 'user', '123123', 'user', 'raihan.syahwal02@mhs.pelitabangsa.ac.id', 'Aktif', 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checklist`
--
ALTER TABLE `checklist`
  ADD KEY `fk_checklist_toilet_idx` (`toilet_id`),
  ADD KEY `fk_checklist_users1_idx` (`users_id`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `toilet`
--
ALTER TABLE `toilet`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
