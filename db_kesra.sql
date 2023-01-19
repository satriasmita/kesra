-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 08:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kesra`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_title` varchar(255) DEFAULT NULL,
  `agenda_waktu` varchar(50) DEFAULT NULL,
  `agenda_tempat` varchar(50) DEFAULT NULL,
  `agenda_pukul` varchar(10) DEFAULT NULL,
  `agenda_penjelasan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`agenda_id`, `agenda_title`, `agenda_waktu`, `agenda_tempat`, `agenda_pukul`, `agenda_penjelasan`) VALUES
(9, NULL, '2022-11-02', 'DPRD Kota Pariaman', '11.00 WIB', 'Pembahasan tentang anggaran kota');

-- --------------------------------------------------------

--
-- Table structure for table `atribut_puskesmas`
--

CREATE TABLE `atribut_puskesmas` (
  `id_atribut` int(11) NOT NULL,
  `jenis_atribut` varchar(100) NOT NULL,
  `nama_atribut` varchar(200) NOT NULL,
  `dekripsi_atribut` text NOT NULL,
  `gambar_atribut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atribut_puskesmas`
--

INSERT INTO `atribut_puskesmas` (`id_atribut`, `jenis_atribut`, `nama_atribut`, `dekripsi_atribut`, `gambar_atribut`) VALUES
(3, 'Atribut Pengunjung Puskesmas', 'Kokarde Pasien Prioritas', 'Dekripsi Pasien Prioritas', '/uploads/atribut/abf8d1ad203e2763dc7e25d4ead3ff9e.jpg'),
(4, 'Atribut pengunjung Puskesmas', 'Kokarde Ibu Hamil', 'Digunakan oleh Pasien Ibu hamil', '/uploads/atribut/2f916cd6ae0ad99ede1c50c1ea19c42a.jpeg'),
(5, 'Atribut pengunjung Puskesmas', 'kokarde TB', 'Digunakan oleh Pasien TB', '/uploads/atribut/119b335cbbd728308b1635c584ca0512.jpeg'),
(6, 'Atribut pengunjung Puskesmas', 'Kokarde Lansia', 'Digunakan oleh Pasien Lansia', '/uploads/atribut/ab4490abd1b11e76bfe8f5670c80f5f1.jpeg'),
(7, 'Atribut Tamu Puskesmas', 'Kokarde Tamu', 'Digunakan oleh Tamu Puskesmas', '/uploads/atribut/2670655323a3a9e9bab8fdd98083da84.jpeg'),
(8, 'Atribut Pegawai Puskesmas', 'Pin Pegawai', 'Pin ceria yang digunakan oleh Seluruh Pegawai Puskesmas', '/uploads/atribut/155fa200f20479518f13dcac2a54d0c9.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `badan`
--

CREATE TABLE `badan` (
  `badan_id` int(11) NOT NULL,
  `badan_nama` varchar(200) DEFAULT NULL,
  `badan_jabatan` varchar(200) DEFAULT NULL,
  `badan_kategori_id` int(11) DEFAULT NULL,
  `badan_image` varchar(100) DEFAULT NULL,
  `badan_ttl` varchar(255) DEFAULT NULL,
  `badan_agama` int(2) DEFAULT NULL,
  `badan_suamiistri` varchar(255) DEFAULT NULL,
  `badan_anak` varchar(255) DEFAULT NULL,
  `badan_alamat` longtext DEFAULT NULL,
  `badan_pengalaman_organisasi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `badan`
--

INSERT INTO `badan` (`badan_id`, `badan_nama`, `badan_jabatan`, `badan_kategori_id`, `badan_image`, `badan_ttl`, `badan_agama`, `badan_suamiistri`, `badan_anak`, `badan_alamat`, `badan_pengalaman_organisasi`) VALUES
(1, 'Nana', 'Pimpinan', 1, '1623743503-lapor BARU LO LIAK.png', 'Padang / 30 Juni 1997', 1, '-', '-', 'Padang', '-');

-- --------------------------------------------------------

--
-- Table structure for table `bagian_upt`
--

CREATE TABLE `bagian_upt` (
  `bagupt_id` int(11) NOT NULL,
  `bagupt_nama` varchar(200) NOT NULL,
  `bagupt_deskripsi` text NOT NULL,
  `bagupt_logoicon` varchar(300) NOT NULL,
  `bagupt_layout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_instansi`
--

CREATE TABLE `data_instansi` (
  `id` int(11) NOT NULL,
  `nama_upt` varchar(100) NOT NULL,
  `alamat_upt` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `no_wa` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_instansi`
--

INSERT INTO `data_instansi` (`id`, `nama_upt`, `alamat_upt`, `telp`, `no_wa`, `email`, `website`) VALUES
(1, 'Puskesmas Marunggi', 'Jl. Ambacang No.Desa, Kp. Baru Padusunan, Pariaman Tim., Kota Pariaman, Sumatera Barat 25526', '0813-6348-4344', '081363484344', 'puskesmaskpbarupadusunan@gmail.com', 'puskesmaskpbarupadusunan.pariamankota.go.id');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `desa_id` int(11) NOT NULL,
  `nama_desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kd_desa` int(4) DEFAULT NULL,
  `id_kecamatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`desa_id`, `nama_desa`, `kd_desa`, `id_kecamatan`) VALUES
(1, 'KARAN AUR', 1001, 1),
(2, 'KAMPUNG PERAK', 1002, 1),
(3, 'LOHONG', 1003, 1),
(4, 'PASIR', 1004, 1),
(5, 'KAMPUNG PONDOK', 1005, 1),
(6, 'PONDOK II', 1006, 1),
(7, 'KAMPUNG JAWA I', 1007, 1),
(8, 'KAMPUNG JAWA II', 1008, 1),
(9, 'ALAI GELOMBANG', 1009, 1),
(10, 'JAWI-JAWI I', 1010, 1),
(11, 'JAWI-JAWI II', 1011, 1),
(12, 'JALAN BARU', 1012, 1),
(13, 'TARATAK', 1013, 1),
(14, 'JALAN KERETA API', 1014, 1),
(15, 'UJUNG BATUNG', 1015, 1),
(16, 'JATI HILIR', 1016, 1),
(17, 'PAUH BARAT', 2017, 1),
(18, 'PAUH TIMUR', 2018, 1),
(19, 'RAWANG', 2019, 1),
(20, 'KAMPUNG BARU', 2020, 1),
(21, 'CIMPARUH', 2021, 1),
(22, 'JATI MUDIK', 2025, 1),
(23, 'AMPALU', 2005, 2),
(24, 'APAR', 2006, 2),
(25, 'TANJUNG SABAR', 2007, 2),
(26, 'CUBADAK AIR SELATAN', 2008, 2),
(27, 'SIKAPAK BARAT', 2009, 2),
(28, 'SIKAPAK TIMUR', 2010, 2),
(29, 'MANGGUNG', 2011, 2),
(30, 'CUBADAK AIR UTARA', 2012, 2),
(31, 'TUNGKAL SELATAN', 2013, 2),
(32, 'NARAS HILIR', 2014, 2),
(33, 'NARAS I', 2015, 2),
(34, 'BALAI NARAS', 2016, 2),
(35, 'PADANG BIRIK-BIRIK', 2017, 2),
(36, 'SINTUK', 2018, 2),
(37, 'SUNGAI RAMBAI', 2019, 2),
(38, 'TUNGKAL UTARA', 2020, 2),
(39, 'CUBADAK AIR', 2021, 2),
(40, 'PASIR SUNUR', 2006, 3),
(41, 'BALAI KURAI TAJI', 2007, 3),
(42, 'PAUH KURAI TAJI', 2008, 3),
(43, 'SIMPANG', 2009, 3),
(44, 'TOBOH PALABAH', 2010, 3),
(45, 'MARABAU', 2011, 3),
(46, 'BATANG TAJONGKEK', 2012, 3),
(47, 'SIKABU', 2013, 3),
(48, 'SUNGAI KASAI', 2014, 3),
(49, 'PALAK ANEH', 2015, 3),
(50, 'KAMPUNG APAR', 2016, 3),
(51, 'MARUNGGI', 2017, 3),
(52, 'TALUK', 2018, 3),
(53, 'PADANG CAKUR', 2019, 3),
(54, 'PUNGGUNG LADING', 2020, 3),
(55, 'RAMBAI', 2021, 3),
(56, 'TALAGO SARIK', 2001, 4),
(57, 'PAKASAI', 2002, 4),
(58, 'KAMPUNG BARU PADUSUNAN', 2003, 4),
(59, 'KAMPUNG GADANG', 2004, 4),
(60, 'KOTO MARAPAK', 2005, 4),
(61, 'BATANG KABUNG', 2006, 4),
(62, 'BATO', 2007, 4),
(63, 'AIR SANTOK', 2008, 4),
(64, 'CUBADAK MENTAWAI', 2009, 4),
(65, 'SUNGAI SIRAH', 2010, 4),
(66, 'SUNGAI PASAK', 2011, 4),
(67, 'BUNGO TANJUNG', 2012, 4),
(68, 'KAMPUNG TANGAH', 2013, 4),
(69, 'KAMPUNG KANDANG', 2014, 4),
(70, 'KALUAT', 2015, 4),
(71, 'KAJAI', 2016, 4),
(99, 'DEMO', 2021, 5);

-- --------------------------------------------------------

--
-- Table structure for table `fraksi`
--

CREATE TABLE `fraksi` (
  `fraksi_id` int(11) NOT NULL,
  `fraksi_nama` varchar(200) DEFAULT NULL,
  `fraksi_jabatan` varchar(200) DEFAULT NULL,
  `fraksi_kategori_id` int(11) DEFAULT NULL,
  `fraksi_image` varchar(100) DEFAULT NULL,
  `fraksi_ttl` varchar(255) DEFAULT NULL,
  `fraksi_agama` int(2) DEFAULT NULL,
  `fraksi_suamiistri` varchar(255) DEFAULT NULL,
  `fraksi_anak` varchar(255) DEFAULT NULL,
  `fraksi_alamat` longtext DEFAULT NULL,
  `fraksi_pengalaman_organisasi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fraksi`
--

INSERT INTO `fraksi` (`fraksi_id`, `fraksi_nama`, `fraksi_jabatan`, `fraksi_kategori_id`, `fraksi_image`, `fraksi_ttl`, `fraksi_agama`, `fraksi_suamiistri`, `fraksi_anak`, `fraksi_alamat`, `fraksi_pengalaman_organisasi`) VALUES
(2, 'Dito', 'Pimpinan', 2, '1624934974-4171313.png', 'Padang / 12 Maret 1972', 1, '-', '-', 'Padang', '-');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_title` varchar(100) DEFAULT NULL,
  `galeri_image` varchar(255) DEFAULT NULL,
  `galeri_desc` text DEFAULT NULL,
  `galeri_date` datetime DEFAULT NULL,
  `galeri_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_status`) VALUES
(1, 'Menu', 1),
(2, 'Slider', 1),
(3, 'Tentang dan Jam Layanan', 1),
(4, 'Pelayanan Kami', 1),
(5, 'Berita Terbaru', 1),
(6, 'Galeri', 1),
(7, 'Pengumuman', 1),
(8, 'Artikel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_badan`
--

CREATE TABLE `kategori_badan` (
  `badan_kategori_id` int(11) NOT NULL,
  `badan_kategori` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_badan`
--

INSERT INTO `kategori_badan` (`badan_kategori_id`, `badan_kategori`) VALUES
(1, 'Badan Anggaran'),
(2, 'Badan Kehormatan'),
(3, 'Badan Musyawarah'),
(4, 'Badan Pembentukan Peraturan Daerah');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `kategori_id` int(11) NOT NULL,
  `kategori_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`kategori_id`, `kategori_name`) VALUES
(1, 'Berita'),
(2, 'Wakil Kita'),
(3, 'Info Sekretariat Dewan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_fraksi`
--

CREATE TABLE `kategori_fraksi` (
  `fraksi_kategori_id` int(11) NOT NULL,
  `fraksi_kat` varchar(100) DEFAULT NULL,
  `fraksi_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_fraksi`
--

INSERT INTO `kategori_fraksi` (`fraksi_kategori_id`, `fraksi_kat`, `fraksi_status`) VALUES
(1, 'Fraksi Partai Demokrasi Indonesia Perjuangan', 1),
(2, 'Fraksi Partai Gerindra', 1),
(3, 'Fraksi Partai Keadilan Sejahtera', 1),
(4, 'Fraksi Partai Demokrat', 1),
(5, 'Fraksi Partai Amanat Nasional', 1),
(6, 'Fraksi Partai Solidaritas Indonesia', 1),
(7, 'Fraksi Partai NasDem', 1),
(8, 'Fraksi Partai Golkar', 1),
(9, 'Fraksi PKB – PPP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_komisi`
--

CREATE TABLE `kategori_komisi` (
  `komisi_kategori_id` int(11) NOT NULL,
  `komisi_kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_komisi`
--

INSERT INTO `kategori_komisi` (`komisi_kategori_id`, `komisi_kategori`) VALUES
(1, 'Komisi A - Bidang Pemerintahan'),
(2, 'Komisi B - Bidang Perekonomian'),
(3, 'Komisi C - Bidang Keuangan'),
(4, 'Komisi D - Bidang Pembangunan'),
(5, 'Komisi E - Bidang Kesra');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatan_id` int(11) NOT NULL,
  `nama_kec` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kd_kecamatan` int(2) DEFAULT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `index` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatan_id`, `nama_kec`, `kd_kecamatan`, `id_kota`, `alamat`, `index`) VALUES
(1, 'Pariaman Tengah', 1, 77, 'Jln. Jend. Sudirman No. 161 Telp (0751) 91005 Pariaman', 'Parteng'),
(2, 'Pariaman Utara', 2, 77, 'Kecamatan Pariaman Utara', 'Parut'),
(3, 'Pariaman Selatan', 3, 77, '', ''),
(4, 'Pariaman Timur', 4, 77, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `komisi`
--

CREATE TABLE `komisi` (
  `komisi_id` int(11) NOT NULL,
  `komisi_nama` varchar(200) DEFAULT NULL,
  `komisi_jabatan` varchar(200) DEFAULT NULL,
  `komisi_kategori_id` int(11) DEFAULT NULL,
  `komisi_image` varchar(100) DEFAULT NULL,
  `komisi_ttl` varchar(255) DEFAULT NULL,
  `komisi_agama` int(2) DEFAULT NULL,
  `komisi_suamiistri` varchar(255) DEFAULT NULL,
  `komisi_anak` varchar(255) DEFAULT NULL,
  `komisi_alamat` longtext DEFAULT NULL,
  `komisi_pengalaman_organisasi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komisi`
--

INSERT INTO `komisi` (`komisi_id`, `komisi_nama`, `komisi_jabatan`, `komisi_kategori_id`, `komisi_image`, `komisi_ttl`, `komisi_agama`, `komisi_suamiistri`, `komisi_anak`, `komisi_alamat`, `komisi_pengalaman_organisasi`) VALUES
(2, 'dewi', 'pimpinan', 2, '1623729462-e-protokoler.png', 'Padang Panjang / 12 Juni 1995', 1, '-', '-', 'hggfhfghf', '-');

-- --------------------------------------------------------

--
-- Table structure for table `master_juz`
--

CREATE TABLE `master_juz` (
  `juz_id` int(11) NOT NULL,
  `juz_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_juz`
--

INSERT INTO `master_juz` (`juz_id`, `juz_nama`) VALUES
(1, 'Juz 1 : QS. (1). Al-Faatihah ayat 1 s/d  (2). Al-B'),
(2, 'Juz 2 : QS. (2). Al-Baqarah ayat 142 s/d (2). Al-B');

-- --------------------------------------------------------

--
-- Table structure for table `master_mda`
--

CREATE TABLE `master_mda` (
  `mda_id` int(11) NOT NULL,
  `mda_nama` varchar(50) DEFAULT NULL,
  `mda_alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_mda`
--

INSERT INTO `master_mda` (`mda_id`, `mda_nama`, `mda_alamat`) VALUES
(1, 'At Taqwa', 'Jalan Baru');

-- --------------------------------------------------------

--
-- Table structure for table `master_sekolah`
--

CREATE TABLE `master_sekolah` (
  `sekolah_id` int(11) NOT NULL,
  `sekolah_nama` varchar(100) DEFAULT NULL,
  `sekolah_alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_sekolah`
--

INSERT INTO `master_sekolah` (`sekolah_id`, `sekolah_nama`, `sekolah_alamat`) VALUES
(1, 'SD 001 Jawi Jawi', 'Jawi Jawi'),
(2, 'SD 02 Kampung Baru', 'Kampung Baru');

-- --------------------------------------------------------

--
-- Table structure for table `media_social`
--

CREATE TABLE `media_social` (
  `sosmed_id` int(11) NOT NULL,
  `sosmed_icon` varchar(250) NOT NULL,
  `sosmed_url` varchar(250) NOT NULL,
  `sosmed_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media_social`
--

INSERT INTO `media_social` (`sosmed_id`, `sosmed_icon`, `sosmed_url`, `sosmed_status`) VALUES
(2, '1', 'tes', 1),
(3, '2', 'tes', 1),
(4, '3', 'tes', 1),
(5, '4', 'tes', 1),
(7, '5', 'tes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_parent` int(11) DEFAULT NULL,
  `menu_nama` varchar(100) NOT NULL,
  `menu_sorter` int(11) DEFAULT NULL,
  `menu_url` varchar(250) NOT NULL,
  `menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_parent`, `menu_nama`, `menu_sorter`, `menu_url`, `menu_status`) VALUES
(2, NULL, 'Profil', 1, 'site/profile', 1),
(4, NULL, 'Layanan', 1, 'site/all-pelayanan', 1),
(6, 2, 'Sejarah & Visi Misi', 1, 'site/visimisi', 1),
(7, 2, 'Struktur Organisasi', 2, 'site/struktur-organisasi', 1),
(8, 2, 'Tupoksi', 3, 'site/tupoksi', 1),
(10, 2, 'Daftar Pegawai', 5, 'site/pegawai-opd', 1),
(11, NULL, 'Berita', 1, 'site/all-berita', 1),
(12, 13, 'Pengumuman', 2, 'site/all-pengumuman', 1),
(13, NULL, 'Informasi', 1, '-', 1),
(15, 2, 'Program & Kegiatan', 4, 'site/program-kegiatan', 1),
(17, 13, 'Download Doc & App', NULL, 'site/unggah-doc-apl', 1),
(18, 13, 'Agenda', 3, '-', 1),
(19, NULL, 'Hubungi Kami', NULL, '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_managemen`
--

CREATE TABLE `menu_managemen` (
  `menu_id` int(11) NOT NULL,
  `menu_parent` int(11) DEFAULT 0,
  `menu_nama` varchar(200) NOT NULL,
  `menu_type` varchar(30) NOT NULL,
  `menu_item` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_managemen`
--

INSERT INTO `menu_managemen` (`menu_id`, `menu_parent`, `menu_nama`, `menu_type`, `menu_item`, `menu_order`, `menu_status`) VALUES
(3, NULL, 'Beranda', 'statis_page', '3', 1, 1),
(4, NULL, 'Profil', 'link', '#', 2, 1),
(5, 4, 'Sekilas Puskesmas', 'post', '18', 1, 1),
(6, 4, 'Struktur Organisasi', 'post', '19', 2, 1),
(7, 4, 'Visi Misi & Motto', 'post', '20', 3, 1),
(11, 17, 'Berita', 'category', '2', 2, 1),
(12, 17, 'Pengumuman', 'category', '1', 3, 1),
(13, NULL, 'Direktori', 'statis_page', '4', 6, 1),
(14, NULL, 'Galeri', 'post', '99', 7, 2),
(15, NULL, 'Hubungi Kami', 'statis_page', '5', 6, 1),
(16, 21, 'Atribut Puskesmas', 'statis_page', '6', 2, 1),
(17, NULL, 'Informasi', 'link', '#', 3, 1),
(18, 17, 'Artikel Kami', 'category', '6', 1, 1),
(19, 21, 'Indeks Kepuasan Masyarakat', 'statis_page', '7', 1, 1),
(20, 4, 'Maklumat Pelayanan', 'post', '37', 5, 1),
(21, NULL, 'Fasilitas', 'link', '#', 4, 1),
(22, 21, 'Sarana dan Prasarana', 'statis_page', '8', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1527920853),
('m150214_044831_init_user', 1527922737);

-- --------------------------------------------------------

--
-- Table structure for table `pasutri`
--

CREATE TABLE `pasutri` (
  `pasutri_id` int(11) NOT NULL,
  `pasutri_nama` varchar(50) DEFAULT NULL,
  `pasutri_ttl` varchar(100) DEFAULT NULL,
  `pasutri_pendidikan` varchar(50) DEFAULT NULL,
  `pasutri_pekerjaan` varchar(100) DEFAULT NULL,
  `pasutri_alamat` text DEFAULT NULL,
  `pasutri_suami` varchar(50) DEFAULT NULL,
  `pasutri_ttlsuami` varchar(100) DEFAULT NULL,
  `pasutri_pendidikansuami` varchar(50) DEFAULT NULL,
  `pasutri_alamatsuami` text DEFAULT NULL,
  `pasutri_tglnikah` date DEFAULT NULL,
  `pasutri_pesta` date DEFAULT NULL,
  `pasutri_fotosuami` varchar(255) DEFAULT NULL,
  `pasutri_alamatnikah` text DEFAULT NULL,
  `pasutri_istri_nik` varchar(16) NOT NULL,
  `pasutri_suami_nik` varchar(16) NOT NULL,
  `pasutri_istri_usia` int(2) NOT NULL,
  `pasutri_suami_usia` int(2) NOT NULL,
  `pasutri_istri_nomorhp` varchar(12) NOT NULL,
  `pasutri_suami_nomor_hp` varchar(12) NOT NULL,
  `pasutri_istri_statuskawin` varchar(20) NOT NULL,
  `pasutri_suami_statuskawin` varchar(20) NOT NULL,
  `pasutri_istri_bacaalquran` varchar(20) NOT NULL,
  `pasutri_suami_bacaalquran` varchar(20) NOT NULL,
  `pasutri_fotoistri` varchar(255) NOT NULL,
  `pasutri_suami_pekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasutri`
--

INSERT INTO `pasutri` (`pasutri_id`, `pasutri_nama`, `pasutri_ttl`, `pasutri_pendidikan`, `pasutri_pekerjaan`, `pasutri_alamat`, `pasutri_suami`, `pasutri_ttlsuami`, `pasutri_pendidikansuami`, `pasutri_alamatsuami`, `pasutri_tglnikah`, `pasutri_pesta`, `pasutri_fotosuami`, `pasutri_alamatnikah`, `pasutri_istri_nik`, `pasutri_suami_nik`, `pasutri_istri_usia`, `pasutri_suami_usia`, `pasutri_istri_nomorhp`, `pasutri_suami_nomor_hp`, `pasutri_istri_statuskawin`, `pasutri_suami_statuskawin`, `pasutri_istri_bacaalquran`, `pasutri_suami_bacaalquran`, `pasutri_fotoistri`, `pasutri_suami_pekerjaan`) VALUES
(4, 'siti', 'Padang', 'SMA', 'IRT', 'dfsfsdf', 'budi', 'Pariaman', 'SMA', 'fsdfsd', '2023-01-16', '2023-01-16', '1.png', 'fgsdfsdf', '123', '456', 30, 31, '0821', '0823', 'BELUM MENIKAH', 'BELUM MENIKAH', 'LANCAR', 'LANCAR', '1.png', 'WIRAUSAHA');

-- --------------------------------------------------------

--
-- Table structure for table `penasehat`
--

CREATE TABLE `penasehat` (
  `penasehat_id` int(11) NOT NULL,
  `penasehat_nama` varchar(50) NOT NULL,
  `pasutri_id` int(11) NOT NULL,
  `penasehat_tanggaldimulai` date NOT NULL,
  `penasehat_keckua` varchar(20) NOT NULL,
  `penasehat_keterangan` text NOT NULL,
  `penasehat_predikat` varchar(20) NOT NULL,
  `penasehat_tanggalselesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penasehat`
--

INSERT INTO `penasehat` (`penasehat_id`, `penasehat_nama`, `pasutri_id`, `penasehat_tanggaldimulai`, `penasehat_keckua`, `penasehat_keterangan`, `penasehat_predikat`, `penasehat_tanggalselesai`) VALUES
(4, 'Tiko', 4, '2023-01-17', '1', 'jkyukuyjty', 'A', '2023-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan_dewan`
--

CREATE TABLE `pimpinan_dewan` (
  `pimpinan_id` int(11) NOT NULL,
  `pimpinan_image` varchar(255) DEFAULT NULL,
  `pimpinan_ttl` varchar(200) DEFAULT NULL,
  `pimpinan_agama` int(2) DEFAULT NULL,
  `pimpinan_suamiistri` varchar(100) DEFAULT NULL,
  `pimpinan_anak` varchar(100) DEFAULT NULL,
  `pimpinan_alamat` longtext DEFAULT NULL,
  `pimpinan_pengalaman_organisasi` longtext DEFAULT NULL,
  `pimpinan_nama` varchar(50) DEFAULT NULL,
  `pimpinan_jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `posting_id` int(11) NOT NULL,
  `homepage_kategori` int(11) NOT NULL,
  `posting_category` int(11) NOT NULL DEFAULT 0,
  `posting_menu` int(11) NOT NULL,
  `posting_judul` varchar(255) NOT NULL,
  `posting_icon` varchar(255) DEFAULT NULL,
  `posting_image_utama` varchar(255) DEFAULT NULL,
  `posting_deskripsi` text NOT NULL,
  `posting_status` int(11) NOT NULL,
  `posting_layout` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL,
  `trans_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`posting_id`, `homepage_kategori`, `posting_category`, `posting_menu`, `posting_judul`, `posting_icon`, `posting_image_utama`, `posting_deskripsi`, `posting_status`, `posting_layout`, `create_at`, `update_at`, `create_by`, `update_by`, `trans_ip`) VALUES
(18, 1, 0, 5, 'Sekilas Puskesmas Marunggi', NULL, '/uploads/posting/image_utama/8782683755704c4fe2dbd90238543e92.jpeg', '<p style=\"text-align:justify\">Sejarah Puskesmas</p>\r\n\r\n<p style=\"text-align:justify\">Puskesmas Kp. Baru Padusunan sebelumnya merupakan Puskesmas pembantu (Pustu) bagian dari wilayah kerja Puskesmas Naras kecamatan pariaman Utara. Pada Tahun 2005 Dinas Kesehatan Kota Pariaman melakukan pemekaran Pelayanan Kesehatan Dasar, salah satunya berdirilah Puskesmas Kp. Baru Padusunan yang terletak di desa Kp. Baru, memiliki wilayah kerja 10 Desa, diantaranya: Desa Kp. Baru, desa Kp. Gadang, Desa Pakasai, Desa Talago Sariak, Desa Ampalu, desa cubadak aia selatan, desa cubadak aia, desa sikapak barat, Desa Sikapak Timur, Desa Tanjung Sabar.</p>\r\n\r\n<p style=\"text-align:justify\">Tahun 2009 Puskesmas Kp. Baru Padusunan pindah ke Desa Kp. Gadang dengan bangunan Baru serta penambahan fungsi puskesmas sebagai Puskesmas Ramah anak dan rawat Inap (PONED), dengan memiliki 8 desa wilayah kerja yaitu : desa Kp. gadang, desa Kp. baru, desa talago sariak, desa pakasai, desa kotomarapak, desa bato, desa batang kabuang, desa sungai sirah, seiringan dengan pemekaran kecamatan, menjadi kecamatan Pariaman Timur.</p>\r\n\r\n<p style=\"text-align:justify\">sejalan dengan perkembangan Puskesmas dimana terjadinya peningkatan pelayanan rawat inap, maka dinas kesehatan dan Pemko pariaman melakukan perubahan puskesmas menjadi rumah sakit kota pariaman pada tahun 2017. dan diresmikan oleh bpk. Mukhlis, R selaku walikota pariaman dengan nama &quot; RSUD. dr. Sadikin&quot;</p>\r\n\r\n<p style=\"text-align:justify\">Pelayanan dasar dipindahkan kembali ke puskesmas lama yang terletak didesa Kp. baru Padusunan pada Bulan Februari tahun 2018, untuk pemenuhan kebutuhan pelayanan dasar secara standar pemko melakukan pemugaran puskesmas ini, Pelayanan puskesmas dipindahkan sementara waktu ke Pustu Talago sariak&nbsp; dan kembali beroperasional ke gedung yang baru desa Kp. Baru pada tanggal 5 februari 2019 sampai dengan sekarang.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '2021-05-29 11:01:51', '2021-06-16 11:16:12', 1, 1, '127.0.0.1');
INSERT INTO `posting` (`posting_id`, `homepage_kategori`, `posting_category`, `posting_menu`, `posting_judul`, `posting_icon`, `posting_image_utama`, `posting_deskripsi`, `posting_status`, `posting_layout`, `create_at`, `update_at`, `create_by`, `update_by`, `trans_ip`) VALUES
(19, 1, 0, 6, 'Struktur Organisasi', NULL, '/uploads/posting/image_utama/320770df9f20bb1f2df6fab83d6a684e.jpg', '<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">PROFIL UPTD PUSKESMAS KP. BARU PADUSUNAN </span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:27.08600616455078pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">A. VISI MISI&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:25.77800750732422pt; margin-right:2.89599609375pt; text-align:justify\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Visi Puskesmas Kampung Baru Padusunan adalah mengacu pada visi&nbsp; Kementrian Kesehatan dan merujuk pada Visi Dinas Kesehatan Kota Pariaman&nbsp; serta sesuai dengan kondisi dengan wilayah kerja Puskesmas Kp. Baru Padusunan&nbsp; yaitu &ldquo;Mewujudkan Masyarakat Mandiri untuk Hidup Sehat di Wilayah Kerja&nbsp; Puskesmas Kampung Baru Padusunan&rdquo;.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.970001220703125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Misi Puskesmas Kp Baru Padusunan adalah:&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.358001708984375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1. Memberikan pelayanan secara profesional&nbsp;&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:48.38600158691406pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2. Mendorong masyarakat untuk hidup sehat&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:48.54200744628906pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">3. Membina kerja sama lintan program dan lintas sektor&nbsp;&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:27.110008239746094pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">B. MOTO&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:47.93000793457031pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Moto Puskesmas Kp Baru Padusunan adalah:&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:104.84199523925781pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&ldquo; CERIA &rdquo;&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.07000732421875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Tata Nilai:&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.20201110839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">C : Cerdas dalam bertindak&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.010009765625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">E : Edukatif dalam pelayanan&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.07000732421875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">R : Responsif terhadap keluhan pasien&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.08201599121094pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">I : Inovatif dalam bekerja&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:52.04600524902344pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">A : Aspiratif dalam masukan dan kritikan&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:27.24200439453125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">C. MAKLUMAT&nbsp;&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:41.87001037597656pt; margin-right:3.194000244140625pt; text-align:justify\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Maklumat Puskesmas Kampung Baru Padusunan adalah dengan ini&nbsp; kami menyatakan akan siap memberikan pelayanan kesehatan masyarakat&nbsp; sesuai janji dan standar pelayanan yang telah ditetapkan dan apabila tidak&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:41.97801208496094pt; margin-right:3.09197998046875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">menepati janji layanan secara professional dan sepenuh hati tegurlah dan&nbsp; laporkan ke unit pengaduan.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:27.098007202148438pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">D. REKAP SOP&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.118011474609375pt; margin-right:3.20196533203125pt; text-align:justify\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1. SOP Pelayanan Kesehatan Ibu (ANTENATAL CARE/ANC TERPADU)&nbsp; berdasarkan SK Kepala UPTD Puskesmas Kp. Baru Padusunan Nomor:&nbsp; 01/A.I.SK/HC-KBP/I/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:48.14601135253906pt; margin-right:2.94000244140625pt; text-align:justify\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2. SOP Pelayanan Kesehatan Anak (STIMULASI, DETEKSI DAN&nbsp; INTERVENSI DINI TUMBUH KEMBANG BALITA DAN APRAS)&nbsp; berdasarkan SK Kepala UPTD Puskesmas Kp. Baru Padusunan Nomor:&nbsp; 10/SK/HC-KBP/I/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:47.93000793457031pt; margin-right:3.14202880859375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">3. SOP Pelayanan Kesehatan Jiwa berdasarkan SK Kepala UPTD&nbsp; Puskesmas Kp. Baru Padusunan Nomor: 08/SK/HC-KBP/I/2020 4. SOP Pelayanan Gizi di Puskesmas berdasarkan SK Kepala UPTD&nbsp; Puskesmas Kp. Baru Padusunan Nomor: 13/SK/HC-KBP/I/2020 5. SOP Pelayanan UKS (Usaha Kesehatan Gizi) berdasarkan SK Kepala&nbsp; UPTD Puskesmas Kp. Baru Padusunan Nomor: 11/SK/HC-KBP/I/2020 6. SOP Pelayanan UKGS (Usaha Kesehatan Gigi Sekolah) berdasarkan SK&nbsp; Kepala UPTD Puskesmas Kp. Baru Padusunan Nomor: 15/SK/HC KBP/I/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:48.02601623535156pt; margin-right:0.10601806640625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">7. SOP Pelayanan TB PARU berdasarkan SK Kepala UPTD Puskesmas Kp.&nbsp; Baru Padusunan Nomor: 14/SK/HC-KBP/I/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:48.14601135253906pt; margin-right:2.9959716796875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">8. SOP Penjaringan Pasien Kusta berdasarkan SK Kepala UPTD&nbsp; Puskesmas Kp. Baru Padusunan Nomor: 16/SK/HC-KBP/I/2020 9. SOP Posyandu Lansia berdasarkan SK Kepala UPTD Puskesmas Kp.&nbsp; Baru Padusunan Nomor: 12/SK/HC-KBP/I/2020</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.118011474609375pt; margin-right:3.166015625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp;10. SOP Pelayanan Ruang Tindakan berdasarkan SK Kepala UPTD&nbsp; Puskesmas Kp. Baru Padusunan Nomor: 097/CVII.SK/HC-KBP/I/2019 11. SOP Pelayanan Poli Umum berdasarkan SK Kepala UPTD Puskesmas&nbsp; Kp. Baru Padusunan Nomor: 09/SK/HC-KBP/I/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.118011474609375pt; margin-right:0.093994140625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">12. SOP Inovasi (Jumparikes) berdasarkan SK Kepala UPTD Puskesmas Kp.&nbsp; Baru Padusunan Nomor: 141/SK/HC-KBPI/1/2019&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.118011474609375pt; margin-right:3.238037109375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">13. SOP Pelayanan Prolanis berdasarkan SK Kepala UPTD Puskesmas Kp.&nbsp; Baru Padusunan Nomor: 17/SK/HC-KBPI/1/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.118011474609375pt; margin-right:3.2020263671875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">14. SOP Posyandu Balita berdasarkan SK Kepala UPTD Puskesmas Kp.&nbsp; Baru Padusunan Nomor: 18/SK/HC-KBPI/1/2020&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:49.118011474609375pt; margin-right:3.2020263671875pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:26.81000518798828pt; margin-right:86.39999389648438pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">E. SISTEM PENGELOLAAN PENGADUAN MASYARAKAT Alur Pengaduan:&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:45.75801086425781pt; margin-right:3.0360107421875pt; text-align:justify\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1. Keluhan Pasien/ Masyarakat dapat di kumpulkan melalui&nbsp; email:puskesmaspadusunan88@gmail.com, kotak kritik dan saran, kotak&nbsp; kepuasan, buku keluhan di jejaring kesehatan, dan dapat juga melalui&nbsp; pengaduan langsung serta dengan SMS Center/ kontak person pimpinan:&nbsp; 081363484344 (Doni Paslah, SKM) .&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.7860107421875pt; margin-right:3.177978515625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2. Penerimaan keluhan, Puskesmas akan melakukan pengumpulan catatan&nbsp; keluhan&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.57000732421875pt; margin-right:3.29803466796875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">3. Penyelesaian keluhan, Keluhan akan dianalisa dan di tindak lanjuti oleh&nbsp; Tim pengaduan dan koordinasi dengan pimpinan dan bagian terkait.\\ 4. Pengaduan/ Keluhan selesai, akan di diumumkan di papan informasi&nbsp; 5. Pengaduan belum selesai, akan dilaporkan ke Dinas Kesehatan.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-right:6.001983642578125pt; text-align:right\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:27.050003051757812pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">F. HASIL SURVEY KEPUASAN MASYARAKAT&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:41.84600830078125pt; margin-right:2.829986572265625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Indeks Kepuasan Masyarakat (IKM) UPTD Puskesmas Kp. Baru&nbsp; Padusunan Dinas Kesehatan Tahun 2020 adalah 81.11 dengan teknik penyebaran kuesioner kepada responden/ pasien yang berisikan 9 pertanyaan&nbsp; yang bersumber dari pedoman survey yang dikeluarkan Permenpan NO 14&nbsp; Tahun 2017. </span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:41.84600830078125pt; margin-right:2.829986572265625pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.952003479003906pt\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G. SARANA DAN PRASARANA&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:16.03400421142578pt; margin-right:2.761993408203125pt; text-align:justify\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sarana Prasarana yang dimiliki oleh Puskesmas Kp Baru Padusunan pada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Umumnya sudah memadai, namun ada beberapa prasarana yang belum dimiliki&nbsp; oleh Puskesmas, berikut rinciannya:&nbsp;</span></p>\r\n\r\n<div dir=\"ltr\" style=\"float:left; margin-left:0pt\">\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:none\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>No&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>Yang Telah Dimiliki&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>Yang Belum Dimiliki</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:7.092002868652344pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Pendaftaran/ Rekam Medis&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang UBM</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.120002746582031pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Poli Umum&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Poli Jiwa</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.2760009765625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">3&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Poli Ibu/Anak/KB&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Rumah Dinas</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.903999328613281pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">4&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Poli Imunisasi</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.144004821777344pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">5&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Tindakan</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.288002014160156pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">6&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Poli Gigi</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">7&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt; margin-right:2.506011962890625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Konsultasi Gizi/ Klinik&nbsp; Sanitasi/ Ruang Laktasi</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.431999206542969pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">8&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Promkes/ Kesling</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.120002746582031pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">9&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ruang Sholat</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">10&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Toilet</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">11&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.6999969482421875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ambulance</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\"><strong>4. </strong></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:5.987998962402344pt\"><strong>H.INOVASI PELAYANAN PUBLIK&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:16.31000518798828pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">a) Program ADMEN&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. SICERIA (id Barcode, Layanan kepegawaian Satu Pintu)&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:15.902008056640625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">b) Program UKM&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:70.238pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1. POS GIZI&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-right:64.466pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. JUMPARIKES (Jum&rsquo;at Pagi Periksa Kesehatan) </span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-right:50.39pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3. KOPPERIBA (Komunitas Percepatan Penurunan Aki/Akaba)&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:69.05001831054688pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">4. PERMATA Fe (Pemantauan Remaja Makan Tablet Fe)&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:69.29002380371094pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">5. S3 (Sedekah Seribu Sehari)</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:69.43402099609375pt; margin-right:3.266082763671875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">6. POSTER Imunisasi (Penyuluhan Sosialisasi Pemberian Sertifikat dan&nbsp; Reward Imunisasi)&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:16.16600799560547pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">c) Program UKP&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp; &nbsp; 1. TOL TB (Melayani Pasien TB Tanpa Ikut Nomor Antrian)&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:66.14601135253906pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">&nbsp;2. SPBU (Sabtu Pagi Makan Buah)&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:66.14601135253906pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:6.0240020751953125pt; margin-right:67.92999267578125pt\"><strong>&nbsp;SALAH SATU INOVASI PUSKESMAS KP BARU PADUSUNAN</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:6.0240020751953125pt; margin-right:67.92999267578125pt\"><strong>&nbsp;</strong><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">JUMPARIKES&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:45.902008056640625pt; margin-right:2.89599609375pt; text-align:justify\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">JUMPARIKES (JUM&#39;AT PAGI PERIKSA KESEHATAN)&nbsp; merupakan suatu program lintas sektor yang di bentuk oleh puskesmas kp.&nbsp; baru padusunan dalam rangka meningkatkan derajat kesehatan masyarakat di&nbsp; wilayah kerja puskesmas kp. baru padusunan yang menggabungkan beberapa&nbsp; program menjadi satu dalam pelaksanaannya. Jumparikes dilaksanakan pada&nbsp; pagi setiap hari Jumat di seluruh Mesjid di wilayah kerja Kp. Baru padusunan. Jumparikes telah terlaksana sejak tahun 2019, dimana pembentukan&nbsp; Jumparikes tertulis dalam Surat Keputusan Kepala UPTD Puskesmas Kp.&nbsp; Baru Padusunan Nomor: 141/SK/HC-KBP/I/2019.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:45.92601013183594pt; margin-right:2.91998291015625pt; text-align:justify\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">Tujuan umum dari JUMPARIKES adalah menjaring masyarakat usia&nbsp; produktif dan lansia terutama bagi yang laki-laki yang berada pada wilayah&nbsp; kerja puskesmas kp. baru padusunan.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:41.990013122558594pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">Tujuan khusus dari JUMPARIKES:&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.87001037597656pt; margin-right:3.218017578125pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">a) Meningkatkan kerja sama lintas sektor dan lintas program dalam kegiatan&nbsp; posbindu PTM, Yandu Lansia, Puskesmas Keliling, dan Screening Usia Produktif.&nbsp;&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.462005615234375pt; margin-right:3.16998291015625pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">b) Meningkatkan pelayanan kesehatan pada masyarakat yang tidak mampu&nbsp; berkunjung ke puskesmas.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.72601318359375pt; margin-right:6.19390869140625pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">c) Meingkatkan capaian penderita penyakit Hipertensi dan DM di wilayah kerja Puskesmas Kp. Baru Padusunan.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:46.03401184082031pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">Untuk Sumber Daya Inovasi ini 5M:&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:46.9580078125pt; margin-right:-0.20001220703125pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">1. Man (Tenaga Kerja): Tenaga Kerja yang terlibat dalam inovasi yaitu:&nbsp; Pimpinan, Ka TU, Dokter, Perawat, Bidan, Tenaga Gizi, Tenaga Refraksi,&nbsp; Tenaga Labor, Tenaga Apotik, Promkes, Sopir Ambulance dan juga&nbsp; kader.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.7860107421875pt; margin-right:3.000030517578125pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">2. Money (Modal): inovasi ini memanfaatkan sumber daya yang ada antara&nbsp; lain dari DPA BOK Puskesmas Kp. Baru&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.9420166015625pt; margin-right:2.77398681640625pt; text-align:justify\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">3. Materials (Bahan Baku): Untuk melakukan program ini bahan yang&nbsp; diperlukan antara lain: meteran, timbangan, dan serta strip untuk&nbsp; pemeriksan labor&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.57000732421875pt; margin-right:3.23797607421875pt; text-align:justify\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">4. Machine (Mesin): alat yang digunakan saat melakukan program ini antara&nbsp; lain alat pemeriksaan Gula Darah, Cholesterol, dan Asam Urat, alat&nbsp; pemeriksaan Tekanan Darah&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.81001281738281pt; margin-right:3.20196533203125pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">5. Method (Metode): Pada melaksanakan program ini dilakukan metode 5&nbsp; Meja.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.57000732421875pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">Mekanisme/ cara kerja JUMPARIKES terdiri dari 5 meja.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.60600280761719pt; margin-right:3.26190185546875pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">A. Meja 1, Warga datang dan mendaftarkan diri dengan menggunakan KTP/&nbsp; NIK, dimeja pertama ini wrga dibantu oleh kader untuk melakukan pengukuran TB, BB, Lingkar Perut, dan Tekanan Darah&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.6300048828125pt; margin-right:3.177978515625pt; text-align:justify\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">B. Meja 2, Warga akan melakukan konsultasi/ screening dengan Petugas&nbsp; Kesehatan mengenai faktor resiko penyakit tidak menular (PTM) pada&nbsp; individu dan keluarga.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.76200866699219pt; margin-right:2.853973388671875pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">C. Meja 3, Dilakukan pemeriksaan labor, baik pemeriksaan Gula Darah,&nbsp; Cholesterol, dan Asam Urat.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">D. Meja 4, Dilakukan konsultasi dan edukasi pada warga oleh Dokter&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:44.57000732421875pt; margin-right:3.21405029296875pt\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">E. Meja 5, Tempat pengambilan Obat bagi warga yang di indikasikan&nbsp; minum obat oleh dokter.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:45.92601013183594pt; margin-right:2.91998291015625pt; text-align:justify\"><span style=\"background-color:transparent; color:#222222; font-family:Times,serif; font-size:12pt\">Selain memberi pelayanan JUMPARIKES juga memberi buku&nbsp; Monitoring Faktor Resiko Penyakit Tidak Menular pada Individu dan&nbsp; Keluarga.Jumparikes dengan beberapa muatan layanannya berkontribusi&nbsp; terhadap pencapaian sasaran SDG&#39;s no 3. Memastikan Kehidupan yang sehat&nbsp; dan menduung kesejahteraan bagi semua untuk semua usia, seirama dengan&nbsp; target yang akan dicapai pada tahun 2030 yakni mengurangi hingga sepertiga&nbsp; angka kematian dini akibat penyakit tidak menular, melalui pencegahan dan&nbsp; pengobatan, serta meningkatkan kesehatan mental dan kesejahteraan.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:41.84600830078125pt; margin-right:2.829986572265625pt\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:25.886009216308594pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">I. DATA PERSONIL (SDM) </span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:26.318008422851562pt; margin-right:3.21405029296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Puskesmas Kp Baru Padusunan mempunyai sebanyak 36 orang denan rincian&nbsp; sebagai berikut: </span></p>\r\n\r\n<div dir=\"ltr\" style=\"float:left; margin-left:0pt\">\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:none\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>No&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>Kualifikasi SDM&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>Pendidikan&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><strong>Jumlah (Orang)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:7.092002868652344pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.711997985839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Pimpinan&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.120002746582031pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.9279937744140625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ka TU&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.2760009765625pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">3&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.711997985839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Dokter Umum&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.910003662109375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.903999328613281pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">4&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.711997985839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Dokter Gigi&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.144004821777344pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">5&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.711997985839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Perawat&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1 2, DIII 3&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.93402099609375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">5</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.288002014160156pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">6&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Bidan&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.95196533203125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">D4 3, DIII 7&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">10</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">7&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.711997985839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Penyuluh Kesehatan masyarakat&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.910003662109375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.431999206542969pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">8&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.6999969482421875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Administrator Kesehatan&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.066009521484375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.120002746582031pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">9&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Tenaga kesling&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1 1, DIII 1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.910003662109375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">10&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.663993835449219pt; margin-right:2.253997802734375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Ahli Teknologi Laboratorium&nbsp; Medik</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.95196533203125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">D III&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">11&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Tenaga Rekam Medis&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.95196533203125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">D III&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">12&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Refraksionis Optision&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.95196533203125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">D III&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">13&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Tenaga Gizi&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.95196533203125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">D III&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">14&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Tenaga Administrasi&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">S1&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.910003662109375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">15&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.7239990234375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Tenaga Kefarmasian&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.95196533203125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">DIII&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">16&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.711997985839844pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Pekarya&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">SLTA&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"text-align:center\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">17&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.023994445800781pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Sopir&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.26397705078125pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">SLTA&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.88201904296875pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:5.6399993896484375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">Jumlah&nbsp;</span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p dir=\"ltr\" style=\"margin-left:6.066009521484375pt\"><span style=\"background-color:transparent; color:#000000; font-family:Times,serif; font-size:12pt\">36</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '2021-05-29 11:15:39', '2021-06-16 11:16:46', 1, 1, '127.0.0.1');
INSERT INTO `posting` (`posting_id`, `homepage_kategori`, `posting_category`, `posting_menu`, `posting_judul`, `posting_icon`, `posting_image_utama`, `posting_deskripsi`, `posting_status`, `posting_layout`, `create_at`, `update_at`, `create_by`, `update_by`, `trans_ip`) VALUES
(20, 1, 0, 11, 'Visi Misi dan Motto Puskesmas Marunggi', NULL, '/uploads/posting/image_utama/d1d8521030f2796664324e6d7d1c9d91.jpg', '<p>Program Puskesmas</p>\r\n\r\n<p><strong>1. UPAYA KESEHATAN WAJIB</strong></p>\r\n\r\n<p><strong>a. Promosi Kesehatan</strong> :penyuluhan, pengkajian PHBS,pembinaan Batra, pembinaan Toga,&nbsp; kesorga</p>\r\n\r\n<p>b. <strong>Program kesehatan Lingkungan</strong> : klinik sanitasi, pengolahan sampah medis, pembinaan dan praktek CTPS, pemantauan Tempat Umum, pemantauan tempat pengolahan makanan, validasi data rumah sehat, epidemiologi dan fogging, pengambilan sampel air dan inspeksi sanitasi, survey Jentik.</p>\r\n\r\n<p>c. <strong>Kesehatan Ibu dan anak serta KB</strong> : Kesehatan Ibu, Anak, KB</p>\r\n\r\n<p>d. <strong>Pencegahan dan pemberantasan penyakit menular</strong> : Imunisasi,P2TB, Surveillans, Diare, ISPA, Kusta, DBD, Malaria, IMS/ HIV</p>\r\n\r\n<p>e<strong>. Upaya Perbaikan Gizi Masyarakat</strong> : penanggulangan gizi makro, penanggulangan gizi mikro, pojok Gizi, Pos Gizi, SKPG (pemantauan pola konsumsi, asi ekslusif)</p>\r\n\r\n<p>f. <strong>Upaya Pengobatan</strong></p>\r\n\r\n<p><strong>2. UPAYA KESEHATAN PENUNJANG</strong></p>\r\n\r\n<p>b. laboratorium sederhana</p>\r\n\r\n<p>c. pencatatan dan pelaporan</p>\r\n\r\n<p><strong>3. UPAYA KESEHATAN PENGEMBANGAN</strong></p>\r\n\r\n<p>a. UKS/UKGS</p>\r\n\r\n<p>b. Upaya kesehatan Gigi dan mulut</p>\r\n\r\n<p>c. Upaya Kesehatan Mata</p>\r\n\r\n<p>d. Upaya Perawatan Kesehatan Masyarakat</p>\r\n\r\n<p>e. Upaya Pembinaan Pengobatan Tradisional</p>\r\n\r\n<p>f. Upaya Kesehatan Kerja</p>\r\n\r\n<p>g. Upaya Kesehatan olah Raga</p>\r\n\r\n<p>h. Upaya Kesehatan Jiwa</p>\r\n\r\n<p><strong>4. PROGRAM UNGGULAN</strong></p>\r\n\r\n<p>a. JUMPARIKES</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '2021-05-29 11:16:51', '2021-06-16 11:16:58', 1, 1, '127.0.0.1'),
(37, 1, 0, 4, 'Maklumat Pelayanan', NULL, '/uploads/posting/image_utama/b2adf1f1570ea997ce7dd7b5a6f1361b.jpg', '<div class=\"col-md-4 col-sm-6 med-icon\">\r\n<div class=\"icon\">&nbsp;</div>\r\n\r\n<div class=\"content\">\r\n<h4>Blood Test</h4>\r\n\r\n<div class=\"text\">\r\n<p>Proin nec lacus lacus. Sed vitae consectetur est, et mattis felis. Fusce lacinia nibh vitae fermentum finibus. Donec malesuada efficitur dapibus.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 col-sm-6 med-icon\">\r\n<div class=\"icon\">&nbsp;</div>\r\n\r\n<div class=\"content\">\r\n<h4>Blood Test</h4>\r\n\r\n<div class=\"text\">\r\n<p>Proin nec lacus lacus. Sed vitae consectetur est, et mattis felis. Fusce lacinia nibh vitae fermentum finibus. Donec malesuada efficitur dapibus.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 col-sm-6 med-icon\">\r\n<div class=\"icon\">&nbsp;</div>\r\n\r\n<div class=\"content\">\r\n<h4>Blood Test</h4>\r\n\r\n<div class=\"text\">\r\n<p>Proin nec lacus lacus. Sed vitae consectetur est, et mattis felis. Fusce lacinia nibh vitae fermentum finibus. Donec malesuada efficitur dapibus.</p>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 1, '2021-06-15 14:41:17', NULL, 1, NULL, '127.0.0.1'),
(39, 7, 1, 12, 'Testing Pengumuman', '/uploads/posting/icon/44763ec4cde4da45075e49912e95eaf5.jpg', '/uploads/posting/image_utama/44763ec4cde4da45075e49912e95eaf5.jpg', '<p>dfdfsdfd dsf&nbsp; wqq q wewr htyuyt jhgnc dsrewr&nbsp; tyty hhrth</p>\r\n', 1, 1, '2022-11-08 09:28:45', NULL, 19, NULL, '::1'),
(40, 6, 4, 14, 'Testing galeri', '/uploads/posting/icon/8684c9f2d88ac91e7b313ff1836e83c6.jpg', '/uploads/posting/image_utama/8684c9f2d88ac91e7b313ff1836e83c6.jpg', '<p>maka sdhjshda adsagd eurye bsjbcs sgdasighd sdgasgd sdiasgd sdisud&nbsp; sdsjds sdisadgas&nbsp; sgdgsd sdisgd</p>\r\n', 1, 1, '2022-11-08 09:30:11', NULL, 19, NULL, '::1'),
(41, 1, 0, 3, 'Visi', '/uploads/posting/icon/e09479daf130881904bba226001333f9.jpg', '/uploads/posting/image_utama/e09479daf130881904bba226001333f9.jpg', '<p>fdfdffd</p>\r\n', 1, 1, '2022-11-08 10:10:18', '2022-11-08 10:11:30', 19, 19, '::1'),
(42, 6, 4, 14, 'Testing  galeri 2', '/uploads/posting/icon/b77206a01a65a13e8a149223d57c948b.jpg', '/uploads/posting/image_utama/b77206a01a65a13e8a149223d57c948b.jpg', '<p>fdfdfsd dfsd dfsdsd d</p>\r\n', 1, 1, '2022-11-08 10:12:54', NULL, 19, NULL, '::1'),
(43, 5, 2, 11, 'Berita testing', '/uploads/posting/icon/b1b42a01b7da6e29d67ee92e6ad31eb1.png', '/uploads/posting/image_utama/b1b42a01b7da6e29d67ee92e6ad31eb1.png', '<p>fsdf fewf gtrh trh ukukgr ttret jhytj grt</p>\r\n', 1, 1, '2022-11-08 10:21:23', NULL, 19, NULL, '::1'),
(44, 5, 2, 11, 'Berita testing 2', '/uploads/posting/icon/b3ae495251c27e65bc7cf7bdc14e5466.png', '/uploads/posting/image_utama/b3ae495251c27e65bc7cf7bdc14e5466.jpg', '<p>fgfg ght yjty yju yht ter</p>\r\n', 1, 1, '2022-11-08 10:22:17', NULL, 19, NULL, '::1'),
(45, 5, 2, 11, 'Berita testing 3', NULL, NULL, '<p>fgdf gffd gfdgdfg gfdg</p>\r\n', 1, 1, '2022-11-08 10:22:51', NULL, 19, NULL, '::1'),
(46, 5, 2, 11, 'Berita testing 4', NULL, NULL, '<p>fgg gfdg egr esger</p>\r\n', 1, 1, '2022-11-08 10:23:20', NULL, 19, NULL, '::1'),
(47, 5, 2, 11, 'Testing todaye', '/uploads/posting/icon/847b60ec69ae410cca6d191a3a39e331.jpg', '/uploads/posting/image_utama/847b60ec69ae410cca6d191a3a39e331.jpg', '<p>ewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeqewdqwdqw qeqweqwe qeq</p>\r\n', 1, 1, '2022-11-16 08:37:28', NULL, 19, NULL, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `posting_kategori`
--

CREATE TABLE `posting_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posting_kategori`
--

INSERT INTO `posting_kategori` (`id_kategori`, `nama_kategori`) VALUES
(0, 'Tak Berkategori'),
(1, 'Pengumuman'),
(2, 'Berita'),
(3, 'Tipe Page'),
(4, 'Galeri'),
(5, 'Program'),
(6, 'Artikel');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nim` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `kode_jurusan` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `created_at`, `updated_at`, `full_name`, `nim`, `kode_jurusan`, `timezone`) VALUES
(1, 1, '2018-06-01 23:58:57', '2021-05-26 20:07:36', 'Suci Ramadhani', '', '', 'Africa/Conakry'),
(18, 18, '2020-12-07 20:05:26', '2020-12-07 20:05:26', 'Admin Website', '', '', NULL),
(19, 19, '2021-05-26 20:24:04', '2021-05-26 20:24:04', 'Admin OKE', '', '', NULL),
(20, 20, '2021-06-21 20:08:38', '2021-06-21 20:08:38', 'Shindy Satriasmita', '', '', NULL),
(21, 21, '2022-11-21 19:28:53', '2022-11-21 19:28:53', 'Tes Admin', '', '', NULL),
(22, 22, '2022-12-27 22:21:27', '2022-12-27 22:21:27', 'Claudya', '', '', NULL),
(23, 23, '2023-01-08 19:38:08', '2023-01-08 19:38:08', 'Admin web 2', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `can_admin` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`, `can_admin`) VALUES
(1, 'Super Admin', '2018-06-01 23:58:56', NULL, 1),
(2, 'Admin Website', '2018-06-01 23:58:56', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sarana_prasarana`
--

CREATE TABLE `sarana_prasarana` (
  `id_sarana` int(11) NOT NULL,
  `nama_sarana` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar_sarana` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sarana_prasarana`
--

INSERT INTO `sarana_prasarana` (`id_sarana`, `nama_sarana`, `deskripsi`, `gambar_sarana`) VALUES
(1, 'Mobil Ambulan', 'Deksripsi', '/uploads/sarana/97b49d705933447028f339f75a7698a4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `mda_id` int(11) DEFAULT NULL,
  `kecamatan_id` int(11) DEFAULT NULL,
  `siswa_nama` varchar(50) DEFAULT NULL,
  `siswa_kelas` varchar(10) DEFAULT NULL,
  `siswa_juz` int(11) DEFAULT NULL,
  `siswa_namaayah` varchar(50) DEFAULT NULL,
  `siswa_namaibu` varchar(50) DEFAULT NULL,
  `siswa_alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `sekolah_id`, `mda_id`, `kecamatan_id`, `siswa_nama`, `siswa_kelas`, `siswa_juz`, `siswa_namaayah`, `siswa_namaibu`, `siswa_alamat`) VALUES
(3, 1, 1, 1, 'deni', '5', 1, 'dedi', 'nina', 'jawi jawi'),
(4, 2, 1, 1, 'Susi', '6', 2, 'Dito', 'Nina', 'Kampung Baru');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_title` varchar(200) NOT NULL,
  `slider_h1` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_image`, `slider_title`, `slider_h1`) VALUES
(1, '/uploads/slider/630a93cca669e52c831aeb4f5d1d58a6.jpg', 'Selamat Datang di', 'Website Kesra Kota Pariaman'),
(9, '/uploads/slider/dd8985bdd86d9d82b6efba55d52d9e9f.jpg', 'Kota Pariaman', 'Pariaman');

-- --------------------------------------------------------

--
-- Table structure for table `statis_page`
--

CREATE TABLE `statis_page` (
  `id_page` int(11) NOT NULL,
  `nama_page` varchar(50) NOT NULL,
  `url_page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statis_page`
--

INSERT INTO `statis_page` (`id_page`, `nama_page`, `url_page`) VALUES
(1, 'Data Pegawai', '/site/pegawai-opd'),
(2, 'Layanan', 'site/all-layanan'),
(3, 'Beranda', 'site/index'),
(4, 'Download Dok&App', 'site/unggah-doc-apl'),
(5, 'Hubungi Kami', 'site/hubungi-kami'),
(6, 'Atribut Puskesmas', 'site/atribut-puskesmas'),
(7, 'Indeks Kepuasan Masyarakat', 'site/ikm'),
(8, 'Sarana dan Prasarana', 'site/sarana');

-- --------------------------------------------------------

--
-- Table structure for table `survei_detail`
--

CREATE TABLE `survei_detail` (
  `kode_survei_detail` int(11) NOT NULL,
  `kode_survei` varchar(5) NOT NULL,
  `nama_survei_detail` varchar(255) NOT NULL,
  `jenis_input` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survei_detail`
--

INSERT INTO `survei_detail` (`kode_survei_detail`, `kode_survei`, `nama_survei_detail`, `jenis_input`) VALUES
(1, 'SUR01', 'Bagaimana pemahaman Saudara tentang kemudahan prosedur pelayana di unit ini?', 'radiolist'),
(2, 'SUR01', 'Bagaimana pendapat saudara tentang kesamaan persyaratan pelayanan dengan jenis pelayanannya?', 'radiolist'),
(3, 'SUR02', 'Menutur anda apakah sarana dan prasana puskesmas kami sudah memadai?', 'radiolist'),
(4, 'SUR03', 'Bagaimana menurut anda penanganan keluhan di puskesmas kami?', 'radiolist');

-- --------------------------------------------------------

--
-- Table structure for table `survei_ikm`
--

CREATE TABLE `survei_ikm` (
  `id_ikm` int(11) NOT NULL,
  `nama_surveyer` varchar(100) NOT NULL,
  `umur_surveyer` tinyint(2) NOT NULL,
  `alamat_surveyer` varchar(255) NOT NULL,
  `pedidikan` varchar(10) NOT NULL,
  `pekerjaan` varchar(10) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survei_ikm`
--

INSERT INTO `survei_ikm` (`id_ikm`, `nama_surveyer`, `umur_surveyer`, `alamat_surveyer`, `pedidikan`, `pekerjaan`, `create_at`, `update_at`, `create_by`, `update_by`) VALUES
(1, 'Suci Ramadhani', 27, 'Padang', 'S1', 'Programmer', '2021-06-13 15:20:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survei_ikm_detail`
--

CREATE TABLE `survei_ikm_detail` (
  `id_detail` int(11) NOT NULL,
  `id_ikm` int(11) NOT NULL,
  `kode_survei_detail` varchar(255) NOT NULL,
  `nilai_survei_detail` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survei_ikm_detail`
--

INSERT INTO `survei_ikm_detail` (`id_detail`, `id_ikm`, `kode_survei_detail`, `nilai_survei_detail`, `create_at`, `update_at`, `create_by`, `update_by`) VALUES
(1, 1, '1', NULL, '2021-06-13 15:20:25', NULL, NULL, NULL),
(2, 1, '2', NULL, '2021-06-13 15:20:25', NULL, NULL, NULL),
(3, 1, '3', NULL, '2021-06-13 15:20:25', NULL, NULL, NULL),
(4, 1, '4', NULL, '2021-06-13 15:20:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survei_kategori`
--

CREATE TABLE `survei_kategori` (
  `kode_survei` varchar(5) NOT NULL,
  `nama_survei` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survei_kategori`
--

INSERT INTO `survei_kategori` (`kode_survei`, `nama_survei`) VALUES
('SUR01', 'Pelayanan'),
('SUR02', 'Sarana dan Prasarana'),
('SUR03', 'Penanganan Keluhan');

-- --------------------------------------------------------

--
-- Table structure for table `survei_setting_detail`
--

CREATE TABLE `survei_setting_detail` (
  `id_survei` int(11) NOT NULL,
  `kode_survei` varchar(5) NOT NULL,
  `kode_survei_detail` varchar(255) NOT NULL,
  `nama_settingsurveidetail` varchar(100) NOT NULL,
  `nilai_surveidetail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survei_setting_detail`
--

INSERT INTO `survei_setting_detail` (`id_survei`, `kode_survei`, `kode_survei_detail`, `nama_settingsurveidetail`, `nilai_surveidetail`) VALUES
(1, 'SUR01', '1', 'Tidak Mudah', 1),
(2, 'SUR01', '1', 'Kurang Mudah', 2),
(3, 'SUR01', '1', 'Mudah', 3),
(4, 'SUR01', '1', 'Sangat Mudah', 4),
(5, 'SUR02', '3', 'Kurang Memadai', 1),
(6, 'SUR02', '3', 'Memadai', 2),
(7, 'SUR02', '3', 'Sangat Memadai', 3),
(8, 'SUR03', '4', 'Kurang Puas', 1),
(9, 'SUR03', '4', 'Puas', 2),
(10, 'SUR03', '4', 'Sangat Puas', 3),
(11, 'SUR01', '2', 'Kurang Puas', 1),
(12, 'SUR01', '2', 'Memadai', 2),
(13, 'SUR01', '2', 'Puas', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_foto` text COLLATE utf8_unicode_ci NOT NULL,
  `berita_judul` text COLLATE utf8_unicode_ci NOT NULL,
  `berita_isi` text COLLATE utf8_unicode_ci NOT NULL,
  `berita_tanggal` date NOT NULL DEFAULT current_timestamp(),
  `berita_status` smallint(3) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`berita_id`, `berita_foto`, `berita_judul`, `berita_isi`, `berita_tanggal`, `berita_status`, `kategori_id`) VALUES
(7, '1624415636-lapor BARU.png', 'berita nfsdfsdf', 'fgdrsggs', '0000-00-00', 1, 1),
(8, '1624929743-GAMBAR1.jpg', ' Ketua DPRD Kota Pariaman, Fitrinora “Berapapun anggaran untuk Pariwisata, kami akan setujui”', 'Berapapun dana yang dibutuhkan oleh Dinas Pariwisata dan Kebudayaan Kota Pariaman, Kami di DPRD (Dewan Perwakilan Rakyat Daerah) Kota Pariaman akan setujui. Hal tersebut disampaikan oleh Ketua DPRD Kota Pariaman, Fitrinora ketika memberikan sambutan pada kunjungan Tim Visitasi dan Verifikasi PWA “Peduli Wisata Award” Tahun 2020 ke Kota Pariaman, bertempat di Aula Balaikota Pariaman, Selasa (15/9/2020).\r\n\r\n“Bukan untuk tahun 2020 ini, tapi sejak 6 tahun yang lalu, dimana saya yang kebetulan di Komisi III waktu membawahi Dinas Parbud juga sudah menyetujui anggaran yang diminta, sepanjang untuk mempromosikan dan mendukung wisata Kota Pariaman,” ujar satu-satunya perempuan di DPRD Kota Pariaman ini.\r\n\r\nFitrinora juga mengucapkan selamat kepada Kota Pariaman, yang sudah masuk 9 Besar untuk pemilihan Kabupaten/Kota Peduli Wisata Award tahun 2020 ini, dimana nantinya akan dipilih 3 terbaik untuk 3 kategori yang dilombakan.\r\n\r\n“Kami mendukung penuh visi Walikota Pariaman dalam memajukan Pariwisata di Kota Pariaman, karena kami menyadari bahwa pariwisata mempunyai potensi yang sangat besar untuk dikelola dan menjadi sumber peningkatan ekonomi masyarakat dan daerah,” ujarnya.', '2020-01-01', 1, 1),
(9, '1624933885-WhatsApp-Image-2021-06-19-at-13.44.56.jpeg', 'Dewan Kota Palangka Raya Kunker ke Pariaman', 'Rombongan Badan Musyawarah (Banmus) DPRD Kota Palangka Raya, menggelar kunjungan kerja (kunker) ke DPRD Kota Pariaman, Provinsi Sumatra Barat. Kunker ini guna melakukan kaji banding terkait penyusunan jadwal pembahasan kebijakan umum perubahan anggaran, dan terkait plafon perubahan anggaran sementara tahun 2021.\r\n\r\n“Perlu digaris bawahi, penjadwalan dan pengelolaan anggaran ini sangat penting, yakni agar perubahan anggaran dapat berjalan lebih baik lagi dan lebih tepat guna,” kata Anggota Banmus DPRD Kota Palangka Raya, Norhaini, Sabtu (19/6/21).', '2021-06-29', 1, 1),
(10, '1667792347-balkot.jpg', 'testing 2', 'fgfgdfgfgf', '2022-11-07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_setting`
--

CREATE TABLE `t_setting` (
  `no_urut` int(11) NOT NULL,
  `grup_setting` varchar(150) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `nilai_setting` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_setting`
--

INSERT INTO `t_setting` (`no_urut`, `grup_setting`, `nama_setting`, `nilai_setting`) VALUES
(0, 'Profil OPD/UPT', 'Alamat', 'Jl. Imam Bonjol No 44 Pariaman, Desa Cimparuah, Kecamatan Pariaman Tengah Kota Pariaman, 25511'),
(4, 'Data Pegawai', 'Bidang', '[\"337\",\"338\",\"339\",\"340\"]'),
(0, 'Profil OPD/UPT', 'e-mail', 'diskominfo@pariamankota.go.id'),
(1, 'Data Pegawai', 'Jenis Web', 'OPD'),
(6, 'Profil OPD/UPT', 'NIP Pimpinan', '197204011993031005 --'),
(5, 'Profil OPD/UPT', 'Pimpinan', 'Hendri, S.Sos ---'),
(3, 'Data Pegawai', 'Satker', 'O29'),
(2, 'Data Pegawai', 'SKPD', 'O29'),
(0, 'Profil OPD/UPT', 'Tanggal Berdiri', '2000-01-01'),
(0, 'Profil OPD/UPT', 'Telpon dan Fax', '0812345678');

-- --------------------------------------------------------

--
-- Table structure for table `unggah_file`
--

CREATE TABLE `unggah_file` (
  `id_unggah` int(11) NOT NULL,
  `jenis_unggah` varchar(30) NOT NULL,
  `nama_unggah` varchar(100) NOT NULL,
  `keterangan_unggah` text DEFAULT NULL,
  `lokasi_unggah` varchar(255) DEFAULT NULL,
  `alamat_url` varchar(255) DEFAULT NULL,
  `tanggal_unggah` date NOT NULL,
  `unggah_oleh` int(11) NOT NULL,
  `status_unggah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unggah_file`
--

INSERT INTO `unggah_file` (`id_unggah`, `jenis_unggah`, `nama_unggah`, `keterangan_unggah`, `lokasi_unggah`, `alamat_url`, `tanggal_unggah`, `unggah_oleh`, `status_unggah`) VALUES
(1, '1', 'Vidio Pelayanan Puskesmas Kp. Baru Padusunan', '<p>Pelayanan Puskesmas Kp. Baru Padusunan :</p>\r\n\r\n<p>https://youtu.be/GqFocbrDdQU</p>\r\n', '/uploads/filepdf/ca27413b038cbfbe5854f83b70222cbb.pdf', 'https://youtu.be/GqFocbrDdQU', '2020-11-02', 1, 1),
(2, '2', 'Aplikasi SIPP', '<p>Aplikasi SIPP apat diunggah pada link berikut:</p>\r\n\r\n<p>https://sipp.menpan.go.id/webcontrol/home</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 'https://sipp.menpan.go.id/webcontrol/home', '2020-11-03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logged_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logged_in_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  `banned_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role_id`, `status`, `email`, `username`, `password`, `auth_key`, `access_token`, `logged_in_ip`, `logged_in_at`, `created_ip`, `created_at`, `updated_at`, `banned_at`, `banned_reason`) VALUES
(1, 1, 2, 'neo@neo.com', 'super admin', '$2y$13$kvnj9UV9329wPqeVq99ltOUCk3f.wIVbLy3wlaILUiMtLxdhmUbke', '91C7Z0a4DJ_nIEHuYIARxOevTx-3hpdf', 'oS4BmhbLU9Y9-1fhYc1264hkxxBvJVx9', '::1', '2021-07-01 19:00:32', NULL, '2018-06-01 23:58:56', '2020-12-10 20:38:31', NULL, NULL),
(18, 2, 1, 'adminweb@gmail.com', 'webadmin', '$2y$13$6Dn7hX18ysJknpt/LB/VLOtHcC7hTnBBTTeyB3HoKAH2x5a9gIjEa', NULL, NULL, '::1', '2021-02-28 21:16:17', NULL, '2020-12-07 20:05:26', '2020-12-07 20:05:26', NULL, NULL),
(19, 1, 1, 'admin2@gmail.com', 'admin', '$2y$13$agwJzHaRviwl3tJPsW/vA.AuL8JR04UiMmz8DQ3efFhCT5ndkjqT2', NULL, NULL, '::1', '2023-01-08 19:36:33', NULL, '2021-05-26 20:24:04', '2021-05-26 20:24:04', NULL, NULL),
(20, 1, 1, 'satriasmita@gmail.com', 'shindy', '$2y$13$T9TKqqr6BkfKIsj1Qm0BW./arXGWwBxFV73DXAKmxP/d5jLGlX/E.', NULL, NULL, '::1', '2021-06-27 19:01:48', NULL, '2021-06-21 20:08:37', '2021-06-21 20:08:37', NULL, NULL),
(21, 2, 1, 'testing3@gmail.com', 'testing', '$2y$13$yfvt9zQp52QOIiu/xVrhNulUdw6wWffRaGKGgeDgXPUVUtSVIQEty', NULL, NULL, '::1', '2022-11-22 18:51:45', NULL, '2022-11-21 19:28:53', '2022-11-21 19:28:53', NULL, NULL),
(22, 1, 1, 'coba1@gmail.com', 'claudya', '$2y$13$dDUK8LcOo.iV8Y.McrQHPuUi8KpGx3clY6Yd6h09jPK5hwecHx9.y', NULL, NULL, '::1', '2023-01-08 19:36:13', NULL, '2022-12-27 22:21:27', '2022-12-27 22:21:27', NULL, NULL),
(23, 2, 1, 'adminweb2@gmail.com', 'adminweb2', '$2y$13$OIKo0cpK/0rGThYttgowMOI3GXDbeFSdgJ4yjgTMdt88aTcWrqedG', NULL, NULL, '::1', '2023-01-17 19:00:57', NULL, '2023-01-08 19:38:08', '2023-01-08 19:38:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `user_id`, `type`, `token`, `data`, `created_at`, `expired_at`) VALUES
(1, 1, 2, 'EGmE6BNaZo3yFc7Pyf_0Ff6ECMnwniMz', 'sucicigo@gmail.com', '2020-12-10 20:38:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `atribut_puskesmas`
--
ALTER TABLE `atribut_puskesmas`
  ADD PRIMARY KEY (`id_atribut`);

--
-- Indexes for table `badan`
--
ALTER TABLE `badan`
  ADD PRIMARY KEY (`badan_id`);

--
-- Indexes for table `bagian_upt`
--
ALTER TABLE `bagian_upt`
  ADD PRIMARY KEY (`bagupt_id`);

--
-- Indexes for table `data_instansi`
--
ALTER TABLE `data_instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`desa_id`);

--
-- Indexes for table `fraksi`
--
ALTER TABLE `fraksi`
  ADD PRIMARY KEY (`fraksi_id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kategori_badan`
--
ALTER TABLE `kategori_badan`
  ADD PRIMARY KEY (`badan_kategori_id`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kategori_fraksi`
--
ALTER TABLE `kategori_fraksi`
  ADD PRIMARY KEY (`fraksi_kategori_id`);

--
-- Indexes for table `kategori_komisi`
--
ALTER TABLE `kategori_komisi`
  ADD PRIMARY KEY (`komisi_kategori_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatan_id`);

--
-- Indexes for table `komisi`
--
ALTER TABLE `komisi`
  ADD PRIMARY KEY (`komisi_id`);

--
-- Indexes for table `master_juz`
--
ALTER TABLE `master_juz`
  ADD PRIMARY KEY (`juz_id`);

--
-- Indexes for table `master_mda`
--
ALTER TABLE `master_mda`
  ADD PRIMARY KEY (`mda_id`);

--
-- Indexes for table `master_sekolah`
--
ALTER TABLE `master_sekolah`
  ADD PRIMARY KEY (`sekolah_id`);

--
-- Indexes for table `media_social`
--
ALTER TABLE `media_social`
  ADD PRIMARY KEY (`sosmed_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_managemen`
--
ALTER TABLE `menu_managemen`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pasutri`
--
ALTER TABLE `pasutri`
  ADD PRIMARY KEY (`pasutri_id`);

--
-- Indexes for table `penasehat`
--
ALTER TABLE `penasehat`
  ADD PRIMARY KEY (`penasehat_id`);

--
-- Indexes for table `pimpinan_dewan`
--
ALTER TABLE `pimpinan_dewan`
  ADD PRIMARY KEY (`pimpinan_id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`posting_id`);

--
-- Indexes for table `posting_kategori`
--
ALTER TABLE `posting_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarana_prasarana`
--
ALTER TABLE `sarana_prasarana`
  ADD PRIMARY KEY (`id_sarana`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `statis_page`
--
ALTER TABLE `statis_page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `survei_detail`
--
ALTER TABLE `survei_detail`
  ADD PRIMARY KEY (`kode_survei_detail`);

--
-- Indexes for table `survei_ikm`
--
ALTER TABLE `survei_ikm`
  ADD PRIMARY KEY (`id_ikm`);

--
-- Indexes for table `survei_ikm_detail`
--
ALTER TABLE `survei_ikm_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_ikm` (`id_ikm`);

--
-- Indexes for table `survei_kategori`
--
ALTER TABLE `survei_kategori`
  ADD PRIMARY KEY (`kode_survei`);

--
-- Indexes for table `survei_setting_detail`
--
ALTER TABLE `survei_setting_detail`
  ADD PRIMARY KEY (`id_survei`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `t_setting`
--
ALTER TABLE `t_setting`
  ADD PRIMARY KEY (`nama_setting`);

--
-- Indexes for table `unggah_file`
--
ALTER TABLE `unggah_file`
  ADD PRIMARY KEY (`id_unggah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`email`),
  ADD UNIQUE KEY `user_username` (`username`),
  ADD KEY `user_role_id` (`role_id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_auth_provider_id` (`provider_id`),
  ADD KEY `user_auth_user_id` (`user_id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_token_token` (`token`),
  ADD KEY `user_token_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `atribut_puskesmas`
--
ALTER TABLE `atribut_puskesmas`
  MODIFY `id_atribut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `badan`
--
ALTER TABLE `badan`
  MODIFY `badan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bagian_upt`
--
ALTER TABLE `bagian_upt`
  MODIFY `bagupt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_instansi`
--
ALTER TABLE `data_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fraksi`
--
ALTER TABLE `fraksi`
  MODIFY `fraksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_badan`
--
ALTER TABLE `kategori_badan`
  MODIFY `badan_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_fraksi`
--
ALTER TABLE `kategori_fraksi`
  MODIFY `fraksi_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_komisi`
--
ALTER TABLE `kategori_komisi`
  MODIFY `komisi_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komisi`
--
ALTER TABLE `komisi`
  MODIFY `komisi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_juz`
--
ALTER TABLE `master_juz`
  MODIFY `juz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_mda`
--
ALTER TABLE `master_mda`
  MODIFY `mda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_sekolah`
--
ALTER TABLE `master_sekolah`
  MODIFY `sekolah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media_social`
--
ALTER TABLE `media_social`
  MODIFY `sosmed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_managemen`
--
ALTER TABLE `menu_managemen`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pasutri`
--
ALTER TABLE `pasutri`
  MODIFY `pasutri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penasehat`
--
ALTER TABLE `penasehat`
  MODIFY `penasehat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pimpinan_dewan`
--
ALTER TABLE `pimpinan_dewan`
  MODIFY `pimpinan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `posting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `posting_kategori`
--
ALTER TABLE `posting_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sarana_prasarana`
--
ALTER TABLE `sarana_prasarana`
  MODIFY `id_sarana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `statis_page`
--
ALTER TABLE `statis_page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `survei_detail`
--
ALTER TABLE `survei_detail`
  MODIFY `kode_survei_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `survei_ikm`
--
ALTER TABLE `survei_ikm`
  MODIFY `id_ikm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `survei_ikm_detail`
--
ALTER TABLE `survei_ikm_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `survei_setting_detail`
--
ALTER TABLE `survei_setting_detail`
  MODIFY `id_survei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unggah_file`
--
ALTER TABLE `unggah_file`
  MODIFY `id_unggah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD CONSTRAINT `user_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_token`
--
ALTER TABLE `user_token`
  ADD CONSTRAINT `user_token_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
