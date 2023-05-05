-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Apr 2023 pada 17.31
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelulusan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `un_konfigurasi`
--

CREATE TABLE `un_konfigurasi` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `ttd` varchar(64) NOT NULL,
  `about` varchar(250) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL,
  `contact` varchar(255) NOT NULL,
  `nopesformat` varchar(20) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `kop` varchar(100) NOT NULL,
  `cap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `un_konfigurasi`
--

INSERT INTO `un_konfigurasi` (`id`, `sekolah`, `kepsek`, `nip`, `no_surat`, `ttd`, `about`, `tgl_pengumuman`, `contact`, `nopesformat`, `logo`, `kop`, `cap`) VALUES
(1, 'UPTD SMPN 1 Indonesia', 'KEPALA SEKOLAH, M.Pd', '1234567890123344', '421/071-SMP.3.1/2023', 'ttd.png', 'Website ini diperuntukkan memberikan informasi kelulusan kepada peserta didik berbasis Website atau Online. Dalam menyikapi wabah COVID-19. Untuk Surat Keterangan kelulusan bisa di ambil di sekolah atau hubungi Wali kelas.', '2023-05-06 09:00:00', 'Alamat Sekolah : jl. letnan Joni No. 1 Jakarta\r\nE-Mail : smpn150ind@gmail.com, web : wwwsmpn1indonesia.sch.id', '02-18-99-99-999', 'logo sekolah-logo sekolah-Logo Tut Wuri Handayani (redesign 2012 by Rahmintama).png', 'kopsurat.png', 'cap.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `un_siswa`
--

CREATE TABLE `un_siswa` (
  `no_ujian` varchar(30) NOT NULL,
  `nis` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` varchar(64) NOT NULL,
  `ortu` varchar(32) NOT NULL,
  `kls` varchar(50) NOT NULL,
  `n_pai` varchar(5) NOT NULL,
  `n_pkn` varchar(5) NOT NULL,
  `n_bin` varchar(5) NOT NULL,
  `n_mat` varchar(5) NOT NULL,
  `n_ipa` varchar(5) NOT NULL,
  `n_ips` varchar(5) NOT NULL,
  `n_big` varchar(5) NOT NULL,
  `n_sb` varchar(5) NOT NULL,
  `n_pjok` varchar(5) NOT NULL,
  `n_pkr` varchar(5) NOT NULL,
  `n_bde` varchar(5) NOT NULL,
  `n_mulok2` varchar(5) NOT NULL,
  `rata2` char(5) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `un_siswa`
--

INSERT INTO `un_siswa` (`no_ujian`, `nis`, `nisn`, `nama`, `ttl`, `ortu`, `kls`, `n_pai`, `n_pkn`, `n_bin`, `n_mat`, `n_ipa`, `n_ips`, `n_big`, `n_sb`, `n_pjok`, `n_pkr`, `n_bde`, `n_mulok2`, `rata2`, `status`) VALUES
('02-18-13-22-202', 212207001, '001234567', 'SISWA 1', 'Jakarta, 18 September 2005', '0RTU SISWA 1', 'IX-A', '83', '85', '85', '82', '80', '83', '83', '80', '85', '76', '86', '-', '82,55', 0),
('02-18-13-22-203', 212207002, '001234568', 'SISWA 2', 'Jakarta, 24 April 2006', '0RTU SISWA 2', 'IX-A', '83', '85', '85', '80', '79', '85', '84', '80', '83', '75', '84', '-', '82,09', 0),
('02-18-13-22-204', 212207003, '001234569', 'SISWA 3', 'Jakarta, 27 Mei 2007', '0RTU SISWA 3', 'IX-A', '85', '85', '87', '81', '78', '83', '84', '80', '85', '93', '86', '-', '84,27', 0),
('02-18-13-22-205', 212207004, '001234570', 'SISWA 4', 'Bandung, 25 Juli 2006', '0RTU SISWA 4', 'IX-A', '90', '87', '88', '84', '83', '92', '84', '85', '85', '93', '90', '-', '87,36', 1),
('02-18-13-22-206', 212207005, '001234571', 'SISWA 5', 'Cirebon, 19 Mei 2007', '0RTU SISWA 5', 'IX-A', '85', '85', '85', '83', '87', '90', '84', '85', '84', '88', '90', '-', '86', 1),
('02-18-13-22-207', 212207006, '001234572', 'SISWA 6', 'Jakarta, 17 Oktober 2007', '0RTU SISWA 6', 'IX-A', '84', '85', '84', '83', '78', '83', '81', '80', '83', '75', '86', '-', '82', 1),
('02-18-13-22-208', 212207007, '001234573', 'SISWA 7', 'Jakarta, 30 Maret 2007', '0RTU SISWA 7', 'IX-A', '81', '85', '84', '82', '76', '84', '81', '80', '83', '76', '82', '-', '81,27', 1),
('02-18-13-22-209', 212207008, '001234574', 'SISWA 8', 'Jakarta, 29 Juli 2007', '0RTU SISWA 8', 'IX-A', '80', '85', '83', '80', '78', '75', '80', '80', '83', '75', '86', '-', '80,45', 1),
('02-18-13-22-210', 212207009, '001234575', 'SISWA 9', 'Jakarta, 15 Januari 2007', '0RTU SISWA 9', 'IX-B', '80', '82', '84', '80', '80', '80', '80', '80', '83', '80', '80', '-', '80,82', 1),
('02-18-13-22-211', 212207010, '001234576', 'SISWA 10', 'Jakarta, 11 April 2007', '0RTU SISWA 10', 'IX-B', '86', '85', '86', '80', '89', '84', '83', '80', '88', '93', '90', '-', '85,82', 1),
('02-18-13-22-212', 212207011, '001234577', 'SISWA 11', 'Jakarta, 21 Agustus 2007', '0RTU SISWA 11', 'IX-B', '88', '85', '87', '83', '87', '91', '80', '85', '86', '88', '80', '-', '85,45', 1),
('02-18-13-22-213', 212207012, '001234578', 'SISWA 12', 'Kebumen, 10 September 2007', '0RTU SISWA 12', 'IX-B', '84', '86', '84', '82', '87', '90', '81', '85', '85', '92', '82', '-', '85,27', 1),
('02-18-13-22-214', 212207013, '001234579', 'SISWA 13', 'Jakarta, 19 Juli 2007', '0RTU SISWA 13', 'IX-B', '85', '86', '85', '82', '86', '91', '86', '80', '84', '95', '84', '-', '85,82', 1),
('02-18-13-22-215', 212207014, '001234580', 'SISWA 14', 'Jakarta, 31 Mei 2006', '0RTU SISWA 14', 'IX-B', '83', '86', '83', '80', '83', '83', '83', '80', '85', '80', '86', '-', '82,91', 1),
('02-18-13-22-216', 212207015, '001234581', 'SISWA 15', 'Jakarta, 30 Agustus 2006', '0RTU SISWA 15', 'IX-B', '80', '85', '83', '80', '78', '82', '83', '80', '83', '76', '84', '-', '81,27', 1),
('02-18-13-22-217', 212207016, '001234582', 'SISWA 16', 'Jakarta, 12 Juli 2007', '0RTU SISWA 16', 'IX-C', '85', '88', '87', '82', '82', '85', '88', '88', '83', '83', '86', '-', '85,18', 1),
('02-18-13-22-218', 212207017, '001234583', 'SISWA 17', 'Jakarta, 02 November 2006', '0RTU SISWA 17', 'IX-C', '83', '85', '84', '80', '82', '83', '80', '80', '83', '86', '86', '-', '82,91', 1),
('02-18-13-22-219', 212207018, '001234584', 'SISWA 18', 'Jakarta, 10 September 2006', '0RTU SISWA 18', 'IX-C', '85', '85', '88', '78', '84', '90', '80', '82', '83', '90', '80', '-', '84,09', 1),
('02-18-13-22-220', 212207019, '001234585', 'SISWA 19', 'Jakarta, 08 April 2007', '0RTU SISWA 19', 'IX-C', '85', '85', '87', '82', '82', '83', '80', '80', '83', '83', '80', '-', '82,73', 1),
('02-18-13-22-221', 212207020, '001234586', 'SISWA 20', 'Jakarta, 19 November 2006', '0RTU SISWA 20', 'IX-C', '85', '85', '84', '80', '82', '83', '80', '80', '84', '80', '84', '-', '82,45', 1),
('02-18-13-22-222', 212207021, '001234587', 'SISWA 21', 'Jakarta, 11 Juni 2006', '0RTU SISWA 21', 'IX-C', '83', '85', '85', '77', '83', '77', '82', '94', '83', '92', '80', '-', '83,73', 1),
('02-18-13-22-223', 212207022, '001234588', 'SISWA 22', 'Jakarta, 24 Juli 2007', '0RTU SISWA 22', 'IX-D', '86', '86', '86', '80', '81', '84', '83', '98', '84', '88', '86', '-', '85,64', 1),
('02-18-13-22-224', 212207023, '001234589', 'SISWA 23', 'Jakarta, 23 Juni 2006', '0RTU SISWA 23', 'IX-D', '85', '87', '88', '83', '76', '83', '82', '80', '85', '78', '84', '-', '82,82', 1),
('02-18-13-22-225', 212207024, '001234590', 'SISWA 24', 'Jakarta, 16 Oktober 2006', '0RTU SISWA 24', 'IX-D', '84', '85', '87', '85', '80', '84', '85', '94', '84', '93', '88', '-', '86,27', 1),
('02-18-13-22-226', 212207025, '001234591', 'SISWA 25', 'Jakarta, 07 Desember 2006', '0RTU SISWA 25', 'IX-D', '83', '85', '86', '79', '82', '83', '86', '90', '85', '78', '80', '-', '83,36', 1),
('02-18-13-22-227', 212207026, '001234592', 'SISWA 26', 'Jakarta, 10 April 2007', '0RTU SISWA 26', 'IX-D', '80', '85', '85', '78', '77', '77', '83', '82', '83', '83', '80', '-', '81,18', 1),
('02-18-13-22-228', 212207027, '001234593', 'SISWA 27', 'Jakarta, 30 November 2006', '0RTU SISWA 27', 'IX-D', '86', '85', '90', '80', '83', '90', '85', '98', '86', '75', '86', '-', '85,82', 1),
('02-18-13-22-229', 212207028, '001234594', 'SISWA 28', 'Jakarta, 10 November 2005', '0RTU SISWA 28', 'IX-D', '85', '85', '89', '80', '80', '83', '84', '88', '84', '88', '86', '-', '84,73', 1),
('02-18-13-22-230', 212207029, '001234595', 'SISWA 29', 'Jakarta, 14 Juli 2007', '0RTU SISWA 29', 'IX-E', '95', '90', '90', '90', '90', '95', '89', '98', '87', '96', '90', '-', '91,82', 1),
('02-18-13-22-231', 212207030, '001234596', 'SISWA 30', 'Tangerang, 21 September 2006', '0RTU SISWA 30', 'IX-E', '88', '87', '88', '83', '88', '85', '83', '98', '85', '95', '90', '-', '88,18', 1),
('02-18-13-22-232', 212207031, '001234597', 'SISWA 31', 'Jakarta, 31 Desember 2006', '0RTU SISWA 31', 'IX-E', '88', '88', '86', '86', '84', '85', '86', '98', '84', '93', '86', '-', '87,64', 1),
('02-18-13-22-233', 212207032, '001234598', 'SISWA 32', 'Jakarta, 05 Februari 2007', '0RTU SISWA 32', 'IX-E', '80', '85', '86', '78', '80', '77', '81', '94', '86', '75', '84', '-', '82,36', 1),
('02-18-13-22-234', 212207033, '001234599', 'SISWA 33', 'Jakarta, 02 Maret 2007', '0RTU SISWA 33', 'IX-E', '85', '85', '87', '80', '84', '86', '89', '98', '85', '76', '88', '-', '85,73', 1),
('02-18-13-22-235', 212207034, '001234600', 'SISWA 34', 'Jakarta, 12 Maret 2007', '0RTU SISWA 34', 'IX-F', '85', '85', '90', '83', '80', '84', '81', '98', '85', '76', '84', '-', '84,64', 1),
('02-18-13-22-236', 212207035, '001234601', 'SISWA 35', 'Jakarta, 19 November 2006', '0RTU SISWA 35', 'IX-F', '85', '86', '87', '80', '82', '90', '83', '90', '85', '75', '84', '-', '84,27', 1),
('02-18-13-22-237', 212207036, '001234602', 'SISWA 36', 'Jakarta, 11 September 2007', '0RTU SISWA 36', 'IX-F', '90', '88', '90', '83', '85', '87', '90', '98', '88', '86', '90', '-', '88,64', 1),
('02-18-13-22-238', 212207037, '001234603', 'SISWA 37', 'Jakarta, 06 Juli 2007', '0RTU SISWA 37', 'IX-F', '80', '84', '84', '78', '78', '75', '80', '85', '80', '78', '80', '-', '80,18', 1),
('02-18-13-22-239', 212207038, '001234604', 'SISWA 38', 'Jakarta, 21 Agustus 2007', '0RTU SISWA 38', 'IX-F', '86', '86', '88', '83', '84', '84', '82', '98', '86', '80', '84', '-', '85,55', 1),
('02-18-13-22-240', 212207039, '001234605', 'SISWA 39', 'Jakarta, 20 November 2006', '0RTU SISWA 39', 'IX-F', '85', '85', '88', '83', '80', '90', '82', '94', '85', '84', '84', '-', '85,45', 1),
('02-18-13-22-241', 212207040, '001234606', 'SISWA 40', 'Jakarta, 06 Juni 2007', '0RTU SISWA 40', 'IX-G', '85', '84', '85', '80', '81', '83', '80', '90', '85', '78', '80', '-', '82,82', 1),
('02-18-13-22-242', 212207041, '001234607', 'SISWA 41', 'Jakarta, 07 Juli 2006', '0RTU SISWA 41', 'IX-G', '83', '84', '87', '79', '80', '84', '83', '98', '84', '76', '90', '-', '84,36', 1),
('02-18-13-22-243', 212207042, '001234608', 'SISWA 42', 'Indramyau, 30 Januari 2007', '0RTU SISWA 42', 'IX-G', '82', '83', '83', '78', '82', '75', '80', '80', '82', '76', '80', '-', '80,09', 1),
('02-18-13-22-244', 212207043, '001234609', 'SISWA 43', 'Jakarta, 15 November 2006', '0RTU SISWA 43', 'IX-G', '82', '85', '83', '79', '77', '77', '80', '80', '82', '76', '84', '-', '80,45', 1),
('02-18-13-22-245', 212207044, '001234610', 'SISWA 44', 'Jakarta, 04 September 2006', '0RTU SISWA 44', 'IX-G', '92', '90', '88', '80', '91', '87', '89', '98', '85', '93', '90', '-', '89,36', 1),
('02-18-13-22-246', 212207045, '001234611', 'SISWA 45', 'Jakarta, 05 Agustus 2006', '0RTU SISWA 45', 'IX-G', '80', '85', '82', '81', '80', '80', '80', '98', '86', '75', '80', '-', '82,45', 1),
('02-18-13-22-247', 212207046, '001234612', 'SISWA 46', 'Jakarta, 04 Maret 2006', '0RTU SISWA 46', 'IX-G', '85', '87', '86', '83', '80', '85', '80', '80', '84', '91', '90', '-', '84,64', 1),
('02-18-13-22-248', 212207047, '001234613', 'SISWA 47', 'Jakarta, 05 Desember 2006', '0RTU SISWA 47', 'IX-G', '90', '85', '88', '84', '85', '84', '80', '98', '84', '86', '84', '-', '86,18', 1),
('02-18-13-22-249', 212207048, '001234614', 'SISWA 48', 'Jakarta, 22 Mei 2007', '0RTU SISWA 48', 'IX-G', '86', '85', '86', '83', '84', '84', '84', '90', '83', '83', '90', '-', '85,27', 1),
('02-18-13-22-250', 212207049, '001234615', 'SISWA 49', 'Jakarta, 20 Mei 2007', '0RTU SISWA 49', 'IX-H', '80', '85', '87', '80', '82', '84', '80', '92', '84', '88', '86', '-', '84,36', 1),
('02-18-13-22-251', 212207050, '001234616', 'SISWA 50', 'Jakarta, 16 Mei 2007', '0RTU SISWA 50', 'IX-H', '86', '85', '86', '85', '82', '83', '80', '90', '83', '91', '82', '-', '84,82', 1),
('02-18-13-22-252', 212207051, '001234617', 'SISWA 51', 'Jakarta, 02 Juni 2007', '0RTU SISWA 51', 'IX-H', '90', '85', '89', '86', '92', '89', '85', '98', '84', '96', '92', '-', '89,64', 1),
('02-18-13-22-253', 212207052, '001234618', 'SISWA 52', 'Jakarta, 15 September 2006', '0RTU SISWA 52', 'IX-H', '90', '88', '85', '83', '85', '83', '83', '94', '85', '93', '84', '-', '86,64', 1),
('02-18-13-22-254', 212207053, '001234619', 'SISWA 53', 'Jakarta, 23 April 2006', '0RTU SISWA 53', 'IX-H', '80', '85', '84', '80', '83', '75', '80', '98', '86', '78', '82', '-', '82,82', 1),
('02-18-13-22-255', 212207054, '001234620', 'SISWA 54', 'Jakarta, 06 Februari 2007', '0RTU SISWA 54', 'IX-H', '90', '85', '87', '83', '78', '83', '82', '94', '85', '76', '82', '-', '84,09', 1),
('02-18-13-22-256', 212207055, '001234621', 'SISWA 55', 'Jakarta, 25 Agustus 2006', '0RTU SISWA 55', 'IX-H', '90', '90', '94', '93', '95', '92', '88', '98', '88', '96', '90', '-', '92,18', 1),
('02-18-13-22-257', 212207056, '001234622', 'SISWA 56', 'Jakarta, 29 Mei 2007', '0RTU SISWA 56', 'IX-H', '80', '85', '85', '80', '79', '80', '80', '98', '83', '78', '86', '-', '83,09', 1),
('02-18-13-22-258', 212207057, '001234623', 'SISWA 57', 'Bandung, 02 September 2006', '0RTU SISWA 57', 'IX-H', '90', '88', '90', '85', '83', '90', '85', '94', '88', '93', '86', '-', '88,36', 1),
('02-18-13-22-259', 212207058, '001234624', 'SISWA 58', 'Jakarta, 29 Maret 2007', '0RTU SISWA 58', 'IX-I', '86', '85', '85', '83', '84', '84', '83', '90', '86', '75', '86', '-', '84,27', 1),
('02-18-13-22-260', 212207059, '001234625', 'SISWA 59', 'Cirebon, 29 Januari 2007', '0RTU SISWA 59', 'IX-I', '80', '84', '83', '79', '81', '80', '80', '90', '81', '80', '86', '-', '82,18', 1),
('02-18-13-22-261', 212207060, '001234626', 'SISWA 60', 'Jakarta, 24 Juli 2006', '0RTU SISWA 60', 'IX-I', '80', '81', '83', '78', '79', '77', '80', '88', '81', '80', '80', '-', '80,64', 1),
('02-18-13-22-262', 212207061, '001234627', 'SISWA 61', 'Jakarta, 12 Maret 2007', '0RTU SISWA 61', 'IX-I', '80', '80', '85', '80', '78', '79', '80', '85', '82', '78', '80', '-', '80,64', 1),
('02-18-13-22-263', 212207062, '001234628', 'SISWA 62', 'Jakarta, 05 Desember 2006', '0RTU SISWA 62', 'IX-I', '80', '86', '87', '84', '82', '83', '84', '92', '86', '75', '82', '-', '83,73', 1),
('02-18-13-22-264', 212207063, '001234629', 'SISWA 63', 'Jakarta, 24 November 2006', '0RTU SISWA 63', 'IX-I', '84', '85', '84', '78', '79', '75', '80', '80', '81', '80', '80', '-', '80,55', 1),
('02-18-13-22-265', 212207064, '001234630', 'SISWA 64', 'Jakarta, 26 Mei 2007', '0RTU SISWA 64', 'IX-I', '86', '86', '85', '82', '77', '82', '80', '85', '84', '78', '84', '-', '82,64', 1),
('02-18-13-22-266', 212207065, '001234631', 'SISWA 65', 'Jakarta, 08 Maret 2007', '0RTU SISWA 65', 'IX-I', '80', '84', '87', '79', '81', '75', '80', '88', '81', '78', '80', '-', '81,18', 1),
('02-18-13-22-267', 212207066, '001234632', 'SISWA 66', 'Jakarta, 21 Agustus 2007', '0RTU SISWA 66', 'IX-J', '86', '86', '85', '82', '75', '83', '83', '92', '83', '78', '86', '-', '83,55', 1),
('02-18-13-22-268', 212207067, '001234633', 'SISWA 67', 'Jakarta, 23 September 2006', '0RTU SISWA 67', 'IX-J', '80', '82', '83', '79', '77', '75', '77', '92', '80', '80', '84', '-', '80,82', 1),
('02-18-13-22-269', 212207068, '001234634', 'SISWA 68', 'Jakarta, 31 Agustus 2006', '0RTU SISWA 68', 'IX-J', '90', '86', '88', '84', '80', '84', '86', '88', '86', '83', '90', '-', '85,91', 1),
('02-18-13-22-270', 212207069, '001234635', 'SISWA 69', 'Jakarta, 13 Desember 2006', '0RTU SISWA 69', 'IX-J', '90', '86', '91', '87', '89', '92', '89', '94', '88', '93', '90', '-', '89,91', 1),
('02-18-13-22-271', 212207070, '001234636', 'SISWA 70', 'Jakarta, 30 Oktober 2006', '0RTU SISWA 70', 'IX-J', '90', '85', '85', '82', '78', '83', '84', '90', '83', '75', '90', '-', '84,09', 1),
('02-18-13-22-272', 212207071, '001234637', 'SISWA 71', 'Jakarta, 10 Juni 2007', '0RTU SISWA 71', 'IX-J', '80', '85', '82', '79', '79', '75', '80', '90', '81', '83', '86', '-', '81,82', 1),
('02-18-13-22-273', 212207072, '001234638', 'SISWA 72', 'Jakarta, 27 Mei 2006', '0RTU SISWA 72', 'IX-J', '80', '85', '80', '78', '79', '75', '77', '90', '80', '85', '82', '-', '81', 1),
('02-18-13-22-274', 212207073, '001234639', 'SISWA 73', 'Jakarta, 23 Juni 2007', '0RTU SISWA 73', 'IX-J', '82', '85', '86', '84', '80', '83', '80', '96', '85', '83', '80', '-', '84', 1),
('02-18-13-22-275', 212207074, '001234640', 'SISWA 74', 'Jakarta, 10 April 2007', '0RTU SISWA 74', 'IX-J', '86', '85', '87', '87', '78', '83', '84', '98', '86', '91', '86', '-', '86,45', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `un_user`
--

CREATE TABLE `un_user` (
  `UID` tinyint(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `un_user`
--

INSERT INTO `un_user` (`UID`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `un_konfigurasi`
--
ALTER TABLE `un_konfigurasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `un_siswa`
--
ALTER TABLE `un_siswa`
  ADD UNIQUE KEY `no_ujian` (`no_ujian`);

--
-- Indeks untuk tabel `un_user`
--
ALTER TABLE `un_user`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `un_konfigurasi`
--
ALTER TABLE `un_konfigurasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `un_user`
--
ALTER TABLE `un_user`
  MODIFY `UID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
