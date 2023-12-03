-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Sep 2023 pada 08.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `jumlah` varchar(250) NOT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `jenis_barang`, `jumlah`, `satuan`) VALUES
(14, 'BAR-1219001', 'buku', 'Alat Tulis', '33', 'Pack'),
(15, 'BAR-1219002', 'Pensil', 'Alat Tulis', '60', 'Pack'),
(16, 'BAR-1219003', 'Nutrisari', 'Minuman', '57', 'Unit'),
(25, 'BAR-0723004', 'Kertas HVS 70 Gram Uk. Kwarto', 'ATK', '0', 'PCS'),
(28, 'TRM-0723005', 'Hvs A4', 'ATK', '0', 'PCS'),
(29, 'TRM-0723006', 'Printer Epson L11100', 'ATK', '0', 'Unit'),
(30, 'TRM-0723007', 'Anak Cuter', 'ATK', '1', 'PCS'),
(31, 'TRM-0723008', 'Baterai A2', 'ATK', '0', 'PCS'),
(36, 'TRM-0723011', 'Printer Epson L11100', 'Makanan', '2', 'PCS'),
(37, 'TRM-0723012', 'Le mineral', 'Minuman', '8', 'Pack'),
(38, 'TRM-0723013', 'aqua', 'Minuman', '32', 'Unit'),
(39, 'TRM-0723014', 'Kertas Foto', 'ATK', '1', 'Pack');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id`, `id_transaksi`, `tanggal`, `kode_barang`, `nama_barang`, `jumlah`, `tujuan`, `satuan`) VALUES
(3, 'TRK-1219001', '2019-12-11', 'BAR-1219001', 'buku', '200', 'Tata Usaha ', 'Pack'),
(4, 'TRK-1219002', '2019-12-11', 'BAR-1219002', 'Pensil', '19', 'tata usaha ', 'Pack'),
(5, 'TRK-1219003', '2019-12-11', 'BAR-1219003', 'Nutrisari', '2', 'tata usaha ', 'PCS'),
(6, 'TRK-0723004', '2023-07-27', 'BAR-0723004', 'Kertas HVS 70 Gram Uk', '2', 'tata usaha ', 'PCS'),
(7, 'TRK-0723004', '2023-07-27', 'BAR-0723004', 'Kertas HVS 70 Gram Uk', '2', 'tata usaha ', 'PCS'),
(8, 'TRM-0723005', '2023-07-27', 'BAR-0723004', 'Kertas HVS 70 Gram Uk', '2', 'tata usaha ', 'PCS'),
(9, 'TRM-0723010', '2023-07-28', 'TRM-0723012', 'Le mineral', '2', 'tata usaha ', 'Pack'),
(10, 'TRM-0723011', '2023-07-28', 'TRM-0723012', 'Le mineral', '2', 'tata usaha ', 'Pack'),
(11, 'TRM-0723012', '2023-07-28', 'TRM-0723011', 'Printer Epson L11100', '1', 'tata usaha ', 'Unit'),
(12, 'TRM-0723013', '2023-07-28', 'TRM-0723014', 'Kertas Foto', '1', 'tata usaha ', 'Pack');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id` int(11) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id`, `id_transaksi`, `tanggal`, `kode_barang`, `nama_barang`, `pengirim`, `jumlah`, `satuan`) VALUES
(20, 'TRM-1219001', '2019-12-10', 'BAR-1219001', 'buku', 'Cv Amazon multi jasa', '10', 'Pack'),
(21, 'TRM-1219002', '2019-12-11', 'BAR-1219003', 'Nutrisari', 'Cv Amazon multi jasa', '50', 'PCS'),
(35, 'TRM-0723004', '2023-07-14', 'BAR-0723004', 'Kertas HVS 70 Gram Uk', 'Cv Amazon multi jasa', '1', 'PCS'),
(36, 'TRM-0723005', '2023-07-21', 'BAR-0723004', 'Kertas HVS 70 Gram Uk', 'Cv Amazon multi jasa', '1', 'PCS'),
(37, 'TRM-0723006', '2023-07-28', 'TRM-0723010', 'Le mineral', 'Cv Amazon multi jasa', '12', 'Pack'),
(38, 'TRM-0723007', '2023-07-24', 'TRM-0723010', 'Le mineral', 'Cv Amazon multi jasa', '12', 'Pack'),
(39, 'TRM-0723008', '2023-07-12', 'TRM-0723010', 'Buku Polio Besar', 'Cv Amazon multi jasa', '1', 'Pack'),
(40, 'TRM-0723009', '2023-07-13', 'TRM-0723010', 'Le mineral', 'Cv Amazon multi jasa', '12', 'Pack'),
(41, 'TRM-0723010', '2023-07-28', 'TRM-0723012', 'Le mineral', 'Cv Amazon multi jasa', '12', 'Pack'),
(42, 'TRM-0723010', '2023-07-13', 'TRM-0723013', 'aqua', 'Cv Amazon multi jasa', '32', 'Pack'),
(43, 'TRM-0723011', '2023-07-28', 'TRM-0723011', 'Printer Epson L11100', 'Cv Amazon multi jasa', '2', 'Unit'),
(44, 'TRM-0723012', '2023-07-28', 'TRM-0723011', 'Printer Epson L11100', 'Cv Amazon multi jasa', '1', 'Unit'),
(46, 'TRM-0723014', '2023-07-28', 'TRM-0723014', 'Kertas Foto', 'Cv Amazon multi jasa', '2', 'Pack');

--
-- Trigger `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `barang_masuk` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET jumlah = jumlah+new.jumlah
    WHERE kode_barang=new.kode_barang;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES
(5, 'Makanan'),
(6, 'Minuman'),
(12, 'ATK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id`, `satuan`) VALUES
(5, 'Unit'),
(7, 'PCS'),
(8, 'Pack'),
(9, 'Kg'),
(12, 'rol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id` int(100) NOT NULL,
  `kode_supplier` varchar(100) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_supplier`
--

INSERT INTO `tb_supplier` (`id`, `kode_supplier`, `nama_supplier`, `alamat`, `telepon`) VALUES
(10, 'SUP-1219001', 'Cv Amazon multi jasa', 'Jl.Sudirman Dumai', '082146982011'),
(11, 'SUP-1219002', 'Cv Amazon multi jasa', 'Jl.Sudirman Dumai', '082146982011'),
(12, 'SUP-1219003', 'Cv Amazon multi jasa', 'Jl.Sudirman Dumai ', '082146982011');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(25) NOT NULL DEFAULT 'member',
  `foto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nik`, `nama`, `alamat`, `telepon`, `username`, `password`, `level`, `foto`) VALUES
(29, '19810716 2', 'HENDRO YUDINATA, A.Md.', 'Jl.Kelakap Tujuh ', '082169473004', 'Admin', '$2y$10$ldK4uP6UwDPHJJ.zpEpQGuQM2NKRYjj56mKoKoZ3iAiRvL4Oh38hK', 'admin', 'Profil Hendro.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
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
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
