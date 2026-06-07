-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2026 pada 05.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `punya-wiby`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(5) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(4, 'K004', 'Sepatu'),
(5, 'K005', 'Motor'),
(6, 'K006', 'Baju'),
(7, 'K007', 'SmartPhone'),
(8, 'K008', 'Buah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 5,
  `min_stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(106, 8, 'P001', 'ALPUKAT', 30, 20, 15000, '38ed520fd7f2fd914e6e6c8a72a9c8a7.jpg', '2026-05-21 13:08:26', NULL),
(107, 8, 'P002', 'KELAPA', 20, 15, 10000, '02b447038a507b297c195c4222b3f9d7.jpg', '2026-05-21 13:09:33', NULL),
(108, 8, 'P003', 'PIR', 10, 20, 7000, 'ad0fc07d11a70270740e21232998ad69.jpg', '2026-05-21 13:10:44', NULL),
(109, 8, 'P004', 'RAMBUTAN', 30, 30, 12000, '6c55e89ae2076b5c74bd0717b55b06ad.jpg', '2026-05-21 13:11:28', NULL),
(111, 7, 'P006', 'APPLE', 10, 15, 20000000, '8e649ce407210d3922fe6f6903befd71.jpg', '2026-05-21 13:14:10', NULL),
(112, 7, 'P007', 'ASUS ROG', 29, 25, 15000000, '015ef15730bfb78dcf6662601174cf60.jpg', '2026-05-21 13:16:41', NULL),
(114, 7, 'P009', 'OPPO', 15, 20, 5000000, '296e6608ebcb2980a8e6313350e04c29.jpg', '2026-05-21 13:18:38', NULL),
(115, 7, 'P010', 'HUAWEI', 20, 15, 30000000, '34be4a986bcd69927a1acbc064e95d8d.jpg', '2026-05-21 13:19:58', NULL),
(116, 6, 'P011', 'ERIGO', 90, 95, 120000, 'f0a88c4530c38503698ddd6fd2ae52f8.jpg', '2026-05-21 13:21:43', NULL),
(117, 6, 'P012', 'GUCCI', 60, 55, 600000, '864d9beebac078c28d2eb44751c9209f.jpg', '2026-05-21 13:22:54', NULL),
(118, 6, 'P013', 'GREENLIGHT', 35, 50, 350000, '0661381cb67427d377756b8fd8b65a9c.jpg', '2026-05-21 13:23:55', NULL),
(120, 6, 'P015', 'ZARA', 30, 20, 175000, 'efbb0cf7e4d445895a33bf6bfbf410cb.jpg', '2026-05-21 13:27:28', NULL),
(121, 4, 'P016', 'MILS', 500, 450, 2500000, 'b5fe009f12f161ff6c65b00705142087.jpg', '2026-05-21 13:33:04', NULL),
(122, 4, 'P017', 'NIKE', 400, 350, 1500000, 'a3e8d386c066054015329288d60f8769.jpg', '2026-05-21 13:34:14', NULL),
(123, 4, 'P018', 'ADIDAS', 50, 60, 2500000, '013400054e55c94c6dd6481e578f5898.jpg', '2026-05-21 13:35:03', NULL),
(124, 4, 'P019', 'PUMA', 70, 75, 3000000, 'e7931055f6a6c84dc77733c34b5a204b.jpg', '2026-05-21 13:36:13', NULL),
(125, 5, 'P020', 'VESPA', 50, 40, 30000000, 'ddcce568595ac0da027c6911a061f8e6.jpg', '2026-05-21 13:37:30', NULL),
(126, 5, 'P021', 'SUZUKI', 60, 75, 15000000, '2aa4f7b47fba77f75f1ec8a00df31c6c.jpg', '2026-05-21 13:38:28', NULL),
(127, 5, 'P022', 'YAMAHA', 45, 50, 17000000, 'd1abc92296339c2a20e4cbe8a3a34fce.jpg', '2026-05-21 13:39:48', NULL),
(128, 5, 'P023', 'KTM', 25, 20, 25000000, 'b9adb154e1643b30d31be4b92f1da535.jpg', '2026-05-21 13:40:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `stock_before` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_after`, `note`, `created_at`, `created_by`, `stock_before`) VALUES
(17, 106, 'ADD', 15, 30, '', '2026-05-21 13:42:06', 5, 15),
(18, 107, 'REDUCE', 10, 10, '', '2026-05-21 13:44:25', 5, 20),
(19, 108, 'REDUCE', 15, 10, '', '2026-05-21 13:45:22', 5, 25),
(20, 109, 'ADD', 5, 30, '', '2026-05-21 13:45:54', 5, 25),
(21, 116, 'REDUCE', 10, 90, '', '2026-05-21 13:47:33', 5, 100),
(22, 117, 'ADD', 10, 60, '', '2026-05-21 13:47:58', 5, 50),
(23, 120, 'ADD', 15, 30, '', '2026-05-21 13:48:35', 5, 15),
(24, 111, 'REDUCE', 10, 10, '', '2026-05-21 13:49:49', 5, 20),
(25, 112, 'ADD', 9, 29, '', '2026-05-21 13:50:10', 5, 20),
(26, 115, 'ADD', 10, 20, '', '2026-05-21 13:50:38', 5, 10),
(27, 114, 'REDUCE', 15, 15, '', '2026-05-21 13:51:04', 5, 30),
(28, 128, 'ADD', 15, 30, '', '2026-05-21 13:51:40', 5, 15),
(29, 126, 'REDUCE', 20, 60, '', '2026-05-21 13:52:06', 5, 80),
(30, 125, 'ADD', 20, 50, '', '2026-05-21 13:52:23', 5, 30),
(31, 127, 'REDUCE', 15, 45, '', '2026-05-21 13:52:57', 5, 60),
(32, 118, 'REDUCE', 40, 35, '', '2026-05-21 13:54:49', 5, 75),
(33, 107, 'ADD', 10, 20, '', '2026-05-21 13:55:34', 5, 10),
(34, 111, 'REDUCE', 5, 5, '', '2026-05-21 13:57:25', 5, 10),
(35, 111, 'ADD', 5, 10, '', '2026-05-21 13:58:12', 5, 5),
(36, 128, 'REDUCE', 5, 25, '', '2026-05-21 13:58:40', 5, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(1, 'WIBY', 'wibystore@gmail.com', '1234', 'admin', 1, '2026-05-13 04:53:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(5, 'WIBY', 'wibystore@gmail.com', '$2y$10$fAIAExDA0t.C.FtrR70UBeaCtjO6SQGb.zlnosfndz.m0YIcVCJ.O', 'admin', 1, '2026-05-18 09:53:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
