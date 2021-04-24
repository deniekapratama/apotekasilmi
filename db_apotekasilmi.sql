-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Apr 2021 pada 18.50
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apotekasilmi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `month`
--

CREATE TABLE `month` (
  `month_num` int(2) NOT NULL,
  `month_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `month`
--

INSERT INTO `month` (`month_num`, `month_name`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_cat`
--

CREATE TABLE `table_cat` (
  `id_kat` int(3) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `des_kat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `table_cat`
--

INSERT INTO `table_cat` (`id_kat`, `nama_kategori`, `des_kat`) VALUES
(201, 'Anti Radang', 'Melegakan peradangan'),
(207, 'Antioksidan', 'Mencegah penuaan dini'),
(208, 'Anti Depresan', 'Mengurangi depresi'),
(209, 'Vitamin', 'Suplemen'),
(216, 'Stimulan', 'Menstimulasi hewan'),
(217, 'Antibiotik', 'bakteriostatik'),
(222, 'Hemolitika', 'Menghentikan pendarahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_invoice`
--

CREATE TABLE `table_invoice` (
  `id_tagihan` int(5) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `banyak` int(3) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `nama_pembeli` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `table_invoice`
--

INSERT INTO `table_invoice` (`id_tagihan`, `ref`, `nama_obat`, `harga_jual`, `banyak`, `subtotal`, `nama_pembeli`, `tgl_beli`, `grandtotal`) VALUES
(130, 'qIUhCTiefr', 'Paramex', 3000, 3, 9000, 'Kabayan', '2021-04-24', 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_med`
--

CREATE TABLE `table_med` (
  `id_obat` int(4) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `penyimpanan` varchar(30) NOT NULL,
  `stok` int(3) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `kedaluwarsa` date NOT NULL,
  `des_obat` text NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `table_med`
--

INSERT INTO `table_med` (`id_obat`, `nama_obat`, `penyimpanan`, `stok`, `unit`, `nama_kategori`, `kedaluwarsa`, `des_obat`, `harga_beli`, `harga_jual`, `nama_pemasok`, `gambar`) VALUES
(1018, 'Adrome', 'Gudang', 6, 'Kapsul', 'Stimulan', '2021-04-30', 'Tidak untuk kucing', 12000, 15000, 'Kenanga Apotek', ''),
(1037, 'Paracetamol', 'Rak 1', 220, 'Kapsul', 'Anti Depresan', '2022-11-01', '', 200000, 230000, 'Kimia Farma', ''),
(1038, 'Paramex', 'Rak 3', 30, 'Tablet', 'Hemolitika', '2021-06-17', '', 2000, 3000, 'Bina Jaya Apotek', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_purchase`
--

CREATE TABLE `table_purchase` (
  `id_pembelian` int(5) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `banyak` int(3) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `nama_pemasok` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `table_purchase`
--

INSERT INTO `table_purchase` (`id_pembelian`, `ref`, `nama_obat`, `harga_beli`, `banyak`, `subtotal`, `nama_pemasok`, `tgl_beli`, `grandtotal`) VALUES
(27, 'OwACktSiki', 'Paramex', 2000, 10, 20000, 'Bina Jaya Apotek', '2021-04-24', 20000),
(28, 'yhgsSdtyw2', 'Paracetamol', 200000, 20, 4000000, 'Kimia Farma', '2021-04-24', 4000000),
(29, 'OtUDyTzVHx', 'Paramex', 2000, 20, 40000, 'Bina Jaya Apotek', '2021-03-01', 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_sup`
--

CREATE TABLE `table_sup` (
  `id_pem` int(3) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `table_sup`
--

INSERT INTO `table_sup` (`id_pem`, `nama_pemasok`, `alamat`, `telepon`) VALUES
(101, 'Bina Jaya Apotek', 'Jalan Kaliurang KM 7', '089693330253'),
(103, 'Kimia Farma', 'Jalan Kaliurang', '02574555'),
(104, 'Tina Farma', 'Jalan Kaliurang', '08775544'),
(105, 'Kenanga Apotek', 'Jalan Magelang', '08965555'),
(108, 'Surya Farmasi', 'Jalan Magelang KM 9', '08546677790');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_unit`
--

CREATE TABLE `table_unit` (
  `id_unit` int(2) NOT NULL,
  `unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `table_unit`
--

INSERT INTO `table_unit` (`id_unit`, `unit`) VALUES
(1, 'Kapsul'),
(2, 'Semprot'),
(3, 'Sirup'),
(4, 'Tablet');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_num`);

--
-- Indeks untuk tabel `table_cat`
--
ALTER TABLE `table_cat`
  ADD PRIMARY KEY (`id_kat`),
  ADD UNIQUE KEY `kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `table_invoice`
--
ALTER TABLE `table_invoice`
  ADD PRIMARY KEY (`id_tagihan`);

--
-- Indeks untuk tabel `table_med`
--
ALTER TABLE `table_med`
  ADD PRIMARY KEY (`id_obat`),
  ADD UNIQUE KEY `nama_obat` (`nama_obat`),
  ADD KEY `med_unit` (`unit`),
  ADD KEY `med_cat` (`nama_kategori`),
  ADD KEY `med_sup` (`nama_pemasok`);

--
-- Indeks untuk tabel `table_purchase`
--
ALTER TABLE `table_purchase`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `table_sup`
--
ALTER TABLE `table_sup`
  ADD PRIMARY KEY (`id_pem`),
  ADD UNIQUE KEY `nama_supplier` (`nama_pemasok`);

--
-- Indeks untuk tabel `table_unit`
--
ALTER TABLE `table_unit`
  ADD PRIMARY KEY (`id_unit`),
  ADD UNIQUE KEY `unit` (`unit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `table_cat`
--
ALTER TABLE `table_cat`
  MODIFY `id_kat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT untuk tabel `table_invoice`
--
ALTER TABLE `table_invoice`
  MODIFY `id_tagihan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT untuk tabel `table_med`
--
ALTER TABLE `table_med`
  MODIFY `id_obat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1039;

--
-- AUTO_INCREMENT untuk tabel `table_purchase`
--
ALTER TABLE `table_purchase`
  MODIFY `id_pembelian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `table_sup`
--
ALTER TABLE `table_sup`
  MODIFY `id_pem` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `table_unit`
--
ALTER TABLE `table_unit`
  MODIFY `id_unit` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_med`
--
ALTER TABLE `table_med`
  ADD CONSTRAINT `med_cat` FOREIGN KEY (`nama_kategori`) REFERENCES `table_cat` (`nama_kategori`) ON UPDATE CASCADE,
  ADD CONSTRAINT `med_sup` FOREIGN KEY (`nama_pemasok`) REFERENCES `table_sup` (`nama_pemasok`) ON UPDATE CASCADE,
  ADD CONSTRAINT `med_unit` FOREIGN KEY (`unit`) REFERENCES `table_unit` (`unit`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
