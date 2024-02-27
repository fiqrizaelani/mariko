-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2024 pada 16.57
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'makaroni', 'Mau ngerasain makaroni pedas dan lezat cobalah disini kamu pasti akan suka, kalau kamu ga suka pedas kita menawarkan yang original', 5000, 'makaroni.jpeg'),
(2, 2, 'Kopi kenangan', 'Kamu mau merasakan kopi kenangan ini bersama pasangan anda, cepatlah rasakan kopi kenangan bersama pasangan anda ayo cepat buruan beli sekarang', 20000, 'kopi.jpg'),
(24, 2, 'rice bowl', 'makanan lezat', 15000, 'rice.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 2, 'Giulia Restro', 'gr69stro@gmail.com', '1-555-555-5555', 'giuliarestroo.com', '8am', '7pm', 'mon-sat', '1259  Wood Street', 'grestro.jpg'),
(2, 6, 'Vernick Restro', 'vernic@gmail.com', '1-567-567-8888', 'foodvernick.com', '10am', '7pm', '24hr-x7', '1812  Fleming Street', 'vrfnb.jpg'),
(3, 6, 'Townsend', 'townsend@gmail.com', '1-333-222-7474', 'townsend.com', '8am', '8pm', 'mon-sat', '528  Veltri Drive', 'TOWNSEND.jpg'),
(4, 6, 'Artisan Bar & Grill', 'grilltisan@gmail.com', '1-222-333-7878', 'artisanbargr.com', '11am', '8pm', '24hr-x7', '1659  Ritter Avenue', 'artisan-cafe-berea-ky.jpg'),
(5, 6, 'Highland Restaurant', 'contact@hlrt.com', '11555578522', 'highlandrestro.com', '9am', '8pm', '24hr-x7', '1547  Birch  Street', 'hlmg.jpg'),
(6, 3, 'Alchemist', 'alchems@gmail.com', '12454850000', 'alchemist.food', '10am', '8pm', 'mon-sat', '60  Trehafod Road', 'icnr.jpg'),
(7, 6, 'Treehouse Restro', 'treehsr@gmail.com', '12457854101', 'treehouserestr.com', '8am', '10pm', 'mon-sat', '2902 Benson Park Drive', 'treehouserestr.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(2, 'Italian'),
(3, 'Continental'),
(4, 'Chinese'),
(5, 'Desserts'),
(6, 'American'),
(7, 'Vegan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(35, 'fiqri', 'fiqri', 'zaelani', 'fiqrizaelani10@gmail.com', '0822837383', '$2y$10$Bgb.EbOd2GvXGazxBzekEuUU05/fXYRvImVYVPEk27a6Z4NKQV95i', 'jangan lama'),
(36, 'banjar', 'fiqri', 'ganteng', 'fiqriganteng@gmail.com', '0822356782', '$2y$10$yTlbWqfPYBXlJ9f3CAifaujFZ.bqz8xesHwEix6hxY.i9wWHnouMO', 'ganteng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(18, 18, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2021-05-16 18:01:05', '2021-05-16 16:02:09', 3),
(20, 19, 10, 'Arancini', 1, 12, NULL, '2021-05-17 12:01:04', '2021-05-17 06:16:04', 6),
(21, 21, 18, 'Chimichanga', 1, 9, 'in process', '2021-05-17 13:38:29', '2021-05-17 12:21:29', 2),
(22, 23, 16, 'Sesame Chicken', 3, 33, 'closed', '2021-05-17 14:19:58', '2021-05-17 12:30:47', 4),
(23, 24, 1, 'Grilled Cheese Sandwich', 2, 12, NULL, '2021-05-17 14:30:02', '2021-05-17 08:45:02', 1),
(24, 24, 20, 'Chop Suey', 1, 8, 'closed', '2021-05-17 14:30:02', '2021-05-17 14:32:49', 2),
(25, 31, 7, 'Spaghetti Carbonara', 1, 9, 'rejected', '2021-05-17 14:38:44', '2023-12-26 00:37:08', 1),
(27, 32, 21, 'PoBoy', 2, 10, 'in process', '2021-05-17 15:55:55', '2021-05-17 13:57:23', 5),
(28, 34, 8, 'Toasted Ravioli', 4, 44, 'closed', '2021-05-17 16:22:34', '2023-12-26 00:34:30', 2),
(29, 34, 21, 'PoBoy', 2, 10, 'closed', '2021-05-17 16:22:34', '2021-05-17 14:32:07', 5),
(30, 34, 11, 'Currywurst', 7, 49, 'closed', '2021-05-17 16:22:34', '2021-05-17 14:32:42', 6),
(32, 34, 22, 'Reuben Sandwich', 3, 24, 'closed', '2021-05-17 16:31:02', '2021-05-17 14:32:38', 7),
(33, 35, 3, 'Hot Dog', 1, 4, 'closed', '2023-12-22 15:39:41', '2023-12-22 14:52:33', 3),
(34, 35, 2, 'Turkey Fajitas', 3, 27, 'closed', '2023-12-26 00:57:16', '2023-12-25 23:57:43', 1),
(38, 35, 2, 'Kopi kenangan', 3, 60000, NULL, '2024-01-08 16:13:46', '2024-01-08 09:13:46', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indeks untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indeks untuk tabel `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indeks untuk tabel `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
