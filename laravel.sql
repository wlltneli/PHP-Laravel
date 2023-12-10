-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 05:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `cover`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Batu Fondasi', 'batu-fondasi', NULL, NULL, '2022-12-20 02:42:56', '2022-12-20 02:42:56'),
(4, 'Semen', 'semen', NULL, NULL, '2022-12-20 02:43:55', '2022-12-20 02:43:55'),
(5, 'Pasir', 'pasir', NULL, NULL, '2022-12-20 02:44:22', '2022-12-20 02:44:22'),
(6, 'Kayu Dan Bambu', 'kayu-dan-bambu', NULL, NULL, '2022-12-20 02:45:14', '2022-12-20 02:45:14'),
(7, 'Kerikil / Batu - batu Pecah', 'kerikil-batu-batu-pecah', NULL, NULL, '2022-12-20 02:46:07', '2022-12-20 02:46:07'),
(8, 'Batu Bata', 'batu-bata', NULL, NULL, '2022-12-20 02:46:34', '2022-12-20 02:46:34'),
(9, 'Genteng', 'genteng', NULL, NULL, '2022-12-20 02:47:06', '2022-12-20 02:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\Category', 3, '933da222-55b6-41e5-9205-e32b3d83ecec', 'photo', '63a1839e4b2f8_Batu fondasi', '63a1839e4b2f8_Batu-fondasi.jpg', 'image/jpeg', 'public', 'public', 16121, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:42:56', '2022-12-20 02:42:56'),
(4, 'App\\Models\\Category', 4, 'da2e3be5-2cd4-496e-93d3-7372fa45af13', 'photo', '63a183da0a952_semen', '63a183da0a952_semen.jpg', 'image/jpeg', 'public', 'public', 16464, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:43:55', '2022-12-20 02:43:55'),
(5, 'App\\Models\\Category', 5, 'cb417827-b1ec-4f76-bdda-06e292dd867d', 'photo', '63a183f4ed663_mengenal-jenis-dan-ciri-pasir-yang-bermutu', '63a183f4ed663_mengenal-jenis-dan-ciri-pasir-yang-bermutu.jpg', 'image/jpeg', 'public', 'public', 51062, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:44:22', '2022-12-20 02:44:22'),
(6, 'App\\Models\\Category', 6, '97630945-6267-43e3-9070-46e797298b59', 'photo', '63a184299e43c_kayu&bambu', '63a184299e43c_kayu&bambu.jpg', 'image/jpeg', 'public', 'public', 13014, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:45:14', '2022-12-20 02:45:14'),
(7, 'App\\Models\\Category', 7, 'f4515016-4338-40e8-b2a0-c1587ed00480', 'photo', '63a1845e8254f_kerikil&batupecah', '63a1845e8254f_kerikil&batupecah.jpg', 'image/jpeg', 'public', 'public', 9337, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:46:07', '2022-12-20 02:46:07'),
(8, 'App\\Models\\Category', 8, '43745bef-21e1-4d19-906d-3325aaa7c78a', 'photo', '63a1847907e80_61ef6e0da27a1', '63a1847907e80_61ef6e0da27a1.jpg', 'image/jpeg', 'public', 'public', 92160, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:46:34', '2022-12-20 02:46:34'),
(9, 'App\\Models\\Category', 9, 'fb05f8ed-7421-485b-b55b-d872b59e77a5', 'photo', '63a184998d129_Genteng', '63a184998d129_Genteng.jpg', 'image/jpeg', 'public', 'public', 59382, '[]', '[]', '[]', '[]', 1, '2022-12-20 02:47:06', '2022-12-20 02:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_30_011648_create_categories_table', 1),
(6, '2022_04_19_071658_create_media_table', 1),
(7, '2022_04_27_063355_create_tags_table', 1),
(8, '2022_04_28_210054_create_products_table', 1),
(9, '2022_05_05_055458_create_product_tag_table', 1),
(10, '2022_08_15_055828_create_orders_table', 1),
(11, '2022_08_16_053218_create_order_items_table', 1),
(12, '2022_08_16_053450_create_shipments_table', 1),
(13, '2022_08_16_053945_create_payments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biller_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `quantity`, `description`, `details`, `weight`, `path`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Genteng Keramik Kanmuri', 'genteng-keramik-kanmuri', 98000, 56, 'Genteng keramik terbuat dari olahan tanah liat dan sudah digunakan sejak dahulu. Genteng keramik sangat disenangi karena tidak mudah rusak dan hancur meski ditimpa dengan barang berbobot hingga 30 kg. Genteng keramik adalah salah satu jenis material atap yang paling banyak ditemui.', 'Genteng 11,5 pcs = 1meter persegi, berat 3.8kg/pcs. Nok 3,3 pcs = 1meter, berat = 3.4kg/pcs.', '30.00', 'img/kEwSTnyKiu549nzxYVHwVINavDPB2J3uhUZD2Jx4.jpg', 9, '2022-12-20 02:52:49', '2022-12-20 02:52:49'),
(4, 'Pasir Elod / Beton', 'pasir-elod-beton', 188000, 51, 'Pasir Elod adalah pasir yang paling halus dibanding pasir beton dan pasir pasang. Harga Pasir ini jauh lebih murah dibanding Jenis Pasir yang lainnya. Ciri ciri pasir elod adalah apabila dikepal dia akan menggumpal dan tidak akan puyar kembali. Pasir ini masih ada campuran tanahnya dan warnanya hitam. Jenis pasir ini tidak bagus untuk bangunan. Pasir ini biasanya hanya untuk campuran pasir beton agar bisa digunakan untuk plesteran dinding, atau untuk campuran pembuatan batako', 'Pasir adalah material butiran yang terdiri dari partikel batuan dan mineral yang terpecah halus. Ukuran pasir pasir lebih halus dari kerikil dan lebih kasar dari lanau. Pasir juga bisa mengacu pada suatu kelas tekstur dari tanah atau jenis tanah; yaitu, tanah yang mengandung lebih dari 85 persen partikel berukuran pasir berdasarkan massa.', '10.00', 'img/3T0DoiSGwU6wyWTxLis6H1b9LNZK9sgTLrWBpqhd.jpg', 5, '2022-12-20 06:27:36', '2022-12-20 06:27:36'),
(5, 'Batu Bata Merah', 'batu-bata-merah', 1200, 25, 'Bata merah merupakan salah satu jenis bahan dasar pembangunan rumah yang sudah sangat umum digunakan di Indonesia, dari zaman dulu hingga zaman modern seperti saat ini bata merah memang sudah menjadi salah satu bahan wajib di dalam membangun rumah. Cukup bisa dimaklumi, bata merah masih lebih banyak digunakan daripada bata ringan atau batako press, karena selain sudah teruji kekuatannya, mendapatkan jenis material ini pun tidak susah.', 'Batu bata merupakan salah satu bahan material sebagai bahan konstruksi. Batu bata terbuat dari tanah liat yang dibakar sampai berwarna kemerah-merahan. Seiring perkembangan teknologi, penggunaan batu bata semakin menurun. Munculnya material-material baru seperti gipsum, bambu yang telah diolah, cenderung lebih dipilih karena memiliki harga lebih murah dan secara arsitektur lebih indah.', '1.00', 'img/5N6CZYzjwVXJbOg2PBoiSeqeO4kMB7bfxWyhu23R.jpg', 7, '2022-12-20 06:35:02', '2022-12-20 06:35:02'),
(6, 'Kayu Jati', 'kayu-jati', 2300000, 45, 'Kayu merupakan suatu bahan konstruksi yang didapatkan dari tumbuhan dalam alam. Kayu adalah bagian keras tanaman yang digolongkan kepada pohon. Penggunaan kayu sebagai konstruksi bangunan sudah di kenal dan banyak dipakai sebelum orang mengenal beton dan baja.', 'kayu jati adalah Kayu jati yang dikenal sebagai kayu kelas kuat I dan kelas awet II memang tidak perlu diragukan lagi kualitasnya. Kayu jati termasuk golongan kayu ideal karena kekuatan, keawetan, dan keindahan serat yang dimilikinya. Kayu ini sangat tahan terhadap serangan rayap dan jamur.', '10.00', 'img/yCxmKx0nSU8znVu9TLgxLn1cMs927eiJZ9b2AEPs.jpg', 6, '2022-12-20 06:38:29', '2022-12-20 06:38:29'),
(7, 'Semen Portland', 'semen-portland', 80000, 25, 'Semen portland adalah jenis semen yang paling umum yang digunakan secara umum di seluruh dunia sebagai bahan dasar beton, mortar, plester, dan adukan non-spesialisasi. Semen ini dikembangkan dari jenis lain kapur hidraulis di Britania Raya pada pertengahan abad ke-19, dan biasanya berasal dari batu kapur', 'Semen adalah zat yang digunakan untuk merekat batu, bata, batako, maupun bahan bangunan lainnya. Sedangkan kata semen sendiri berasal dari caementum, yang artinya \"memotong menjadi bagian-bagian kecil tak beraturan\". Meski sempat populer pada zamannya, nenek moyang semen made in Napoli ini tak berumur panjang.', '50.00', 'img/67GrC6xtYpjIF3oNJfERZqD0uqATESpKy74kRO8t.jpg', 4, '2022-12-20 06:43:34', '2022-12-20 06:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `track_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Bahan Bangungan', 'bahan-bangungan', '2022-12-20 02:47:28', '2022-12-20 02:47:28'),
(4, 'Mesin Bor', 'mesin-bor', '2022-12-20 02:47:39', '2022-12-20 02:47:39'),
(5, 'Mur', 'mur', '2022-12-20 02:47:44', '2022-12-20 02:47:44'),
(6, 'Tangga', 'tangga', '2022-12-20 02:47:53', '2022-12-20 02:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `address`, `address2`, `province_id`, `city_id`, `postcode`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$UTdDB9/uQ5YHM/7kZ/Jdd.hd11IF/rc9iSleza/829uO71ga4OT/K', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Willton Elias', 'willtonbass@gmail.com', NULL, '$2y$10$nFMfWG7b4d7oj8dEZMweQerWyX40QR0vm/suBpHglNmMCvfk1RTWe', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'HnCzx93409feeUZRBz8mPBb9Lymh0lkmk0dQNJ8G79OmkUFu9ukSwz7QGk4H', '2022-12-14 06:58:16', '2022-12-14 06:58:16'),
(3, 'skater30', 'atrasshalhan@gmail.com', NULL, '$2y$10$2DYLR9E.8OVyGt6FUr24xug56JX9VQJOxsiSCB2v.38obJzM5.P2O', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 09:18:48', '2022-12-20 09:18:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_payment_token_index` (`payment_token`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_name_index` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
