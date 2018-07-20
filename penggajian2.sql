-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 03:32 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian2`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` varchar(6) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `tahun` int(4) NOT NULL,
  `scan_masuk` varchar(6) NOT NULL,
  `scan_keluar` varchar(6) NOT NULL,
  `id_lembur` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apv_absensi`
--

CREATE TABLE `apv_absensi` (
  `id_absensi` varchar(6) NOT NULL,
  `tgl_apv` varchar(10) NOT NULL,
  `apv_absensi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apv_gapok`
--

CREATE TABLE `apv_gapok` (
  `id_gapok` varchar(6) NOT NULL,
  `tgl_apv` varchar(10) NOT NULL,
  `apv_gapok` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apv_lembur`
--

CREATE TABLE `apv_lembur` (
  `id_lembur` varchar(6) NOT NULL,
  `tgl_apv` varchar(10) NOT NULL,
  `apv_lembur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_pokok`
--

CREATE TABLE `gaji_pokok` (
  `id_gapok` varchar(6) NOT NULL,
  `id_jab` varchar(6) NOT NULL,
  `gapok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jab` varchar(6) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `status_jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lembur`
--

CREATE TABLE `lembur` (
  `id_lembur` varchar(6) NOT NULL,
  `proyek` varchar(25) NOT NULL,
  `tanngal` int(2) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` int(4) NOT NULL,
  `lembur_in` varchar(10) NOT NULL,
  `lembur_out` varchar(10) NOT NULL,
  `durasi_lembur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_peg` int(11) NOT NULL,
  `id_jab` varchar(6) DEFAULT NULL,
  `id_absensi` varchar(6) DEFAULT NULL,
  `id_gapok` varchar(6) DEFAULT NULL,
  `nip` varchar(6) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `ttl` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_peg`, `id_jab`, `id_absensi`, `id_gapok`, `nip`, `nama`, `ttl`, `alamat`, `no_telp`, `gender`, `agama`) VALUES
(17, NULL, NULL, NULL, 'A00001', 'Paris Halimah', '1984-09-26', 'Dk. Rajiman No. 151, Solo', '(+62) 200 4428 687', 'Perempuan', 'Islam'),
(18, NULL, NULL, NULL, 'A00002', 'Balidin Santoso', '1978-06-22', 'Jr. Cihampelas No. 331, B', '024 2929 632', 'Laki-Laki', 'Islam'),
(19, NULL, NULL, NULL, 'A00003', 'Gaduh Najmudin M.TI.', '1995-02-12', 'Jln. Madrasah No. 345, Pa', '0561 4117 251', 'Laki-Laki', 'Katolik'),
(20, NULL, NULL, NULL, 'A00004', 'Kezia Oliva Usada S.I.Kom', '1986-02-16', 'Ds. Bakin No. 864, Cilego', '0462 6184 9963', 'Perempuan', 'Katolik'),
(21, NULL, NULL, NULL, 'A00005', 'Umi Wulan Puspita S.I.Kom', '1988-03-23', 'Ki. Orang No. 438, Bima 3', '(+62) 343 7250 2039', 'Perempuan', 'Islam'),
(22, NULL, NULL, NULL, 'A00006', 'Cakrawangsa Tarihoran S.K', '1972-08-23', 'Kpg. Orang No. 169, Mojok', '0232 4614 624', 'Laki-Laki', 'Islam'),
(23, NULL, NULL, NULL, 'A00007', 'Kenari Marwata Sitompul', '1984-09-02', 'Ds. Bappenas No. 879, Mat', '0856 340 897', 'Laki-Laki', 'Katolik'),
(24, NULL, NULL, NULL, 'A00007', 'Citra Palastri S.E.', '1978-03-20', 'Ki. Gedebage Selatan No. ', '024 0691 778', 'Perempuan', 'Islam'),
(25, NULL, NULL, NULL, 'A00008', 'Reza Adhiarja Halim S.H.', '1972-10-06', 'Psr. Jend. Sudirman No. 5', '(+62) 573 8236 7431', 'Laki-Laki', 'Islam'),
(26, NULL, NULL, NULL, 'A00009', 'Gina Uyainah', '1990-09-20', 'Gg. Sutarto No. 299, Pala', '0611 2608 086', 'Perempuan', 'Katolik'),
(27, NULL, NULL, NULL, 'A00010', 'Darijan Tirtayasa Situmor', '1985-03-19', 'Dk. Sugiono No. 763, Pada', '(+62) 484 8804 1116', 'Laki-Laki', 'Katolik'),
(28, NULL, NULL, NULL, 'A00011', 'Bagus Gangsar Nababan', '1998-05-20', 'Psr. Casablanca No. 629, ', '0763 9761 8755', 'Laki-Laki', 'Islam'),
(29, NULL, NULL, NULL, 'A00012', 'Titi Winarsih', '1971-02-15', 'Kpg. Abdul Muis No. 320, ', '(+62) 451 4466 096', 'Perempuan', 'Islam'),
(30, NULL, NULL, NULL, 'B00001', 'Wage Gunarto', '1979-10-02', 'Jr. Sudirman No. 921, Bog', '0282 5861 1938', 'Laki-Laki', 'Islam'),
(31, NULL, NULL, NULL, 'B00002', 'Chelsea Namaga M.Ak', '1976-06-21', 'Ds. Dipatiukur No. 756, S', '(+62) 694 9371 8655', 'Perempuan', 'Katolik'),
(32, NULL, NULL, NULL, 'B00003', 'Endah Puspasari', '1992-01-16', 'Ds. Bappenas No. 92, Tido', '0435 9457 622', 'Perempuan', 'Islam'),
(33, NULL, NULL, NULL, 'B00004', 'Suci Mandasari S.Sos', '1993-06-24', 'Jr. Rajiman No. 169, Tega', '027 0025 553', 'Perempuan', 'Katolik'),
(34, NULL, NULL, NULL, 'B00005', 'Jayeng Dongoran', '1990-04-04', 'Jln. Uluwatu No. 589, Bau', '0748 1340 334', 'Laki-Laki', 'Islam'),
(35, NULL, NULL, NULL, 'B00006', 'Mustofa Mursita Nashirudd', '1986-11-03', 'Dk. Otto No. 852, Jayapur', '0753 6468 587', 'Laki-Laki', 'Islam'),
(36, NULL, NULL, NULL, 'B00007', 'Anastasia Wahyuni', '1996-12-03', 'Gg. Antapani Lama No. 110', '0643 6036 635', 'Perempuan', 'Islam'),
(37, NULL, NULL, NULL, 'B00008', 'Elvina Hassanah', '1992-10-19', 'Gg. Sutoyo No. 492, Lubuk', '0370 7785 074', 'Perempuan', 'Katolik'),
(38, NULL, NULL, NULL, 'B00009', 'Safina Zelda Permata M.TI', '1991-01-06', 'Psr. Pelajar Pejuang 45 N', '0825 7750 767', 'Perempuan', 'Islam'),
(39, NULL, NULL, NULL, 'B00010', 'Oliva Suartini M.Ak', '1993-01-15', 'Jr. Sadang Serang No. 74,', '0262 7485 678', 'Perempuan', 'Katolik'),
(40, NULL, NULL, NULL, 'C00001', 'Zaenab Wastuti', '1972-07-27', 'Psr. Baladewa No. 333, Ja', '(+62) 28 3245 1306', 'Laki-Laki', 'Islam'),
(41, NULL, NULL, NULL, 'C00002', 'Prabu Damanik', '1996-10-16', 'Jln. Pahlawan No. 77, Ter', '0917 4309 3459', 'Laki-Laki', 'Katolik'),
(42, NULL, NULL, NULL, 'C00003', 'Taufik Mustofa', '1972-02-18', 'Jln. R.E. Martadinata No.', '024 5967 674', 'Laki-Laki', 'Islam'),
(43, NULL, NULL, NULL, 'C00004', 'Jamalia Purwanti', '1989-08-03', 'Gg. Babakan No. 492, Tang', '0969 3445 969', 'Perempuan', 'Islam'),
(44, NULL, NULL, NULL, 'C00005', 'Gilda Lestari', '1973-05-30', 'Gg. Mahakam No. 335, Denp', '(+62) 218 8749 891', 'Perempuan', 'Islam'),
(45, NULL, NULL, NULL, 'C00006', 'Safina Susanti M.Pd', '1990-05-26', 'Gg. Madrasah No. 57, Blit', '(+62) 874 0625 6779', 'Perempuan', 'Islam'),
(46, NULL, NULL, NULL, 'C00007', 'Oliva Nilam Purnawati', '1976-08-25', 'Psr. Rajawali Barat No. 1', '(+62) 681 9238 0707', 'Perempuan', 'Katolik'),
(47, NULL, NULL, NULL, 'C00008', 'Kajen Sinaga', '1997-01-23', 'Ds. Ciumbuleuit No. 187, ', '0873 9760 697', 'Laki-Laki', 'Katolik'),
(48, NULL, NULL, NULL, 'C00009', 'Harjo Uwais', '1995-01-20', 'Ki. Jamika No. 762, Sibol', '0993 2634 044', 'Laki-Laki', 'Katolik'),
(49, NULL, NULL, NULL, 'C00010', 'Tari Safitri', '1986-05-24', 'Ds. Wahid No. 471, Padang', '0655 3462 080', 'Perempuan', 'Islam'),
(50, NULL, NULL, NULL, 'C00011', 'Eman Harimurti Iswahyudi ', '1971-06-16', 'Gg. Bah Jaya No. 219, Tar', '0907 9767 2113', 'Laki-Laki', 'Islam'),
(51, NULL, NULL, NULL, 'C00012', 'Gangsar Samosir M.Farm', '1989-10-07', 'Ds. Ters. Pasir Koja No. ', '(+62) 960 8569 877', 'Laki-Laki', 'Katolik');

-- --------------------------------------------------------

--
-- Table structure for table `pot_pegawai`
--

CREATE TABLE `pot_pegawai` (
  `id_potongan` varchar(6) NOT NULL,
  `jenis_pot` varchar(25) NOT NULL,
  `jumlah_pot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gaji`
--

CREATE TABLE `tb_gaji` (
  `id_peg` int(11) NOT NULL,
  `id_jab` varchar(6) NOT NULL,
  `id_absensi` varchar(6) NOT NULL,
  `id_gapok` varchar(6) NOT NULL,
  `id_lembur` varchar(6) NOT NULL,
  `id_potongan` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(2, 'mankeu', 'nalambahari', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_lembur` (`id_lembur`);

--
-- Indexes for table `apv_absensi`
--
ALTER TABLE `apv_absensi`
  ADD KEY `id_absensi` (`id_absensi`);

--
-- Indexes for table `apv_gapok`
--
ALTER TABLE `apv_gapok`
  ADD KEY `id_gapok` (`id_gapok`);

--
-- Indexes for table `apv_lembur`
--
ALTER TABLE `apv_lembur`
  ADD KEY `id_lembur` (`id_lembur`);

--
-- Indexes for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  ADD PRIMARY KEY (`id_gapok`),
  ADD KEY `id_jab` (`id_jab`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jab`);

--
-- Indexes for table `lembur`
--
ALTER TABLE `lembur`
  ADD PRIMARY KEY (`id_lembur`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_peg`),
  ADD KEY `id_jab` (`id_jab`),
  ADD KEY `id_absensi` (`id_absensi`),
  ADD KEY `id_gapok` (`id_gapok`);

--
-- Indexes for table `pot_pegawai`
--
ALTER TABLE `pot_pegawai`
  ADD PRIMARY KEY (`id_potongan`);

--
-- Indexes for table `tb_gaji`
--
ALTER TABLE `tb_gaji`
  ADD KEY `id_peg` (`id_peg`),
  ADD KEY `id_absensi` (`id_absensi`),
  ADD KEY `id_jab` (`id_jab`),
  ADD KEY `id_gapok` (`id_gapok`,`id_lembur`,`id_potongan`),
  ADD KEY `id_potongan` (`id_potongan`),
  ADD KEY `id_lembur` (`id_lembur`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_peg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_lembur`) REFERENCES `lembur` (`id_lembur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apv_absensi`
--
ALTER TABLE `apv_absensi`
  ADD CONSTRAINT `apv_absensi_ibfk_1` FOREIGN KEY (`id_absensi`) REFERENCES `absensi` (`id_absensi`);

--
-- Constraints for table `apv_gapok`
--
ALTER TABLE `apv_gapok`
  ADD CONSTRAINT `apv_gapok_ibfk_1` FOREIGN KEY (`id_gapok`) REFERENCES `gaji_pokok` (`id_gapok`);

--
-- Constraints for table `apv_lembur`
--
ALTER TABLE `apv_lembur`
  ADD CONSTRAINT `apv_lembur_ibfk_1` FOREIGN KEY (`id_lembur`) REFERENCES `lembur` (`id_lembur`);

--
-- Constraints for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  ADD CONSTRAINT `gaji_pokok_ibfk_1` FOREIGN KEY (`id_jab`) REFERENCES `jabatan` (`id_jab`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_absensi`) REFERENCES `absensi` (`id_absensi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`id_gapok`) REFERENCES `gaji_pokok` (`id_gapok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_4` FOREIGN KEY (`id_jab`) REFERENCES `jabatan` (`id_jab`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_gaji`
--
ALTER TABLE `tb_gaji`
  ADD CONSTRAINT `tb_gaji_ibfk_1` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_gaji_ibfk_2` FOREIGN KEY (`id_jab`) REFERENCES `jabatan` (`id_jab`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_gaji_ibfk_3` FOREIGN KEY (`id_potongan`) REFERENCES `pot_pegawai` (`id_potongan`),
  ADD CONSTRAINT `tb_gaji_ibfk_4` FOREIGN KEY (`id_absensi`) REFERENCES `absensi` (`id_absensi`),
  ADD CONSTRAINT `tb_gaji_ibfk_5` FOREIGN KEY (`id_gapok`) REFERENCES `gaji_pokok` (`id_gapok`),
  ADD CONSTRAINT `tb_gaji_ibfk_6` FOREIGN KEY (`id_lembur`) REFERENCES `lembur` (`id_lembur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
