-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 02:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_makanan`
--

CREATE TABLE `detail_transaksi_makanan` (
  `id_detaikmakanan` int(10) NOT NULL,
  `id_transaksimakanan` int(10) NOT NULL,
  `id_menu` int(10) NOT NULL,
  `jumlah_makanan` int(10) NOT NULL,
  `tgl_belimakanan` date NOT NULL,
  `total_hargamakanan1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fitness`
--

CREATE TABLE `fitness` (
  `id_transaksifitness` int(10) NOT NULL,
  `id_tamu` int(10) NOT NULL,
  `lama_pakai` int(2) NOT NULL,
  `jml_orangfitness` int(5) NOT NULL,
  `tgl_fitness` date NOT NULL,
  `total_biayafitness` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_ballroom`
--

CREATE TABLE `jenis_ballroom` (
  `id_ballroom` int(10) NOT NULL,
  `jenis_ballroom` varchar(10) NOT NULL,
  `harga_ballroom` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `no_kamar` int(5) NOT NULL,
  `jenis_kamar` varchar(10) NOT NULL,
  `harga_kamar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`no_kamar`, `jenis_kamar`, `harga_kamar`) VALUES
(1, 'standart', 500000),
(2, 'delux', 800000),
(3, 'premium', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `kolam_renang`
--

CREATE TABLE `kolam_renang` (
  `id_transaksikolamrenang` int(11) NOT NULL,
  `id_tamu` int(10) NOT NULL,
  `jumlah_tiket` int(10) NOT NULL,
  `tgl_renang` date NOT NULL,
  `total_hargatiket` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_pegawai` int(10) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manu_makanan`
--

CREATE TABLE `manu_makanan` (
  `id_menu` int(10) NOT NULL,
  `nama_makanan` varchar(15) NOT NULL,
  `harga_makanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manu_makanan`
--

INSERT INTO `manu_makanan` (`id_menu`, `nama_makanan`, `harga_makanan`) VALUES
(1, 'lobster goreng', 100000),
(2, 'tahu goreng', 20000),
(3, 'nasi', 70000),
(29, 'ice tea', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `masa_pinjamballroom`
--

CREATE TABLE `masa_pinjamballroom` (
  `masa_pinjam` int(5) NOT NULL,
  `ket_masapinjam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(10) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `no_identitaspegawai` int(30) DEFAULT NULL,
  `nohp_pegawai` int(15) DEFAULT NULL,
  `alamat_pegawai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `no_identitaspegawai`, `nohp_pegawai`, `alamat_pegawai`) VALUES
(726, 'jojo', 997327334, 82743874, 'semarang');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(10) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `nohp_tamu` int(20) DEFAULT NULL,
  `no_identitastamu` int(20) NOT NULL,
  `umur` int(3) NOT NULL,
  `tgl_lahirtamu` date NOT NULL,
  `negara` varchar(20) NOT NULL,
  `alamat_tamu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `nohp_tamu`, `no_identitastamu`, `umur`, `tgl_lahirtamu`, `negara`, `alamat_tamu`) VALUES
(298, 'rizqia salsabila', 2147483647, 2147483647, 20, '0000-00-00', 'indonesia', 'mranggen'),
(384, 'baba', 857688908, 862376743, 40, '1970-07-23', 'malaysia', 'kuala lumpur'),
(490, 'joko', 2147483647, 32454544, 30, '1980-09-25', 'indonesia', 'jakarta'),
(934, 'salsa', 2147483647, 2873748, 25, '1985-04-19', 'korea', 'semarang');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_ballroom`
--

CREATE TABLE `transaksi_ballroom` (
  `id_transaksi_ballroom` int(10) NOT NULL,
  `id_tamu` int(10) NOT NULL,
  `id_ballroom` int(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `masa_pinjam` int(5) NOT NULL,
  `lama_pinjam` int(5) NOT NULL,
  `total_biayaballroom` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kamar`
--

CREATE TABLE `transaksi_kamar` (
  `id_transaksikamar` int(10) NOT NULL,
  `id_tamu` int(10) NOT NULL,
  `no_kamar` int(5) NOT NULL,
  `tgl_cekin` date NOT NULL,
  `tgl_cekout` date NOT NULL,
  `biaya_kamar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_makanan`
--

CREATE TABLE `transaksi_makanan` (
  `id_transaksimakanan` int(10) NOT NULL,
  `id_tamu` int(10) NOT NULL,
  `total_hargamakanan2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`),
  ADD UNIQUE KEY `id_tamu` (`id_tamu`);

--
-- Indexes for table `transaksi_kamar`
--
ALTER TABLE `transaksi_kamar`
  ADD PRIMARY KEY (`id_transaksikamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
