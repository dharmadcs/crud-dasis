-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 11:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kesiswaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmpt_Lahir` varchar(50) NOT NULL,
  `tgl_Lahir` date NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan') NOT NULL,
  `kelas` enum('X','XI','XII') NOT NULL,
  `jurusan` enum('Teknik Jaringan Akses','Teknik Komputer dan Jaringan','Multimedia','Rekayasa Perangkat Lunak') NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `tmpt_Lahir`, `tgl_Lahir`, `jekel`, `kelas`, `jurusan`, `email`, `gambar`) VALUES
('20190001', 'Ade Aizi Zahra', 'Tanggerang', '2003-02-14', 'Perempuan', 'XII', 'Multimedia', 'adezhar@gmail.com', '62cfc9d148781.jpg'),
('20190002', 'Ari Anggara', 'Jakarta', '2003-12-31', 'Laki - Laki', 'XII', 'Teknik Komputer dan Jaringan', 'arianggara13@gmail.com', '62cfc9c75f762.jpg'),
('20190003', 'Aruf Syarifullah', 'Lampung', '2003-12-31', 'Laki - Laki', 'XI', 'Teknik Komputer dan Jaringan', 'arifsyari13@gmail.com', '62cfc9bd97583.jpg'),
('20190004', 'Asril Fajar', 'Temanggung', '2003-02-02', 'Laki - Laki', 'XII', 'Teknik Jaringan Akses', 'asril2345@gmail.com', '62cfc9b27b149.jpg'),
('20200004', 'David Husein', 'Balikpapan', '2004-02-24', 'Laki - Laki', 'XI', 'Rekayasa Perangkat Lunak', 'husein232@gmail.com', '62cfc997bee11.jpg'),
('20210012', 'Desi Rahmawaty', 'Semarang', '2005-03-04', 'Perempuan', 'X', 'Rekayasa Perangkat Lunak', 'desirahma@gmail.com', '62cfc97d3032d.jpg'),
('20200024', 'Diah Ayu', 'Mentang Atas', '2004-04-06', 'Perempuan', 'XI', 'Multimedia', 'diayau234@gmail.com', '62cfc98ddb26a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'adm', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
