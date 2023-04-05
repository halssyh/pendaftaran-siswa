-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 06:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al-ishlah`
--

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kd_petugas` varchar(10) NOT NULL,
  `nm_petugas` varchar(25) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kd_petugas`, `nm_petugas`, `user`, `pass`) VALUES
('PTGS-01', 'Al Buckhary', 'admin', '1234'),
('PTGS-02', 'ArRumy', 'araa', '12ara'),
('PTGS-03', 'Al Batanny', 'alba', '41alaba'),
('PTGS-04', 'Alba', 'elba', 'elba');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `kd_bayaran` varchar(10) NOT NULL,
  `tgl_bayaran` date NOT NULL,
  `kd_siswa` varchar(10) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `kd_bayar` varchar(10) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bayar`
--

INSERT INTO `tb_bayar` (`kd_bayaran`, `tgl_bayaran`, `kd_siswa`, `nm_siswa`, `alamat`, `telp`, `kd_bayar`, `kategori`, `jumlah`, `total`) VALUES
('PSB-01', '2022-08-29', '1114118', 'q', 'Laki-Laki', 'a', 'MIA-TR01', 'SPP', '250000', '250000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `kd_guru` varchar(10) NOT NULL,
  `nm_guru` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`kd_guru`, `nm_guru`, `jabatan`, `alamat`, `telp`) VALUES
('111.111', 'Nuraida', 'Guru Bahasa Indonesia', 'Bekasi', '085272211321'),
('111.112', 'Umdah', 'Guru Agama', 'Jatiraden', '0856272825632'),
('111.113', 'Kamto', 'Guru PPKN', 'Bekasi', '0813286191731');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_pembayaran`
--

CREATE TABLE `tb_jenis_pembayaran` (
  `kd_bayar` varchar(10) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `jumlah` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jenis_pembayaran`
--

INSERT INTO `tb_jenis_pembayaran` (`kd_bayar`, `kategori`, `jumlah`) VALUES
('MIA-TR01', 'SPP', '250000'),
('MIA-TR02', 'UANG GEDUNG', '2500000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kd_kelas` varchar(6) NOT NULL,
  `nm_kelas` varchar(25) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`kd_kelas`, `nm_kelas`, `kategori`) VALUES
('KLS-01', 'Kelas A', 'Semangka'),
('KLS-02', 'Kelas B', 'Melon'),
('KLS-03', 'Kelas C', 'Manggis'),
('KLS-04', 'Kelas D', 'Jeruk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas_siswa`
--

CREATE TABLE `tb_kelas_siswa` (
  `kd_kelas_siswa` varchar(10) NOT NULL,
  `kd_kelas` varchar(10) NOT NULL,
  `nm_kelas` varchar(25) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `kd_guru` varchar(10) NOT NULL,
  `nm_guru` varchar(25) NOT NULL,
  `kd_siswa` varchar(10) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `jk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas_siswa`
--

INSERT INTO `tb_kelas_siswa` (`kd_kelas_siswa`, `kd_kelas`, `nm_kelas`, `kategori`, `kd_guru`, `nm_guru`, `kd_siswa`, `nm_siswa`, `jk`) VALUES
('KL001', 'KLS-04', 'Kelas D', 'Jeruk', '111.111', 'Nuraida', '11121101', 'Husnul Khatimah', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelengkapan`
--

CREATE TABLE `tb_kelengkapan` (
  `kd_kelengkapan` varchar(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `kelengkapan` varchar(30) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `kd_siswa` varchar(10) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `jk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelengkapan`
--

INSERT INTO `tb_kelengkapan` (`kd_kelengkapan`, `jenis`, `kelengkapan`, `keterangan`, `kd_siswa`, `nm_siswa`, `jk`) VALUES
('ATR-01', 'SERAGAM', 'BAJU PRAMUKA', 'Diterima', '11121101', 'Husnul Khatimah', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `kd_pembayaran` varchar(15) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `kd_siswa` varchar(10) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `kd_bayar` varchar(10) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `total` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`kd_pembayaran`, `tgl_pembayaran`, `kd_siswa`, `nm_siswa`, `alamat`, `telp`, `kd_bayar`, `kategori`, `jumlah`, `total`) VALUES
('PSB-01', '2022-09-01', '11121101', 'Husnul Khatimah', 'Kota Bekasi', '0813241852451', 'MIA-TR01', 'SPP', '250000', 2750000),
('PSB-01', '2022-09-01', '11121101', 'Husnul Khatimah', 'Kota Bekasi', '0813241852451', 'MIA-TR02', 'UANG GEDUNG', '2500000', 2750000),
('PSB-02', '2022-09-01', '11121102', 'Raditya Rasyah', 'Jakarta Timur', '08137818912', 'MIA-TR01', 'SPP', '250000', 250000),
('PSB-03', '2022-09-01', '11121103', 'Gustiya Nigrat', 'Kota Bekasi', '08581271581', 'MIA-TR01', 'SPP', '250000', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `kd_pendaftaran` varchar(10) NOT NULL,
  `tgl_pendaftaran` varchar(20) NOT NULL,
  `thn_ajaran` varchar(15) NOT NULL,
  `kd_siswa` varchar(15) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` varchar(4) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `nm_ayah` varchar(25) NOT NULL,
  `pendidikan_ayah` varchar(10) NOT NULL,
  `pekerjaan_ayah` varchar(25) NOT NULL,
  `nm_ibu` varchar(25) NOT NULL,
  `pendidikan_ibu` varchar(10) NOT NULL,
  `pekerjaan_ibu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`kd_pendaftaran`, `tgl_pendaftaran`, `thn_ajaran`, `kd_siswa`, `nm_siswa`, `jk`, `tempat`, `tgl_lahir`, `usia`, `alamat`, `telp`, `nm_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `nm_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`) VALUES
('FORM-01', '01 September 2022', '2022 - 2023', '11121101', 'Husnul', 'Perempuan', 'Bekasi', '2016-09-03', '7', 'Kota Bekasi', '0813241852451', 'Buckhary', 'S3', 'BUMN', 'Mumtazh', 'S1', 'IRT'),
('FORM-02', '01 September 2022', '2022 - 2023', '11121102', 'Raditya Rasyah', 'Laki-Laki', 'Jakarta', '2016-12-05', '7', 'Jakarta Timur', '08137818912', 'Pasya', 'S2', 'PNS', 'Ami', 'SMA', 'IRT'),
('FORM-03', '01 September 2022', '2022 - 2023', '11121103', 'Gustiya Nigrat', 'Laki-Laki', 'Solo', '2016-09-03', '7', 'Kota Bekasi', '08581271581', 'Joko', 'D3', 'PNS', 'Mirna', 'SMA', 'IRT');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `kd_siswa` varchar(10) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` varchar(4) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `nm_ayah` varchar(25) NOT NULL,
  `pendidikan_ayah` varchar(10) NOT NULL,
  `pekerjaan_ayah` varchar(25) NOT NULL,
  `nm_ibu` varchar(25) NOT NULL,
  `pendidikan_ibu` varchar(10) NOT NULL,
  `pekerjaan_ibu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`kd_siswa`, `nm_siswa`, `jk`, `tempat`, `tgl_lahir`, `usia`, `alamat`, `telp`, `nm_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `nm_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`) VALUES
('11121101', 'Husnul Khatimah', 'Perempuan', 'Bekasi', '2016-09-03', '7', 'Kota Bekasi', '0813241852451', 'Buckhary', 'S3', 'BUMN', 'Mumtazh', 'S1', 'IRT'),
('11121102', 'Raditya Rasyah', 'Laki-Laki', 'Jakarta', '2016-12-05', '7', 'Jakarta Timur', '08137818912', 'Pasya', 'S2', 'PNS', 'Ami', 'SMA', 'IRT'),
('11121103', 'Gustiya Nigrat', 'Laki-Laki', 'Solo', '2016-09-03', '7', 'Kota Bekasi', '08581271581', 'Joko', 'D3', 'PNS', 'Mirna', 'SMP', 'IRT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`kd_guru`);

--
-- Indexes for table `tb_jenis_pembayaran`
--
ALTER TABLE `tb_jenis_pembayaran`
  ADD PRIMARY KEY (`kd_bayar`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tb_kelas_siswa`
--
ALTER TABLE `tb_kelas_siswa`
  ADD PRIMARY KEY (`kd_kelas_siswa`),
  ADD KEY `kd_kelas` (`kd_kelas`,`kd_siswa`),
  ADD KEY `kd_guru` (`kd_guru`);

--
-- Indexes for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`kd_pendaftaran`),
  ADD KEY `kd_siswa` (`kd_siswa`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`kd_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
