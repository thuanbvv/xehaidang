-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2020 lúc 04:55 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xehaidang`
--
CREATE DATABASE IF NOT EXISTS xehaidang;
USE xehaidang;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `level` tinyint(4) DEFAULT '1',
  `avartar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `adress`, `email`, `password`, `phone`, `status`, `level`, `avartar`, `created_at`, `updated_at`) VALUES
(1, 'trương công toàn', 'Phù Mỹ - Bình Định', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0909943262', 1, 1, NULL, NULL, '2020-05-02 06:56:22'),
(2, 'Nguyễn Thị Hường', 'Phù Mỹ - Bình Định', 'nguyenthihuong14@fecredit.com.vn', 'e10adc3949ba59abbe56e057f20f883e', '0909943263', 1, 1, NULL, NULL, NULL),
(3, 'Hải Đăng', 'Hà Tĩnh', 'nguyendanggh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT '0',
  `slug` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `images`, `banner`, `home`, `slug`, `status`, `created_at`, `update_at`) VALUES
(3, 'Thuê xe tự lái có tài xế', NULL, NULL, 1, 'thue-xe-tu-lai', 1, '2019-08-27 07:20:31', '2020-05-15 14:55:04'),
(4, 'Thuê xe tự lái ', NULL, NULL, 1, 'thue-xe-tu-lai-co-tai-xe', 1, '2019-08-27 07:20:45', '2020-05-15 14:54:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_chil`
--

CREATE TABLE `category_chil` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `home` int(11) DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  `fixcate` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_chil`
--

INSERT INTO `category_chil` (`id`, `name`, `slug`, `home`, `category_id`, `fixcate`, `created_at`, `updated_at`) VALUES
(1, 'Thuê xe 4 chỗ có tài xế', 'thue-xe-4-cho-co-tai', 1, 3, 0, '2019-11-16 06:45:31', '2020-05-15 14:51:16'),
(2, 'Thuê xe 7 chỗ có tài xế', 'thue-xe-7-cho-co-tai', 1, 3, 1, '2019-11-16 06:45:31', '2020-05-15 14:51:25'),
(7, 'Thuê xe 4 chỗ ', 'thue-xe-4-cho-khong-tai', 1, 4, 0, '2019-11-16 08:01:27', '2020-05-15 14:50:40'),
(8, 'Thuê xe 7 chỗ ', 'thue-xe-7-cho-khong-tai', 1, 4, 1, '2019-11-16 08:01:27', '2020-05-15 14:50:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `slug`, `images`, `home`, `created_at`, `updated_at`) VALUES
(1, 'Trang Chủ ', 'trang-chu', NULL, 1, NULL, '2020-04-30 16:22:53'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, NULL, '2019-11-16 06:21:27'),
(5, 'Đặt xe', 'dat-xe', NULL, 1, NULL, NULL),
(7, 'Khuyến mãi', 'khuyen-mai', NULL, 1, NULL, NULL),
(8, 'Tin tức', 'tin-tuc', NULL, 1, NULL, NULL),
(9, 'Liên hệ', 'lien-he', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `p_title` varchar(190) DEFAULT NULL,
  `p_slug` varchar(190) DEFAULT NULL,
  `p_descriptions` longtext,
  `p_content` longtext,
  `p_admin_id` int(11) DEFAULT NULL,
  `p_thunbar` varchar(190) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `p_title`, `p_slug`, `p_descriptions`, `p_content`, `p_admin_id`, `p_thunbar`, `created_at`, `updated_at`) VALUES
(8, '21212', NULL, NULL, '<p>12121</p>\r\n', NULL, 'rn.png', '2020-03-07 07:22:13', '2020-03-07 07:22:13'),
(9, '1212121212121', NULL, NULL, '<p>211211212121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.26.04 PM.png', '2020-03-07 07:22:47', '2020-03-07 07:22:47'),
(10, '121212', NULL, NULL, '<p>12121212121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.27.28 PM.png', '2020-03-07 07:25:54', '2020-03-07 07:25:54'),
(11, '121212', NULL, NULL, '<p>1212121</p>\r\n', NULL, 'rn.png', '2020-03-07 07:26:15', '2020-03-07 07:26:15'),
(12, '121212', NULL, NULL, '<p>1212121</p>\r\n', NULL, NULL, '2020-03-07 07:28:09', '2020-03-07 07:28:09'),
(13, '11212', NULL, NULL, '<p>12121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.26.04 PM.png', '2020-03-07 07:28:20', '2020-03-07 07:28:20'),
(14, '11212', NULL, NULL, '<p>12121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.26.04 PM.png', '2020-03-07 07:28:26', '2020-03-07 07:28:26'),
(15, '11212', NULL, NULL, '<p>12121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.26.04 PM.png', '2020-03-07 07:29:09', '2020-03-07 07:29:09'),
(16, '11212', NULL, NULL, '<p>12121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.26.04 PM.png', '2020-03-07 07:29:18', '2020-03-07 07:29:18'),
(17, '12121', NULL, NULL, '<p>21212121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.27.28 PM.png', '2020-03-07 07:29:31', '2020-03-07 07:29:31'),
(18, '12121', NULL, NULL, '<p>21212121</p>\r\n', NULL, 'Screen Shot 2020-03-06 at 2.51.54 PM.png', '2020-03-07 07:30:11', '2020-03-07 07:30:11'),
(19, '12121', NULL, NULL, '<p>21212121</p>\r\n', NULL, 'rn.png', '2020-03-07 07:30:41', '2020-03-07 07:30:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `number` int(11) DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  `thunbar` varchar(100) DEFAULT NULL,
  `category_id_chil` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT '0',
  `slug` varchar(100) DEFAULT NULL,
  `hot` int(11) DEFAULT '1',
  `note` text,
  `head` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `content`, `number`, `price`, `thunbar`, `category_id_chil`, `sale`, `slug`, `hot`, `note`, `head`, `view`, `created_at`, `updated_at`) VALUES
(28, 'TOYOTA VIOS 1.5E (MT) 2007', NULL, 2, 700000, 'Toyota-Vios-1.5 E MT.jpg', 1, 0, 'toyota-vios-15e-mt-2007', 1, NULL, NULL, NULL, NULL, NULL),
(30, 'KIA CERATO MT 2017', NULL, 2, 700000, 'Kia-Cerato-1.6 MT.jpg', 8, 0, 'kia-cerato-mt-2017', 1, NULL, NULL, NULL, NULL, NULL),
(33, 'TOYOTA FORTUNER', NULL, 2, 900000, 'Toyota-Fortuner-2017.png', 8, 0, 'toyota-fortuner', 1, NULL, NULL, NULL, NULL, NULL),
(34, 'KIA MORNING', NULL, 1, 900000, 'Honda-City-1.5 AT.jpg', 1, 0, 'kia-morning', 1, 'ok', NULL, NULL, '2020-05-13 15:06:24', '2020-05-13 15:06:24'),
(35, 'KIA MORNING', NULL, 1, 800000, 'vinfast_fadil_brahminy_white.png', 2, 0, 'kia-morning', 1, 'ok', NULL, NULL, '2020-05-13 15:07:58', '2020-05-13 15:07:58'),
(36, 'Mercedes-Benz-S500L-2-', NULL, 1, 1000000, 'cho-thue-xe-du-lich-4-cho.jpg', 1, 0, 'mercedes-benz-s500l-2-', 1, 'ok', NULL, NULL, '2020-05-14 01:42:07', '2020-05-14 01:43:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `users_id` int(11) DEFAULT NULL,
  `note` text,
  `time_start` date DEFAULT NULL,
  `number_day` int(11) DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `time_stop` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `status`, `users_id`, `note`, `time_start`, `number_day`, `product_id`, `type`, `time_stop`, `created_at`, `updated_at`) VALUES
(6, 900000, 2, 10, 'ghi chú giao hàng', '2020-05-02', 4, 33, 1, '2020-05-06', '2020-05-02 14:26:13', '2020-05-02 14:27:48'),
(7, 700000, 3, 11, '', '2020-05-11', 0, 32, 1, '2020-05-11', '2020-05-11 15:07:21', '2020-05-11 15:07:34'),
(8, 700000, 0, 11, NULL, '2020-05-12', 0, 28, 1, '2020-05-12', '2020-05-12 07:18:36', '2020-05-12 07:18:36'),
(9, 600000, 1, 11, NULL, '2020-05-12', 0, 27, 1, '2020-05-12', '2020-05-12 07:25:26', '2020-05-12 07:25:40'),
(10, 700000, 3, 11, '', '2020-05-12', 0, 32, 1, '2020-05-12', '2020-05-12 14:30:00', '2020-05-12 14:30:09'),
(11, 600000, 0, 11, NULL, '2020-05-12', 0, 26, 1, '2020-05-12', '2020-05-12 14:35:41', '2020-05-12 14:35:41'),
(12, 700000, 0, 11, NULL, '2020-05-12', 0, 30, 1, '2020-05-12', '2020-05-12 14:40:46', '2020-05-12 14:40:46'),
(13, 600000, 0, 11, NULL, '2020-05-14', 4, 26, 1, '2020-05-18', '2020-05-12 14:41:50', '2020-05-12 14:41:50'),
(14, 600000, 0, 11, NULL, '2020-05-09', 1, 27, 1, '2020-05-10', '2020-05-12 14:48:34', '2020-05-12 14:48:34'),
(15, 900000, 2, 11, NULL, '2020-05-12', 8, 25, 1, '2020-05-20', '2020-05-12 15:01:27', '2020-05-13 15:01:02'),
(16, 700000, 2, 11, '', '2020-05-13', 1, 31, 1, '2020-05-14', '2020-05-13 03:49:23', '2020-05-13 14:55:39'),
(17, 700000, 2, 11, NULL, '2020-05-17', 5, 31, 1, '2020-05-22', '2020-05-13 03:49:52', '2020-05-13 14:55:37'),
(18, 2400000, 2, 11, NULL, '2020-05-15', 4, 27, 1, '2020-05-19', '2020-05-13 15:09:21', '2020-05-13 15:11:02'),
(19, 3000000, 2, 11, NULL, '2020-05-16', 3, 36, 1, '2020-05-19', '2020-05-14 01:44:56', '2020-05-14 01:49:28'),
(20, 1800000, 2, 11, NULL, '2020-05-17', 2, 33, 1, '2020-05-19', '2020-05-15 03:08:14', '2020-05-15 03:08:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avartar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `adress`, `password`, `avartar`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Nguyên Văn Dược', 'duocnvoit@gmail.com', '0359020898', 'Thái bình', '25d55ad283aa400af464c76d713c07ad', NULL, 1, NULL, NULL),
(11, 'Đăng nguyễn', 'tieutieucuibapgh@gmail.com', '0962398345', 'Xuân An-Nghi Xuân', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_contact`
--

CREATE TABLE `user_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_contact`
--

INSERT INTO `user_contact` (`id`, `name`, `email`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Thị Bích Hoa', 'hoantb@gmail.com', 'Tôi muốn hỏi cửa hàng mình có hình thức thanh toán online không ạ?', '2018-06-03 15:40:16', '2018-06-03 15:40:16'),
(3, 'Nguyễn Việt Hoàng', 'hoangnv@gmail.com', 'Cho tôi hỏi là khi hàng đã giao đến nhà tôi nhưng tôi thấy sản phẩm không được như mong muốn hoặc tôi không muốn lấy sản phẩm nữa thì có thể trả lại hàng được không?', '2018-06-03 15:42:34', '2018-06-03 15:42:34'),
(5, 'Lê Minh Đức', 'duclm@gmail.com', 'Ad cho em hỏi là phí ship hàng bên mình được tính như thế nào ạ?', '2018-06-03 15:46:25', '2018-06-03 15:46:25'),
(6, 'Lê Thị Na', 'nalt@gmail.com', 'Cho mình hỏi là nếu mình mua nhiều sản phẩm thì có được shop ưu đãi khuyến mại hay giảm giá gì không?', '2018-06-03 15:47:21', '2018-06-03 15:47:21'),
(7, 'Phạm Văn Đức', 'ducpv@gmail.com', 'Cho mình hỏi là shop có nhận chuyển hàng cho mình ở Hà Giang không?', '2018-06-03 15:48:53', '2018-06-03 15:48:53'),
(8, 'Hoàng Văn Nhất', 'nhathv@gmail.com', 'Bên shop có bảng hướng dẫn đo cỡ chân không ạ?', '2018-06-03 15:50:35', '2018-06-03 15:50:35'),
(9, 'Bùi Thúy Như', 'nhubt@gmail.com', 'Cho em hỏi là bên shop có bán sỉ không ạ?', '2018-06-03 15:52:16', '2018-06-03 15:52:16'),
(10, 'Bùi Văn Hoa', 'hoabv@gmail.com', 'Mình muốn mua sản phẩm nhưng sản phẩm đó hết hàng thì mình phải chờ bao lâu mới có sản phẩm nhập về?', '2018-06-03 15:53:10', '2018-06-03 15:53:10'),
(11, 'TrungPhuNA', 'phupt.humg.94@gmail.com', 'Nội dung phản hồi', '2018-11-24 09:29:17', '2018-11-24 09:29:17'),
(12, 'adadaa', 'dadadad@gmail.com', 'adada', '2018-12-14 12:34:10', '2018-12-14 12:34:10'),
(13, 'TrungPhuNA', 'phupt.humg.94@gmail.com', 'adaadada', '2018-12-14 12:34:28', '2018-12-14 12:34:28'),
(14, 'TrungPhuNA', 'phupt.humg.94@gmail.com', 'adadadadada', '2018-12-14 12:44:48', '2018-12-14 12:44:48'),
(15, 'Trung Phú NA', 'phupt.humg.94@gmail.com', 'dâda', '2020-03-07 01:17:27', '2020-03-07 01:17:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category_chil`
--
ALTER TABLE `category_chil`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_contact`
--
ALTER TABLE `user_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category_chil`
--
ALTER TABLE `category_chil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_contact`
--
ALTER TABLE `user_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
