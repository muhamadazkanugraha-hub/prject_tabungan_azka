-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Apr 2026 pada 04.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabungan_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menabung`
--

CREATE TABLE `menabung` (
  `id` int(11) NOT NULL,
  `tabungan_id` int(11) NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menabung`
--

INSERT INTO `menabung` (`id`, `tabungan_id`, `nominal`, `tanggal`) VALUES
(4, 65, 50000000, '2026-04-18'),
(6, 67, 255000000, '2026-04-18'),
(12, 74, 10000000, '2026-04-19'),
(13, 74, 5000000, '2026-04-19'),
(18, 65, 1000000, '2026-04-19'),
(21, 80, 500000000, '2026-04-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabungan`
--

CREATE TABLE `tabungan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `target_nominal` bigint(20) NOT NULL,
  `target_tanggal` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabungan`
--

INSERT INTO `tabungan` (`id`, `user_id`, `judul`, `foto`, `target_nominal`, `target_tanggal`, `status`) VALUES
(30, 4, 'motor', '1776043727_skyline.jpg', 12000000, '2030-07-03', '0'),
(31, 5, 'mobil', '1776060729_skyline.jpg', 20000, '2026-04-30', '0'),
(33, 4, 'hp', '1776175097_latar merah.png', 1000000, '2026-04-25', '0'),
(35, 4, 'mobil', '15042026152435skyline.jpg', 20000000, '2026-04-15', ''),
(65, 1, 'mobil', '18042026064328skyline.jpg', 60000000, '2026-05-09', ''),
(67, 1, 'motor impian', '18042026065835Kawasaki Ninja ZX-25R 4 Silinder.jpg', 300000000, '2026-05-06', ''),
(74, 1, 'liburan', '19042026073756_mesjid99kubah.jpg', 15000000, '2030-11-21', ''),
(79, 1, 'jam tangan', '19042026114304skmei-jam-tangan-digital-analog-waterproof-alarm-2049.jpg', 1000000, '2026-04-30', ''),
(80, 7, 'mobil impian', '19042026114516main_banner_toyota_new_innova_attitude_black.png', 500000000, '2026-04-19', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(1, 'mochamad azka nugraha', 'mazkanugraha29@gmail.com', '11275b23c943ce3c441c18783f749d09'),
(2, 'mochamad azka nugraha', 'mazkanugraha29@gmail.com', '11275b23c943ce3c441c18783f749d09'),
(3, 'kyzuto', 'muhamadazkanugraha@gmail.com', '744dc566f3927a09f65fc0694d2cafe0'),
(4, 'indra', 'indra@gmail.com', '96270516f087d321097bc968456f8d1c'),
(5, 'doni', 'doni@gmail.com', 'f9330f242ff516494a21d3fd94f0807f'),
(6, 'jojo', 'jojo@gmail.com', '0f8e1a3a4f8b9caffb25569503e05fe5'),
(7, 'edi', 'edimaulana@gmail.com', '1a50ad63317a17375c1ed9fc7ece10d5');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menabung`
--
ALTER TABLE `menabung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabungan`
--
ALTER TABLE `tabungan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menabung`
--
ALTER TABLE `menabung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tabungan`
--
ALTER TABLE `tabungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
