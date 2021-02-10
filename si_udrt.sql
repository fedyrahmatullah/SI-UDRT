-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2018 pada 14.24
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_udrt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_masuk`
--

CREATE TABLE `detail_masuk` (
  `id_detail_masuk` int(11) NOT NULL,
  `id_masuk` varchar(6) NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `id_supplayer` varchar(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `harga_diskon` int(7) NOT NULL,
  `qty` int(5) NOT NULL,
  `sub_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_masuk`
--

INSERT INTO `detail_masuk` (`id_detail_masuk`, `id_masuk`, `id_barang`, `id_supplayer`, `nama_barang`, `harga_barang`, `harga_diskon`, `qty`, `sub_total`) VALUES
(1, 'BM0001', 'B0001', 'S0003', 'Urea', 350000, 10000, 5, 1700000),
(2, 'M0001', 'B0001', 'S0003', 'Urea', 300000, 10000, 5, 1450000),
(3, 'M0002', 'B0001', 'S0003', 'Urea', 300000, 10000, 2, 580000),
(4, 'M0003', 'B0001', 'S0003', 'Urea', 30000, 10000, 1, 20000),
(5, 'M0004', 'B0001', 'S0003', 'Urea', 300000, 10000, 5, 1450000),
(6, 'M0005', 'B0001', 'S0003', 'Urea', 300000, 10000, 1, 290000),
(8, 'M0006', 'B0002', 'S0002', 'Phonska Plus 25kg', 200000, 10000, 10, 1900000),
(9, 'M0007', 'B0002', 'S0002', 'Phonska Plus 25kg', 240000, 0, 10, 2400000),
(10, 'M0007', 'B0001', 'S0003', 'Urea', 370000, 0, 11, 4070000),
(11, 'M0008', 'B0010', 'S0001', 'Benih Padi Ciherang Janger 5KG', 123000, 0, 2, 246000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_retur`
--

CREATE TABLE `detail_retur` (
  `id_detail_retur` int(11) NOT NULL,
  `id_retur` varchar(6) NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `id_supplayer` varchar(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_retur`
--

INSERT INTO `detail_retur` (`id_detail_retur`, `id_retur`, `id_barang`, `id_supplayer`, `nama_barang`, `qty`) VALUES
(14, 'R0001', 'B0006', 'S0005', 'Agritama NPK 7,49%', 8),
(15, 'R0001', 'B0008', 'S0005', 'Agritama NPK 16,17%', 5),
(16, 'R0002', 'B0007', 'S0005', 'Agritama NPK 19,13%', 10),
(17, 'R0002', 'B0008', 'S0005', 'Agritama NPK 16,17%', 10),
(18, 'R0003', 'B0006', 'S0005', 'Agritama NPK 7,49%', 10),
(23, 'R0004', 'B0005', 'S0005', 'Agritama TSP P205 46%', 10),
(24, 'R0005', 'B0009', 'S0005', 'Agritama NPK 15,12%', 10),
(25, 'R0006', 'B0009', 'S0005', 'Agritama NPK 15,12%', 10),
(26, 'R0007', 'B0006', 'S0005', 'Agritama NPK 7,49%', 10),
(36, 'R0008', 'B0010', 'S0001', 'Benih Padi Ciherang Janger 5KG', 15),
(37, 'R0009', 'B0004', 'S0004', 'Aginta NPK 20%', 2),
(38, 'R0010', 'B0010', 'S0001', 'Benih Padi Ciherang Janger 5KG', 3),
(39, 'R0011', 'B0001', 'S0003', 'Urea', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` varchar(6) NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `harga_diskon` int(7) NOT NULL,
  `qty` int(5) NOT NULL,
  `sub_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_barang`, `nama_barang`, `harga_barang`, `harga_diskon`, `qty`, `sub_total`) VALUES
(89, 'T0001', 'B0001', 'Urea', 375000, 10000, 1, 365000),
(90, 'T0002', 'B0002', 'Phonska Plus 25kg', 250000, 5000, 5, 1225000),
(91, 'T0003', 'B0001', 'Urea', 375000, 10000, 5, 1825000),
(92, 'T0003', 'B0001', 'Urea', 375000, 10000, 5, 1825000),
(93, 'T0004', 'B0001', 'Urea', 375000, 10000, 5, 1825000),
(98, 'T0005', 'B0001', 'Urea', 375000, 0, 2, 750000),
(99, 'T0006', 'B0003', 'Aginta NPK 16% ', 335000, 0, 2, 670000),
(100, 'T0006', 'B0008', 'Agritama NPK 16,17%', 350000, 0, 6, 2100000),
(101, 'T0006', 'B0001', 'Urea', 375000, 0, 87, 32625000),
(102, 'T0007', 'B0005', 'Agritama TSP P205 46%', 300000, 0, 1, 300000),
(103, 'T0007', 'B0007', 'Agritama NPK 19,13%', 355000, 0, 3, 1065000),
(104, 'T0008', 'B0007', 'Agritama NPK 19,13%', 355000, 0, 1, 355000),
(105, 'T0009', 'B0001', 'Urea', 375000, 0, 12, 4500000),
(106, 'T0010', 'B0007', 'Agritama NPK 19,13%', 355000, 0, 2, 710000),
(107, 'T0010', 'B0006', 'Agritama NPK 7,49%', 325000, 0, 1, 325000),
(108, 'T0011', 'B0003', 'Aginta NPK 16% ', 335000, 0, 5, 1675000),
(109, 'T0011', 'B0001', 'Urea', 375000, 10000, 12, 4380000),
(110, 'T0012', 'B0001', 'Urea', 375000, 0, 12, 4500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `id_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `harga_diskon` int(7) NOT NULL,
  `stok_barang` int(3) NOT NULL,
  `supplayer_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`id_barang`, `nama_barang`, `harga_barang`, `harga_diskon`, `stok_barang`, `supplayer_barang`) VALUES
('B0001', 'Urea', 375000, 10000, 362, 'CV. ARTA GUNA'),
('B0002', 'Phonska Plus 25kg', 250000, 5000, 500, 'Distributor Pupuk Pt Petrokimia Gresik'),
('B0003', 'Aginta NPK 16% ', 335000, 0, 513, 'PT. Agro Indah Permata'),
('B0004', 'Aginta NPK 20%', 350000, 0, 478, 'PT. Agro Indah Permata'),
('B0005', 'Agritama TSP P205 46%', 300000, 0, 449, 'PT. Visi Karya Agritama'),
('B0006', 'Agritama NPK 7,49%', 325000, 3500, 459, 'PT. Visi Karya Agritama'),
('B0007', 'Agritama NPK 19,13%', 355000, 7000, 164, 'PT. Visi Karya Agritama'),
('B0008', 'Agritama NPK 16,17%', 350000, 0, 184, 'PT. Visi Karya Agritama'),
('B0009', 'Agritama NPK 15,12%', 340000, 12000, 180, 'PT. Visi Karya Agritama'),
('B0010', 'Benih Padi Ciherang Janger 5KG', 155000, 0, 165, 'PT.Karisma Indo Agro Universal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `id_karyawan` varchar(5) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `hp_karyawan` varchar(14) NOT NULL,
  `alamat_karyawan` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`id_karyawan`, `nama_karyawan`, `hp_karyawan`, `alamat_karyawan`, `username`, `password`) VALUES
('A0001', 'Ady Bagus Sugih Susanto', '082232567731', 'Banyuwangi', 'dragneel', 'wibu'),
('A0002', 'Dragneel', '6767676', 'Banyuwangi', 're', '12345'),
('A0003', 'Fedy Rahmatullah', '081335211768', 'Jember', 'fedyr', '0000'),
('A0007', 'Natsu', '089765657997', 'Jl. Srikoyo 3 ', 'nats', 'xxxx'),
('A0008', 'Zulfian', '081249791507', 'Jember', 'fian', 'fian'),
('A0009', 'Moch Aliffi Akbar', '089776554331', 'Jl.Kacapiring 1 no.48', 'aliffi', 'aliffi'),
('A0010', 'Adi', '085234383120', 'Surabaya', 'lukito', 'lukito');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kelompok`
--

CREATE TABLE `tabel_kelompok` (
  `id_kelompok` varchar(5) NOT NULL,
  `nama_kelompok` varchar(20) NOT NULL,
  `hp_kelompok` varchar(14) NOT NULL,
  `alamat_kelompok` varchar(30) NOT NULL,
  `ket_kelompok` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_kelompok`
--

INSERT INTO `tabel_kelompok` (`id_kelompok`, `nama_kelompok`, `hp_kelompok`, `alamat_kelompok`, `ket_kelompok`) VALUES
('K0001', 'HIPPA', '085258092935', 'Banyuwangi', 'Himpunan Petani Pemakai Air'),
('K0002', 'Sumber Jaya', '695042', 'Banyumas', 'kelompok tani dari banyumas'),
('K0003', 'tani makmur', '332211', 'patrang', 'kelompok petani'),
('K0004', 'petani makmur', '67896543', 'mangli', 'petani dari mangli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_login`
--

CREATE TABLE `tabel_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_login`
--

INSERT INTO `tabel_login` (`id_login`, `username`) VALUES
(10, 'fedyr'),
(11, 'fedyr'),
(12, 'fedyr'),
(13, 'fedyr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_masuk`
--

CREATE TABLE `tabel_masuk` (
  `id_masuk` varchar(6) NOT NULL,
  `tgl_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_supplayer` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_masuk`
--

INSERT INTO `tabel_masuk` (`id_masuk`, `tgl_masuk`, `nama_supplayer`, `username`) VALUES
('M0001', '2018-06-24 10:00:42', 'CV. Arta Guna', 'dragneel'),
('M0002', '2018-06-24 10:02:21', 'CV. Arta Guna', 'dragneel'),
('M0003', '2018-06-24 10:03:15', 'CV. Arta Guna', 'dragneel'),
('M0004', '2018-06-24 10:04:54', 'CV. Arta Guna', 'dragneel'),
('M0005', '2018-06-24 10:05:48', 'CV. Arta Guna', 'dragneel'),
('M0006', '2018-06-24 10:07:36', 'Distributor Pupuk Pt Petrokimia Gresik', 'dragneel'),
('M0007', '2018-07-09 13:34:16', 'CV. Arta Guna', 'fedyr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_retur`
--

CREATE TABLE `tabel_retur` (
  `id_retur` varchar(6) NOT NULL,
  `tgl_retur` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_supplayer` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_retur`
--

INSERT INTO `tabel_retur` (`id_retur`, `tgl_retur`, `nama_supplayer`, `username`) VALUES
('R0001', '2018-06-26 17:50:48', 'PT. Visi Karya Agritama', 're'),
('R0002', '2018-06-26 17:52:24', 'PT. Visi Karya Agritama', 're'),
('R0003', '2018-06-26 17:53:21', 'PT. Visi Karya Agritama', 're'),
('R0004', '2018-06-26 18:14:24', 'PT. Visi Karya Agritama', 're'),
('R0005', '2018-06-26 18:17:23', 'PT. Visi Karya Agritama', 're'),
('R0006', '2018-06-26 18:23:32', 'PT. Visi Karya Agritama', 're'),
('R0007', '2018-06-26 18:24:59', 'PT. Visi Karya Agritama', 're'),
('R0008', '2018-06-27 02:51:44', 'PT.Karisma Indo Agro Universal', 're'),
('R0009', '2018-07-07 14:03:38', 'PT. Agro Indah Permata', 'fedyr'),
('R0010', '2018-07-10 04:47:59', 'PT.Karisma Indo Agro Universal', 'fian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_supplayer`
--

CREATE TABLE `tabel_supplayer` (
  `id_supplayer` varchar(5) NOT NULL,
  `nama_supplayer` varchar(50) NOT NULL,
  `hp_supplayer` varchar(14) NOT NULL,
  `alamat_supplayer` varchar(50) NOT NULL,
  `ket_supplayer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_supplayer`
--

INSERT INTO `tabel_supplayer` (`id_supplayer`, `nama_supplayer`, `hp_supplayer`, `alamat_supplayer`, `ket_supplayer`) VALUES
('S0001', 'PT.Karisma Indo Agro Universal', '(0331) 483333', 'Jl. Semeru No. 89 Jember', 'PT.Karisma Indo Agro Universal adalah perusahaan Distributor Pestisida, Benih, Pupuk dan Sarana Pertanian berskala nasional'),
('S0002', 'Distributor Pupuk Pt Petrokimia Gresik', '0823-3761-0150', 'Tanjung Rejo, Wuluhan, Jember', 'distributor pupuk gresik'),
('S0003', 'CV. Arta Guna', '(0331) 423890', 'JL. HOS Cokroaminoto, No. 4, Jember', 'Distributor'),
('S0004', 'PT. Agro Indah Permata', '6285 6788 0501', 'Jln. K. H. Abdullah Syafiie No.12a', 'Distributor Jakarta'),
('S0005', 'PT. Visi Karya Agritama', '(021) 78849277', 'Jl. Warung Jati Barat No.14A', 'Distributor Jakarta Selatan'),
('S0006', 'PT. Tani Sejahtera', '081332423123', 'Jl. SIlosanen 14 Jember', 'Distributor pupuk Kopi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `id_transaksi` varchar(6) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_kelompok` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`id_transaksi`, `tgl_transaksi`, `nama_kelompok`, `username`, `jumlah_bayar`) VALUES
('T0001', '2018-06-23 17:34:49', 'HIPPA', 'dragneel', 400000),
('T0002', '2018-06-23 17:34:49', 'HIPPA', 'dragneel', 1500000),
('T0003', '2018-06-24 08:16:22', 'HIPPA', 'dragneel', 4000000),
('T0004', '2018-06-24 08:18:38', 'HIPPA', 'dragneel', 2000000),
('T0005', '2018-06-26 05:17:01', 'HIPPA', 'dragneel', 1000000),
('T0006', '2018-07-06 11:15:11', '-', 'fedyr', 67865765),
('T0007', '2018-07-07 14:00:15', '-', 'fedyr', 567876546),
('T0008', '2018-07-09 14:18:24', '-', 'dragneel', 1000000),
('T0009', '2018-07-09 14:23:56', '-', 'fedyr', 6000000),
('T0010', '2018-07-10 04:24:13', '-', 'fedyr', 2000000),
('T0011', '2018-07-10 04:46:07', 'Sumber Jaya', 'fian', 7000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD PRIMARY KEY (`id_detail_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_supplayer` (`id_supplayer`),
  ADD KEY `id_masuk` (`id_masuk`);

--
-- Indeks untuk tabel `detail_retur`
--
ALTER TABLE `detail_retur`
  ADD PRIMARY KEY (`id_detail_retur`),
  ADD KEY `id_retur` (`id_retur`,`id_barang`),
  ADD KEY `id_supplayer` (`id_supplayer`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `tabel_kelompok`
--
ALTER TABLE `tabel_kelompok`
  ADD PRIMARY KEY (`id_kelompok`),
  ADD KEY `nama_kelompok` (`nama_kelompok`);

--
-- Indeks untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `tabel_masuk`
--
ALTER TABLE `tabel_masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indeks untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indeks untuk tabel `tabel_supplayer`
--
ALTER TABLE `tabel_supplayer`
  ADD PRIMARY KEY (`id_supplayer`),
  ADD KEY `nama_supplayer` (`nama_supplayer`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  MODIFY `id_detail_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `detail_retur`
--
ALTER TABLE `detail_retur`
  MODIFY `id_detail_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD CONSTRAINT `detail_masuk_ibfk_1` FOREIGN KEY (`id_supplayer`) REFERENCES `tabel_supplayer` (`id_supplayer`),
  ADD CONSTRAINT `detail_masuk_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tabel_barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `detail_retur`
--
ALTER TABLE `detail_retur`
  ADD CONSTRAINT `detail_retur_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tabel_barang` (`id_barang`),
  ADD CONSTRAINT `detail_retur_ibfk_2` FOREIGN KEY (`id_supplayer`) REFERENCES `tabel_supplayer` (`id_supplayer`);

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tabel_barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `tabel_masuk`
--
ALTER TABLE `tabel_masuk`
  ADD CONSTRAINT `tabel_masuk_ibfk_1` FOREIGN KEY (`id_masuk`) REFERENCES `detail_masuk` (`id_masuk`);

--
-- Ketidakleluasaan untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  ADD CONSTRAINT `tabel_retur_ibfk_1` FOREIGN KEY (`id_retur`) REFERENCES `detail_retur` (`id_retur`);

--
-- Ketidakleluasaan untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD CONSTRAINT `tabel_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `detail_transaksi` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
