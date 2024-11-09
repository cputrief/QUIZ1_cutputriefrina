-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2024 pada 04.54
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz1_cutputriefrina`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `rumpun` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`id`, `nidn`, `nama_lengkap`, `rumpun`, `tempat_lahir`, `tgl_lahir`, `email`) VALUES
(1, '11022255455252', 'cutputri', 'komputer', 'lhok', '2024-11-19', 'cutputri@gmail.com'),
(3, '11022255455225', 'cutputri', 'komputer', 'lhok', '2024-11-19', 'cutputri@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nidn` (`nidn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
