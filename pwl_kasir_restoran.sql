-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2024 pada 12.18
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_kasir_restoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `kode_menu`, `nama`, `harga`, `gambar`, `kategori`, `status`) VALUES
(32, 'MN32', 'BEBEK PECAK (DADA)', 30000, '65eea71e83245.jpg', 'Makanan', 'tersedia'),
(33, 'MN33', 'BEBEK PECAK (PAHA)', 28000, '65eea74c7cb62.jpg', 'Makanan', 'tersedia'),
(34, 'MN34', 'BEBEK UNGKEP + NASI', 30000, '65eea77e2b1e3.png', 'Makanan', 'tersedia'),
(35, 'MN35', 'SOP DAGING', 15000, '65eea7cef1cac.jpg', 'Makanan', 'tersedia'),
(36, 'MN36', 'SOP AYAM', 10000, '65eea7ee82ea0.jpeg', 'Makanan', 'tersedia'),
(37, 'MN37', 'MISOP AYAM', 10000, '65eea8ac3c177.png', 'Makanan', 'tersedia'),
(38, 'MN38', 'MISOP DAGING', 15000, '65eea8d106168.jpeg', 'Makanan', 'tersedia'),
(39, 'MN39', 'MISOP DAGING (INDOMIE)', 17000, '65eea8f2d58a3.jpeg', 'Makanan', 'tersedia'),
(40, 'MN40', 'MISOP AYAM (INDOMIE)', 12000, '65eea91952168.jpg', 'Makanan', 'tersedia'),
(41, 'MN41', 'BAKSO', 10000, '65eea933a0d5f.jpeg', 'Makanan', 'tersedia'),
(42, 'MN42', 'BELUT UNGKEP + NASI', 25000, '65eea967c542a.jpg', 'Makanan', 'tersedia'),
(43, 'MN43', 'BELUT CABE IJO + NASI', 25000, '65eea98597d27.jpg', 'Makanan', 'tersedia'),
(44, 'MN44', 'AYAM PENYET + NASI', 12000, '65eea9b1ebdd1.jpg', 'Makanan', 'tersedia'),
(45, 'MN45', 'AYAM CABE IJO + NASI', 12000, '65eeaa04c2037.jpg', 'Makanan', 'tersedia'),
(46, 'MN46', 'AYAM PECAK + NASI', 12000, '65eeaa4ce4176.png', 'Makanan', 'tersedia'),
(47, 'MN47', 'NILA PENYET + NASI', 18000, '65eeaa706680e.jpg', 'Makanan', 'tersedia'),
(48, 'MN48', 'NILA CABE IJO + NASI', 18000, '65eeaa8f2e5da.jpg', 'Makanan', 'tersedia'),
(49, 'MN49', 'NILA ASAM MANIS + NASI', 18000, '65eeaabfc5f50.jpeg', 'Makanan', 'tersedia'),
(50, 'MN50', 'NILA UNGKEP + NASI', 18000, '65eeaae64de3e.jpg', 'Makanan', 'tersedia'),
(51, 'MN51', 'NILA TAUCO + NASI', 18000, '65eeab06d014a.jpg', 'Makanan', 'tersedia'),
(52, 'MN52', 'LELE PENYET + NASI', 12000, '65eeac3ecbf12.jpg', 'Makanan', 'tersedia'),
(53, 'MN53', 'LELE CABE IJO + NASI', 12000, '65eeac5cbda2e.jpg', 'Makanan', 'tersedia'),
(54, 'MN54', 'IKAN GEMBUNG TAUCO + NASI', 15000, '65eeac9b93244.jpg', 'Makanan', 'tersedia'),
(55, 'MN55', 'NASI GORENG TELUR', 10000, '65eeacd58d61e.jpg', 'Makanan', 'tersedia'),
(56, 'MN56', 'NASI GORENG SPECIAL', 15000, '65eeacfba9968.jpeg', 'Makanan', 'tersedia'),
(57, 'MN57', 'NASI GORENG SEAFOOD', 15000, '65eead142cc55.jpg', 'Makanan', 'tersedia'),
(58, 'MN58', 'NASI GORENG KAMPUNG', 13000, '65eead439e6db.jpg', 'Makanan', 'tersedia'),
(59, 'MN59', 'NASI GORENG KAMPUNG SPECIAL', 18000, '65eead5a33325.jpg', 'Makanan', 'tersedia'),
(60, 'MN60', 'NASI GORENG KAMPUNG SEAFOOD', 18000, '65eead702ec31.jpg', 'Makanan', 'tersedia'),
(61, 'MN61', 'IFUMIE GORENG/KUAH', 10000, '65eead9d43eeb.jpg', 'Makanan', 'tersedia'),
(62, 'MN62', 'MIE TIAW GORENG/KUAH', 10000, '65eeadc3bb933.jpg', 'Makanan', 'tersedia'),
(63, 'MN63', 'MIE HUN GORENG/KUAH', 10000, '65eeae20b88ed.jpeg', 'Makanan', 'tersedia'),
(64, 'MN64', 'MIE KUNING GORENG', 12000, '65eeae495e231.jpg', 'Makanan', 'tersedia'),
(65, 'MN65', 'INDOMIE KUAH', 10000, '65eeae718c480.jpeg', 'Makanan', 'tersedia'),
(66, 'MN66', 'INDOMIE GORENG', 12000, '65eeae888f5c8.jpeg', 'Makanan', 'tersedia'),
(67, 'MN67', 'INDOMIE BANGLADESH', 12000, '65eeaea7940d6.jpg', 'Makanan', 'tersedia'),
(68, 'MN68', 'NASI', 5000, '65eeaecce03cd.jpg', 'Makanan', 'tersedia'),
(69, 'MN69', 'TOMYAM', 15000, '65eeaef0d3465.jpg', 'Makanan', 'tersedia'),
(70, 'MN70', 'PECAL', 10000, '65eeaf07a1262.jpg', 'Makanan', 'tersedia'),
(71, 'MN71', 'TUMIS KANGKUNG', 5000, '65eeaf23af624.jpg', 'Makanan', 'tersedia'),
(72, 'MN72', 'TUMIS TAUGE', 5000, '65eeaf3d766c5.jpg', 'Makanan', 'tersedia'),
(73, 'MN73', 'KENTANG GORENG', 10000, '65eed8376a317.jpg', 'Cemilan', 'tersedia'),
(74, 'MN74', 'NUGGET', 10000, '65eed87d517cd.jpg', 'Cemilan', 'tersedia'),
(75, 'MN75', 'SOSIS', 10000, '65eed9e3a06e3.jpg', 'Cemilan', 'tersedia'),
(76, 'MN76', 'EMPEK-EMPEK', 10000, 'pempek.jpg', 'Cemilan', 'tersedia'),
(77, 'MN77', 'OTAK-OTAK', 10000, '65eeda41860e4.jpg', 'Cemilan', 'tersedia'),
(78, 'MN78', 'UDANG GORENG TEPUNG', 15000, '65eeda7af3ea8.jpg', 'Cemilan', 'tersedia'),
(79, 'MN79', 'UDANG CABE IJO', 15000, '65eeda98beb8a.jpg', 'Cemilan', 'tersedia'),
(80, 'MN80', 'UDANG ASAM MANIS', 15000, '65eedab47b514.jpg', 'Cemilan', 'tersedia'),
(81, 'MN81', 'TEMPE GORENG TEPUNG', 5000, '65eedae1157c1.jpg', 'Cemilan', 'tersedia'),
(82, 'MN82', 'PISANG GORENG CRISPY', 10000, '65eedb0650c3c.jpg', 'Cemilan', 'tersedia'),
(83, 'MN83', 'BAKSO GORENG', 10000, 'baso goreng.jpg', 'Cemilan', 'tersedia'),
(84, 'MN84', 'ROTI BAKAR COKLAT KEJU', 10000, '65eedb60e5f1b.jpg', 'Cemilan', 'tersedia'),
(85, 'MN85', 'RISOLES AYAM', 10000, '65eedba7cf6dd.jpg', 'Cemilan', 'tersedia'),
(86, 'MN86', 'TAHU WALIK', 13000, '65eedc244d13e.jpg', 'Cemilan', 'tersedia'),
(87, 'MN87', 'KEBAB AYAM', 13000, '65eedc41ba637.jpg', 'Cemilan', 'tersedia'),
(88, 'MN88', 'DIMSUM AYAM', 17000, '65eedc5dce832.jpg', 'Cemilan', 'tersedia'),
(89, 'MN89', 'DIMSUM UDANG/R.LAUT/KEPITING', 17000, '65eedc8dc3ba8.jpg', 'Cemilan', 'tersedia'),
(90, 'MN90', 'LUMPIA UDANG', 17000, '65eedcc728c31.jpg', 'Cemilan', 'tersedia'),
(91, 'MN91', 'PANGSIT UDANG', 17000, '65eedce0b0254.jpg', 'Cemilan', 'tersedia'),
(92, 'MN92', 'LENGHONGKIEN', 18000, '65eedd1d1bc07.jpg', 'Cemilan', 'tersedia'),
(93, 'MN93', 'CHOCOLATOS CINCAU', 10000, '65eeddb1c9dbf.jpg', 'Minuman', 'tersedia'),
(94, 'MN94', 'CAPPUCINO CINCAU', 10000, '65eede4225620.jpg', 'Minuman', 'tersedia'),
(95, 'MN95', 'MILO CINCAU', 10000, '65eede5b55904.jpg', 'Minuman', 'tersedia'),
(96, 'MN96', 'ES LECHYE TEA', 12000, '65eede8079ccf.jpg', 'Minuman', 'tersedia'),
(97, 'MN97', 'ES LECHYE YAKULT', 12000, '65eede9d48377.jpg', 'Minuman', 'tersedia'),
(98, 'MN98', 'ES RAINBOW', 10000, '65eededcedf89.jpg', 'Minuman', 'tersedia'),
(99, 'MN99', 'ES LEYCHE SQUASH', 10000, 'es leachy squash.jpg', 'Minuman', 'tersedia'),
(100, 'MN100', 'ES LEMON SQUASH', 10000, '65eedf1915d25.jpg', 'Minuman', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `id_menu` int(11) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `kode_pesanan`, `kode_menu`, `qty`) VALUES
(69, '65eebd30596b', 'MN35', 2),
(70, '65eebd30596b', 'MN34', 2),
(71, '65eebd30596b', 'MN33', 1),
(72, '65eecf7f2635', 'MN72', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_pesanan`, `nama_pelanggan`, `waktu`) VALUES
(27, '65eebd30596b', 'ardiansyah', '2024-03-11 15:13:36'),
(28, '65eecf7f2635', 'ng', '2024-03-11 16:31:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'fiqhi12', 'e9309282652f740e38fcbc66fd40e81b');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
