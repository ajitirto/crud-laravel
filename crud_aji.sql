-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 08:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_aji`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

CREATE TABLE `cruds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perkenalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cruds`
--

INSERT INTO `cruds` (`id`, `nama`, `perkenalan`, `lokasi`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Shakila Widiastuti', 'Magni ut nisi quae eos impedit ipsam itaque.', 'Psr. Baya Kali Bungur No. 992, Depok 25239, Malut', '4.00', NULL, NULL),
(2, 'Dian Wijayanti', 'Doloremque blanditiis veritatis impedit animi voluptatem voluptate facilis.', 'Ki. Babah No. 963, Administrasi Jakarta Utara 21889, Kaltara', '5.00', NULL, NULL),
(3, 'Amelia Usada', 'Delectus ut a possimus eius eos nesciunt ullam.', 'Jln. Laksamana No. 865, Bogor 88470, Papua', '0.00', NULL, NULL),
(4, 'Umay Martani Wibowo', 'Aut quia aut non eos.', 'Gg. Ikan No. 911, Sawahlunto 16784, Sultra', '0.00', NULL, NULL),
(5, 'Oni Jessica Nuraini M.M.', 'Vel ut ducimus veniam sit laudantium.', 'Jr. Bagonwoto  No. 967, Pematangsiantar 65203, DIY', '9.00', NULL, NULL),
(6, 'Kartika Mardhiyah', 'Id voluptatum in iste facilis sit nulla mollitia.', 'Kpg. Umalas No. 789, Pagar Alam 58408, Sulteng', '9.00', NULL, NULL),
(7, 'Bancar Irawan', 'Sunt id et inventore voluptates ab.', 'Gg. Soekarno Hatta No. 245, Palangka Raya 64760, Sulsel', '1.00', NULL, NULL),
(8, 'Gina Nurdiyanti', 'Sint in neque corrupti ut.', 'Gg. Sutan Syahrir No. 946, Mojokerto 97937, Gorontalo', '5.00', NULL, NULL),
(9, 'Prabowo Pardi Najmudin', 'Et qui delectus quis.', 'Ki. Basoka Raya No. 544, Pasuruan 17798, NTB', '6.00', NULL, NULL),
(10, 'Salwa Lalita Lestari', 'Libero ab ut et ipsum ut.', 'Jln. Padang No. 702, Tegal 31276, Sulut', '0.00', NULL, NULL),
(11, 'Margana Suryono', 'Quos rerum id voluptate assumenda rerum aut et.', 'Kpg. Kartini No. 692, Kediri 21801, Sultra', '2.00', NULL, NULL),
(12, 'Oskar Opan Situmorang M.TI.', 'Nam dolore maxime quia est.', 'Jr. Ters. Jakarta No. 514, Tual 22038, Kaltim', '0.00', NULL, NULL),
(13, 'Praba Suwarno', 'Voluptatem dolores quibusdam explicabo voluptatum rerum ab ad aut.', 'Gg. Wora Wari No. 559, Tidore Kepulauan 17748, Jateng', '4.00', NULL, NULL),
(14, 'Humaira Pudjiastuti', 'Ea labore id aut dolor ut at laborum rerum.', 'Gg. Bawal No. 874, Bau-Bau 18625, Sumbar', '8.00', NULL, NULL),
(15, 'Jail Sihotang', 'Accusantium eum qui fugit magnam.', 'Ki. Halim No. 82, Kotamobagu 23995, Pabar', '6.00', NULL, NULL),
(16, 'Aurora Uyainah', 'Est et et qui.', 'Psr. Abdullah No. 253, Binjai 35871, Jateng', '4.00', NULL, NULL),
(17, 'Tirtayasa Adinata Damanik', 'Iure autem velit tempora quo maxime reiciendis repudiandae.', 'Ds. Pelajar Pejuang 45 No. 39, Pekanbaru 31051, Maluku', '2.00', NULL, NULL),
(18, 'Unjani Oktaviani', 'Deleniti eos praesentium ut asperiores architecto.', 'Psr. Bambu No. 672, Tomohon 62344, Kalteng', '5.00', NULL, NULL),
(19, 'Ajeng Yulia Zulaika S.H.', 'Voluptates veniam assumenda ut aliquam quia.', 'Psr. Ters. Jakarta No. 265, Ambon 49758, Kepri', '4.00', NULL, NULL),
(20, 'Jais Siregar', 'Non velit facilis et nihil eos.', 'Kpg. Baranang Siang Indah No. 653, Administrasi Jakarta Selatan 21140, Jateng', '6.00', NULL, NULL),
(21, 'Faizah Andriani', 'Laudantium et voluptatem sed sit molestiae eum.', 'Jln. Juanda No. 599, Padang 69860, Babel', '6.00', NULL, NULL),
(22, 'Purwadi Iswahyudi', 'Eaque dolor quidem id.', 'Kpg. Halim No. 904, Tangerang 36951, Jatim', '3.00', NULL, NULL),
(23, 'Carub Utama Mansur S.Sos', 'Voluptate saepe repellendus voluptatem reprehenderit maxime.', 'Ds. Setiabudhi No. 551, Parepare 80514, Jateng', '3.00', NULL, NULL),
(24, 'Cakrawangsa Siregar', 'Provident tenetur voluptatibus voluptatem est aspernatur provident vel.', 'Psr. Bank Dagang Negara No. 891, Tidore Kepulauan 94580, Jabar', '8.00', NULL, NULL),
(25, 'Aswani Saefullah', 'Consequatur adipisci eos et perspiciatis commodi ex occaecati qui.', 'Ki. Tambak No. 383, Administrasi Jakarta Selatan 93592, Kaltim', '0.00', NULL, NULL),
(26, 'Kartika Tira Yuliarti', 'Itaque sunt culpa omnis rerum veniam voluptatem.', 'Psr. Mahakam No. 210, Banda Aceh 97347, DKI', '5.00', NULL, NULL),
(27, 'Legawa Saragih', 'Dolor doloribus accusamus magni.', 'Gg. Basket No. 668, Denpasar 91079, Sumbar', '7.00', NULL, NULL),
(28, 'Zelaya Nurdiyanti', 'Laborum ratione nemo itaque blanditiis et.', 'Jr. Cokroaminoto No. 223, Langsa 23628, Kaltim', '3.00', NULL, NULL),
(29, 'Nasrullah Rajata', 'Earum consequuntur voluptatem quia eos blanditiis.', 'Gg. Adisumarmo No. 447, Pangkal Pinang 47160, Babel', '6.00', NULL, NULL),
(30, 'Wulan Lailasari', 'Assumenda officiis deserunt ut et aut omnis.', 'Jr. Yohanes No. 221, Administrasi Jakarta Barat 34253, DKI', '9.00', NULL, NULL),
(31, 'Kayla Oktaviani', 'Iste architecto quidem id ipsum minus omnis quo.', 'Ki. Gedebage Selatan No. 800, Bandung 36015, Sumsel', '7.00', NULL, NULL),
(32, 'Warsita Waluyo', 'Iure fugit dicta sint quas nemo.', 'Jr. Pasirkoja No. 66, Ambon 89136, NTB', '2.00', NULL, NULL),
(33, 'Vinsen Kurniawan', 'Voluptate vitae et nisi sunt est.', 'Ds. Abdullah No. 800, Pontianak 64500, Papua', '6.00', NULL, NULL),
(34, 'Azalea Kiandra Kusmawati M.Kom.', 'Veniam culpa sapiente accusamus repellendus voluptatem error sapiente dolores.', 'Gg. Tubagus Ismail No. 726, Surabaya 32105, Pabar', '4.00', NULL, NULL),
(35, 'Zaenab Umi Winarsih S.Psi', 'Qui voluptates qui ipsum quo est et.', 'Gg. Bakit  No. 716, Banjarbaru 53738, Riau', '3.00', NULL, NULL),
(36, 'Kezia Sudiati', 'Quia et aut possimus aperiam.', 'Jln. Diponegoro No. 604, Binjai 97106, Jateng', '1.00', NULL, NULL),
(37, 'Sakura Victoria Fujiati S.E.', 'Incidunt sunt veniam ut aliquid et.', 'Dk. Sudirman No. 167, Solok 46555, Babel', '8.00', NULL, NULL),
(38, 'Ganjaran Sinaga', 'Perspiciatis ratione harum illo et quis.', 'Psr. Abdul Muis No. 441, Pangkal Pinang 50088, Lampung', '5.00', NULL, NULL),
(39, 'Darsirah Prayitna Setiawan', 'Voluptatem repellendus ut nobis quaerat aut.', 'Jr. Ki Hajar Dewantara No. 824, Banda Aceh 22735, Jateng', '5.00', NULL, NULL),
(40, 'Prasetyo Halim', 'Labore similique totam omnis ut.', 'Psr. Raden Saleh No. 141, Probolinggo 23090, Aceh', '3.00', NULL, NULL),
(41, 'Almira Wijayanti', 'Ipsam error omnis qui magni rem voluptatem voluptas veniam.', 'Psr. Ciumbuleuit No. 6, Mojokerto 43786, Sulsel', '8.00', NULL, NULL),
(42, 'Kuncara Atmaja Napitupulu M.Ak', 'Perspiciatis sunt in soluta est et impedit.', 'Gg. Baladewa No. 791, Blitar 92824, Kaltim', '8.00', NULL, NULL),
(43, 'Ulva Yulianti', 'Quia est possimus officia autem culpa.', 'Dk. Salatiga No. 758, Palembang 99185, Jabar', '1.00', NULL, NULL),
(44, 'Gading Winarno', 'Aut quae dolores rerum eaque.', 'Gg. Sugiono No. 223, Manado 61075, Aceh', '4.00', NULL, NULL),
(45, 'Safina Pudjiastuti', 'Aut quae ea libero nobis quia.', 'Gg. Sutarto No. 445, Bitung 88213, Lampung', '7.00', NULL, NULL),
(46, 'Ina Dewi Halimah', 'Accusantium nulla voluptate ad maiores.', 'Ds. Orang No. 26, Solok 14293, Aceh', '5.00', NULL, NULL),
(47, 'Digdaya Hutapea', 'Sit autem reprehenderit et accusantium reprehenderit harum at.', 'Jln. Lada No. 86, Tarakan 75463, Gorontalo', '8.00', NULL, NULL),
(48, 'Agnes Mardhiyah', 'Maiores laboriosam voluptatem fugit cupiditate.', 'Jr. Teuku Umar No. 648, Subulussalam 13185, Jatim', '3.00', NULL, NULL),
(49, 'Ibun Dabukke S.IP', 'Sapiente ad vitae labore magni libero vel delectus.', 'Psr. Moch. Yamin No. 109, Semarang 67882, Sulut', '9.00', NULL, NULL),
(50, 'Okto Paiman Sitompul M.TI.', 'Suscipit sed labore quasi veritatis voluptatibus nam ut.', 'Ki. Bank Dagang Negara No. 882, Pariaman 79945, Jateng', '7.00', NULL, NULL);

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
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `umur`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Cemeti Gunarto', 33, NULL, '2022-04-12 21:27:40', NULL),
(5, 'Gangsa Samosir', 41, NULL, '2022-04-12 21:27:40', NULL),
(6, 'Salwa Wastuti', 44, NULL, '2022-04-12 21:27:40', NULL),
(7, 'Cici Oliva Puspita', 37, NULL, '2022-04-12 21:27:40', NULL),
(8, 'Dartono Kusumo', 36, NULL, NULL, NULL),
(9, 'Hardi Asmadi Uwais S.Ked', 26, NULL, NULL, NULL),
(10, 'Gina Halimah', 39, NULL, '2022-04-12 21:13:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2022_04_11_025941_create_cruds_table', 1),
(6, '2022_04_12_095321_create_mahasiswa_table', 1),
(7, '2022_04_12_100343_create_pegawais_table', 2);

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
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'luffy', 'Psr. B.Agam Dlm No. 569, Bekasi 58446, Malut', NULL, '2022-04-12 20:37:48'),
(6, 'Gamanto Malik Hutapea', 'Kpg. Abdul Rahmat No. 822, Cilegon 94633, Sumut', NULL, NULL),
(9, 'Uli Anggraini S.Gz', 'Ki. Taman No. 502, Tangerang Selatan 31895, Gorontalo', NULL, NULL),
(11, 'Daliman Garan Sihotang', 'Ki. Qrisdoren No. 228, Bandar Lampung 10396, Sulut', NULL, NULL),
(12, 'aji tirto prayogo', 'klaten wonosari jawa tengah', '2022-04-12 20:18:23', '2022-04-12 20:18:23'),
(13, 'aji tirto prayogo', 'klaten wonosari jelobo', '2022-04-12 20:18:38', '2022-04-12 20:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

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
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruds`
--
ALTER TABLE `cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cruds`
--
ALTER TABLE `cruds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
