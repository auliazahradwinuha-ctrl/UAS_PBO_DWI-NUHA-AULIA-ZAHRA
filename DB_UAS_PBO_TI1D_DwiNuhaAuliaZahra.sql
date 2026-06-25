-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2026 at 08:03 AM
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
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(10) NOT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `prodi`) VALUES
('1', 'Toidin', 'Informatika'),
('2', 'Yajid', 'Sistem Informasi'),
('3', 'Majid', 'Sistem Informasi'),
('4', 'Asep', 'Informatika'),
('5', 'Sutarna', 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `kode_mk` varchar(10) DEFAULT NULL,
  `semester` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `kode_mk`, `semester`) VALUES
(1, '22001', 'BD01', 2),
(2, '22002', 'BD01', 2),
(3, '22003', 'AL01', 2),
(4, '22004', 'PW01', 2),
(5, '22005', 'PW01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `angkatan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `angkatan`) VALUES
('22001', 'Andi', 'Informatika', 2022),
('22002', 'Budi', 'Informatika', 2022),
('22003', 'Citra', 'Sistem Informasi', 2022),
('22004', 'Dina', 'Informatika', 2022),
('22005', 'Eka', 'Informatika', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('AL01', 'Algoritma', 3),
('BD01', 'Basis Data', 3),
('PW01', 'Pemrograman Web', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `kode_mk` varchar(10) DEFAULT NULL,
  `nilai` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `kode_mk`, `nilai`) VALUES
(1, '22001', 'BD01', 80),
(2, '22002', 'BD01', 70),
(3, '22003', 'BD01', 85),
(4, '22004', 'BD01', 90),
(5, '22001', 'PW01', 75),
(6, '22002', 'PW01', 60),
(7, '22003', 'PW01', 88);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `basdat`
--
CREATE DATABASE IF NOT EXISTS `basdat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `basdat`;
--
-- Database: `bengkel`
--
CREATE DATABASE IF NOT EXISTS `bengkel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bengkel`;

-- --------------------------------------------------------

--
-- Table structure for table `mekanik`
--

CREATE TABLE `mekanik` (
  `id_mekanik` int NOT NULL,
  `nama_mekanik` varchar(80) DEFAULT NULL,
  `keahlian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mekanik`
--

INSERT INTO `mekanik` (`id_mekanik`, `nama_mekanik`, `keahlian`) VALUES
(112, 'Atmojo', 'Servis Mesin'),
(113, 'Joko', 'AC Mobil'),
(114, 'Hidyat', 'Kelistrikan Mobil'),
(115, 'Andi', 'Perbaikan Rem'),
(116, 'Giat', 'Tune Up');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama_pelanggan` varchar(80) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_hp`) VALUES
(1, 'Oktavia', 'Adipala', '973658289682'),
(2, 'Alicia', 'Purwokerto', '835784829374'),
(3, 'Rara', 'Jakarta', '537948762534'),
(4, 'Via', 'Bandung', '2637819203746'),
(5, 'Puspa', 'Cilacap', '263847629103'),
(7, 'Izzah', 'Yogyakarta', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id_servis` int NOT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `id_mekanik` int DEFAULT NULL,
  `tanggal_servis` date DEFAULT NULL,
  `keluhan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`id_servis`, `id_pelanggan`, `id_mekanik`, `tanggal_servis`, `keluhan`) VALUES
(1, 3, 112, '2026-02-25', 'Mobil Mogok'),
(2, 2, 114, '2026-02-20', 'Aki Soak'),
(3, 5, 113, '2026-03-20', 'AC Tidak Dingin'),
(4, 1, 116, '2026-03-22', 'Suara Mesin Kasar'),
(5, 4, 115, '2026-04-28', 'Rem Tidak Pakem');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pelanggan`
-- (See below for the actual view)
--
CREATE TABLE `view_pelanggan` (
`alamat` varchar(100)
,`nama_pelanggan` varchar(80)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_servis`
-- (See below for the actual view)
--
CREATE TABLE `view_servis` (
`keahlian` varchar(100)
,`keluhan` varchar(100)
,`nama_mekanik` varchar(80)
,`nama_pelanggan` varchar(80)
,`tanggal_servis` date
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`id_mekanik`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id_servis`),
  ADD KEY `id_mekanik` (`id_mekanik`),
  ADD KEY `servis_ibfk_1` (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- --------------------------------------------------------

--
-- Structure for view `view_pelanggan`
--
DROP TABLE IF EXISTS `view_pelanggan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pelanggan`  AS SELECT `pelanggan`.`nama_pelanggan` AS `nama_pelanggan`, `pelanggan`.`alamat` AS `alamat` FROM `pelanggan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_servis`
--
DROP TABLE IF EXISTS `view_servis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_servis`  AS SELECT `p`.`nama_pelanggan` AS `nama_pelanggan`, `m`.`nama_mekanik` AS `nama_mekanik`, `m`.`keahlian` AS `keahlian`, `s`.`tanggal_servis` AS `tanggal_servis`, `s`.`keluhan` AS `keluhan` FROM ((`servis` `s` join `pelanggan` `p` on((`s`.`id_pelanggan` = `p`.`id_pelanggan`))) join `mekanik` `m` on((`s`.`id_mekanik` = `m`.`id_mekanik`))) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `servis`
--
ALTER TABLE `servis`
  ADD CONSTRAINT `servis_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `servis_ibfk_2` FOREIGN KEY (`id_mekanik`) REFERENCES `mekanik` (`id_mekanik`);
--
-- Database: `bengkel4`
--
CREATE DATABASE IF NOT EXISTS `bengkel4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bengkel4`;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` varchar(10) NOT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `tahun` int DEFAULT NULL,
  `id_pelanggan` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`no_plat`, `merk`, `jenis`, `tahun`, `id_pelanggan`) VALUES
('AB1234CD', 'Toyota', 'Avanza', 2019, 'P001'),
('B4567EF', 'Honda', 'Jazz', 2018, 'P002'),
('G7890HI', 'Yamaha', 'NMAX', 2021, 'P003');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` varchar(5) NOT NULL,
  `nama_layanan` varchar(50) DEFAULT NULL,
  `biaya` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `biaya`) VALUES
('L001', 'Ganti Oli', 150000),
('L002', 'Tune-Up', 300000),
('L003', 'Servis Rem', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `mekanik`
--

CREATE TABLE `mekanik` (
  `id_mekanik` varchar(5) NOT NULL,
  `nama_mekanik` varchar(50) DEFAULT NULL,
  `keahlian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mekanik`
--

INSERT INTO `mekanik` (`id_mekanik`, `nama_mekanik`, `keahlian`) VALUES
('M001', 'Joko', 'Mesin'),
('M002', 'Sugiarto', 'Kelistrikan'),
('M003', 'Rudi', 'Servis Umum');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `no_telp`) VALUES
('P001', 'Andi Setiawan', 'Jl. Merpati No. 12', '081234567890'),
('P002', 'Budi Santoso', 'Jl. Kenari No. 5', '082134567891'),
('P003', 'Citra Dewi', 'Jl. Mawar No. 7', '083134567892');

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id_servis` varchar(5) NOT NULL,
  `tanggal_servis` date DEFAULT NULL,
  `no_plat` varchar(10) DEFAULT NULL,
  `id_mekanik` varchar(5) DEFAULT NULL,
  `id_layanan` varchar(5) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`id_servis`, `tanggal_servis`, `no_plat`, `id_mekanik`, `id_layanan`, `keterangan`) VALUES
('S001', '2025-10-20', 'AB1234CD', 'M001', 'L001', 'Oli sudah hitam'),
('S002', '2025-10-21', 'B4567EF', 'M002', 'L002', 'Mesin brebet'),
('S003', '2025-10-22', 'G7890HI', 'M003', 'L003', 'Rem berbunyi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`id_mekanik`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id_servis`),
  ADD KEY `no_plat` (`no_plat`),
  ADD KEY `id_mekanik` (`id_mekanik`),
  ADD KEY `id_layanan` (`id_layanan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);

--
-- Constraints for table `servis`
--
ALTER TABLE `servis`
  ADD CONSTRAINT `servis_ibfk_1` FOREIGN KEY (`no_plat`) REFERENCES `kendaraan` (`no_plat`),
  ADD CONSTRAINT `servis_ibfk_2` FOREIGN KEY (`id_mekanik`) REFERENCES `mekanik` (`id_mekanik`),
  ADD CONSTRAINT `servis_ibfk_3` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`);
--
-- Database: `bioskop`
--
CREATE DATABASE IF NOT EXISTS `bioskop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bioskop`;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sutradara` varchar(150) DEFAULT NULL,
  `durasi` int DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `judul`, `sutradara`, `durasi`, `genre`) VALUES
(1, 'Inception', 'Christopher Nolan', 148, 'Sci-Fi'),
(2, 'Pengabdi Setan', 'Joko Anwar', 107, 'Horror'),
(3, 'Laskar Pelangi', 'Riri Riza', 125, 'Drama'),
(4, 'The Dark Knight', 'Christopher Nolan', 152, 'Action'),
(5, 'Agak Laen', 'Muhadkly Acho', 119, 'Comedy'),
(6, 'Parasite', 'Bong Joon Ho', 132, 'Thriller'),
(7, 'Ada Apa Dengan Cinta?', 'Rudi Soedjarwo', 112, 'Romance'),
(8, 'Avengers: Endgame', 'Anthony Russo, Joe Russo', 181, 'Action'),
(9, 'Mencuri Raden Saleh', 'Angga Dwimas Sasongko', 154, 'Action'),
(10, 'Spirited Away', 'Hayao Miyazaki', 125, 'Animation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `db_akademikzaraa`
--
CREATE DATABASE IF NOT EXISTS `db_akademikzaraa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_akademikzaraa`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nilai` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `nilai`) VALUES
('23001', 'Andi', 85),
('23002', 'Budi', 75),
('23003', 'Citra', 65),
('23004', 'Dewi', 55),
('23005', 'Eko', 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
--
-- Database: `db_bengkel`
--
CREATE DATABASE IF NOT EXISTS `db_bengkel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_bengkel`;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` varchar(15) NOT NULL,
  `merk` varchar(15) DEFAULT NULL,
  `jenis` varchar(15) DEFAULT NULL,
  `tahun` char(4) DEFAULT NULL,
  `id_pelanggan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int NOT NULL,
  `nama_layanan` varchar(50) DEFAULT NULL,
  `biaya` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mekanik`
--

CREATE TABLE `mekanik` (
  `id_mekanik` int NOT NULL,
  `nama_mekanik` varchar(35) DEFAULT NULL,
  `keahlian` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(80) DEFAULT NULL,
  `no_telp` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_service` int NOT NULL,
  `tanggal_service` date DEFAULT NULL,
  `no_plat` char(15) DEFAULT NULL,
  `id_mekanik` int DEFAULT NULL,
  `id_layanan` int DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`id_mekanik`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int NOT NULL AUTO_INCREMENT;
--
-- Database: `db_jobsheet12`
--
CREATE DATABASE IF NOT EXISTS `db_jobsheet12` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_jobsheet12`;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, '1A'),
(2, '1B'),
(3, '2A'),
(4, '2B'),
(5, '3A'),
(6, '3B');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `id_prodi` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `id_prodi`, `id_kelas`) VALUES
(23001, 'Lukman Wijaya', 'Yogyakarta', 1, 5),
(23002, 'Eka Kurniawan', 'Bandung', 2, 4),
(23003, 'Kartika Pratama', 'Semarang', 1, 4),
(23004, 'Zahra Wijaya', 'Malang', 2, 1),
(23005, 'Hadi Lestari', 'Palembang', 3, 2),
(23006, 'Hadi Pratama', 'Surabaya', 4, 1),
(23007, 'Xenia Permata', 'Surabaya', 4, 5),
(23008, 'Sari Permata', 'Makassar', 1, 4),
(23009, 'Maya Kurniawan', 'Makassar', 5, 4),
(23010, 'Dewi Maulana', 'Makassar', 1, 4),
(23011, 'Intan Wijaya', 'Surabaya', 5, 5),
(23012, 'Andi Santoso', 'Medan', 2, 4),
(23013, 'Maya Maulana', 'Semarang', 2, 1),
(23014, 'Zahra Purnama', 'Solo', 2, 5),
(23015, 'Umar Purnama', 'Solo', 3, 5),
(23016, 'Intan Lestari', 'Medan', 4, 1),
(23017, 'Fajar Purnama', 'Palembang', 3, 2),
(23018, 'Xenia Wijaya', 'Semarang', 5, 5),
(23019, 'Vina Purnama', 'Surabaya', 4, 1),
(23020, 'Andi Pratama', 'Jakarta', 3, 4),
(23021, 'Dewi Susanto', 'Solo', 5, 2),
(23022, 'Umar Maulana', 'Palembang', 2, 1),
(23023, 'Yoga Santoso', 'Medan', 1, 5),
(23024, 'Wahyu Permata', 'Medan', 5, 3),
(23025, 'Rizki Susanto', 'Medan', 2, 2),
(23026, 'Umar Kurniawan', 'Surabaya', 5, 5),
(23027, 'Intan Saputra', 'Semarang', 3, 1),
(23028, 'Rizki Maulana', 'Malang', 3, 4),
(23029, 'Gina Pratama', 'Bandung', 2, 1),
(23030, 'Fajar Purnama', 'Surabaya', 4, 6),
(23031, 'Budi Purnama', 'Medan', 5, 6),
(23032, 'Fajar Pratama', 'Malang', 1, 5),
(23033, 'Wahyu Pratama', 'Makassar', 4, 6),
(23034, 'Oscar Saputra', 'Yogyakarta', 4, 5),
(23035, 'Tono Santoso', 'Palembang', 3, 6),
(23036, 'Kartika Maulana', 'Semarang', 2, 6),
(23037, 'Budi Purnama', 'Palembang', 2, 2),
(23038, 'Zahra Pratama', 'Bandung', 3, 6),
(23039, 'Sari Pratama', 'Bandung', 5, 6),
(23040, 'Hadi Wijaya', 'Makassar', 1, 6),
(23041, 'Wahyu Purnama', 'Yogyakarta', 3, 4),
(23042, 'Vina Pratama', 'Makassar', 1, 6),
(23043, 'Lukman Pratama', 'Palembang', 1, 6),
(23044, 'Dewi Purnama', 'Surabaya', 4, 1),
(23045, 'Qori Lestari', 'Medan', 5, 6),
(23046, 'Andi Purnama', 'Yogyakarta', 3, 2),
(23047, 'Andi Pratama', 'Bandung', 2, 6),
(23048, 'Nina Santoso', 'Semarang', 1, 2),
(23049, 'Andi Wijaya', 'Palembang', 1, 4),
(23050, 'Kartika Saputra', 'Malang', 2, 4),
(23051, 'Tono Permata', 'Medan', 3, 2),
(23052, 'Maya Susanto', 'Makassar', 3, 3),
(23053, 'Putri Lestari', 'Bandung', 2, 6),
(23054, 'Qori Wijaya', 'Malang', 1, 4),
(23055, 'Andi Pratama', 'Solo', 2, 5),
(23056, 'Fajar Lestari', 'Palembang', 4, 3),
(23057, 'Tono Saputra', 'Surabaya', 5, 2),
(23058, 'Joko Santoso', 'Malang', 5, 6),
(23059, 'Putri Wijaya', 'Solo', 1, 2),
(23060, 'Citra Kurniawan', 'Medan', 1, 5),
(23061, 'Sari Kurniawan', 'Yogyakarta', 1, 3),
(23062, 'Andi Saputra', 'Palembang', 2, 3),
(23063, 'Gina Pratama', 'Makassar', 5, 5),
(23064, 'Zahra Susanto', 'Surabaya', 4, 3),
(23065, 'Sari Permata', 'Semarang', 3, 4),
(23066, 'Fajar Maulana', 'Semarang', 1, 2),
(23067, 'Zahra Susanto', 'Surabaya', 2, 3),
(23068, 'Zahra Maulana', 'Semarang', 3, 1),
(23069, 'Eka Purnama', 'Bandung', 4, 5),
(23070, 'Wahyu Maulana', 'Medan', 3, 6),
(23071, 'Lukman Saputra', 'Palembang', 1, 2),
(23072, 'Nina Purnama', 'Jakarta', 1, 4),
(23073, 'Putri Purnama', 'Makassar', 4, 6),
(23074, 'Vina Lestari', 'Malang', 4, 5),
(23075, 'Vina Susanto', 'Palembang', 1, 1),
(23076, 'Hadi Kurniawan', 'Makassar', 2, 3),
(23077, 'Umar Santoso', 'Medan', 1, 2),
(23078, 'Kartika Susanto', 'Bandung', 2, 1),
(23079, 'Qori Santoso', 'Medan', 3, 4),
(23080, 'Xenia Permata', 'Solo', 1, 3),
(23081, 'Sari Kurniawan', 'Solo', 3, 6),
(23082, 'Tono Santoso', 'Yogyakarta', 2, 2),
(23083, 'Gina Purnama', 'Bandung', 4, 4),
(23084, 'Citra Saputra', 'Semarang', 5, 5),
(23085, 'Kartika Permata', 'Medan', 1, 1),
(23086, 'Tono Purnama', 'Surabaya', 4, 6),
(23087, 'Andi Permata', 'Semarang', 5, 1),
(23088, 'Budi Kurniawan', 'Bandung', 3, 2),
(23089, 'Fajar Purnama', 'Makassar', 2, 5),
(23090, 'Putri Santoso', 'Jakarta', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int NOT NULL,
  `nama_prodi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
(2, 'ALKS'),
(5, 'RKS'),
(4, 'TI'),
(1, 'TRM'),
(3, 'TRPL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `nama_kelas` (`nama_kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD UNIQUE KEY `nama_prodi` (`nama_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
--
-- Database: `db_latihan_pbo_ti_1d_dwi nuha aulia zahra`
--
CREATE DATABASE IF NOT EXISTS `db_latihan_pbo_ti_1d_dwi nuha aulia zahra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_latihan_pbo_ti_1d_dwi nuha aulia zahra`;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_tiket`
--

CREATE TABLE `pesanan_tiket` (
  `id` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `harga_dasar` int NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet','VIP') NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(20) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` tinyint(1) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` tinyint(1) DEFAULT NULL,
  `biaya_tambahan` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesanan_tiket`
--

INSERT INTO `pesanan_tiket` (`id`, `nama_film`, `jadwal_tayang`, `harga_dasar`, `jenis_studio`, `jumlah_kursi`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`, `biaya_tambahan`) VALUES
(1, 'The Avengers: Secret Wars', '2026-05-01 13:00:00', 50000, 'Regular', 2, 'Dolby Digital 5.1', 'Row G', NULL, NULL, NULL, NULL, 0),
(2, 'The Avengers: Secret Wars', '2026-05-01 15:45:00', 50000, 'Regular', 1, 'Dolby Digital 5.1', 'Row E', NULL, NULL, NULL, NULL, 0),
(3, 'Avatar 4', '2026-05-02 12:00:00', 55000, 'Regular', 4, 'Standard Stereo', 'Row F', NULL, NULL, NULL, NULL, 0),
(4, 'Avatar 4', '2026-05-02 19:30:00', 60000, 'Regular', 2, 'Dolby Digital 5.1', 'Row C', NULL, NULL, NULL, NULL, 0),
(5, 'Dune: Part Three', '2026-05-03 14:00:00', 50000, 'Regular', 2, 'Standard Stereo', 'Row H', NULL, NULL, NULL, NULL, 0),
(6, 'Dune: Part Three', '2026-05-03 17:00:00', 50000, 'Regular', 3, 'Dolby Digital 5.1', 'Row D', NULL, NULL, NULL, NULL, 0),
(7, 'Project Hail Mary', '2026-05-04 20:00:00', 55000, 'Regular', 1, 'Dolby Digital 5.1', 'Row J', NULL, NULL, NULL, NULL, 0),
(8, 'Interstellar (Re-Run)', '2026-05-05 13:00:00', 70000, 'IMAX', 2, NULL, NULL, 'IMX-3D-A1', 1, NULL, NULL, 0),
(9, 'Interstellar (Re-Run)', '2026-05-05 16:30:00', 70000, 'IMAX', 3, NULL, NULL, 'IMX-3D-A2', 1, NULL, NULL, 0),
(10, 'Avatar: The Way of Water', '2026-05-06 11:00:00', 75000, 'IMAX', 4, NULL, NULL, 'IMX-3D-B1', 1, NULL, NULL, 0),
(11, 'Avatar: The Way of Water', '2026-05-06 15:00:00', 75000, 'IMAX', 2, NULL, NULL, 'IMX-3D-B2', 0, NULL, NULL, 0),
(12, 'Dune: Part Two', '2026-05-07 14:00:00', 80000, 'IMAX', 3, NULL, NULL, 'IMX-3D-C1', 1, NULL, NULL, 0),
(13, 'Dune: Part Two', '2026-05-07 18:30:00', 80000, 'IMAX', 1, NULL, NULL, 'IMX-3D-C2', 1, NULL, NULL, 0),
(14, 'Star Wars: Reborn', '2026-05-08 21:00:00', 70000, 'IMAX', 2, NULL, NULL, 'IMX-3D-D1', 0, NULL, NULL, 0),
(15, 'Inception', '2026-05-09 14:00:00', 150000, 'Velvet', 2, NULL, NULL, NULL, NULL, 'Premium Gold Pack', 1, 0),
(16, 'Inception', '2026-05-09 18:00:00', 150000, 'Velvet', 2, NULL, NULL, NULL, NULL, 'Premium Gold Pack', 1, 0),
(17, 'Gladiator II', '2026-05-10 13:30:00', 160000, 'Velvet', 4, NULL, NULL, NULL, NULL, 'Platinum Cozy Pack', 1, 0),
(18, 'Gladiator II', '2026-05-10 17:00:00', 160000, 'Velvet', 2, NULL, NULL, NULL, NULL, 'Platinum Cozy Pack', 0, 0),
(19, 'Spider-Man: Beyond the Spider-Verse', '2026-06-20 19:00:00', 100000, 'VIP', 2, NULL, NULL, NULL, NULL, NULL, NULL, 25000),
(20, 'Avengers: Secret Wars', '2026-06-21 21:15:00', 120000, 'VIP', 3, NULL, NULL, NULL, NULL, NULL, NULL, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tipe_audio` varchar(30) DEFAULT NULL,
  `lokasi_baris` varchar(5) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` varchar(50) DEFAULT NULL,
  `bantal_selimut_pack` varchar(30) DEFAULT NULL,
  `layanan_butler` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(201, 'Dune: Part Three', '2026-06-12 13:00:00', 1, 45000.00, 'Regular', 'Dolby Digital 5.1', 'A12', NULL, NULL, NULL, NULL),
(202, 'Dune: Part Three', '2026-06-12 13:00:00', 2, 45000.00, 'Regular', 'Dolby Digital 5.1', 'A13', NULL, NULL, NULL, NULL),
(203, 'The Batman Part II', '2026-06-12 15:30:00', 1, 50000.00, 'Regular', 'Dolby Atmos', 'C05', NULL, NULL, NULL, NULL),
(204, 'The Batman Part II', '2026-06-12 15:30:00', 1, 50000.00, 'Regular', 'Dolby Atmos', 'C06', NULL, NULL, NULL, NULL),
(205, 'Project Hail Mary', '2026-06-13 10:00:00', 4, 40000.00, 'Regular', 'Standard Stereo', 'F01', NULL, NULL, NULL, NULL),
(206, 'Superman: Legacy', '2026-06-13 19:00:00', 2, 50000.00, 'Regular', 'Dolby Atmos', 'D07', NULL, NULL, NULL, NULL),
(207, 'Avengers: Doomsday', '2026-06-14 14:00:00', 1, 55000.00, 'Regular', 'Dolby Atmos', 'E11', NULL, NULL, NULL, NULL),
(208, 'Avengers: Doomsday', '2026-06-12 17:00:00', 2, 95000.00, 'IMAX', 'IMAX Enhanced Sound', 'H08', 'SG-3D-01', 'Standard IMAX Vibration', NULL, NULL),
(209, 'Avengers: Doomsday', '2026-06-12 17:00:00', 2, 95000.00, 'IMAX', 'IMAX Enhanced Sound', 'H09', 'SG-3D-02', 'Standard IMAX Vibration', NULL, NULL),
(210, 'Interstellar Rerelease', '2026-06-13 13:00:00', 1, 85000.00, 'IMAX', 'IMAX Laser Audio', 'G10', 'SG-3D-05', '4DX Motion Seat Pitching', NULL, NULL),
(211, 'Project Hail Mary', '2026-06-13 16:30:00', 2, 90000.00, 'IMAX', 'IMAX Enhanced Sound', 'F05', 'SG-3D-12', 'Standard IMAX Vibration', NULL, NULL),
(212, 'The Batman Part II', '2026-06-14 20:00:00', 1, 95000.00, 'IMAX', 'IMAX 12-Channel', 'J01', 'SG-3D-20', 'None (2D IMAX)', NULL, NULL),
(213, 'Avatar 3: Fire and Ash', '2026-06-15 11:00:00', 2, 110000.00, 'IMAX', 'IMAX 12-Channel Audio', 'E03', 'SG-3D-99', 'Full Motion 4D & Wind', NULL, NULL),
(214, 'Avatar 3: Fire and Ash', '2026-06-15 11:00:00', 2, 110000.00, 'IMAX', 'IMAX 12-Channel Audio', 'E04', 'SG-3D-10', 'Full Motion 4D & Wind', NULL, NULL),
(215, 'The Batman Part II', '2026-06-12 21:00:00', 2, 250000.00, 'Velvet', NULL, 'V-A1', NULL, NULL, 'Satin Quilt Pack', 'On-Call Service Button'),
(216, 'Dune: Part Three', '2026-06-13 18:30:00', 2, 250000.00, 'Velvet', NULL, 'V-B3', NULL, NULL, 'Premium Down Quilt', 'Dedicated Personal Butler'),
(217, 'Project Hail Mary', '2026-06-14 15:00:00', 2, 220000.00, 'Velvet', NULL, 'V-A2', NULL, NULL, 'Satin Quilt Pack', 'On-Call Service Button'),
(218, 'Avengers: Doomsday', '2026-06-14 19:30:00', 2, 300000.00, 'Velvet', NULL, 'V-C1', NULL, NULL, 'Luxury Silk Comfort Pack', 'VIP Dedicated Butler'),
(219, 'Avengers: Doomsday', '2026-06-14 19:30:00', 2, 300000.00, 'Velvet', NULL, 'V-C2', NULL, NULL, 'Luxury Silk Comfort Pack', 'VIP Dedicated Butler'),
(220, 'Avatar 3: Fire and Ash', '2026-06-15 18:00:00', 2, 300000.00, 'Velvet', NULL, 'V-B1', NULL, NULL, 'Luxury Silk Comfort Pack', 'VIP Dedicated Butler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesanan_tiket`
--
ALTER TABLE `pesanan_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesanan_tiket`
--
ALTER TABLE `pesanan_tiket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- Database: `db_perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `db_perpustakaan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_perpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`) VALUES
(1, 'Zara Aulia', 'Cilacap'),
(2, 'Oktaviana', 'Semarang'),
(3, 'Alicia Puspita', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`) VALUES
(107, 'Jaringan Komputer', 'Sari Lestari'),
(108, 'Dasar Pemrograman', 'Budi Santoso'),
(109, 'Basis Data Lanjut', 'Andi Wijaya');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int NOT NULL,
  `id_anggota` int DEFAULT NULL,
  `id_buku` int DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_anggota`, `id_buku`, `tanggal_pinjam`) VALUES
(1001, 1, 107, '2025-09-10'),
(1002, 2, 108, '2025-09-10'),
(1003, 3, 109, '2025-09-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
--
-- Database: `db_pertemuan2`
--
CREATE DATABASE IF NOT EXISTS `db_pertemuan2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_pertemuan2`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `umur` int NOT NULL,
  `ipk` decimal(3,2) DEFAULT NULL,
  `kota_asal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `jurusan`, `umur`, `ipk`, `kota_asal`) VALUES
(1, 'Andi', 'Teknik Informatika', 19, 3.45, 'Cilacap'),
(2, 'Budi', 'Sistem Informasi', 21, 2.90, 'Purwokerto'),
(3, 'Citra', 'Teknik Informatika', 22, 3.75, 'Banyumas'),
(4, 'Dewi', 'Manajemen Informatika', 20, 3.10, 'Purbalingga'),
(5, 'Eko', 'Teknik Informatika', 23, 2.50, 'Cilacap'),
(6, 'Farah Nur', 'Sistem Informasi', 19, 3.80, 'Banjarnegara'),
(7, 'Gita', 'Teknik Komputer', 24, 3.00, 'Cilacap'),
(8, 'Hari', 'Sitem Informasi', 21, 2.75, 'Banyumas'),
(9, 'Indah', 'Teknik Informatika', 20, 3.60, 'Purwokerto'),
(10, 'Joko Susilo', 'Teknik Komputer', 22, 2.95, 'Purbalingga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `db_pertemuan4`
--
CREATE DATABASE IF NOT EXISTS `db_pertemuan4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_pertemuan4`;
--
-- Database: `db_pertemuan5`
--
CREATE DATABASE IF NOT EXISTS `db_pertemuan5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_pertemuan5`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodeBarang` varchar(10) NOT NULL,
  `namaBarang` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kodeBarang`, `namaBarang`, `harga`) VALUES
('B001', 'Laptop', 7000000.00),
('B002', 'Mouse', 100000.00),
('B003', 'Keyboard', 150000.00),
('B004', 'Monitor', 1200000.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int NOT NULL,
  `namaCustomer` varchar(50) DEFAULT NULL,
  `alamatCustomer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `namaCustomer`, `alamatCustomer`) VALUES
(1, 'Budi', 'Jakarta'),
(2, 'Siti', 'Bandung'),
(3, 'Andi', 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `noFaktur` varchar(10) NOT NULL,
  `kodeBarang` varchar(10) NOT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detailtransaksi`
--

INSERT INTO `detailtransaksi` (`noFaktur`, `kodeBarang`, `jumlah`) VALUES
('F001', 'B001', 1),
('F001', 'B002', 2),
('F002', 'B003', 3),
('F003', 'B002', 1),
('F003', 'B004', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `noFaktur` varchar(10) NOT NULL,
  `tglFaktur` date DEFAULT NULL,
  `idCustomer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`noFaktur`, `tglFaktur`, `idCustomer`) VALUES
('F001', '2025-09-18', 1),
('F002', '2025-09-18', 2),
('F003', '2025-09-19', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodeBarang`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD PRIMARY KEY (`noFaktur`,`kodeBarang`),
  ADD KEY `kodeBarang` (`kodeBarang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`noFaktur`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD CONSTRAINT `detailtransaksi_ibfk_1` FOREIGN KEY (`noFaktur`) REFERENCES `transaksi` (`noFaktur`),
  ADD CONSTRAINT `detailtransaksi_ibfk_2` FOREIGN KEY (`kodeBarang`) REFERENCES `barang` (`kodeBarang`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`);
--
-- Database: `db_pertemuan12`
--
CREATE DATABASE IF NOT EXISTS `db_pertemuan12` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_pertemuan12`;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, '1A'),
(2, '1B'),
(3, '2A'),
(4, '2B'),
(5, '3A'),
(6, '3B');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `id_prodi` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `id_prodi`, `id_kelas`) VALUES
(23001, 'Lukman Wijaya', 'Yogyakarta', 1, 5),
(23002, 'Eka Kurniawan', 'Bandung', 2, 4),
(23003, 'Kartika Pratama', 'Semarang', 1, 4),
(23004, 'Zahra Wijaya', 'Malang', 2, 1),
(23005, 'Hadi Lestari', 'Palembang', 3, 2),
(23006, 'Hadi Pratama', 'Surabaya', 4, 1),
(23007, 'Xenia Permata', 'Surabaya', 4, 5),
(23008, 'Sari Permata', 'Makassar', 1, 4),
(23009, 'Maya Kurniawan', 'Makassar', 5, 4),
(23010, 'Dewi Maulana', 'Makassar', 1, 4),
(23011, 'Intan Wijaya', 'Surabaya', 5, 5),
(23012, 'Andi Santoso', 'Medan', 2, 4),
(23013, 'Maya Maulana', 'Semarang', 2, 1),
(23014, 'Zahra Purnama', 'Solo', 2, 5),
(23015, 'Umar Purnama', 'Solo', 3, 5),
(23016, 'Intan Lestari', 'Medan', 4, 1),
(23017, 'Fajar Purnama', 'Palembang', 3, 2),
(23018, 'Xenia Wijaya', 'Semarang', 5, 5),
(23019, 'Vina Purnama', 'Surabaya', 4, 1),
(23020, 'Andi Pratama', 'Jakarta', 3, 4),
(23021, 'Dewi Susanto', 'Solo', 5, 2),
(23022, 'Umar Maulana', 'Palembang', 2, 1),
(23023, 'Yoga Santoso', 'Medan', 1, 5),
(23024, 'Wahyu Permata', 'Medan', 5, 3),
(23025, 'Rizki Susanto', 'Medan', 2, 2),
(23026, 'Umar Kurniawan', 'Surabaya', 5, 5),
(23027, 'Intan Saputra', 'Semarang', 3, 1),
(23028, 'Rizki Maulana', 'Malang', 3, 4),
(23029, 'Gina Pratama', 'Bandung', 2, 1),
(23030, 'Fajar Purnama', 'Surabaya', 4, 6),
(23031, 'Budi Purnama', 'Medan', 5, 6),
(23032, 'Fajar Pratama', 'Malang', 1, 5),
(23033, 'Wahyu Pratama', 'Makassar', 4, 6),
(23034, 'Oscar Saputra', 'Yogyakarta', 4, 5),
(23035, 'Tono Santoso', 'Palembang', 3, 6),
(23036, 'Kartika Maulana', 'Semarang', 2, 6),
(23037, 'Budi Purnama', 'Palembang', 2, 2),
(23038, 'Zahra Pratama', 'Bandung', 3, 6),
(23039, 'Sari Pratama', 'Bandung', 5, 6),
(23040, 'Hadi Wijaya', 'Makassar', 1, 6),
(23041, 'Wahyu Purnama', 'Yogyakarta', 3, 4),
(23042, 'Vina Pratama', 'Makassar', 1, 6),
(23043, 'Lukman Pratama', 'Palembang', 1, 6),
(23044, 'Dewi Purnama', 'Surabaya', 4, 1),
(23045, 'Qori Lestari', 'Medan', 5, 6),
(23046, 'Andi Purnama', 'Yogyakarta', 3, 2),
(23047, 'Andi Pratama', 'Bandung', 2, 6),
(23048, 'Nina Santoso', 'Semarang', 1, 2),
(23049, 'Andi Wijaya', 'Palembang', 1, 4),
(23050, 'Kartika Saputra', 'Malang', 2, 4),
(23051, 'Tono Permata', 'Medan', 3, 2),
(23052, 'Maya Susanto', 'Makassar', 3, 3),
(23053, 'Putri Lestari', 'Bandung', 2, 6),
(23054, 'Qori Wijaya', 'Malang', 1, 4),
(23055, 'Andi Pratama', 'Solo', 2, 5),
(23056, 'Fajar Lestari', 'Palembang', 4, 3),
(23057, 'Tono Saputra', 'Surabaya', 5, 2),
(23058, 'Joko Santoso', 'Malang', 5, 6),
(23059, 'Putri Wijaya', 'Solo', 1, 2),
(23060, 'Citra Kurniawan', 'Medan', 1, 5),
(23061, 'Sari Kurniawan', 'Yogyakarta', 1, 3),
(23062, 'Andi Saputra', 'Palembang', 2, 3),
(23063, 'Gina Pratama', 'Makassar', 5, 5),
(23064, 'Zahra Susanto', 'Surabaya', 4, 3),
(23065, 'Sari Permata', 'Semarang', 3, 4),
(23066, 'Fajar Maulana', 'Semarang', 1, 2),
(23067, 'Zahra Susanto', 'Surabaya', 2, 3),
(23068, 'Zahra Maulana', 'Semarang', 3, 1),
(23069, 'Eka Purnama', 'Bandung', 4, 5),
(23070, 'Wahyu Maulana', 'Medan', 3, 6),
(23071, 'Lukman Saputra', 'Palembang', 1, 2),
(23072, 'Nina Purnama', 'Jakarta', 1, 4),
(23073, 'Putri Purnama', 'Makassar', 4, 6),
(23074, 'Vina Lestari', 'Malang', 4, 5),
(23075, 'Vina Susanto', 'Palembang', 1, 1),
(23076, 'Hadi Kurniawan', 'Makassar', 2, 3),
(23077, 'Umar Santoso', 'Medan', 1, 2),
(23078, 'Kartika Susanto', 'Bandung', 2, 1),
(23079, 'Qori Santoso', 'Medan', 3, 4),
(23080, 'Xenia Permata', 'Solo', 1, 3),
(23081, 'Sari Kurniawan', 'Solo', 3, 6),
(23082, 'Tono Santoso', 'Yogyakarta', 2, 2),
(23083, 'Gina Purnama', 'Bandung', 4, 4),
(23084, 'Citra Saputra', 'Semarang', 5, 5),
(23085, 'Kartika Permata', 'Medan', 1, 1),
(23086, 'Tono Purnama', 'Surabaya', 4, 6),
(23087, 'Andi Permata', 'Semarang', 5, 1),
(23088, 'Budi Kurniawan', 'Bandung', 3, 2),
(23089, 'Fajar Purnama', 'Makassar', 2, 5),
(23090, 'Putri Santoso', 'Jakarta', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int NOT NULL,
  `nama_prodi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
(2, 'ALKS'),
(5, 'RKS'),
(4, 'TI'),
(1, 'TRM'),
(3, 'TRPL');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mahasiswa_surabaya`
-- (See below for the actual view)
--
CREATE TABLE `v_mahasiswa_surabaya` (
`nama` varchar(100)
,`nama_kelas` varchar(5)
,`nim` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mahasiswa_trm3`
-- (See below for the actual view)
--
CREATE TABLE `v_mahasiswa_trm3` (
`nama` varchar(100)
,`nama_kelas` varchar(5)
,`nama_prodi` varchar(10)
,`nim` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mahasiswa_trpl`
-- (See below for the actual view)
--
CREATE TABLE `v_mahasiswa_trpl` (
`nama` varchar(100)
,`nama_prodi` varchar(10)
,`nim` int
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `nama_kelas` (`nama_kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD UNIQUE KEY `nama_prodi` (`nama_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- --------------------------------------------------------

--
-- Structure for view `v_mahasiswa_surabaya`
--
DROP TABLE IF EXISTS `v_mahasiswa_surabaya`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mahasiswa_surabaya`  AS SELECT `m`.`nim` AS `nim`, `m`.`nama` AS `nama`, `k`.`nama_kelas` AS `nama_kelas` FROM (`mahasiswa` `m` join `kelas` `k` on((`m`.`id_kelas` = `k`.`id_kelas`))) WHERE (`m`.`alamat` = 'Surabaya') ;

-- --------------------------------------------------------

--
-- Structure for view `v_mahasiswa_trm3`
--
DROP TABLE IF EXISTS `v_mahasiswa_trm3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mahasiswa_trm3`  AS SELECT `m`.`nim` AS `nim`, `m`.`nama` AS `nama`, `p`.`nama_prodi` AS `nama_prodi`, `k`.`nama_kelas` AS `nama_kelas` FROM ((`mahasiswa` `m` join `prodi` `p` on((`m`.`id_prodi` = `p`.`id_prodi`))) join `kelas` `k` on((`m`.`id_kelas` = `k`.`id_kelas`))) WHERE ((`p`.`nama_prodi` = 'TRM') AND (`k`.`nama_kelas` in ('3A','3B'))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_mahasiswa_trpl`
--
DROP TABLE IF EXISTS `v_mahasiswa_trpl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mahasiswa_trpl`  AS SELECT `m`.`nim` AS `nim`, `m`.`nama` AS `nama`, `p`.`nama_prodi` AS `nama_prodi` FROM (`mahasiswa` `m` join `prodi` `p` on((`m`.`id_prodi` = `p`.`id_prodi`))) WHERE (`p`.`nama_prodi` = 'TRPL') ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
--
-- Database: `db_produkzaraa`
--
CREATE DATABASE IF NOT EXISTS `db_produkzaraa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_produkzaraa`;

-- --------------------------------------------------------

--
-- Table structure for table `log_produk`
--

CREATE TABLE `log_produk` (
  `id_log` int NOT NULL,
  `aktivitas` varchar(100) NOT NULL,
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `stok_awal` int DEFAULT NULL,
  `stok_akhir` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log_produk`
--

INSERT INTO `log_produk` (`id_log`, `aktivitas`, `id_produk`, `nama_produk`, `waktu`, `stok_awal`, `stok_akhir`) VALUES
(1, 'Tambah Produk', 4, 'PC', '2026-05-20 02:26:08', NULL, NULL),
(2, 'Update Produk', 4, 'PC', '2026-05-20 03:02:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int NOT NULL,
  `stok` int NOT NULL,
  `tanggal_update` timestamp NULL DEFAULT NULL,
  `user_update` varchar(100) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `tanggal_update`, `user_update`, `last_update`) VALUES
(1, 'Laptop', 7000000, 10, NULL, NULL, NULL),
(2, 'Mouse', 150000, 25, NULL, NULL, NULL),
(3, 'Laptop', 300000, 15, NULL, NULL, NULL),
(4, 'PC', 8000000, 6, NULL, NULL, NULL);

--
-- Triggers `produk`
--
DELIMITER $$
CREATE TRIGGER `trg_harga_produk` BEFORE INSERT ON `produk` FOR EACH ROW BEGIN
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Harga tidak boleh negatif';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_info_update` BEFORE UPDATE ON `produk` FOR EACH ROW BEGIN
    SET NEW.tanggal_update = CURRENT_TIMESTAMP;
    SET NEW.user_update = CURRENT_USER();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_last_update` BEFORE UPDATE ON `produk` FOR EACH ROW BEGIN
    SET NEW.last_update = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_log_stok` AFTER UPDATE ON `produk` FOR EACH ROW BEGIN
    INSERT INTO log_produk
    (aktivitas, id_produk, nama_produk, stok_awal, stok_akhir)
    VALUES
    (
        'Perubahan Stok',
        NEW.id_produk,
        NEW.nama_produk,
        OLD.stok,
        NEW.stok
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_produk_delete` AFTER DELETE ON `produk` FOR EACH ROW BEGIN
	INSERT INTO log_produk
    (aktivitas, id_produk, nama_produk) VALUES
    ('Delete Produk', OLD.id_produk, OLD.nama_produk);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_produk_insert` AFTER INSERT ON `produk` FOR EACH ROW BEGIN
	INSERT INTO log_produk
    (aktivitas, id_produk, nama_produk) VALUES
    ('Tambah Produk', NEW.id_produk, NEW.nama_produk);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_produk_update` AFTER UPDATE ON `produk` FOR EACH ROW BEGIN
	INSERT INTO log_produk
    (aktivitas, id_produk, nama_produk) VALUES
    ('Update Produk', NEW.id_produk, NEW.nama_produk);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_uppercase_produk` BEFORE INSERT ON `produk` FOR EACH ROW BEGIN
    SET NEW.nama_produk = UPPER(NEW.nama_produk);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `id_produk` int NOT NULL,
  `jumlah` int NOT NULL,
  `total_harga` int NOT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_produk`, `jumlah`, `total_harga`, `tanggal`) VALUES
(1, 4, 3, 24000000, '2026-05-20 03:02:06');

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `trg_cek_stok` BEFORE INSERT ON `transaksi` FOR EACH ROW BEGIN

    DECLARE jml_stok INT;

    SELECT stok INTO jml_stok
    FROM produk
    WHERE id_produk = NEW.id_produk;

    IF jml_stok < NEW.jumlah THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stok Tidak Mencukupi';
    END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_pesan_transaksi` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN

    INSERT INTO log_transaksi (pesan)
    VALUES ('Transaksi berhasil disimpan');

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_transaksi_insert` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
	UPDATE produk
    SET stok = stok - NEW.jumlah
    WHERE id_produk = NEW.id_produk;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_produk`
--
ALTER TABLE `log_produk`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_produk`
--
ALTER TABLE `log_produk`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
--
-- Database: `db_simulasi_pbo_ti_1d_dwi_nuha_aulia_zahra`
--
CREATE DATABASE IF NOT EXISTS `db_simulasi_pbo_ti_1d_dwi_nuha_aulia_zahra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_simulasi_pbo_ti_1d_dwi_nuha_aulia_zahra`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(50) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzi', 'SMAN 1 Jakarta', 85.50, 250000.00, 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMAN 3 Bandung', 78.25, 250000.00, 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMAN 2 Surabaya', 90.00, 250000.00, 'Reguler', 'Ilmu Komunikasi', 'Kampus B', NULL, NULL, NULL, NULL),
(4, 'Dedi Wijaya', 'SMKN 1 Yogyakarta', 82.10, 250000.00, 'Reguler', 'Teknik Elektro', 'Kampus Utama', NULL, NULL, NULL, NULL),
(5, 'Eka Putri', 'SMAN 5 Semarang', 88.40, 250000.00, 'Reguler', 'Akuntansi', 'Kampus B', NULL, NULL, NULL, NULL),
(6, 'Fajar Ramadhan', 'SMAN 1 Medan', 79.90, 250000.00, 'Reguler', 'Manajemen', 'Kampus B', NULL, NULL, NULL, NULL),
(7, 'Gita Permata', 'SMAN 8 Denpasar', 84.75, 250000.00, 'Reguler', 'Psikologi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(8, 'Hendra Wijaya', 'SMAN 3 Manokwari', 92.00, 150000.00, 'Prestasi', 'Teknik Informatika', 'Kampus Utama', 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Indah Cahyani', 'SMAN 1 Solo', 91.50, 150000.00, 'Prestasi', 'Kedokteran', 'Kampus Utama', 'Futsal Putri', 'Provinsi', NULL, NULL),
(10, 'Joko Tarub', 'SMAN 2 Malang', 89.00, 150000.00, 'Prestasi', 'Hukum', 'Kampus B', 'Karya Ilmiah Remaja', 'Nasional', NULL, NULL),
(11, 'Kartika Sari', 'SMAN 4 Balikpapan', 95.30, 150000.00, 'Prestasi', 'Sistem Informasi', 'Kampus Utama', 'Debat Bahasa Inggris', 'Internasional', NULL, NULL),
(12, 'Laksana Tri', 'SMKN 26 Jakarta', 87.80, 150000.00, 'Prestasi', 'Teknik Mesin', 'Kampus Utama', 'Lomba Kompetensi Siswa', 'Nasional', NULL, NULL),
(13, 'Mega Utami', 'SMAN 1 Makassar', 90.10, 150000.00, 'Prestasi', 'Farmasi', 'Kampus B', 'Pena Bulutangkis', 'Provinsi', NULL, NULL),
(14, 'Naufal Abdi', 'SMAN 1 Garut', 86.00, 350000.00, 'Kedinasan', 'Statistika', 'Kampus Utama', NULL, NULL, 'SK-990/BPS/2026', 'Badan Pusat Statistik'),
(15, 'Oki Setiawan', 'SMAN 6 Palembang', 83.45, 350000.00, 'Kedinasan', 'Akuntansi Sektor Publik', 'Kampus B', NULL, NULL, 'SK-112/KEMENKEU/2026', 'Kementerian Keuangan'),
(16, 'Putri Ayu', 'SMAN 1 Padang', 88.20, 350000.00, 'Kedinasan', 'Studi Demografi', 'Kampus Utama', NULL, NULL, 'SK-455/BKKBN/2026', 'BKKBN'),
(17, 'Qomaruddin', 'SMAN 2 Pontianak', 81.15, 350000.00, 'Kedinasan', 'Manajemen Transportasi', 'Kampus B', NULL, NULL, 'SK-882/KEMENHUB/2026', 'Kementerian Perhubungan'),
(18, 'Rina Marlina', 'SMAN 1 Bogor', 89.60, 350000.00, 'Kedinasan', 'Teknik Telekomunikasi', 'Kampus Utama', NULL, NULL, 'SK-204/KOMINFO/2026', 'Kementerian Kominfo'),
(19, 'Rizky Billar', 'SMAN 3 Cimahi', 84.00, 350000.00, 'Kedinasan', 'Administrasi Pemerintahan', 'Kampus B', NULL, NULL, 'SK-301/KEMENDAGRI/2026', 'Kementerian Dalam Negeri'),
(20, 'Siti Aminah', 'SMAN 10 Samarinda', 87.35, 350000.00, 'Kedinasan', 'Sistem Informasi Siber', 'Kampus Utama', NULL, NULL, 'SK-771/BSSN/2026', 'Badan Siber dan Sandi Negara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `db_tokozaraa`
--
CREATE DATABASE IF NOT EXISTS `db_tokozaraa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tokozaraa`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `stok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`) VALUES
(1, 'Laptop', 8000000, 20),
(3, 'Keyboard', 250000, 15),
(4, 'Monitor', 2500000, 8),
(5, 'Printer', 1200000, 5),
(6, 'Flashdisk', 120000, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `db_tugas3`
--
CREATE DATABASE IF NOT EXISTS `db_tugas3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tugas3`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`) VALUES
(1, 'Zara Aulia', 'Cilacap'),
(2, 'Oktaviana', 'Semarang'),
(3, 'Alicia Puspita', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int NOT NULL,
  `id_anggota` int DEFAULT NULL,
  `id_buku` int DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
--
-- Database: `db_tugas5`
--
CREATE DATABASE IF NOT EXISTS `db_tugas5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tugas5`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodeBarang` varchar(10) NOT NULL,
  `namaBarang` varchar(50) DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kodeBarang`, `namaBarang`, `harga`) VALUES
('J001', 'Jilbab Pashmina', 45000),
('J002', 'Jilbab Segi Empat', 35000),
('J003', 'Jilbab Bergo', 40000),
('J004', 'Jilbab Instan', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int NOT NULL,
  `namaCustomer` varchar(50) DEFAULT NULL,
  `alamatCustomer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `namaCustomer`, `alamatCustomer`) VALUES
(1, 'Zara', 'Makassar'),
(2, 'Okta', 'Semarang'),
(3, 'Alice', 'Purwokerto');

-- --------------------------------------------------------

--
-- Table structure for table `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `noFaktur` varchar(10) NOT NULL,
  `kodeBarang` varchar(10) NOT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detailtransaksi`
--

INSERT INTO `detailtransaksi` (`noFaktur`, `kodeBarang`, `jumlah`) VALUES
('TRX001', 'J001', 2),
('TRX001', 'J002', 1),
('TRX002', 'J003', 1),
('TRX003', 'J001', 3),
('TRX003', 'J004', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detaitransaksi`
--

CREATE TABLE `detaitransaksi` (
  `noFaktur` varchar(10) NOT NULL,
  `kodeBarang` varchar(10) NOT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `noFaktur` varchar(10) NOT NULL,
  `tglFaktur` date DEFAULT NULL,
  `idCustomer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`noFaktur`, `tglFaktur`, `idCustomer`) VALUES
('TRX001', '2025-09-19', 1),
('TRX002', '2025-09-19', 2),
('TRX003', '2025-09-20', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodeBarang`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD PRIMARY KEY (`noFaktur`,`kodeBarang`),
  ADD KEY `kodeBarang` (`kodeBarang`);

--
-- Indexes for table `detaitransaksi`
--
ALTER TABLE `detaitransaksi`
  ADD PRIMARY KEY (`noFaktur`,`kodeBarang`),
  ADD KEY `kodeBarang` (`kodeBarang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`noFaktur`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD CONSTRAINT `detailtransaksi_ibfk_1` FOREIGN KEY (`noFaktur`) REFERENCES `transaksi` (`noFaktur`),
  ADD CONSTRAINT `detailtransaksi_ibfk_2` FOREIGN KEY (`kodeBarang`) REFERENCES `barang` (`kodeBarang`);

--
-- Constraints for table `detaitransaksi`
--
ALTER TABLE `detaitransaksi`
  ADD CONSTRAINT `detaitransaksi_ibfk_1` FOREIGN KEY (`noFaktur`) REFERENCES `transaksi` (`noFaktur`),
  ADD CONSTRAINT `detaitransaksi_ibfk_2` FOREIGN KEY (`kodeBarang`) REFERENCES `barang` (`kodeBarang`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`);
--
-- Database: `db_tugas9`
--
CREATE DATABASE IF NOT EXISTS `db_tugas9` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tugas9`;

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` char(5) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('MK01', 'Basis Data', 2),
('MK02', 'Algoritma Program', 3),
('MK03', 'Arsitektur Komputer', 2),
('MK04', 'Pemrograman Web Dasar', 4),
('MK05', 'Pengantar Teknologi Informasi', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);
--
-- Database: `db_tugas10`
--
CREATE DATABASE IF NOT EXISTS `db_tugas10` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tugas10`;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int NOT NULL,
  `produk` varchar(50) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `produk`, `jumlah`, `harga`) VALUES
(1, 'Album', 7, 350000),
(2, 'PC Album', 20, 45000),
(3, 'Lightstick', 4, 999000),
(4, 'Binder', 10, 54000),
(5, 'K-Pop T-Shirt', 25, 250000),
(6, 'Totebag K-Pop', 20, 35000),
(7, 'Backpack K-Pop', 15, 186000),
(8, 'Bandana', 13, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `db_uas_pbo_ti1d_dwinuhaauliazahra`
--
CREATE DATABASE IF NOT EXISTS `db_uas_pbo_ti1d_dwinuhaauliazahra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_uas_pbo_ti1d_dwinuhaauliazahra`;

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
--
-- Database: `db_zara`
--
CREATE DATABASE IF NOT EXISTS `db_zara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_zara`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `Nama_Mahasiswa` varchar(100) DEFAULT NULL,
  `ID_Prodi` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama_Mahasiswa`, `ID_Prodi`) VALUES
('231001', 'Citra', 1),
('231002', 'Budi Pratama', 2),
('231003', 'Tina Saputra', 3),
('231004', 'Rafi Anjani', 4),
('231005', 'Lina Ramadhan', 5),
('231006', 'Sinta Fitri Setiawan', 6),
('231007', 'Citra Aulia Nugroho', 7),
('231008', 'Farhan Wijaya', 7),
('231009', 'agus', 2),
('231010', 'Putri Prasetyo', 8),
('231011', 'sinta permata', 5),
('231012', 'Citra Ramadhan Amalia', 1),
('231013', 'Rina Sari', 9),
('231014', 'Budi', 10),
('231015', 'Yoga Kurniawan', 8),
('231016', 'Andi Maulana', 11),
('231017', 'Nina Amalia Santoso', 12),
('231018', 'Indra', 8),
('231019', 'Budi Aulia', 11),
('231020', 'Rina Putra', 3),
('231021', 'Fajar Ramdani Wijaya', 9),
('231022', 'Budi', 7),
('231023', 'Hendra Nugraha', 13),
('231024', 'Indra Maulana Putra', 3),
('231025', 'Hendra Ramadhan Maulana', 12),
('231026', 'Rizal Amalia', 13),
('231027', 'Sinta Permata', 8),
('231028', 'Sinta Lestari', 6),
('231029', 'Dewi Fitri', 7),
('231030', 'Citra', 12),
('231031', 'Rizal Hidayat', 4),
('231032', 'Lina Pratama', 12),
('231033', 'Citra', 5),
('231034', 'Rizal Saputra Prasetyo', 10),
('231035', 'Sinta', 13),
('231036', 'Hendra', 5),
('231037', 'Mega Saputra', 4),
('231038', 'Aulia Sari', 9),
('231039', 'Agus', 6),
('231040', 'Rizal Saputra', 1),
('231041', 'Aulia Amalia', 10),
('231042', 'Indra Wijaya', 7),
('231043', 'Nina', 13),
('231044', 'Vina Amalia', 8),
('231045', 'Rafi Saputra', 10),
('231046', 'Yoga Lestari Wijaya', 11),
('231047', 'Indra', 11),
('231048', 'Sinta Saputra Kurniawan', 10),
('231049', 'BUDI MAULANA', 13),
('231050', 'Tina Nugroho', 3),
('231051', 'Mega Sari', 12),
('231052', 'AULIA PERMATA', 13),
('231053', 'Putri Wijaya Lestari', 3),
('231054', 'Mega Nugroho', 12),
('231055', 'Winda Wahyudi', 11),
('231056', 'winda', 2),
('231057', 'dewi nugraha', 6),
('231058', 'Vina Hidayat', 9),
('231059', 'Vina', 1),
('231060', 'Agus', 12),
('231061', 'Nina Prasetyo', 13),
('231062', 'Farhan', 10),
('231063', 'Rizal Pratama', 3),
('231064', 'Citra Wahyudi', 11),
('231065', 'Dewi Amalia', 14),
('231066', 'Andi Wijaya Nugroho', 11),
('231067', 'Agus Ramdani', 9),
('231068', 'Adit', 13),
('231069', 'Rafi Kurniawan', 10),
('231070', 'Dewi Hidayat', 7),
('231071', 'Rina Permata', 3),
('231072', 'Putri Anjani', 11),
('231073', 'Hendra Permata', 5),
('231074', 'Andi Kurnia', 7),
('231075', 'Aulia', 6),
('231076', 'Adit Wahyudi', 12),
('231077', 'Hendra Sari', 13),
('231078', 'Vina Maulana', 3),
('231079', 'Yoga', NULL),
('231080', 'Nina', 1),
('231081', 'Rina Kurniawan', 7),
('231082', 'Farhan Ramadhan', 9),
('231083', 'Agus Nugroho', 3),
('231084', 'Rafi', 7),
('231085', 'Andi Aulia Lestari', 1),
('231086', 'Tina Amalia', 1),
('231087', 'Winda', 10),
('231088', 'Rafi', 7),
('231089', 'Rizka', 12),
('231090', 'mega nugroho', 12),
('231091', 'rina sari kurniawan', 13),
('231092', 'Winda Rahman', 13),
('231093', 'Hendra Ramdani', 7),
('231094', 'Lina Hidayat', 8),
('231095', 'Nina', 5),
('231096', 'Nina Pratama', 7),
('231097', 'Andi Aulia', 13),
('231098', 'Rina Wijaya', 7),
('231099', 'Yoga Setiawan', 5),
('231100', 'Winda Putra', 7);

-- --------------------------------------------------------

--
-- Table structure for table `programstudi`
--

CREATE TABLE `programstudi` (
  `ID_Prodi` int NOT NULL,
  `Nama_Prodi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `programstudi`
--

INSERT INTO `programstudi` (`ID_Prodi`, `Nama_Prodi`) VALUES
(8, 'D3 TE'),
(11, 'D3 TI'),
(2, 'D3 TL'),
(5, 'D3 TM'),
(10, 'D4 ALKS'),
(1, 'D4 PPA'),
(3, 'D4 RKS'),
(4, 'D4 TPPL'),
(14, 'D4 TPPLL'),
(13, 'D4 TRET'),
(7, 'D4 TRKI'),
(9, 'D4 TRM'),
(6, 'D4 TRMK'),
(12, 'D4 TRPL');

-- --------------------------------------------------------

--
-- Table structure for table `wisuda`
--

CREATE TABLE `wisuda` (
  `NIM` varchar(10) NOT NULL,
  `IPK` decimal(4,2) DEFAULT NULL,
  `Lama_Studi` int DEFAULT NULL,
  `Tahun_Wisuda` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wisuda`
--

INSERT INTO `wisuda` (`NIM`, `IPK`, `Lama_Studi`, `Tahun_Wisuda`) VALUES
('231001', 3.76, 10, 2025),
('231002', 2.88, 7, 2025),
('231003', 3.93, 6, 2025),
('231004', 2.87, 9, 2025),
('231005', 2.98, 7, 2025),
('231006', 3.76, 8, 2025),
('231007', 2.89, 7, 2025),
('231008', 3.23, 7, 2025),
('231009', 2.84, 6, 2025),
('231010', 2.63, 10, 2025),
('231011', 3.76, 8, 2025),
('231012', 2.55, 7, 2025),
('231013', 3.23, 9, 2025),
('231014', 2.94, 6, 2025),
('231015', 3.15, 7, 2025),
('231016', 3.51, 9, 2025),
('231017', 2.65, 9, 2025),
('231018', 3.40, 7, 2025),
('231019', 3.10, 6, 2025),
('231020', 3.56, 6, 2025),
('231021', 3.40, 6, 2025),
('231022', 3.50, 10, 2025),
('231023', 2.59, 7, 2025),
('231024', 2.75, 10, 2025),
('231025', 3.05, 8, 2025),
('231026', 2.78, 9, 2025),
('231027', 3.47, 6, 2025),
('231028', 3.32, 10, 2025),
('231029', 2.89, 6, 2025),
('231030', 3.32, 6, 2025),
('231031', 2.60, 8, 2025),
('231032', 2.95, 8, 2025),
('231033', 3.13, 8, 2025),
('231034', 2.52, 6, 2025),
('231035', 2.62, 9, 2025),
('231036', 3.86, 7, 2025),
('231037', 3.10, 9, 2025),
('231038', 3.34, 10, 2025),
('231039', 3.69, 10, 2025),
('231040', 3.77, 9, 2025),
('231041', 2.55, 6, 2025),
('231042', 3.48, 7, 2025),
('231043', 3.55, 6, 2025),
('231044', 2.84, 8, 2025),
('231045', 3.34, 9, 2025),
('231046', 3.76, 8, 2025),
('231047', 2.65, 7, 2025),
('231048', 3.80, 9, 2025),
('231049', 3.22, 8, 2025),
('231050', 3.57, 10, 2025),
('231051', 3.71, 7, 2025),
('231052', 3.87, 9, 2025),
('231053', 3.76, 7, 2025),
('231054', 2.76, 8, 2025),
('231055', 3.90, 7, 2025),
('231056', 3.82, 6, 2025),
('231057', 3.11, 7, 2025),
('231058', 3.68, 10, 2025),
('231059', 3.69, 9, 2025),
('231060', 3.30, 9, 2025),
('231061', 5.00, 10, 2025),
('231062', 2.80, 10, 2025),
('231063', 2.61, 6, 2025),
('231064', 2.98, 6, 2025),
('231065', 3.37, 6, 2025),
('231066', 3.98, 10, 2025),
('231067', 3.38, 8, 2025),
('231068', 4.50, 7, 2025),
('231069', 3.72, 7, 2025),
('231070', 2.66, 10, 2025),
('231071', 3.85, 7, 2025),
('231072', 3.27, 9, 2025),
('231073', 3.97, 9, 2025),
('231074', 2.58, 9, 2025),
('231075', 3.20, 9, 2025),
('231076', 3.71, 7, 2025),
('231077', 3.44, 9, 2025),
('231078', 3.27, 10, 2025),
('231079', 3.93, 10, 2025),
('231080', 3.84, 9, 2025),
('231081', 3.29, 10, 2025),
('231082', 3.38, 8, 2025),
('231083', 3.99, 10, 2025),
('231084', 3.32, 8, 2025),
('231085', 3.38, 6, 2025),
('231086', 2.86, 7, 2025),
('231087', 3.04, 6, 2025),
('231088', 3.82, 8, 2025),
('231089', 3.17, 8, 2025),
('231090', 3.18, 10, 2025),
('231091', 3.32, 9, 2025),
('231092', 3.67, 7, 2025),
('231093', 3.48, 6, 2025),
('231094', 3.50, 6, 2025),
('231095', 3.47, 6, 2025),
('231096', 3.62, 7, 2025),
('231097', 3.56, 9, 2025),
('231098', 3.61, 9, 2025),
('231099', 3.41, 9, 2025),
('231100', 3.50, 6, 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `ID_Prodi` (`ID_Prodi`);

--
-- Indexes for table `programstudi`
--
ALTER TABLE `programstudi`
  ADD PRIMARY KEY (`ID_Prodi`),
  ADD UNIQUE KEY `Nama_Prodi` (`Nama_Prodi`);

--
-- Indexes for table `wisuda`
--
ALTER TABLE `wisuda`
  ADD PRIMARY KEY (`NIM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`ID_Prodi`) REFERENCES `programstudi` (`ID_Prodi`);

--
-- Constraints for table `wisuda`
--
ALTER TABLE `wisuda`
  ADD CONSTRAINT `wisuda_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);
--
-- Database: `db_zara6`
--
CREATE DATABASE IF NOT EXISTS `db_zara6` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_zara6`;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NIP` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);
--
-- Database: `db_zara13`
--
CREATE DATABASE IF NOT EXISTS `db_zara13` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_zara13`;
--
-- Database: `db_zara21`
--
CREATE DATABASE IF NOT EXISTS `db_zara21` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_zara21`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int NOT NULL,
  `id_transaksi` int NOT NULL,
  `id_obat` int NOT NULL,
  `qty` int NOT NULL,
  `subtotal` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_obat`, `qty`, `subtotal`) VALUES
(1, 1, 1, 5, 15000),
(2, 1, 5, 3, 15000),
(3, 2, 2, 3, 45000),
(4, 3, 9, 5, 20000),
(5, 4, 6, 5, 45000),
(6, 4, 1, 2, 6000),
(7, 5, 10, 4, 24000),
(8, 6, 3, 5, 40000),
(9, 7, 8, 2, 14000),
(10, 8, 5, 10, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Tablet'),
(2, 'Sirup'),
(3, 'Kapsul'),
(4, 'Salep'),
(5, 'Vitamin'),
(6, 'Antibiotik'),
(7, 'Obat Batuk'),
(8, 'Obat Flu'),
(9, 'Obat Demam'),
(10, 'Obat Maag');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int NOT NULL,
  `id_user` int NOT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_user`, `aktivitas`, `waktu`) VALUES
(1, 1, 'Login', '2026-02-01 01:00:00'),
(2, 2, 'Input Transaksi', '2026-02-01 02:00:00'),
(3, 3, 'Logout', '2026-02-01 03:00:00'),
(4, 4, 'Tambah Obat', '2026-02-02 01:30:00'),
(5, 5, 'Edit Obat', '2026-02-02 02:30:00'),
(6, 6, 'Hapus Obat', '2026-02-03 03:00:00'),
(7, 7, 'Login', '2026-02-03 04:00:00'),
(8, 8, 'Input Transaksi', '2026-02-04 05:00:00'),
(9, 9, 'Logout', '2026-02-05 06:00:00'),
(10, 10, 'Login', '2026-02-06 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int NOT NULL,
  `id_kategori` int NOT NULL,
  `id_supplier` int NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `harga_beli` bigint NOT NULL,
  `harga_jual` bigint NOT NULL,
  `stok` int NOT NULL,
  `tgl_kadaluarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `id_kategori`, `id_supplier`, `nama_obat`, `harga_beli`, `harga_jual`, `stok`, `tgl_kadaluarsa`) VALUES
(1, 1, 1, 'Paracetamol', 2000, 3000, 100, '2027-12-31'),
(2, 2, 2, 'OBH Combi', 10000, 15000, 50, '2026-10-10'),
(3, 3, 3, 'Amoxicillin', 5000, 8000, 70, '2027-08-15'),
(4, 4, 4, 'Salep Kulit', 7000, 10000, 40, '2026-05-20'),
(5, 5, 5, 'Vitamin C', 3000, 5000, 120, '2028-01-01'),
(6, 6, 6, 'Cefadroxil', 6000, 9000, 60, '2027-09-09'),
(7, 7, 7, 'Siladex', 9000, 13000, 45, '2026-11-11'),
(8, 8, 8, 'Mixagrip', 4000, 7000, 80, '2027-06-06'),
(9, 9, 9, 'Bodrex', 2500, 4000, 90, '2028-03-03'),
(10, 10, 10, 'Promag', 3500, 6000, 110, '2027-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telepon`) VALUES
(1, 'PT Sehat Selalu', 'Jakarta', '081234567890'),
(2, 'PT Farma Jaya', 'Bandung', '081234567891'),
(3, 'PT Medika Abadi', 'Surabaya', '081234567892'),
(4, 'PT Sumber Waras', 'Semarang', '081234567893'),
(5, 'PT Anugerah Medis', 'Yogyakarta', '081234567894'),
(6, 'PT Makmur Sentosa', 'Solo', '081234567895'),
(7, 'PT Nusantara Medika', 'Malang', '081234567896'),
(8, 'PT Global Farma', 'Medan', '081234567897'),
(9, 'PT Sejahtera Abadi', 'Palembang', '081234567898'),
(10, 'PT Prima Medika', 'Makassar', '081234567899');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `role`) VALUES
(1, 'admin1', '12345', 'Eka Saputra', 'admin'),
(2, 'kasir1', '12345', 'Rina Putri', 'kasir'),
(3, 'kasir2', '12345', 'Andi Saputra', 'kasir'),
(4, 'admin2', '12345', 'Siti Rahma', 'admin'),
(5, 'kasir3', '12345', 'Budi Santoso', 'kasir'),
(6, 'kasir4', '12345', 'Nabila Azzahra', 'kasir'),
(7, 'admin3', '12345', 'Fajar Nugroho', 'admin'),
(8, 'kasir5', '12345', 'Dewi Lestari', 'kasir'),
(9, 'kasir6', '12345', 'Yoga Pratama', 'kasir'),
(10, 'admin4', '12345', 'Lina Marlina', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `id_user` int NOT NULL,
  `no_transaksi` varchar(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total_bayar` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `no_transaksi`, `tanggal_transaksi`, `total_bayar`) VALUES
(1, 2, 'TRX001', '2026-02-01', 30000),
(2, 3, 'TRX002', '2026-02-02', 45000),
(3, 5, 'TRX003', '2026-02-03', 20000),
(4, 6, 'TRX004', '2026-02-04', 50000),
(5, 8, 'TRX005', '2026-02-05', 25000),
(6, 9, 'TRX006', '2026-02-06', 60000),
(7, 2, 'TRX007', '2026-02-07', 15000),
(8, 3, 'TRX008', '2026-02-08', 70000),
(9, 5, 'TRX009', '2026-02-09', 40000),
(10, 6, 'TRX010', '2026-02-10', 35000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);
--
-- Database: `db_zr`
--
CREATE DATABASE IF NOT EXISTS `db_zr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_zr`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `stok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `stok`) VALUES
(1, 'pc', 5),
(3, 'cpu', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);
--
-- Database: `klinik_zara`
--
CREATE DATABASE IF NOT EXISTS `klinik_zara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `klinik_zara`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_perawatan`
--

CREATE TABLE `detail_perawatan` (
  `id_detail` int NOT NULL,
  `id_kunjungan` int DEFAULT NULL,
  `id_perawatan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_perawatan`
--

INSERT INTO `detail_perawatan` (`id_detail`, `id_kunjungan`, `id_perawatan`) VALUES
(1, 1, 4),
(2, 1, 2),
(3, 2, 2),
(4, 3, 1),
(5, 2, 3),
(6, 3, 3),
(7, 2, 1),
(8, 4, 4),
(9, 5, 5),
(10, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int NOT NULL,
  `nama_dokter` varchar(100) DEFAULT NULL,
  `spesialisasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialisasi`) VALUES
(1, 'Dr.Gia', 'Umum'),
(2, 'Dr.Christ', 'Gigi'),
(3, 'Dr.Ahmad', 'Anak');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_kunjungan` int NOT NULL,
  `id_pasien` int DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `tanggal_kunjungan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id_kunjungan`, `id_pasien`, `id_dokter`, `tanggal_kunjungan`) VALUES
(1, 1, 1, '2025-05-07'),
(2, 5, 2, '2025-07-16'),
(3, 2, 1, '2025-10-13'),
(4, 4, 3, '2025-12-29'),
(5, 3, 2, '2026-01-20'),
(6, 1, 2, '2026-02-03'),
(7, 5, 3, '2026-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `alamat`, `no_hp`) VALUES
(1, 'Oktavia', 'Bndung', '897654329876'),
(2, 'Dhayanti', 'Jakarta', '5273986272097'),
(3, 'Zaraulia', 'Surabaya', '234657890638'),
(4, 'Alicia', 'Yogyakarta', '2376538796435'),
(5, 'Puspita', 'Semarang', '243687652387');

-- --------------------------------------------------------

--
-- Table structure for table `perawatan`
--

CREATE TABLE `perawatan` (
  `id_perawatan` int NOT NULL,
  `nama_perawatan` varchar(150) DEFAULT NULL,
  `biaya` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `perawatan`
--

INSERT INTO `perawatan` (`id_perawatan`, `nama_perawatan`, `biaya`) VALUES
(1, 'Pemeriksaan Umum', 500000),
(2, 'Tambal Gigi', 850000),
(3, 'Cabut Gigi', 600000),
(4, 'Imunisasi', 1000000),
(5, 'Cek Darah', 700000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_perawatan`
--
ALTER TABLE `detail_perawatan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_kunjungan` (`id_kunjungan`),
  ADD KEY `id_perawatan` (`id_perawatan`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`id_perawatan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_perawatan`
--
ALTER TABLE `detail_perawatan`
  ADD CONSTRAINT `detail_perawatan_ibfk_1` FOREIGN KEY (`id_kunjungan`) REFERENCES `kunjungan` (`id_kunjungan`),
  ADD CONSTRAINT `detail_perawatan_ibfk_2` FOREIGN KEY (`id_perawatan`) REFERENCES `perawatan` (`id_perawatan`);

--
-- Constraints for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD CONSTRAINT `kunjungan_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `kunjungan_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`);
--
-- Database: `penjualan`
--
CREATE DATABASE IF NOT EXISTS `penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `penjualan`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int DEFAULT NULL,
  `id_transaksi` int DEFAULT NULL,
  `id_produk` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_produk`, `jumlah`) VALUES
(1, 1, 1, 1),
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 2, 5, 1),
(5, 3, 2, 3),
(6, 3, 4, 1),
(7, 4, 1, 1),
(8, 4, 3, 2),
(9, 5, 5, 1),
(10, 6, 6, 5),
(11, 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `kota`) VALUES
(1, 'Andi', 'Jakarta'),
(2, 'Budi', 'Surabaya'),
(3, 'Citra', 'Bandung'),
(4, 'Ayu', 'Jakarta'),
(5, 'Eka', 'Semarang'),
(6, 'Aldi', 'Jakarta'),
(7, 'Rina', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(80) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `stok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`) VALUES
(1, 'Laptop', 8000000, 10),
(2, 'Mouse', 150000, 50),
(3, 'Keyboard', 300000, 20),
(4, 'Monitor', 2000000, 5),
(5, 'Printer', 2500000, 3),
(6, 'Flashdisk', 80000, 2),
(7, 'Headset', 120000, 60);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int DEFAULT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `tanggal`) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-02-15'),
(3, 1, '2024-03-20'),
(4, 3, '2024-04-05'),
(5, 4, '2024-05-12'),
(6, 6, '2024-06-18'),
(7, 7, '2023-12-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);
--
-- Database: `perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `perpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `idAnggota` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idAnggota`, `nama`, `jurusan`) VALUES
('A001', 'Rina', 'TI'),
('A002', 'Andi', 'SI'),
('A003', 'Budi', 'TI'),
('A004', 'Citra', 'MI'),
('A005', 'Dewi', 'TI'),
('A006', 'Eko', 'SI'),
('A007', 'Fajar', 'TI'),
('A008', 'Gina', 'MI'),
('A009', 'Hari', 'TI'),
('A010', 'Indah', 'SI'),
('A011', 'Joko', 'TI'),
('A012', 'Kiki', 'MI'),
('A013', 'Lina', 'TI'),
('A014', 'Maya', 'SI'),
('A015', 'Nina', 'TI'),
('A016', 'Oscar', 'MI'),
('A017', 'Putra', 'TI'),
('A018', 'Qori', 'SI'),
('A019', 'Rudi', 'TI'),
('A020', 'Sinta', 'MI');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kodeBuku` varchar(10) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kodeBuku`, `judul`, `kategori`) VALUES
('B001', 'Database Fundamental', 'Teknik'),
('B002', 'Manajemen Proyek', 'Bisnis'),
('B003', 'Pemrograman Python', 'Teknik'),
('B004', 'Statistik Dasar', 'Matematika'),
('B005', 'Jaringan Komputer', 'Teknik'),
('B006', 'Sistem Operasi', 'Teknik'),
('B007', 'Analisis Data', 'Matematika'),
('B008', 'Akuntansi Dasar', 'Bisnis'),
('B009', 'Kecerdasan Buatan', 'Teknik'),
('B010', 'Pemrograman Java', 'Teknik'),
('B011', 'Pemrograman Web', 'Teknik'),
('B012', 'Manajemen SDM', 'Bisnis'),
('B013', 'Algoritma dan Struktur Data', 'Teknik'),
('B014', 'Keamanan Informasi', 'Teknik'),
('B015', 'Big Data Analytics', 'Teknik'),
('B016', 'Cloud Computing', 'Teknik'),
('B017', 'Machine Learning', 'Teknik'),
('B018', 'Etika Bisnis', 'Bisnis'),
('B019', 'Ekonomi Mikro', 'Bisnis'),
('B020', 'Ekonomi Makro', 'Bisnis'),
('B021', 'Matematika Diskrit', 'Matematika'),
('B022', 'Kalkulus', 'Matematika'),
('B023', 'Aljabar Linear', 'Matematika'),
('B024', 'Probabilitas', 'Matematika'),
('B025', 'Manajemen Keuangan', 'Bisnis'),
('B026', 'Pemasaran Digital', 'Bisnis'),
('B027', 'Data Mining', 'Teknik'),
('B028', 'Pemrograman Mobile', 'Teknik'),
('B029', 'UI/UX Design', 'Teknik'),
('B030', 'Cyber Security', 'Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `idPinjam` int NOT NULL,
  `idAnggota` varchar(10) DEFAULT NULL,
  `kodeBuku` varchar(10) DEFAULT NULL,
  `tanggalPinjam` date DEFAULT NULL,
  `tanggalKembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`idPinjam`, `idAnggota`, `kodeBuku`, `tanggalPinjam`, `tanggalKembali`) VALUES
(1, 'A001', 'B001', '2025-11-01', '2025-11-10'),
(2, 'A001', 'B003', '2025-11-05', '2025-11-12'),
(3, 'A002', 'B002', '2025-11-03', '2025-11-08'),
(4, 'A003', 'B001', '2025-11-04', '2025-11-15'),
(5, 'A004', 'B004', '2025-11-06', '2025-11-13'),
(6, 'A005', 'B005', '2025-11-07', '2025-11-14'),
(7, 'A006', 'B006', '2025-11-08', '2025-11-15'),
(8, 'A007', 'B007', '2025-11-09', '2025-11-16'),
(9, 'A008', 'B008', '2025-11-10', '2025-11-17'),
(10, 'A009', 'B009', '2025-11-11', '2025-11-18'),
(11, 'A010', 'B010', '2025-11-12', '2025-11-19'),
(12, 'A011', 'B011', '2025-11-13', '2025-11-20'),
(13, 'A012', 'B012', '2025-11-14', '2025-11-21'),
(14, 'A013', 'B013', '2025-11-15', '2025-11-22'),
(15, 'A014', 'B014', '2025-11-16', '2025-11-23'),
(16, 'A015', 'B015', '2025-11-17', '2025-11-24'),
(17, 'A016', 'B016', '2025-11-18', '2025-11-25'),
(18, 'A017', 'B017', '2025-11-19', '2025-11-26'),
(19, 'A018', 'B018', '2025-11-20', '2025-11-27'),
(20, 'A019', 'B019', '2025-11-21', '2025-11-28'),
(21, 'A020', 'B020', '2025-11-22', '2025-11-29'),
(22, 'A001', 'B021', '2025-11-23', '2025-11-30'),
(23, 'A002', 'B022', '2025-11-24', '2025-12-01'),
(24, 'A003', 'B023', '2025-11-25', '2025-12-02'),
(25, 'A004', 'B024', '2025-11-26', '2025-12-03'),
(26, 'A005', 'B025', '2025-11-27', '2025-12-04'),
(27, 'A006', 'B026', '2025-11-28', '2025-12-05'),
(28, 'A007', 'B027', '2025-11-29', '2025-12-06'),
(29, 'A008', 'B028', '2025-11-30', '2025-12-07'),
(30, 'A009', 'B029', '2025-12-01', '2025-12-08'),
(31, 'A010', 'B030', '2025-12-02', '2025-12-09');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_anggota_ti`
-- (See below for the actual view)
--
CREATE TABLE `v_anggota_ti` (
`idAnggota` varchar(10)
,`nama` varchar(50)
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`idAnggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kodeBuku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`idPinjam`),
  ADD KEY `idAnggota` (`idAnggota`),
  ADD KEY `kodeBuku` (`kodeBuku`);

-- --------------------------------------------------------

--
-- Structure for view `v_anggota_ti`
--
DROP TABLE IF EXISTS `v_anggota_ti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_anggota_ti`  AS SELECT `anggota`.`idAnggota` AS `idAnggota`, `anggota`.`nama` AS `nama` FROM `anggota` WHERE (`anggota`.`jurusan` like 'TI') ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`idAnggota`) REFERENCES `anggota` (`idAnggota`),
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`kodeBuku`) REFERENCES `buku` (`kodeBuku`);
--
-- Database: `toko`
--
CREATE DATABASE IF NOT EXISTS `toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `toko`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int NOT NULL,
  `id_transaksi` int DEFAULT NULL,
  `id_produk` int DEFAULT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_atasan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`) VALUES
(1, 'Andi Wijaya'),
(2, 'Siti Aminah'),
(3, 'Budi Santoso');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_tiket`
--

CREATE TABLE `pesanan_tiket` (
  `id` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `harga_dasar` int NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet','VIP') NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(20) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` tinyint(1) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` tinyint(1) DEFAULT NULL,
  `biaya_tambahan` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesanan_tiket`
--

INSERT INTO `pesanan_tiket` (`id`, `nama_film`, `jadwal_tayang`, `harga_dasar`, `jenis_studio`, `jumlah_kursi`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`, `biaya_tambahan`) VALUES
(1, 'The Avengers: Secret Wars', '2026-05-01 13:00:00', 50000, 'Regular', 2, 'Dolby Digital 5.1', 'Row G', NULL, NULL, NULL, NULL, 0),
(2, 'The Avengers: Secret Wars', '2026-05-01 15:45:00', 50000, 'Regular', 1, 'Dolby Digital 5.1', 'Row E', NULL, NULL, NULL, NULL, 0),
(3, 'Avatar 4', '2026-05-02 12:00:00', 55000, 'Regular', 4, 'Standard Stereo', 'Row F', NULL, NULL, NULL, NULL, 0),
(4, 'Avatar 4', '2026-05-02 19:30:00', 60000, 'Regular', 2, 'Dolby Digital 5.1', 'Row C', NULL, NULL, NULL, NULL, 0),
(5, 'Dune: Part Three', '2026-05-03 14:00:00', 50000, 'Regular', 2, 'Standard Stereo', 'Row H', NULL, NULL, NULL, NULL, 0),
(6, 'Dune: Part Three', '2026-05-03 17:00:00', 50000, 'Regular', 3, 'Dolby Digital 5.1', 'Row D', NULL, NULL, NULL, NULL, 0),
(7, 'Project Hail Mary', '2026-05-04 20:00:00', 55000, 'Regular', 1, 'Dolby Digital 5.1', 'Row J', NULL, NULL, NULL, NULL, 0),
(8, 'Interstellar (Re-Run)', '2026-05-05 13:00:00', 70000, 'IMAX', 2, NULL, NULL, 'IMX-3D-A1', 1, NULL, NULL, 0),
(9, 'Interstellar (Re-Run)', '2026-05-05 16:30:00', 70000, 'IMAX', 3, NULL, NULL, 'IMX-3D-A2', 1, NULL, NULL, 0),
(10, 'Avatar: The Way of Water', '2026-05-06 11:00:00', 75000, 'IMAX', 4, NULL, NULL, 'IMX-3D-B1', 1, NULL, NULL, 0),
(11, 'Avatar: The Way of Water', '2026-05-06 15:00:00', 75000, 'IMAX', 2, NULL, NULL, 'IMX-3D-B2', 0, NULL, NULL, 0),
(12, 'Dune: Part Two', '2026-05-07 14:00:00', 80000, 'IMAX', 3, NULL, NULL, 'IMX-3D-C1', 1, NULL, NULL, 0),
(13, 'Dune: Part Two', '2026-05-07 18:30:00', 80000, 'IMAX', 1, NULL, NULL, 'IMX-3D-C2', 1, NULL, NULL, 0),
(14, 'Star Wars: Reborn', '2026-05-08 21:00:00', 70000, 'IMAX', 2, NULL, NULL, 'IMX-3D-D1', 0, NULL, NULL, 0),
(15, 'Inception', '2026-05-09 14:00:00', 150000, 'Velvet', 2, NULL, NULL, NULL, NULL, 'Premium Gold Pack', 1, 0),
(16, 'Inception', '2026-05-09 18:00:00', 150000, 'Velvet', 2, NULL, NULL, NULL, NULL, 'Premium Gold Pack', 1, 0),
(17, 'Gladiator II', '2026-05-10 13:30:00', 160000, 'Velvet', 4, NULL, NULL, NULL, NULL, 'Platinum Cozy Pack', 1, 0),
(18, 'Gladiator II', '2026-05-10 17:00:00', 160000, 'Velvet', 2, NULL, NULL, NULL, NULL, 'Platinum Cozy Pack', 0, 0),
(19, 'Spider-Man: Beyond the Spider-Verse', '2026-06-20 19:00:00', 100000, 'VIP', 2, NULL, NULL, NULL, NULL, NULL, NULL, 25000),
(20, 'Avengers: Secret Wars', '2026-06-21 21:15:00', 120000, 'VIP', 3, NULL, NULL, NULL, NULL, NULL, NULL, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `id_kategori` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `id_kategori`) VALUES
(1, 'Nasi Goreng', 15000.00, 1),
(2, 'Es Teh', 5000.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_atasan` (`id_atasan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesanan_tiket`
--
ALTER TABLE `pesanan_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan_tiket`
--
ALTER TABLE `pesanan_tiket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_atasan`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `toko_online`
--
CREATE DATABASE IF NOT EXISTS `toko_online` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `toko_online`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_250202102`
--

CREATE TABLE `detail_transaksi_250202102` (
  `id_detail` int NOT NULL,
  `id_transaksi` int DEFAULT NULL,
  `id_produk` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_transaksi_250202102`
--

INSERT INTO `detail_transaksi_250202102` (`id_detail`, `id_transaksi`, `id_produk`, `jumlah`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 2, 5, 1),
(5, 3, 2, 3),
(6, 3, 4, 1),
(7, 4, 1, 1),
(8, 4, 3, 2),
(9, 5, 5, 1),
(10, 6, 6, 5),
(11, 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan_250202102`
--

CREATE TABLE `pelanggan_250202102` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan_250202102`
--

INSERT INTO `pelanggan_250202102` (`id_pelanggan`, `nama`, `kota`) VALUES
(1, 'Andi', 'Jakarta'),
(2, 'Budi', 'Surabaya'),
(3, 'Citra', 'Bandung'),
(4, 'Ayu', 'Jakarta'),
(5, 'Eka', 'Semarang'),
(6, 'Aldi', 'Jakarta'),
(7, 'Rina', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `produk_250202102`
--

CREATE TABLE `produk_250202102` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `stok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk_250202102`
--

INSERT INTO `produk_250202102` (`id_produk`, `nama_produk`, `harga`, `stok`) VALUES
(1, 'Laptop', 8000000, 10),
(2, 'Mouse', 150000, 50),
(3, 'Keyboard', 300000, 20),
(4, 'Monitor', 2000000, 5),
(5, 'Printer', 2500000, 3),
(6, 'Flashdisk', 80000, 2),
(7, 'Headset', 120000, 60);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_250202102`
--

CREATE TABLE `transaksi_250202102` (
  `id_transaksi` int NOT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_250202102`
--

INSERT INTO `transaksi_250202102` (`id_transaksi`, `id_pelanggan`, `tanggal`) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-02-15'),
(3, 1, '2024-03-20'),
(4, 3, '2024-04-05'),
(5, 4, '2024-05-12'),
(6, 6, '2024-06-18'),
(7, 7, '2023-12-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi_250202102`
--
ALTER TABLE `detail_transaksi_250202102`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `pelanggan_250202102`
--
ALTER TABLE `pelanggan_250202102`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `produk_250202102`
--
ALTER TABLE `produk_250202102`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi_250202102`
--
ALTER TABLE `transaksi_250202102`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi_250202102`
--
ALTER TABLE `detail_transaksi_250202102`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pelanggan_250202102`
--
ALTER TABLE `pelanggan_250202102`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk_250202102`
--
ALTER TABLE `produk_250202102`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi_250202102`
--
ALTER TABLE `transaksi_250202102`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi_250202102`
--
ALTER TABLE `detail_transaksi_250202102`
  ADD CONSTRAINT `detail_transaksi_250202102_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_250202102` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_250202102_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk_250202102` (`id_produk`);

--
-- Constraints for table `transaksi_250202102`
--
ALTER TABLE `transaksi_250202102`
  ADD CONSTRAINT `transaksi_250202102_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan_250202102` (`id_pelanggan`);
--
-- Database: `zara_database`
--
CREATE DATABASE IF NOT EXISTS `zara_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `zara_database`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programstudi`
--

CREATE TABLE `programstudi` (
  `ID_Prodi` int NOT NULL,
  `Nama_Prodi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `programstudi`
--
ALTER TABLE `programstudi`
  ADD PRIMARY KEY (`ID_Prodi`),
  ADD UNIQUE KEY `Nama_Prodi` (`Nama_Prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
