-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2020 at 04:56 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xehaidang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `adress`, `email`, `password`, `phone`, `status`, `level`, `avartar`, `created_at`, `updated_at`) VALUES
(1, 'trương công toàn', 'Phù Mỹ - Bình Định', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0909943262', 1, 1, NULL, NULL, '2020-05-02 06:56:22'),
(2, 'Nguyễn Thị Hường', 'Phù Mỹ - Bình Định', 'nguyenthihuong14@fecredit.com.vn', 'e10adc3949ba59abbe56e057f20f883e', '0909943263', 1, 1, NULL, NULL, NULL),
(3, 'Trung Phú', 'Nghệ An', 'phupt.admin94@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT '0',
  `slug` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `images`, `banner`, `home`, `slug`, `status`, `created_at`, `update_at`) VALUES
(3, 'Thuê xe tự lái - có tài', NULL, NULL, 1, 'thue-xe-tu-lai---co-tai', 1, '2019-08-27 07:20:31', '2019-11-03 06:24:39'),
(4, 'Thuê xe tự lái - không tài', NULL, NULL, 1, 'thue-xe-tu-lai---khong-tai', 1, '2019-08-27 07:20:45', '2019-11-03 06:25:05'),
(5, 'Thuê xe theo tháng', NULL, NULL, 1, 'thue-xe-theo-thang', 1, '2019-08-27 07:20:55', '2019-11-16 06:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `category_chil`
--

CREATE TABLE IF NOT EXISTS `category_chil` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `home` int(11) DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  `fixcate` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_chil`
--

INSERT INTO `category_chil` (`id`, `name`, `slug`, `home`, `category_id`, `fixcate`, `created_at`, `updated_at`) VALUES
(1, 'Thuê xe 4 chổ có tài', 'thue-xe-4-cho-co-tai', 1, 3, 0, '2019-11-16 06:45:31', '2019-11-16 08:37:59'),
(2, 'Thuê xe 7 chổ có tài', 'thue-xe-7-cho-co-tai', 1, 3, 1, '2019-11-16 06:45:31', '2019-11-16 08:19:22'),
(7, 'Thuê xe 4 chổ không tài', 'thue-xe-4-cho-khong-tai', 1, 4, 0, '2019-11-16 08:01:27', '2019-11-16 08:19:30'),
(8, 'Thuê xe 7 chổ không tài', 'thue-xe-7-cho-khong-tai', 1, 4, 1, '2019-11-16 08:01:27', '2019-11-16 08:37:16'),
(9, 'Thuê xe 4 chổ theo tháng ', 'thue-xe-4-cho-theo-tháng', 1, 5, 0, '2019-11-16 08:02:34', '2019-11-16 08:19:49'),
(10, 'Thuê xe 7 chổ theo tháng', 'thue-xe-7-cho-theo-thang', 1, 5, 1, '2019-11-16 08:02:34', '2019-11-16 08:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
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
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
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
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `p_title` varchar(190) DEFAULT NULL,
  `p_slug` varchar(190) DEFAULT NULL,
  `p_descriptions` longtext,
  `p_content` longtext,
  `p_admin_id` int(11) DEFAULT NULL,
  `p_thunbar` varchar(190) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `p_title`, `p_slug`, `p_descriptions`, `p_content`, `p_admin_id`, `p_thunbar`, `created_at`, `updated_at`) VALUES
(3, 'Hướng dẫn sử dụng giay da nam từ A đến Z, dài lâu', 'huong-dan-su-dung-giay-da-nam-tu-a-den-z-dai-lau', 'Giay da nam là sản phẩm mà được cánh đàn ông lựa chọn sử dụng dù rẻ tiền hay đắt tiền nếu như không biết sử dụng đúng cách sẽ rất lãng phí. Hôm nay Giaynhapkhau.com sẽ hướng dẫn các bạn cách sử dụng giay nam từ A đến Z, dài lâu.\r\n\r\nGiay da nam là sản phẩm mà được cánh đàn ông lựa chọn sử dụng dù rẻ tiền hay đắt tiền nếu như không biết sử dụng đúng cách sẽ rất lãng phí. Hôm nay Giaynhapkhau.com sẽ hướng dẫn các bạn cách sử dụng giay nam từ A đến Z, dài lâu.', '<p><strong>HƯỚNG DẪN SỬ DỤNG SẢN PHẨM</strong></p>\r\n\r\n<p>- Kh&ocirc;ng mang gi&agrave;y, d&eacute;p giẫm đạp l&ecirc;n xăng, dầu, nhớt, dung m&ocirc;i, kh&ocirc;ng đi gi&agrave;y, d&eacute;p trong vực đ&aacute; lởm chởm hoặc đạp l&ecirc;n c&aacute;c vật thể n&oacute;ng như b&ocirc; xe gắn m&aacute;y... dễ g&acirc;y hư hại phần đế v&agrave; l&agrave;m mau l&atilde;o ho&aacute; sản phẩm.<br />\r\n- Kh&ocirc;ng để vật nặng đ&egrave; l&ecirc;n hoặc vật cứng, b&eacute;n nhọn cọ quẹt v&agrave;o gi&agrave;y d&eacute;p, g&acirc;y ra c&aacute;c đường nứt, g&atilde;y, l&agrave;m nhăn da, trầy xướt, r&aacute;ch da.<br />\r\n- Hạn chế tiếp x&uacute;c qu&aacute; thường xuy&ecirc;n trong nước, g&acirc;y biến dạng, l&agrave;m cho quai dễ bị r&aacute;ch v&agrave; mau hở keo.<br />\r\n- Khi gi&agrave;y, d&eacute;p bị ướt, kh&ocirc;ng l&agrave;m kh&ocirc; bằng l&ograve; sưởi, hơi lửa, phơi nắng hay m&aacute;y sấy&hellip; m&agrave; để gi&agrave;y, d&eacute;p kh&ocirc; tự nhi&ecirc;n ở nhiệt độ b&igrave;nh thường.<br />\r\n- N&ecirc;n d&ugrave;ng c&aacute;i đ&oacute;n g&oacute;t để kh&ocirc;ng l&agrave;m g&atilde;y phần hậu gi&agrave;y.<br />\r\n- Nếu phải mang gi&agrave;y suốt ng&agrave;y n&ecirc;n thỉnh thoảng cởi ra trong v&agrave;i ph&uacute;t để ch&acirc;n v&agrave; gi&agrave;y lu&ocirc;n kh&ocirc; tho&aacute;ng, để tr&aacute;nh gi&agrave;y bị h&ocirc;i.<br />\r\n- Đối với gi&agrave;y, d&eacute;p mang h&agrave;ng ng&agrave;y, n&ecirc;n thường xuy&ecirc;n lau ch&ugrave;i v&agrave; đ&aacute;nh xira từ 1 đến 2 lần mỗi tuần để cho gi&agrave;y d&eacute;p đẹp v&agrave; mang được bền l&acirc;u.</p>\r\n\r\n<p><strong>BẢO QUẢN GI&Agrave;Y</strong></p>\r\n\r\n<p>- Khi kh&ocirc;ng sử dụng gi&agrave;y th&igrave; nh&eacute;t giấy mềm hoặc miếng xốp v&agrave;o b&ecirc;n trong gi&agrave;y để h&uacute;t ẩm đồng thời giữ cho form gi&agrave;y kh&ocirc;ng bị biến dạng. N&ecirc;n cho gi&agrave;y v&agrave;o hộp tho&aacute;ng kh&iacute; hoặc t&uacute;i nylon c&oacute; kho&eacute;t những lỗ nhỏ rồi cột lại v&agrave; đặt v&agrave;o nơi tho&aacute;ng m&aacute;t.<br />\r\n- Vệ sinh h&agrave;ng ng&agrave;y, trước khi sử dụng th&igrave; d&ugrave;ng b&agrave;n chải đ&aacute;nh gi&agrave;y chải sạch bụi b&aacute;m tr&ecirc;n gi&agrave;y hoặc d&ugrave;ng c&acirc;y lăn bụi lăn l&ecirc;n bề mặt gi&agrave;y. Thỉnh thoảng n&ecirc;n vệ sinh gi&agrave;y bằng c&aacute;ch pha một &iacute;t bột x&agrave; ph&ograve;ng v&agrave;o thau nước, quậy cho ra bọt, d&ugrave;ng m&uacute;t b&ocirc;i bảng lau đều l&ecirc;n da v&agrave; phần dưới đế cho sạch. Sau đ&oacute; xả lại nước rồi d&ugrave;ng khăn kh&ocirc; lau từ trong ra ngo&agrave;i rồi phơi quạt gi&oacute; cho đến khi kh&ocirc; hẳn rồi đ&aacute;nh xira l&ecirc;n l&agrave; c&oacute; thể sử dụng.</p>\r\n\r\n<p><strong>C&Aacute;CH D&Ugrave;NG XI Đ&Aacute;NH GI&Agrave;Y</strong></p>\r\n\r\n<p>Sau khi loại bỏ hết bụi bẩn, l&agrave;m sạch quai v&agrave; đế gi&agrave;y. D&ugrave;ng một miếng vải mềm quấn v&agrave;o đầu hai ng&oacute;n tay trỏ v&agrave; ng&oacute;n giữa, phần c&ograve;n lại của miếng giẻ được kẹp giữa l&ograve;ng b&agrave;n tay v&agrave; c&aacute;c ng&oacute;n c&ograve;n lại. Nếu d&ugrave;ng một miếng m&uacute;t xốp, lớp xi sẽ đều hơn hoặc d&ugrave;ng một b&agrave;n chải l&ocirc;ng ngựa để lấy xi b&ocirc;i l&ecirc;n gi&agrave;y. Gi&agrave;y m&agrave;u n&agrave;o đ&aacute;nh xi m&agrave;u đ&oacute;, lớp xi phải được b&ocirc;i đều v&agrave; kh&ocirc;ng qu&aacute; d&agrave;y để tr&aacute;nh da bị rạn. Việc đ&aacute;nh xi được thực hiện bằng những động t&aacute;c xoay tr&ograve;n của c&aacute;c ng&oacute;n tay quấn giẻ hay b&agrave;n chải từ ph&iacute;a g&oacute;t tới ngọn. Nếu lớp xi lỡ kh&ocirc; đi qu&aacute; sớm c&oacute; thể th&ecirc;m v&agrave;i giọt nước. H&atilde;y để gi&agrave;y kh&ocirc; trong 10 hoặc 15 ph&uacute;t. Sau đ&oacute; đ&aacute;nh b&oacute;ng gi&agrave;y bằng b&agrave;n chải đu&ocirc;i ngựa hoặc miếng giẻ sạch. Đ&aacute;nh khi n&agrave;o m&agrave; bạn h&agrave;i l&ograve;ng với đ&ocirc;i gi&agrave;y s&aacute;ng b&oacute;ng của m&igrave;nh.</p>\r\n\r\n<p>Hi v&ograve;ng những hướng dẫn sử dụng <strong><a href="http://www.giaynhapkhau.com/">giay nam</a></strong> tr&ecirc;n sẽ gi&uacute;p &iacute;ch được mọi người trong người d&ugrave;ng bền hơn.</p>\r\n', 1, 'anh1.png', '2018-06-03 16:19:53', '2018-06-03 16:19:53'),
(4, 'Hướng dẫn sử dụng xi đánh giày đúng cách', 'huong-dan-su-dung-xi-danh-giay-dung-cach', 'Còn gì lôi thôi hơn khi ra ngoài với đôi dày da cáu bẩn, cũ kĩ. Dù rằng bạn có đang vận trên người một bộ cánh sang trọng thì vẫn không thay đổi được cái nhìn của người đối diện. Vì thế, thỉnh thoảng các bạn nên "chăm sóc" giày dép của mình bằng cách sử dụng xi đánh giày để trả lại vẻ như mới cho giày nhé.', '<p>Shop xin m&aacute;ch bạn 3 bước rất hữu &iacute;ch để đ&aacute;nh gi&agrave;y vừa nhanh lại vừa sạch:</p>\r\n\r\n<p>Bước 1: L&agrave;m sạch gi&agrave;y</p>\r\n\r\n<p>Lau sạch gi&agrave;y d&eacute;p bằng dẻ ẩm bề mặt da cần đ&aacute;nh xi, sau đ&oacute; phơi kh&ocirc; nơi tho&aacute;ng gi&oacute; (kh&ocirc;ng phơi nắng) rồi mới đ&aacute;nh b&oacute;ng.</p>\r\n\r\n<p>Bước 2: Đ&aacute;nh xi</p>\r\n\r\n<p>D&ugrave;ng loại b&agrave;n chải thật tốt chấm xi, đ&aacute;nh l&ecirc;n bề mặt da của gi&agrave;y d&eacute;p lu&ocirc;n tay cho thật đều, đ&aacute;nh xung quanh cho hết mặt da của gi&agrave;y d&eacute;p, đ&aacute;nh li&ecirc;n tục cho đến khi b&agrave;n chải kh&ocirc;ng c&ograve;n d&iacute;nh xi.</p>\r\n\r\n<p>Bước 3: Đ&aacute;nh b&oacute;ng</p>\r\n\r\n<p>Sau đ&oacute; d&ugrave;ng b&agrave;n chải sạch kh&aacute;c đ&aacute;nh lại, đ&aacute;nh cho mạnh, đều, gi&agrave;y d&eacute;p sẽ nổi l&ecirc;n m&agrave;u b&oacute;ng v&agrave; tăng th&ecirc;m độ mềm của da. Ch&uacute; &yacute; những nơi b&agrave;n chải kh&ocirc;ng đ&aacute;nh tới bạn n&ecirc;n sử dụng b&ocirc;ng tăm hoặc dẻ cotton thay thế.</p>\r\n\r\n<p>Xi đ&aacute;nh gi&agrave;y cũng c&oacute; t&aacute;c dụng tương tự với c&aacute;c đồ d&ugrave;ng da kh&aacute;c như t&uacute;i, v&iacute; da, thắt lưng da bạn nh&eacute;.</p>\r\n\r\n<p>Qua 3 bước đơn giản tr&ecirc;n, bạn đ&atilde; c&oacute; đ&ocirc;i d&agrave;y da b&oacute;ng lo&aacute;ng để đi rồi, khi bạn kết hợp đồ th&igrave; h&atilde;y lu&ocirc;n nhớ đến đ&ocirc;i d&agrave;y da v&agrave; chiếc d&acirc;y lưng da h&agrave;ng hiệu c&ugrave;ng tone m&agrave;u nh&eacute;.</p>\r\n', 1, 'anh3.jpg', '2018-06-03 16:35:28', '2018-06-03 16:35:28'),
(5, 'HƯỚNG DẪN CÁCH SỬ DỤNG BỘ VỆ SINH GIÀY CREP PROTECT CURE', 'huong-dan-cach-su-dung-bo-ve-sinh-giay-crep-protect-cure', 'HƯỚNG DẪN CÁCH SỬ DỤNG BỘ VỆ SINH GIÀY CREP PROTECT CURE', '<p style="text-align:justify"><span style="font-size:12pt">Bạn h&atilde;y đọc lướt qua hết b&agrave;i rồi h&atilde;y l&agrave;m theo nh&eacute;. Để tr&aacute;nh trường hợp l&agrave;m sai.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt"><strong>Bước 1:</strong>&nbsp;Chuẩn bị những đ&ocirc;i gi&agrave;y dơ cần vệ sinh.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt"><strong>Bước 2:</strong>&nbsp;Lấy 1 t&ocirc; nước nhỏ sạch.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt"><strong>Bước 3:</strong>&nbsp;Nh&uacute;ng b&agrave;n chải Crep Protect v&agrave;o nước cho ướt b&agrave;n chải.</span></p>\r\n\r\n<p><span style="font-size:12pt"><strong>Bước 4:</strong>&nbsp;Bạn cho 8-9 giọt Crep Protect Cure l&ecirc;n trực tiếp b&agrave;n chải.</span></p>\r\n\r\n<p><span style="font-size:12pt"><strong>Bước 5:</strong>&nbsp;Bạn bắt đầu ch&agrave; vệ sinh đ&ocirc;i gi&agrave;y của bạn. Nếu như ch&agrave; thấy hết bọt th&igrave; bạn cứ lặp lại từ bước 3 l&agrave;m tới khi n&agrave;o đ&ocirc;i gi&agrave;y bạn sạch th&igrave; th&ocirc;i.</span></p>\r\n\r\n<p><span style="font-size:12pt"><strong>Bước 6:</strong>&nbsp;Sau khi đ&ocirc;i gi&agrave;y đ&atilde; sạch như &yacute; muốn. Bạn lấy khăn Crep Protect lau sạch tổng thể cho gi&agrave;y.</span></p>\r\n\r\n<p><span style="font-size:12pt"><strong>Bước 7:</strong>&nbsp;Sau khi lau tổng thể sạch xong bạn để đ&ocirc;i gi&agrave;y kh&ocirc; tự nhi&ecirc;n hoặc phơi trước quạt. Tuyệt đối kh&ocirc;ng phơi nắng. V&igrave; phơi nắng l&agrave;m mau hư, phai mau gi&agrave;y của bạn.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt">Những gi&agrave;y m&agrave;u l&agrave;m v&agrave;i bước đơn giản như tr&ecirc;n l&agrave; đ&ocirc;i gi&agrave;y đ&atilde; sạch.</span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt"><span style="color:#ff0000"><strong>Nhưng lưu &yacute; đặc biệt đối với những gi&agrave;y vải full trắng.</strong></span>&nbsp;Ch&uacute;ng ta cần l&agrave;m th&ecirc;m 2 bước nữa gi&agrave;y vải trắng mới sạch ho&agrave;n to&agrave;n v&agrave; kh&ocirc;ng bị ố v&agrave;ng. Sau khi ch&uacute;ng ta vệ sinh sạch, lau sạch xong (ho&agrave;n th&agrave;nh ở bước 6) th&igrave; ch&uacute;ng ta cần phải xả lại với nước sạch thật kỹ sau đ&oacute; bạn lấy giấy vệ sinh hoặc giấy ăn quấn quanh từng chiếc gi&agrave;y v&agrave; nh&eacute;t v&agrave;o trong gi&agrave;y cho n&oacute; h&uacute;t ẩm, h&uacute;t dơ sau đ&oacute; ta mới phơi trước quạt hoặc để kh&ocirc; tự nhi&ecirc;n.</span></p>\r\n\r\n<h3 style="text-align:justify"><span style="font-size:12pt"><strong>Tại sao gi&agrave;y vải trắng phải xả với nước sạch sau khi vệ sinh xong m&agrave; gi&agrave;y m&agrave;u kh&ocirc;ng cần?</strong></span></h3>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt">Bởi v&igrave; gi&agrave;y vải trắng ch&uacute;ng ta vệ sinh kh&ocirc;ng kỹ nước dơ bẩn c&ograve;n tr&ecirc;n gi&agrave;y n&oacute; sẽ g&acirc;y ra ố v&agrave;ng cho gi&agrave;y. Cho n&ecirc;n ch&uacute;ng ta cần xả lại với nước sạch sau khi vệ sinh xong.</span></p>\r\n\r\n<h3 style="text-align:justify"><span style="font-size:12pt"><strong>C&ograve;n giấy vệ sinh quấn quanh gi&agrave;y v&agrave; nh&eacute;t v&ocirc; gi&agrave;y để l&agrave;m g&igrave;?</strong></span></h3>\r\n\r\n<p style="text-align:justify"><span style="font-size:12pt">Giấy vệ sinh n&oacute; c&oacute; c&ocirc;ng dụng h&uacute;t ẩm v&agrave; h&uacute;t dơ bẩn c&ograve;n s&oacute;t lại tr&ecirc;n gi&agrave;y để n&oacute; kh&ocirc;ng g&acirc;y ố v&agrave;ng cho gi&agrave;y. V&agrave; n&oacute; gi&uacute;p gi&agrave;y ch&uacute;ng ta nhanh kh&ocirc;.</span></p>\r\n', 1, 'anh4.jpg', '2018-06-04 03:36:37', '2018-06-04 03:36:37'),
(6, '3 Cách chọn giày nam cho những quý ông phù hợp với dáng người', '3-cach-chon-giay-nam-cho-nhung-quy-ong-phu-hop-voi-dang-nguoi', 'Vóc dáng của mỗi người khác nhau phù hợp với từng loại trang phục khác nhau. Những bộ trang phục từ quần áo, giày dép luôn đa dạng kiểu sắc, mẫu mã và hướng tới từng đối tượng khách hàng có đặc điểm thân hình khác nhau. Khi đi những đôi giày phù hợp với ngoại hình của mình, chắc chắn các quý ông sẽ cảm thấy tự tin hơn vào bản thân.', '<h2 style="text-align:justify"><strong>C&aacute;ch chọn gi&agrave;y nam ph&ugrave; hợp với d&aacute;ng người của c&aacute;c qu&yacute; &ocirc;ng</strong></h2>\r\n\r\n<p style="text-align:justify">Mỗi đ&ocirc;i gi&agrave;y được tạo ra đều hướng tới một đối tượng kh&aacute;ch h&agrave;ng c&oacute; d&aacute;ng người kh&aacute;c nhau để trở th&agrave;nh những phụ trợ nổi bật cho c&aacute;c qu&yacute; &ocirc;ng trong những buổi gặp mặt quan trọng.</p>\r\n\r\n<h3 style="text-align:justify"><strong>C&aacute;ch chọn gi&agrave;y nam cho qu&yacute; &ocirc;ng c&oacute; ngoại h&igrave;nh hơi b&eacute;o</strong></h3>\r\n\r\n<p style="text-align:justify">Việc chọn cho những qu&yacute; &ocirc;ng c&oacute; ngo&agrave;i h&igrave;nh b&eacute;o c&oacute; vẻ như kh&ocirc;ng qu&aacute; kh&oacute; khăn. Hầu hết những mẫu sản phẩm <a href="http://www.giaytot.com%20" target="_blank"><em><strong>gi&agrave;y nam</strong></em></a>, gi&agrave;y lười, gi&agrave;y d&aacute;ng rộng hay gi&agrave;y &ocirc;ng d&aacute;ng, kiểu gi&agrave;y mũi tr&ograve;n hoặc mũi vu&ocirc;ng hay đến cả mũi nhọn, những qu&yacute; &ocirc;ng ngoại h&igrave;nh hơi b&eacute;o đều l&agrave; những sự lựa chọn ph&ugrave; hợp. Về m&agrave;u sắc, những qu&yacute; &ocirc;ng n&agrave;y cũng chỉ cần chọn những đ&ocirc;i gi&agrave;y c&oacute; m&agrave;u sắc ưu th&iacute;ch, ph&ugrave; hợp với trang phục, họa tiết v&agrave; chọn những t&ocirc;ng m&agrave;u tối sẽ tr&ocirc;ng c&aacute;c qu&yacute; &ocirc;ng gọn gang hơn nhiều.</p>\r\n\r\n<h3 style="text-align:justify"><strong>C&aacute;ch chọn gi&agrave;y nam cho qu&yacute; &ocirc;ng c&oacute; ngoại h&igrave;nh cao gầy</strong></h3>\r\n\r\n<p>Với d&aacute;ng người hơi gầy, mỏng th&igrave; những qu&yacute; &ocirc;ng n&agrave;y n&ecirc;n tr&aacute;nh chọn những trang phục c&oacute; m&agrave;u sắc giữa quần &aacute;o v&agrave; gi&agrave;y d&eacute;p giống nhau. Những đ&ocirc;i gi&agrave;y mũi nhọn d&agrave;i kh&ocirc;ng phải l&agrave; sự lựa chọn ph&ugrave; hợp với những qu&yacute; &ocirc;ng n&agrave;y v&igrave; n&oacute; sẽ khiến cho d&aacute;ng người của những qu&yacute; &ocirc;ng n&agrave;y trở n&ecirc;n cao hơn, gầy hơn mất c&acirc;n đối. Để d&aacute;ng người trở n&ecirc;n c&acirc;n bằng, những qu&yacute; &ocirc;ng n&ecirc;n chọn cho m&igrave;nh những đ&ocirc;i gi&agrave;y m&otilde;m tr&ograve;n hoặc m&otilde;m vu&ocirc;ng hoặc g&oacute;c cạnh. M&agrave;u sắc đ&ocirc;i gi&agrave;y cũng chỉ cần chọn m&agrave;u sắc ph&ugrave; hợp với bộ trang phục.</p>\r\n\r\n<h3 style="text-align:justify"><strong>C&aacute;ch chọn gi&agrave;y nam cho qu&yacute; &ocirc;ng c&oacute; ngoại h&igrave;nh thấp</strong></h3>\r\n\r\n<p>C&oacute; một d&ograve;ng sản phẩm d&agrave;nh ri&ecirc;ng cho c&aacute;c qu&yacute; &ocirc;ng c&oacute; d&aacute;ng người thấp đ&oacute; l&agrave; những đ&ocirc;i gi&agrave;y đế cao. Những đ&ocirc;i gi&agrave;y đế cao c&oacute; thể gi&uacute;p những qu&yacute; &ocirc;ng n&agrave;y c&oacute; th&ecirc;m tự tin hơn với chiều cao được tăng th&ecirc;m một c&aacute;ch đ&aacute;ng kể nhưng v&ocirc; c&ugrave;ng kh&eacute;o l&eacute;o. Quần v&agrave; gi&agrave;y n&ecirc;n lựa chọn c&oacute; c&ugrave;ng t&ocirc;ng m&agrave;u tr&aacute;i ngược với những qu&yacute; &ocirc;ng c&oacute; d&aacute;ng người cao đầy. V&agrave; điều quan trọng khi chọn cho m&igrave;nh một đ&ocirc;i gi&agrave;y đối với những qu&yacute; &ocirc;ng c&oacute; d&aacute;ng người thấp đ&oacute; l&agrave; h&atilde;y chọn cho m&igrave;nh những đ&ocirc;i gi&agrave;y c&oacute; chi tiết đơn giản, kh&ocirc;ng nhiều chi tiết rườm r&agrave;, n&oacute; c&oacute; thể l&agrave;m cho bạn trở n&ecirc;n lố bịch.</p>\r\n\r\n<p style="text-align:justify">Ngo&agrave;i ra, việc hạn chế chọn những đ&ocirc;i gi&agrave;y cao cổ, gi&agrave;y boot cổ lửng hoặc boot cao cổ n&oacute; sẽ l&agrave; điểm trừ v&ocirc; c&ugrave;ng lớn khiến cho đ&ocirc;i ch&acirc;n của bạn trở n&ecirc;n ngắn đi nhiều.</p>\r\n\r\n<p style="text-align:justify">Ch&uacute;c bạn lựa chọn được đ&ocirc;i gi&agrave;y thực sự ph&ugrave; hợp với d&aacute;ng người của m&igrave;nh.</p>\r\n', 1, 'anh5.jpg', '2018-06-04 03:39:46', '2018-06-04 03:39:46'),
(7, 'Cách chọn giày nam phù hợp với từng trường hợp', 'cach-chon-giay-nam-phu-hop-voi-tung-truong-hop', 'Cách chọn giày nam theo từng phong cách, từng trường hợp khi đi làm hay tham gia các sự kiện,..', '<p>Về phu kiện <a href="http://giaynhapkhau.com/"><strong>gi&agrave;y nam</strong></a> . N&oacute; l&agrave; kh&aacute; phổ biến hiện nay khi nhận được lời mời cho một sự kiện x&atilde; hội cho trang phục để được quyết định l&agrave; ăn mặc sang trọng giản dị. Đối với một số người đ&agrave;n &ocirc;ng n&agrave;y đến dễ d&agrave;ng, trong khi đối với những người kh&aacute;c họ kh&ocirc;ng phải l&agrave; kh&aacute; chắc chắn những g&igrave; n&oacute; c&oacute; nghĩa. Về cơ bản n&oacute; c&oacute; nghĩa l&agrave; mặc một chiếc &aacute;o sơ mi c&oacute; cổ với một chiếc &aacute;o kho&aacute;c thể thao ph&ugrave; hợp với một cặp chất lượng của bộ quần &aacute;o hoặc chinos. Nếu thời tiết ấm rồi để lại chiếc &aacute;o kho&aacute;c ngo&agrave;i l&agrave; chấp nhận được. Th&ocirc;ng thường, n&oacute; kh&ocirc;ng phải l&agrave; cần thiết để đeo c&agrave; vạt, nhưng n&oacute; c&oacute; thể kh&ocirc;ng l&agrave;m tổn thương nếu bạn phối gi&agrave;y kh&ocirc;ng ph&ugrave; hợp với trang phục. Vậy n&ecirc;n bạn h&atilde;y đọc b&agrave;i viết sau đ&acirc;y về c&aacute;ch phối đ&ograve; ph&ugrave; hợp với từng trường hợp nh&eacute;</p>\r\n\r\n<p>Gi&agrave;y tốt nhất m&agrave; bạn c&oacute; thể lựa chọn cho nh&igrave;n ăn mặc sang trọng thường sẽ c&oacute; từ d&ograve;ng gi&agrave;y đi rong thường , hoặc bất kỳ phong c&aacute;ch da đơn giản. Họ c&oacute; thể được gần gũi với những g&igrave; c&oacute; thể được mặc c&ugrave;ng với trang phục kinh doanh b&igrave;nh thường. Trong trường hợp bạn tự hỏi những g&igrave; đ&ocirc;i gi&agrave;y để mặc với chinos , điều n&agrave;y chắc chắn l&agrave; một lựa chọn tuyệt vời. Khi n&oacute;i đến gi&agrave;y thường phục để mặc với quần jean, gi&agrave;y da da l&agrave; một sự lựa chọn tuyệt vời như l&agrave;&nbsp;</p>\r\n\r\n<p><strong>Những mẫu gi&agrave;y nam cho c&aacute;c nh&agrave; doanh nghiệp</strong></p>\r\n\r\n<p>&aacute;o sơ mi v&agrave; c&agrave; vạt Những người đ&agrave;n &ocirc;ng kinh doanh của ti&ecirc;u chuẩn được giảm từ thế giới kinh doanh với c&aacute;i nh&igrave;n kinh doanh b&igrave;nh thường hợp thời trang mới. B&acirc;y giờ l&agrave; chiếc &aacute;o kho&aacute;c ph&ugrave;, mở tại &aacute;o cổ v&agrave; bộ quần &aacute;o giản dị.</p>\r\n\r\n<p>gi&agrave;y thường d&agrave;nh cho nam giới - Oxfords Da Gi&agrave;yGi&agrave;y h&agrave;ng ng&agrave;y cho nam giới cho doanh nghiệp tương tự như ăn mặc sang trọng giản dị nhưng kh&ocirc;ng phải l&agrave; kh&aacute; ch&iacute;nh thức t&igrave;m kiếm. Họ phải c&oacute; một số duy nhất tốt v&agrave; c&oacute; thể l&agrave; một ren l&ecirc;n hoặc trượt tr&ecirc;n. Ch&uacute;ng c&oacute; thể được l&agrave;m bằng c&aacute;c vật liệu như da hoặc bao gồm swede miễn l&agrave; phong c&aacute;ch l&agrave; ở giữa c&aacute;i nh&igrave;n b&igrave;nh thường đầy đủ v&agrave; gi&agrave;y v&aacute;y chuẩn. Một v&iacute; dụ sẽ l&agrave; DADAWEN Oxfords Casual gi&agrave;y da m&agrave;u n&acirc;u hoặc thậm ch&iacute; trong xanh punchy .</p>\r\n\r\n<p><strong>Gi&agrave;y thể thao</strong></p>\r\n\r\n<p>Điều n&agrave;y kh&ocirc;ng nhất thiết c&oacute; nghĩa rằng những phải được đeo chỉ cho hoạt động trực tiếp thể thao. Đ&acirc;y sẽ l&agrave;m việc tốt với c&aacute;c loại trang phục m&agrave; một người đ&agrave;n &ocirc;ng sẽ mang đến một qu&aacute;n bar thể thao hoặc để xem một sự kiện thể thao. Một v&iacute; dụ điển h&igrave;nh của những đ&ocirc;i gi&agrave;y b&igrave;nh thường tốt nhất cho những người đ&agrave;n &ocirc;ng tạo ra một c&aacute;i nh&igrave;n thể thao thường xuy&ecirc;n sẽ l&agrave; Ludlow qu&acirc;n sự được thực hiện bởi Vans .</p>\r\n\r\n<p><strong>Những mẫu gi&agrave;y nam phối với quần jean</strong></p>\r\n\r\n<p>mens gi&agrave;y giản dị với quần jean. Những c&aacute;i nh&igrave;n thể thao thường được đề cập trong chương trước cũng l&agrave; hợp lệ khi n&oacute;i đến gi&agrave;y để mặc với quần jean. Một mọi thời đại cổ điển m&agrave; hoạt động tuyệt vời với quần jeans l&agrave; Converse Chuck gi&agrave;y m&agrave;u trắng, m&agrave;u đen hoặc m&agrave;u punchy. Đ&oacute; l&agrave; tiết kiệm để n&oacute;i rằng n&oacute;i chung, retro nh&igrave;n đ&ocirc;i gi&agrave;y thể thao rất th&iacute;ch hợp c&ugrave;ng với quần jeans nếu bạn th&iacute;ch n&oacute; thể thao. Tiếp đến Converse, một sự lựa chọn tốt cũng sẽ l&agrave; New Balance hoặc một số t&aacute;c phẩm kinh điển của Adidas như Lifestyle Chạy Adidas .</p>\r\n\r\n<p>Nếu bạn kh&ocirc;ng muốn đi gi&agrave;y thể thao, ph&ugrave; hợp với quần jeans cũng l&agrave; những đ&ocirc;i gi&agrave;y thuyền được m&ocirc; tả trong c&aacute;c chương tiếp theo hoặc những đ&ocirc;i gi&agrave;y lười da bao phủ trong c&aacute;i nh&igrave;n ăn mặc sang trọng tr&ecirc;n.</p>\r\n\r\n<p><strong>Mầu gi&agrave;y nam khi đeo ở nh&agrave;</strong></p>\r\n\r\n<p>gi&agrave;y thường - gi&agrave;y thuyền d&agrave;nh cho nam giớiĐối với những đ&ocirc;i gi&agrave;y b&igrave;nh thường tốt nhất cho nam giới để được đeo quanh nh&agrave; c&oacute; một ranh giới giữa những g&igrave; được ph&acirc;n loại như l&agrave; d&eacute;p, v&agrave; những g&igrave; được ph&acirc;n loại như l&agrave; một đ&ocirc;i gi&agrave;y b&igrave;nh thường d&agrave;nh cho nam giới. Một v&iacute; dụ điển h&igrave;nh cho một tốt gi&agrave;y nh&agrave; giản dị sẽ được bất kỳ của những người được t&igrave;m thấy trong c&aacute;c loại gi&agrave;y thuyền .</p>\r\n\r\n<p>Hầu hết đ&agrave;n &ocirc;ng mong muốn được mặc quần &aacute;o gi&agrave;y thường chủ yếu l&agrave; v&igrave; những tiện nghi m&agrave; loại gi&agrave;y được thực hiện cho. Đ&acirc;y l&agrave; một trong những l&yacute; do tại sao điều quan trọng l&agrave; để mua chất lượng mặc giản dị gi&agrave;y v&agrave; để đảm bảo sự ph&ugrave; hợp đ&uacute;ng đắn. Khi n&oacute;i đến c&aacute;c vật liệu c&oacute; một loạt c&aacute;c lựa chọn để lựa chọn. Điều quan trọng l&agrave; c&aacute;c kiểu d&aacute;ng v&agrave; chất liệu tương th&iacute;ch.</p>\r\n\r\n<p><strong>Kiểu c&aacute;ch ph&ugrave; hợp độc đ&aacute;o với những đ&ocirc;i gi&agrave;y b&igrave;nh thường tốt nhất cho hạng mục nam</strong></p>\r\n\r\n<p>C&oacute; rất nhiều phong c&aacute;ch kh&aacute;c nhau m&agrave; sẽ ph&ugrave; hợp với thể loại n&agrave;y. Một phong c&aacute;ch cơ bản m&agrave; n&ecirc;n được bao gồm l&agrave; da m&agrave;u đen cơ bản ren l&ecirc;n gi&agrave;y. Miễn l&agrave; ch&uacute;ng bao gồm da chất lượng tốt v&agrave; tay nghề họ c&oacute; khả năng để được mặc c&ugrave;ng với hầu hết c&aacute;c loại trang phục. Họ sẽ ph&ugrave; hợp với hầu như bất kỳ loại dịp. phong c&aacute;ch kh&aacute;c bao gồm gi&agrave;y da, gi&agrave;y, chạy ăn mặc sang trọng v&agrave; thậm ch&iacute; một số chất lượng h&agrave;ng đầu flip-flops.</p>\r\n\r\n<p><em><strong>Lựa chọn vật liệu cho gi&agrave;y cho nam giới</strong></em></p>\r\n\r\n<p>C&aacute;c m&ugrave;a sẽ phần n&agrave;o sai khiến như những g&igrave; vật liệu l&agrave; những lựa chọn tốt nhất. Cho m&ugrave;a thu / đ&ocirc;ng n&ecirc;n chon những đ&ocirc;i <a href="http://www.giaynhapkhau.com/sp/giay-nam-giay-nam-giay-nam-cao-capgiay-da-nam/25/v=0/giay-nam-da-that.html" title="giay da nam"><strong>gi&agrave;y da nam</strong></a> đủ khả năng bảo vệ tốt nhất. Đối với m&ugrave;a xu&acirc;n da lộn l&agrave; một lựa chọn tốt, v&agrave; cho c&aacute;i n&oacute;ng của m&ugrave;a h&egrave; đặt cược tốt nhất l&agrave; vải mặc giản dị gi&agrave;y. Như với bất cứ điều g&igrave; đi, đế gi&agrave;y giản dị của người đ&agrave;n &ocirc;ng c&oacute; thể thay đổi từ da, nhựa cao su. Mặc d&ugrave; l&agrave; một trong những điểm nổi bật của gi&agrave;y thường l&agrave; thoải m&aacute;i v&igrave; vậy rất nhiều người đ&agrave;n &ocirc;ng th&iacute;ch đi với l&ograve;ng b&agrave;n đệm thường c&oacute; đế cao su để cung cấp cho sự linh hoạt hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'anh6.jpg', '2018-06-04 03:42:39', '2018-06-04 03:42:39'),
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
(19, '12121', NULL, NULL, '<p>21212121</p>\r\n', NULL, 'rn.png', '2020-03-07 07:30:41', '2020-03-07 07:30:41'),
(20, '12121', NULL, NULL, '<p>21212121</p>\r\n', NULL, 'rn.png', '2020-03-07 07:30:51', '2020-03-07 07:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `content`, `number`, `price`, `thunbar`, `category_id_chil`, `sale`, `slug`, `hot`, `note`, `head`, `view`, `created_at`, `updated_at`) VALUES
(25, 'TOYOTA INNOVA MT 2018', NULL, 5, 900000, 'Toyota-Innova.jpg', 1, 0, 'toyota-innova-mt-2018', 1, 'Ghi chú rõ ràng', NULL, NULL, NULL, '2020-02-15 11:30:23'),
(26, 'HYUNDAI I10 HATCHBACK 1.0 AT 2016', NULL, 10, 600000, 'Hyundai i10 Hatchback 1.0 AT.jpg', 7, 0, 'hyundai-i10-hatchback-10-at-2016', 1, NULL, NULL, NULL, NULL, NULL),
(27, 'VINFAST FADIL AT 2019', NULL, 5, 600000, 'vinfast_fadil_brahminy_white.png', 9, 0, 'vinfast-fadil-at-2019', 1, NULL, NULL, NULL, NULL, NULL),
(28, 'TOYOTA VIOS 1.5E (MT) 2007', NULL, 2, 700000, 'Toyota-Vios-1.5 E MT.jpg', 1, 0, 'toyota-vios-15e-mt-2007', 1, NULL, NULL, NULL, NULL, NULL),
(29, 'CHEVROLET CRUZE LTZ 1.8 2016-2018', NULL, 3, 700000, 'Chevrolet-Cruze-LTZ 1.8.jpg', 2, 0, 'chevrolet-cruze-ltz-18-2016-2018', 1, NULL, NULL, NULL, NULL, NULL),
(30, 'KIA CERATO MT 2017', NULL, 2, 700000, 'Kia-Cerato-1.6 MT.jpg', 8, 0, 'kia-cerato-mt-2017', 1, NULL, NULL, NULL, NULL, NULL),
(31, 'HONDA CITY AT 2017', NULL, 3, 700000, 'Honda-City-1.5 AT.jpg', 10, 0, 'honda-city-at-2017', 1, NULL, NULL, NULL, NULL, NULL),
(32, 'FORD FOCUS 1.8 AT 2015', NULL, 4, 700000, 'Ford-Forcus-1.8 AT.jpg', 2, 0, 'ford-focus-18-at-2015', 1, NULL, NULL, NULL, NULL, NULL),
(33, 'TOYOTA FORTUNER', NULL, 2, 900000, 'Toyota-Fortuner-2017.png', 8, 0, 'toyota-fortuner', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `status`, `users_id`, `note`, `time_start`, `number_day`, `product_id`, `type`, `time_stop`, `created_at`, `updated_at`) VALUES
(6, 900000, 2, 10, 'ghi chú giao hàng', '2020-05-02', 4, 33, 1, '2020-05-06', '2020-05-02 14:26:13', '2020-05-02 14:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `adress`, `password`, `avartar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Hường', 'admin@gmail.com', '09090943262', 'Phù Mỹ - Bình Định', '25d55ad283aa400af464c76d713c07ad', NULL, 1, NULL, '2020-05-02 06:55:07'),
(5, 'trương công toàn', 'congtoan.it.ltv@gmail.com', '0909943262', 'Phù Mỹ - Bình Định', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL),
(6, 'NGUYỄN THỊ SANG', 'nguyenthisang@gmail.com', '0909943262', 'Phù Mỹ - Bình Định', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL),
(7, 'test', 'test@gmail.com', '0909943262', 'Phù Mỹ - Bình Định', '25f9e794323b453885f5181f1b624d0b', NULL, 1, NULL, NULL),
(8, 'test', 'test1@gmail.com', '0909943262', 'Phù Mỹ - Bình Định', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 1, NULL, NULL),
(9, 'Trung Phu NA', 'phupt.admin94@gmail.com', '0986420994', 'Ngách 138, Số nhà 62', '25f9e794323b453885f5181f1b624d0b', NULL, 1, NULL, NULL),
(10, 'Nguyên Văn Dược', 'duocnvoit@gmail.com', '0359020898', 'Thái bình', '25d55ad283aa400af464c76d713c07ad', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_contact`
--

CREATE TABLE IF NOT EXISTS `user_contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_contact`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category_chil`
--
ALTER TABLE `category_chil`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `transaction_id` (`transaction_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contact`
--
ALTER TABLE `user_contact`
 ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category_chil`
--
ALTER TABLE `category_chil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_contact`
--
ALTER TABLE `user_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
