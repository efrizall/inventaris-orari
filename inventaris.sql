-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2022 at 04:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_role`
--

CREATE TABLE `akses_role` (
  `id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akses_role`
--

INSERT INTO `akses_role` (`id`, `roles_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-24 22:30:46', '2022-09-24 22:30:46'),
(2, 1, 2, '2022-09-24 22:30:46', '2022-09-24 22:30:46'),
(3, 1, 3, '2022-09-24 22:30:46', '2022-09-24 22:30:46'),
(4, 2, 1, '2022-09-24 22:30:46', '2022-09-24 22:30:46'),
(5, 2, 3, '2022-09-24 22:30:46', '2022-09-24 22:30:46'),
(6, 3, 3, '2022-09-24 22:30:46', '2022-09-24 22:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(500) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `kondisi` varchar(200) NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `tersedia` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `merk`, `kondisi`, `gambar`, `tersedia`) VALUES
(1, 'Komputer', '', 'Baik', 'komputer.jpg', 1),
(2, 'Kipas', '', 'Baik', 'kipas.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`, `icon`) VALUES
(1, 'Dashboard', '<i class=\"fas fa-fw fa-home\"></i>'),
(2, 'Inventaris', '<i class=\"fas fa-fw fa-file\"></i>'),
(3, 'Peminjaman', '<i class=\"fas fa-fw fa-paperclip\"></i>');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `barang_id`, `user_id`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 1, 1, '2022-01-06', 'Belum dikembalikan'),
(2, 2, 1, '2022-01-03', 'Belum dikembalikan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'yd0pne', 'edi@gmail.com', 'default.jpg', '$2y$10$X0mwvDCjGlNJei4jAbyAjeQOh0QWmwoa7LFOJ04SJdH2HtfCO8FRe', 1, 1, 1640665182),
(2, 'yd0ovk', 'hasan@gmail.com', 'default.jpg', '$2y$10$DoO/Rl8gf.pwYjS0vML/8OQGlgDTobCzLH7dnkMRmc1FGQZeaBkWO', 2, 1, 1640665864);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'petugas'),
(3, 'anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_role`
--
ALTER TABLE `akses_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_role`
--
ALTER TABLE `akses_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
