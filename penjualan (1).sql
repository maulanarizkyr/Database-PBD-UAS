-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2023 pada 10.45
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelbarang`
--

CREATE TABLE `tabelbarang` (
  `kode_barang` char(25) NOT NULL,
  `nama_barang` char(100) DEFAULT NULL,
  `id_jenis_barang` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `harga` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabelbarang`
--

INSERT INTO `tabelbarang` (`kode_barang`, `nama_barang`, `id_jenis_barang`, `id_supplier`, `harga`) VALUES
('00001', 'Mie Sedap', 1, 1, '2500.00'),
('00002', 'Pocari', 2, 1, '7500.00'),
('00003', 'Sabun Lifebouy', 3, 2, '4500.00'),
('00004', 'Sabun Sunlight', 3, 2, '10000.00'),
('00005', 'Beras Mawar Super', 4, 5, '13000.00'),
('00006', 'Keripik Tela', 6, 6, '9000.00'),
('00007', 'Mie Indomie', 1, 7, '5000.00'),
('00008', 'Kacang Atom Panda', 1, 1, '5000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelcustomer`
--

CREATE TABLE `tabelcustomer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` char(100) DEFAULT NULL,
  `alamat_customer` char(100) DEFAULT NULL,
  `telepon_customer` char(25) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabelcustomer`
--

INSERT INTO `tabelcustomer` (`id_customer`, `nama_customer`, `alamat_customer`, `telepon_customer`, `jenis_kelamin`) VALUES
(1, 'Kak Ros', 'Kuala Lumpur', '082371983817', 'P'),
(2, 'Maulana', 'Sleman', '081890767933', 'L'),
(3, 'Chika', 'Palembang', '089345177854', 'P'),
(4, 'Bagus', 'Bengkulu', '082347644098', 'L'),
(5, 'Nurul', 'Cirebon', '081556871239', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeljenisbarang`
--

CREATE TABLE `tabeljenisbarang` (
  `id_jenis_barang` int(11) NOT NULL,
  `nama_jenis_barang` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabeljenisbarang`
--

INSERT INTO `tabeljenisbarang` (`id_jenis_barang`, `nama_jenis_barang`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Sabun'),
(4, 'Sembako'),
(6, 'Camilan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelsupplier`
--

CREATE TABLE `tabelsupplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `no_telpon` char(12) DEFAULT NULL,
  `alamat_supplier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabelsupplier`
--

INSERT INTO `tabelsupplier` (`id_supplier`, `nama_supplier`, `no_telpon`, `alamat_supplier`) VALUES
(1, 'PT Prakarsa Alam Segar', '083457893420', 'Jl. Komp. PT. Bakr, RT.001/RW.024, Pejuang, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17131\r\n'),
(2, 'PT Amerta Indah Otsuka', '081799355194', 'Jl. Tentara Pelajar No.56-58, RT./ RW/RW.004/001, Bolon, Kec. Colomadu, Kabupaten Karanganyar, Jawa '),
(3, 'PT Unilever Indonesia Surabaya. Tbk.', '0318438297', 'Jl. Rungkut Industri IV No.5-11, Kutisari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60291\r\n'),
(4, 'Kacang Atom Putri Panda\r\n', '089526491300', 'Desa Tapan, Kec. Kedungwaru, Kab. Tulungagung'),
(5, 'PT Beras Tiga Mawar', '081343553027', 'Jl. Pampang Utama Nomor 27, Pampang, Kec. Panakkukang, Kota Makassar, Sulawesi Selatan 90233\r\n'),
(6, 'Criping Sembada', '08164897542', 'Banteran, Donoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581\r\n'),
(7, 'Indofood CBP', '083457266997', 'Jl. Ipda Tut Harsono No.50-52, Muja Muju, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeltransaksi`
--

CREATE TABLE `tabeltransaksi` (
  `kode_transaksi` char(25) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `kode_barang` char(100) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `keterangan` char(225) DEFAULT NULL,
  `jumlah_transaksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabeltransaksi`
--

INSERT INTO `tabeltransaksi` (`kode_transaksi`, `id_customer`, `kode_barang`, `tgl_transaksi`, `keterangan`, `jumlah_transaksi`) VALUES
('T0001', 1, '00005', '2023-07-14', 'Lunas', 3),
('T0002', 2, '00002', '2023-07-14', 'Lunas', 7);

--
-- Trigger `tabeltransaksi`
--
DELIMITER $$
CREATE TRIGGER `update_stok_barang` AFTER INSERT ON `tabeltransaksi` FOR EACH ROW BEGIN
    DECLARE stok_awal INT;
    DECLARE stok_terjual INT;
    SET stok_terjual = NEW.jumlah_transaksi;

    SELECT stok INTO stok_awal FROM tabelbarang WHERE kode_barang = NEW.kode_barang;

    IF stok_awal >= stok_terjual THEN
        SET stok_awal = stok_awal - stok_terjual;
        UPDATE tabelbarang SET stok = stok_awal WHERE kode_barang = NEW.kode_barang;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok barang tidak mencukupi';
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabelbarang`
--
ALTER TABLE `tabelbarang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `id_jenis_barang` (`id_jenis_barang`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `tabelcustomer`
--
ALTER TABLE `tabelcustomer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `tabeljenisbarang`
--
ALTER TABLE `tabeljenisbarang`
  ADD PRIMARY KEY (`id_jenis_barang`);

--
-- Indeks untuk tabel `tabelsupplier`
--
ALTER TABLE `tabelsupplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `tabeltransaksi`
--
ALTER TABLE `tabeltransaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabelbarang`
--
ALTER TABLE `tabelbarang`
  ADD CONSTRAINT `tabelbarang_ibfk_1` FOREIGN KEY (`id_jenis_barang`) REFERENCES `tabeljenisbarang` (`id_jenis_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabelbarang_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `tabelsupplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabeltransaksi`
--
ALTER TABLE `tabeltransaksi`
  ADD CONSTRAINT `tabeltransaksi_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tabelcustomer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabeltransaksi_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `tabelbarang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
