-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2026 at 08:43 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_pbo_ti1d_dwinuhaauliazahra`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mahasiswa`
--

CREATE TABLE `tabel_mahasiswa` (
  `id_mahasiswa` int NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `semester` int NOT NULL,
  `tarif_ukt_nominal` decimal(10,2) NOT NULL,
  `jenis_pembiayaan` enum('mandiri','bidikmisi','prestasi') NOT NULL,
  `golongan_ukt` varchar(10) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `nomor_kip_kuliah` varchar(30) DEFAULT NULL,
  `dana_saku_subsidi` decimal(10,2) DEFAULT NULL,
  `nama_instansi_beasiswa` varchar(100) DEFAULT NULL,
  `minimal_ipk_syarat` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_mahasiswa`
--

INSERT INTO `tabel_mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `nim`, `semester`, `tarif_ukt_nominal`, `jenis_pembiayaan`, `golongan_ukt`, `nama_wali`, `nomor_kip_kuliah`, `dana_saku_subsidi`, `nama_instansi_beasiswa`, `minimal_ipk_syarat`) VALUES
(1, 'Ahmad Fauzi', '230101001', 2, 4500000.00, 'mandiri', 'Golongan 3', 'Budi Hartono', NULL, NULL, NULL, NULL),
(2, 'Siti Aminah', '230101002', 2, 5500000.00, 'mandiri', 'Golongan 4', 'Rahmat Yusuf', NULL, NULL, NULL, NULL),
(3, 'Rian Hidayat', '230101003', 4, 4500000.00, 'mandiri', 'Golongan 3', 'Supardi', NULL, NULL, NULL, NULL),
(4, 'Dewi Lestari', '230101004', 4, 6500000.00, 'mandiri', 'Golongan 5', 'Agus Setiawan', NULL, NULL, NULL, NULL),
(5, 'Fajar Nugroho', '230101005', 6, 5500000.00, 'mandiri', 'Golongan 4', 'Heri Cahyono', NULL, NULL, NULL, NULL),
(6, 'Larasati Putri', '230101006', 6, 7500000.00, 'mandiri', 'Golongan 6', 'Suryo Broto', NULL, NULL, NULL, NULL),
(7, 'Bambang Pamungkas', '230101007', 2, 4500000.00, 'mandiri', 'Golongan 3', 'Eko Prasetyo', NULL, NULL, NULL, NULL),
(8, 'Andi Wijaya', '230101008', 2, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2023-99812', 700000.00, NULL, NULL),
(9, 'Bunga Citra', '230101009', 2, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2023-99813', 700000.00, NULL, NULL),
(10, 'Candra Kirana', '230101010', 4, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2022-88714', 750000.00, NULL, NULL),
(11, 'Dimas Saputra', '230101011', 4, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2022-88715', 750000.00, NULL, NULL),
(12, 'Eka Wahyuni', '230101012', 6, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2021-77616', 800000.00, NULL, NULL),
(13, 'Fikri Haikal', '230101013', 6, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2021-77617', 800000.00, NULL, NULL),
(14, 'Gita Gutawa', '230101014', 2, 0.00, 'bidikmisi', NULL, NULL, 'KIP-2023-99818', 700000.00, NULL, NULL),
(15, 'Hendra Kurniawan', '230101015', 4, 2000000.00, 'prestasi', NULL, NULL, NULL, NULL, 'Djarum Foundation', 3.50),
(16, 'Indah Permata', '230101016', 4, 1500000.00, 'prestasi', NULL, NULL, NULL, NULL, 'Yayasan Toyota', 3.30),
(17, 'Kevin Sanjaya', '230101017', 6, 0.00, 'prestasi', NULL, NULL, NULL, NULL, 'Kemenpora', 3.60),
(18, 'Lestari Nora', '230101018', 6, 2000000.00, 'prestasi', NULL, NULL, NULL, NULL, 'Bank Indonesia', 3.50),
(19, 'Muhammad Ali', '230101019', 2, 1000000.00, 'prestasi', NULL, NULL, NULL, NULL, 'BCA Bakti', 3.40),
(20, 'Nadia Vega', '230101020', 2, 0.00, 'prestasi', NULL, NULL, NULL, NULL, 'Tanoto Foundation', 3.75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  MODIFY `id_mahasiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
