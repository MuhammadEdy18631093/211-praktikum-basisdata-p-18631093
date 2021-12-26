-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table praktikum_presensi_penggajian.bagian: ~3 rows (approximately)
/*!40000 ALTER TABLE `bagian` DISABLE KEYS */;
INSERT INTO `bagian` (`id`, `nama_bagian`, `karyawan_id`, `lokasi_id`) VALUES
	(1, 'Autentikasi', 5, 1),
	(2, 'Data Science', 3, 1),
	(3, 'Backend Developer', 6, 2);
/*!40000 ALTER TABLE `bagian` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.bagian_karyawan: ~6 rows (approximately)
/*!40000 ALTER TABLE `bagian_karyawan` DISABLE KEYS */;
INSERT INTO `bagian_karyawan` (`id`, `bagian_id`, `karyawan_id`, `tanggal_mulai`) VALUES
	(1, 1, 5, '2018-03-03'),
	(2, 2, 3, '2018-04-01'),
	(3, 3, 6, '2018-04-04'),
	(4, 1, 4, '2018-03-03'),
	(5, 2, 7, '2018-04-01'),
	(6, 3, 8, '2018-04-04');
/*!40000 ALTER TABLE `bagian_karyawan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.jabatan: ~5 rows (approximately)
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` (`id`, `nama_jabatan`, `gapok_jabatan`, `tunjangan_jabatan`, `uang_makan_perhari`) VALUES
	(1, 'System Analyst', 2400000, 500000, 40000),
	(2, 'Project Manager', 2300000, 450000, 38000),
	(3, 'Senior Programmer', 2200000, 400000, 36000),
	(4, 'Junior Programmer', 2100000, 350000, 34000),
	(5, 'Intern', 1000000, 100000, 20000);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.jabatan_karyawan: ~17 rows (approximately)
/*!40000 ALTER TABLE `jabatan_karyawan` DISABLE KEYS */;
INSERT INTO `jabatan_karyawan` (`id`, `jabatan_id`, `karyawan_id`, `tanggal_mulai`) VALUES
	(1, 5, 3, '2013-03-03'),
	(2, 4, 3, '2014-04-01'),
	(3, 5, 4, '2014-04-04'),
	(4, 3, 3, '2015-05-04'),
	(5, 4, 4, '2015-05-05'),
	(6, 5, 5, '2015-05-05'),
	(7, 2, 3, '2015-06-01'),
	(8, 3, 4, '2015-06-02'),
	(9, 4, 5, '2015-06-03'),
	(10, 5, 6, '2015-06-06'),
	(11, 1, 3, '2017-07-01'),
	(12, 2, 4, '2017-07-02'),
	(13, 3, 5, '2017-07-02'),
	(14, 4, 6, '2017-07-02'),
	(15, 5, 7, '2017-07-07'),
	(16, 4, 7, '2018-08-02'),
	(17, 5, 8, '2018-08-08');
/*!40000 ALTER TABLE `jabatan_karyawan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.karyawan: ~16 rows (approximately)
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` (`id`, `nik`, `nama_lengkap`, `handphone`, `email`, `tanggal_masuk`, `pengguna_id`) VALUES
	(1, '001', 'Admin', '08112011', 'admin@mail.com', '2011-01-01', 1),
	(2, '002', 'Tes User', '08112012', 'user@mail.com', '2012-02-02', 2),
	(3, '003', 'John Doe', '08112013', 'john@mail.com', '2013-03-03', 3),
	(4, '004', 'Fulan Bin Fulan', '08112014', 'fulan@mail.com', '2014-04-04', 4),
	(5, '005', 'Mawar Kurniani', '08112015', 'mawar@mail.com', '2015-05-05', 5),
	(6, '006', 'Melati Rahmawati', '08112016', 'melati@mail.com', '2016-06-06', 6),
	(7, '007', 'Dahlia Setiani', '08112017', 'dahlia@mail.com', '2017-07-07', 7),
	(8, '008', 'Lily Handayani', '08112018', 'lily@mail.com', '2018-08-08', 8),
	(9, '001', 'Admin', '08112011', 'admin@mail.com', '2011-01-01', 1),
	(10, '002', 'Tes User', '08112012', 'user@mail.com', '2012-02-02', 2),
	(11, '003', 'John Doe', '08112013', 'john@mail.com', '2013-03-03', 3),
	(12, '004', 'Fulan Bin Fulan', '08112014', 'fulan@mail.com', '2014-04-04', 4),
	(13, '005', 'Mawar Kurniani', '08112015', 'mawar@mail.com', '2015-05-05', 5),
	(14, '006', 'Melati Rahmawati', '08112016', 'melati@mail.com', '2016-06-06', 6),
	(15, '007', 'Dahlia Setiani', '08112017', 'dahlia@mail.com', '2017-07-07', 7),
	(16, '008', 'Lily Handayani', '08112018', 'lily@mail.com', '2018-08-08', 8);
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.lokasi: ~3 rows (approximately)
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` (`id`, `nama_lokasi`) VALUES
	(1, 'Banjarmasin'),
	(2, 'Banjarbaru'),
	(3, 'Gambut');
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.penggajian: ~18 rows (approximately)
/*!40000 ALTER TABLE `penggajian` DISABLE KEYS */;
INSERT INTO `penggajian` (`id`, `karyawan_id`, `tahun`, `bulan`, `gapok`, `tunjangan`, `uang_makan`) VALUES
	(1, 3, '2020', '11', 2400000, 500000, 800000),
	(2, 4, '2020', '11', 2300000, 450000, 684000),
	(3, 5, '2020', '11', 2200000, 400000, 684000),
	(4, 6, '2020', '11', 2100000, 350000, 640000),
	(5, 7, '2020', '11', 2100000, 350000, 612000),
	(6, 8, '2020', '11', 1000000, 100000, 380000),
	(7, 3, '2020', '12', 2400000, 500000, 800000),
	(8, 4, '2020', '12', 2300000, 450000, 722000),
	(9, 5, '2020', '12', 2200000, 400000, 720000),
	(10, 6, '2020', '12', 2100000, 350000, 680000),
	(11, 7, '2020', '12', 2100000, 350000, 646000),
	(12, 8, '2020', '12', 1000000, 100000, 360000),
	(13, 3, '2021', '01', 2400000, 500000, 800000),
	(14, 4, '2021', '01', 2300000, 450000, 722000),
	(15, 5, '2021', '01', 2200000, 400000, 612000),
	(16, 6, '2021', '01', 2100000, 350000, 680000),
	(17, 7, '2021', '01', 2100000, 350000, 646000),
	(18, 8, '2021', '01', 1000000, 100000, 340000);
/*!40000 ALTER TABLE `penggajian` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.pengguna: ~8 rows (approximately)
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` (`id`, `username`, `password`, `peran`, `login_terakhir`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', NULL),
	(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', NULL),
	(3, 'johndoe', '6579e96f76baa00787a28653876c6127', 'USER', NULL),
	(4, 'fulanbinfulan', '7c232f58f03f6d00c8d28166fbff7a8b', 'USER', NULL),
	(5, 'mawar', 'bd117502364227fd8c09098d31e11313', 'USER', NULL),
	(6, 'melati', '27e80ebc907bd57004986be9e6f2dd83', 'USER', NULL),
	(7, 'dahlia', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', NULL),
	(8, 'lily', '89f288757f4d0693c99b007855fc075e', 'USER', NULL);
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi_penggajian.presensi: ~552 rows (approximately)
/*!40000 ALTER TABLE `presensi` DISABLE KEYS */;
INSERT INTO `presensi` (`id`, `karyawan_id`, `tanggal`, `jam_masuk`, `jam_keluar`, `keterangan`) VALUES
	(1, 3, '2020-11-01', NULL, NULL, ''),
	(2, 3, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(3, 3, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(4, 3, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
	(5, 3, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(6, 3, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
	(7, 3, '2020-11-07', NULL, NULL, ''),
	(8, 3, '2020-11-08', NULL, NULL, ''),
	(9, 3, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(10, 3, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(11, 3, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(12, 3, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(13, 3, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(14, 3, '2020-11-14', NULL, NULL, ''),
	(15, 3, '2020-11-15', NULL, NULL, ''),
	(16, 3, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(17, 3, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(18, 3, '2020-11-18', '08:00:00', '16:00:00', 'HADIR'),
	(19, 3, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
	(20, 3, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(21, 3, '2020-11-21', NULL, NULL, ''),
	(22, 3, '2020-11-22', NULL, NULL, ''),
	(23, 3, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(24, 3, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(25, 3, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
	(26, 3, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(27, 3, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(28, 3, '2020-11-28', NULL, NULL, ''),
	(29, 3, '2020-11-29', NULL, NULL, ''),
	(30, 3, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(31, 3, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(32, 3, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
	(33, 3, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
	(34, 3, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(35, 3, '2020-12-05', NULL, NULL, ''),
	(36, 3, '2020-12-06', NULL, NULL, ''),
	(37, 3, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(38, 3, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(39, 3, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(40, 3, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(41, 3, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(42, 3, '2020-12-12', NULL, NULL, ''),
	(43, 3, '2020-12-13', NULL, NULL, ''),
	(44, 3, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
	(45, 3, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(46, 3, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(47, 3, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
	(48, 3, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(49, 3, '2020-12-19', NULL, NULL, ''),
	(50, 3, '2020-12-20', NULL, NULL, ''),
	(51, 3, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(52, 3, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(53, 3, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(54, 3, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
	(55, 3, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
	(56, 3, '2020-12-26', NULL, NULL, ''),
	(57, 3, '2020-12-27', NULL, NULL, ''),
	(58, 3, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
	(59, 3, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
	(60, 3, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
	(61, 3, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
	(62, 3, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
	(63, 3, '2021-01-02', NULL, NULL, ''),
	(64, 3, '2021-01-03', NULL, NULL, ''),
	(65, 3, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
	(66, 3, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
	(67, 3, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
	(68, 3, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
	(69, 3, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
	(70, 3, '2021-01-09', NULL, NULL, ''),
	(71, 3, '2021-01-10', NULL, NULL, ''),
	(72, 3, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
	(73, 3, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
	(74, 3, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
	(75, 3, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
	(76, 3, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
	(77, 3, '2021-01-16', NULL, NULL, ''),
	(78, 3, '2021-01-17', NULL, NULL, ''),
	(79, 3, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
	(80, 3, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
	(81, 3, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
	(82, 3, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
	(83, 3, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
	(84, 3, '2021-01-23', NULL, NULL, ''),
	(85, 3, '2021-01-24', NULL, NULL, ''),
	(86, 3, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
	(87, 3, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
	(88, 3, '2021-01-27', '08:00:00', '16:00:00', 'HADIR'),
	(89, 3, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
	(90, 3, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
	(91, 3, '2021-01-30', NULL, NULL, ''),
	(92, 3, '2021-01-31', NULL, NULL, ''),
	(93, 4, '2020-11-01', NULL, NULL, ''),
	(94, 4, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(95, 4, '2020-11-03', '08:35:00', '16:00:00', 'HADIR'),
	(96, 4, '2020-11-04', NULL, NULL, 'SAKIT'),
	(97, 4, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(98, 4, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
	(99, 4, '2020-11-07', NULL, NULL, ''),
	(100, 4, '2020-11-08', NULL, NULL, ''),
	(101, 4, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(102, 4, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(103, 4, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(104, 4, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(105, 4, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(106, 4, '2020-11-14', NULL, NULL, ''),
	(107, 4, '2020-11-15', NULL, NULL, ''),
	(108, 4, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(109, 4, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(110, 4, '2020-11-18', '08:45:00', '16:00:00', 'HADIR'),
	(111, 4, '2020-11-19', NULL, NULL, 'IZIN'),
	(112, 4, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(113, 4, '2020-11-21', NULL, NULL, ''),
	(114, 4, '2020-11-22', NULL, NULL, ''),
	(115, 4, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(116, 4, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(117, 4, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
	(118, 4, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(119, 4, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(120, 4, '2020-11-28', NULL, NULL, ''),
	(121, 4, '2020-11-29', NULL, NULL, ''),
	(122, 4, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(123, 4, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(124, 4, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
	(125, 4, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
	(126, 4, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(127, 4, '2020-12-05', NULL, NULL, ''),
	(128, 4, '2020-12-06', NULL, NULL, ''),
	(129, 4, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(130, 4, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(131, 4, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(132, 4, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(133, 4, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(134, 4, '2020-12-12', NULL, NULL, ''),
	(135, 4, '2020-12-13', NULL, NULL, ''),
	(136, 4, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
	(137, 4, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(138, 4, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(139, 4, '2020-12-17', NULL, NULL, 'SAKIT'),
	(140, 4, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(141, 4, '2020-12-19', NULL, NULL, ''),
	(142, 4, '2020-12-20', NULL, NULL, ''),
	(143, 4, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(144, 4, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(145, 4, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(146, 4, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
	(147, 4, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
	(148, 4, '2020-12-26', NULL, NULL, ''),
	(149, 4, '2020-12-27', NULL, NULL, ''),
	(150, 4, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
	(151, 4, '2020-12-29', '08:50:00', '16:00:00', 'HADIR'),
	(152, 4, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
	(153, 4, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
	(154, 4, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
	(155, 4, '2021-01-02', NULL, NULL, ''),
	(156, 4, '2021-01-03', NULL, NULL, ''),
	(157, 4, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
	(158, 4, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
	(159, 4, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
	(160, 4, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
	(161, 4, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
	(162, 4, '2021-01-09', NULL, NULL, ''),
	(163, 4, '2021-01-10', NULL, NULL, ''),
	(164, 4, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
	(165, 4, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
	(166, 4, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
	(167, 4, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
	(168, 4, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
	(169, 4, '2021-01-16', NULL, NULL, ''),
	(170, 4, '2021-01-17', NULL, NULL, ''),
	(171, 4, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
	(172, 4, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
	(173, 4, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
	(174, 4, '2021-01-21', NULL, NULL, 'IZIN'),
	(175, 4, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
	(176, 4, '2021-01-23', NULL, NULL, ''),
	(177, 4, '2021-01-24', NULL, NULL, ''),
	(178, 4, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
	(179, 4, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
	(180, 4, '2021-01-27', '08:40:00', '16:00:00', 'HADIR'),
	(181, 4, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
	(182, 4, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
	(183, 4, '2021-01-30', NULL, NULL, ''),
	(184, 4, '2021-01-31', NULL, NULL, ''),
	(185, 5, '2020-11-01', NULL, NULL, ''),
	(186, 5, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(187, 5, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(188, 5, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
	(189, 5, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(190, 5, '2020-11-06', '08:35:00', '16:00:00', 'HADIR'),
	(191, 5, '2020-11-07', NULL, NULL, ''),
	(192, 5, '2020-11-08', NULL, NULL, ''),
	(193, 5, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(194, 5, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(195, 5, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(196, 5, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(197, 5, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(198, 5, '2020-11-14', NULL, NULL, ''),
	(199, 5, '2020-11-15', NULL, NULL, ''),
	(200, 5, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(201, 5, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(202, 5, '2020-11-18', '08:35:00', '16:00:00', 'HADIR'),
	(203, 5, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
	(204, 5, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(205, 5, '2020-11-21', NULL, NULL, ''),
	(206, 5, '2020-11-22', NULL, NULL, ''),
	(207, 5, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(208, 5, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(209, 5, '2020-11-25', NULL, NULL, 'SAKIT'),
	(210, 5, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(211, 5, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(212, 5, '2020-11-28', NULL, NULL, ''),
	(213, 5, '2020-11-29', NULL, NULL, ''),
	(214, 5, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(215, 5, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(216, 5, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
	(217, 5, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
	(218, 5, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(219, 5, '2020-12-05', NULL, NULL, ''),
	(220, 5, '2020-12-06', NULL, NULL, ''),
	(221, 5, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(222, 5, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(223, 5, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(224, 5, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(225, 5, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(226, 5, '2020-12-12', NULL, NULL, ''),
	(227, 5, '2020-12-13', NULL, NULL, ''),
	(228, 5, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
	(229, 5, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(230, 5, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(231, 5, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
	(232, 5, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(233, 5, '2020-12-19', NULL, NULL, ''),
	(234, 5, '2020-12-20', NULL, NULL, ''),
	(235, 5, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(236, 5, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(237, 5, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(238, 5, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
	(239, 5, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
	(240, 5, '2020-12-26', NULL, NULL, ''),
	(241, 5, '2020-12-27', NULL, NULL, ''),
	(242, 5, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
	(243, 5, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
	(244, 5, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
	(245, 5, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
	(246, 5, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
	(247, 5, '2021-01-02', NULL, NULL, ''),
	(248, 5, '2021-01-03', NULL, NULL, ''),
	(249, 5, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
	(250, 5, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
	(251, 5, '2021-01-06', NULL, NULL, 'IZIN'),
	(252, 5, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
	(253, 5, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
	(254, 5, '2021-01-09', NULL, NULL, ''),
	(255, 5, '2021-01-10', NULL, NULL, ''),
	(256, 5, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
	(257, 5, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
	(258, 5, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
	(259, 5, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
	(260, 5, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
	(261, 5, '2021-01-16', NULL, NULL, ''),
	(262, 5, '2021-01-17', NULL, NULL, ''),
	(263, 5, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
	(264, 5, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
	(265, 5, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
	(266, 5, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
	(267, 5, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
	(268, 5, '2021-01-23', NULL, NULL, ''),
	(269, 5, '2021-01-24', NULL, NULL, ''),
	(270, 5, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
	(271, 5, '2021-01-26', NULL, NULL, 'SAKIT'),
	(272, 5, '2021-01-27', NULL, NULL, 'SAKIT'),
	(273, 5, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
	(274, 5, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
	(275, 5, '2021-01-30', NULL, NULL, ''),
	(276, 5, '2021-01-31', NULL, NULL, ''),
	(277, 6, '2020-11-01', NULL, NULL, ''),
	(278, 6, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(279, 6, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(280, 6, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
	(281, 6, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(282, 6, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
	(283, 6, '2020-11-07', NULL, NULL, ''),
	(284, 6, '2020-11-08', NULL, NULL, ''),
	(285, 6, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(286, 6, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(287, 6, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(288, 6, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(289, 6, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(290, 6, '2020-11-14', NULL, NULL, ''),
	(291, 6, '2020-11-15', NULL, NULL, ''),
	(292, 6, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(293, 6, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(294, 6, '2020-11-18', '08:00:00', '16:00:00', 'HADIR'),
	(295, 6, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
	(296, 6, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(297, 6, '2020-11-21', NULL, NULL, ''),
	(298, 6, '2020-11-22', NULL, NULL, ''),
	(299, 6, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(300, 6, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(301, 6, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
	(302, 6, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(303, 6, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(304, 6, '2020-11-28', NULL, NULL, ''),
	(305, 6, '2020-11-29', NULL, NULL, ''),
	(306, 6, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(307, 6, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(308, 6, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
	(309, 6, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
	(310, 6, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(311, 6, '2020-12-05', NULL, NULL, ''),
	(312, 6, '2020-12-06', NULL, NULL, ''),
	(313, 6, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(314, 6, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(315, 6, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(316, 6, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(317, 6, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(318, 6, '2020-12-12', NULL, NULL, ''),
	(319, 6, '2020-12-13', NULL, NULL, ''),
	(320, 6, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
	(321, 6, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(322, 6, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(323, 6, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
	(324, 6, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(325, 6, '2020-12-19', NULL, NULL, ''),
	(326, 6, '2020-12-20', NULL, NULL, ''),
	(327, 6, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(328, 6, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(329, 6, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(330, 6, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
	(331, 6, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
	(332, 6, '2020-12-26', NULL, NULL, ''),
	(333, 6, '2020-12-27', NULL, NULL, ''),
	(334, 6, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
	(335, 6, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
	(336, 6, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
	(337, 6, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
	(338, 6, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
	(339, 6, '2021-01-02', NULL, NULL, ''),
	(340, 6, '2021-01-03', NULL, NULL, ''),
	(341, 6, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
	(342, 6, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
	(343, 6, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
	(344, 6, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
	(345, 6, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
	(346, 6, '2021-01-09', NULL, NULL, ''),
	(347, 6, '2021-01-10', NULL, NULL, ''),
	(348, 6, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
	(349, 6, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
	(350, 6, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
	(351, 6, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
	(352, 6, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
	(353, 6, '2021-01-16', NULL, NULL, ''),
	(354, 6, '2021-01-17', NULL, NULL, ''),
	(355, 6, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
	(356, 6, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
	(357, 6, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
	(358, 6, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
	(359, 6, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
	(360, 6, '2021-01-23', NULL, NULL, ''),
	(361, 6, '2021-01-24', NULL, NULL, ''),
	(362, 6, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
	(363, 6, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
	(364, 6, '2021-01-27', '08:00:00', '16:00:00', 'HADIR'),
	(365, 6, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
	(366, 6, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
	(367, 6, '2021-01-30', NULL, NULL, ''),
	(368, 6, '2021-01-31', NULL, NULL, ''),
	(369, 7, '2020-11-01', NULL, NULL, ''),
	(370, 7, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(371, 7, '2020-11-03', '08:35:00', '16:00:00', 'HADIR'),
	(372, 7, '2020-11-04', NULL, NULL, 'SAKIT'),
	(373, 7, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(374, 7, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
	(375, 7, '2020-11-07', NULL, NULL, ''),
	(376, 7, '2020-11-08', NULL, NULL, ''),
	(377, 7, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(378, 7, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(379, 7, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(380, 7, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(381, 7, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(382, 7, '2020-11-14', NULL, NULL, ''),
	(383, 7, '2020-11-15', NULL, NULL, ''),
	(384, 7, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(385, 7, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(386, 7, '2020-11-18', '08:45:00', '16:00:00', 'HADIR'),
	(387, 7, '2020-11-19', NULL, NULL, 'IZIN'),
	(388, 7, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(389, 7, '2020-11-21', NULL, NULL, ''),
	(390, 7, '2020-11-22', NULL, NULL, ''),
	(391, 7, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(392, 7, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(393, 7, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
	(394, 7, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(395, 7, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(396, 7, '2020-11-28', NULL, NULL, ''),
	(397, 7, '2020-11-29', NULL, NULL, ''),
	(398, 7, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(399, 7, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(400, 7, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
	(401, 7, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
	(402, 7, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(403, 7, '2020-12-05', NULL, NULL, ''),
	(404, 7, '2020-12-06', NULL, NULL, ''),
	(405, 7, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(406, 7, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(407, 7, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(408, 7, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(409, 7, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(410, 7, '2020-12-12', NULL, NULL, ''),
	(411, 7, '2020-12-13', NULL, NULL, ''),
	(412, 7, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
	(413, 7, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(414, 7, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(415, 7, '2020-12-17', NULL, NULL, 'SAKIT'),
	(416, 7, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(417, 7, '2020-12-19', NULL, NULL, ''),
	(418, 7, '2020-12-20', NULL, NULL, ''),
	(419, 7, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(420, 7, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(421, 7, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(422, 7, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
	(423, 7, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
	(424, 7, '2020-12-26', NULL, NULL, ''),
	(425, 7, '2020-12-27', NULL, NULL, ''),
	(426, 7, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
	(427, 7, '2020-12-29', '08:50:00', '16:00:00', 'HADIR'),
	(428, 7, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
	(429, 7, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
	(430, 7, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
	(431, 7, '2021-01-02', NULL, NULL, ''),
	(432, 7, '2021-01-03', NULL, NULL, ''),
	(433, 7, '2021-01-04', '08:55:00', '16:00:00', 'HADIR'),
	(434, 7, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
	(435, 7, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
	(436, 7, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
	(437, 7, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
	(438, 7, '2021-01-09', NULL, NULL, ''),
	(439, 7, '2021-01-10', NULL, NULL, ''),
	(440, 7, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
	(441, 7, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
	(442, 7, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
	(443, 7, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
	(444, 7, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
	(445, 7, '2021-01-16', NULL, NULL, ''),
	(446, 7, '2021-01-17', NULL, NULL, ''),
	(447, 7, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
	(448, 7, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
	(449, 7, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
	(450, 7, '2021-01-21', NULL, NULL, 'IZIN'),
	(451, 7, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
	(452, 7, '2021-01-23', NULL, NULL, ''),
	(453, 7, '2021-01-24', NULL, NULL, ''),
	(454, 7, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
	(455, 7, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
	(456, 7, '2021-01-27', '08:40:00', '16:00:00', 'HADIR'),
	(457, 7, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
	(458, 7, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
	(459, 7, '2021-01-30', NULL, NULL, ''),
	(460, 7, '2021-01-31', NULL, NULL, ''),
	(461, 8, '2020-11-01', NULL, NULL, ''),
	(462, 8, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(463, 8, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(464, 8, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
	(465, 8, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(466, 8, '2020-11-06', '08:35:00', '16:00:00', 'HADIR'),
	(467, 8, '2020-11-07', NULL, NULL, ''),
	(468, 8, '2020-11-08', NULL, NULL, ''),
	(469, 8, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(470, 8, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(471, 8, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(472, 8, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(473, 8, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(474, 8, '2020-11-14', NULL, NULL, ''),
	(475, 8, '2020-11-15', NULL, NULL, ''),
	(476, 8, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(477, 8, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(478, 8, '2020-11-18', '08:35:00', '16:00:00', 'HADIR'),
	(479, 8, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
	(480, 8, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(481, 8, '2020-11-21', NULL, NULL, ''),
	(482, 8, '2020-11-22', NULL, NULL, ''),
	(483, 8, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(484, 8, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(485, 8, '2020-11-25', NULL, NULL, 'IZIN'),
	(486, 8, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(487, 8, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(488, 8, '2020-11-28', NULL, NULL, ''),
	(489, 8, '2020-11-29', NULL, NULL, ''),
	(490, 8, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(491, 8, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(492, 8, '2020-12-02', NULL, NULL, 'CUTI'),
	(493, 8, '2020-12-03', NULL, NULL, 'CUTI'),
	(494, 8, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(495, 8, '2020-12-05', NULL, NULL, ''),
	(496, 8, '2020-12-06', NULL, NULL, ''),
	(497, 8, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(498, 8, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(499, 8, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(500, 8, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(501, 8, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(502, 8, '2020-12-12', NULL, NULL, ''),
	(503, 8, '2020-12-13', NULL, NULL, ''),
	(504, 8, '2020-12-14', '08:37:00', '16:00:00', 'HADIR'),
	(505, 8, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(506, 8, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(507, 8, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
	(508, 8, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(509, 8, '2020-12-19', NULL, NULL, ''),
	(510, 8, '2020-12-20', NULL, NULL, ''),
	(511, 8, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(512, 8, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(513, 8, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(514, 8, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
	(515, 8, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
	(516, 8, '2020-12-26', NULL, NULL, ''),
	(517, 8, '2020-12-27', NULL, NULL, ''),
	(518, 8, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
	(519, 8, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
	(520, 8, '2020-12-30', '08:35:00', '16:00:00', 'HADIR'),
	(521, 8, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
	(522, 8, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
	(523, 8, '2021-01-02', NULL, NULL, ''),
	(524, 8, '2021-01-03', NULL, NULL, ''),
	(525, 8, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
	(526, 8, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
	(527, 8, '2021-01-06', NULL, NULL, 'IZIN'),
	(528, 8, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
	(529, 8, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
	(530, 8, '2021-01-09', NULL, NULL, ''),
	(531, 8, '2021-01-10', NULL, NULL, ''),
	(532, 8, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
	(533, 8, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
	(534, 8, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
	(535, 8, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
	(536, 8, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
	(537, 8, '2021-01-16', NULL, NULL, ''),
	(538, 8, '2021-01-17', NULL, NULL, ''),
	(539, 8, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
	(540, 8, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
	(541, 8, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
	(542, 8, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
	(543, 8, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
	(544, 8, '2021-01-23', NULL, NULL, ''),
	(545, 8, '2021-01-24', NULL, NULL, ''),
	(546, 8, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
	(547, 8, '2021-01-26', NULL, NULL, 'SAKIT'),
	(548, 8, '2021-01-27', NULL, NULL, 'SAKIT'),
	(549, 8, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
	(550, 8, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
	(551, 8, '2021-01-30', NULL, NULL, ''),
	(552, 8, '2021-01-31', NULL, NULL, '');
/*!40000 ALTER TABLE `presensi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
