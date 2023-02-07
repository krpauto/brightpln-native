-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220925.24d18b95dd
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2023 pada 03.23
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brightaja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `code_admin`
--

CREATE TABLE `code_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `code_admin`
--

INSERT INTO `code_admin` (`id`, `email`, `code`, `expire`) VALUES
(27, 'febrianariandini1402@gmail.com', '16259', 1664957147),
(28, 'febrianariandini1402@gmail.com', '10156', 1665020358),
(29, 'febrianariandini1402@gmail.com', '79814', 1665987232),
(30, 'febrianariandini1402@gmail.com', '42685', 1665987527),
(31, 'febrianariandini1402@gmail.com', '86996', 1665987530);

-- --------------------------------------------------------

--
-- Struktur dari tabel `code_dosen`
--

CREATE TABLE `code_dosen` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` int(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `code_dosen`
--

INSERT INTO `code_dosen` (`id`, `email`, `code`, `expire`) VALUES
(1, 'febrianariandini1402@gmail.com', 20697, 1663578641),
(2, 'aldoichbal@gmail.com', 68053, 1664959307);

-- --------------------------------------------------------

--
-- Struktur dari tabel `code_guest`
--

CREATE TABLE `code_guest` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `code_guest`
--

INSERT INTO `code_guest` (`id`, `email`, `code`, `expire`) VALUES
(1, 'febrianariandini@gmail.com', '28847', 1668048295),
(2, 'febrianariandini@gmail.com', '14788', 1668048359),
(3, 'febrianariandini@gmail.com', '93376', 1668048362);

-- --------------------------------------------------------

--
-- Struktur dari tabel `code_laboran`
--

CREATE TABLE `code_laboran` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `code_laboran`
--

INSERT INTO `code_laboran` (`id`, `email`, `code`, `expire`) VALUES
(1, 'arulbagus21@gmail.com', '35838', 1663562994),
(3, 'aldoichbal@gmail.com', '49764', 1664958731),
(4, 'febrianariandini1402@gmail.com', '92713', 1665022513);

-- --------------------------------------------------------

--
-- Struktur dari tabel `code_mahasiswa`
--

CREATE TABLE `code_mahasiswa` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `code_mahasiswa`
--

INSERT INTO `code_mahasiswa` (`id`, `email`, `code`, `expire`) VALUES
(1, 'aldoichbal@gmail.com', '56023', 1664958558),
(2, 'febrianariandini@gmail.com', '73545', 1665021829),
(3, 'febrianariandini@gmail.com', '37791', 1668048010),
(4, 'fay@fay.com', '30106', 1673509707),
(5, 'fayzalromero@gmail.com', '10885', 1673511628);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `no_hpadmin` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `alamat_admin` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `profile_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `no_hpadmin`, `email_admin`, `alamat_admin`, `date`, `profile_img`) VALUES
(11, 'Admin', '$2y$10$sTdcylQg.HfSBexN5Z3DwOA93Pb0YQ9abTDBUFNzWM/xf2xnU.5fa', '0852721744', 'febrianariandini1402@gmail.com', 'Citra Batam', '0000-00-00 00:00:00', 'mnyt.jfif'),
(19, 'dodi', '$2y$10$TjME6di6Wq88RSUWF/Pz4uhNYUtbTWhh6/.MHOIWM9UU02Us1jlXC', '334535', 'aldoichbal@gmail.com', 'pinang', '0000-00-00 00:00:00', NULL),
(20, 'GERY', '$2y$10$98s9YfnBB.IUaQiNMr49zOFiAr49YOL4rHd61Lcn4bWnp39BYWviu', '088898932', 'ger@gery.com', 'Nongsa', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_attempt_guest`
--

CREATE TABLE `tbl_attempt_guest` (
  `id_attempt_guest` int(11) NOT NULL,
  `id_matkulguest` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `waktu` int(100) NOT NULL,
  `tanggal_kerja` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_attempt_mhs`
--

CREATE TABLE `tbl_attempt_mhs` (
  `id_attempt_mhs` int(11) NOT NULL,
  `id_matkulmhs` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `waktu` int(100) NOT NULL,
  `tanggal_kerja` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id_dosen` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `nik_dosen` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `no_hpdosen` varchar(200) NOT NULL,
  `email_dosen` varchar(200) NOT NULL,
  `alamat_dosen` varchar(200) NOT NULL,
  `profile_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id_dosen`, `username`, `nik_dosen`, `password`, `no_hpdosen`, `email_dosen`, `alamat_dosen`, `profile_img`) VALUES
(11, 'DOSEN', '123', '$2y$10$pcoiB6Iye8frTyYR/YqstOOxpDc6.tajPR/5sR2MKjvv.Xot9yTYq', '08252617', 'sd@gmail.com', 'fe', 'user.jpg'),
(13, 'Joshua', '123', '$2y$10$80nocDibks/h5yCZJk4/hO/VOVizz93tBTTK6m9/YMyPLJ/3Cpph6', '1323', 'febrianariandini@gmail.com', 'Citra Batam', ''),
(14, 'dede', '123', '$2y$10$HRrwxa0213ZtrtDiegY6du8YsNy6MDIH4WmTbm1txegcmQl/hBVR.', '2323', 'febrianariandini@gmail.com', 'Citra Batam', ''),
(15, 'ff', '123', '$2y$10$6ptUXqRUOi2eS.RzyNNoQ.6iD/7CCpUqOD9p7TqxGW/Uu/ew2zVtq', '121', 'febrianariandini@gmail.com', 'Citra Batam', ''),
(16, 'f', '123', '$2y$10$MNf362fAt47LJgE0.xr7OuN.r06tXyYbswDPOwH9VijluFso1h/xa', '1233', 'febrianariandini@gmail.com', 'Citra Batam', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dospengampu`
--

CREATE TABLE `tbl_dospengampu` (
  `id_dospengampu` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dospengampu`
--

INSERT INTO `tbl_dospengampu` (`id_dospengampu`, `id_dosen`, `id_matkul`) VALUES
(73, 11, 17),
(74, 11, 18),
(75, 11, 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guest`
--

CREATE TABLE `tbl_guest` (
  `id_guest` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email_guest` varchar(200) NOT NULL,
  `profile_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_guest`
--

INSERT INTO `tbl_guest` (`id_guest`, `username`, `password`, `email_guest`, `profile_img`) VALUES
(9, 'dd', '$2y$10$t0WSz6fMPCMr1zW.AFKgG.9597vbgbQEuQEqrmzufmR1CsFaM5ePO', 'sd@gmail.com', NULL),
(14, 'guest', '$2y$10$veI5ruAR.VQ3hzHMrsvgp.6T.ZSpLMw7omHuzOTZJSSc62cHzPOLi', 'guest@gmail.com', ''),
(15, 'Febri', '$2y$10$3VgYf6XpjUSUYZyfVq9dkeBpD6n82B70nFMVC5IKAdHcZf9hGmiZq', 'guest@gmail.com', ''),
(16, 'rr', '$2y$10$dyh0X1oRdB0SgBPUOnxh/u58oBBquXjWZdO8LCPvN3tCtMbKDOzH6', 'guest@gmail.com', ''),
(17, 'feb', '$2y$10$GZQNcGyLE6nQGD2eEIkvXu8nGNznLIRcMXoSyW3vKoed5qubE6Gy6', 'febrianariandini@gmail.com', NULL),
(18, 'tty', '$2y$10$r6WL7qaQToCzUaY5oUPTzONJNdfNnVb6rR1V5WwwHxA.Zjb9Vk.Z2', 'asep@asep.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(7, 'Teknik Informatika'),
(8, 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jwb_guest`
--

CREATE TABLE `tbl_jwb_guest` (
  `id_jwb_guest` int(100) NOT NULL,
  `id_attempt_guest` int(11) NOT NULL,
  `id_soal` int(100) NOT NULL,
  `jawaban` enum('a','b','c','d','e','f','t') DEFAULT NULL,
  `jawab_essay` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jwb_mhs`
--

CREATE TABLE `tbl_jwb_mhs` (
  `id_jwb_mhs` int(100) NOT NULL,
  `id_attempt_mhs` int(11) NOT NULL,
  `id_soal` int(100) NOT NULL,
  `jawaban` enum('a','b','c','d','e','f','t') CHARACTER SET utf8mb4 DEFAULT NULL,
  `jawab_essay` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laboran`
--

CREATE TABLE `tbl_laboran` (
  `id_laboran` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `nik_laboran` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `no_hplaboran` varchar(200) NOT NULL,
  `email_laboran` varchar(200) NOT NULL,
  `alamat_laboran` varchar(200) NOT NULL,
  `profile_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_laboran`
--

INSERT INTO `tbl_laboran` (`id_laboran`, `username`, `nik_laboran`, `password`, `no_hplaboran`, `email_laboran`, `alamat_laboran`, `profile_img`) VALUES
(8, 'laboran', '1234', '$2y$10$/FzHS6yDMb1ZSz4/fHn17.L1FLaAOtFdR4ZwBQXgo34BDYzRp3GFy', '085272174483', 'febrianariandini1402@gmail.com', 'sdscdsc', NULL),
(10, 'labor', '4311', '$2y$10$a8p1ASSP759qRWE/wuDxf.8LBY.f1kZyGltGe8u2CRzZc3bcn5fSi', '0852111111', 'febrianariandini1402@gmail.com', 'sdsffd', ''),
(11, 'susi', '123', '$2y$10$jcE.3C9sCyl/IM3SzIPIUeuBJYfARzxC2tb7IFpkkawY8LSolF1Tu', '2323', 'febrianariandini1402@gmail.com', 'ewdwd', ''),
(12, 'nia', '123', '$2y$10$FiLu0ov24dp.LuJ8M.VeJe1Af8HSOAxMrRkCDBcvkxtmesuZbMa.a', '43553', 'febrianariandini1402@gmail.com', 'sdsffd', ''),
(13, 'ff', '123', '$2y$10$NwfiCpSu4Si9FHmjIarPLeBsvrVrkg1.NJRP6yvlnkAeVcspSyt7i', '124', 'febrianariandini1402@gmail.com', 'sdsffd', ''),
(14, 'ff', '123', '$2y$10$UgviLQXIVaR3qOAf.wSopOk5HfmIIAuiiGQ.JRg12EkiqR3CgDNMO', '133', 'febrianariandini1402@gmail.com', 'sdsffd', ''),
(16, 'JK', '24121243', '$2y$10$WScgEROdrNBG/eldNC.KfOtFj9qbwd/TT2N71OqXr.AxgBjzLN58C', '08564732', 'asep@asep.com', 'Bengkong', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_labpengampu`
--

CREATE TABLE `tbl_labpengampu` (
  `id_labpengampu` int(11) NOT NULL,
  `id_laboran` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_labpengampu`
--

INSERT INTO `tbl_labpengampu` (`id_labpengampu`, `id_laboran`, `id_matkul`) VALUES
(5, 10, 17),
(6, 16, 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `nim_mhs` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `no_hpmhs` varchar(200) NOT NULL,
  `email_mhs` varchar(200) NOT NULL,
  `alamat_mhs` varchar(200) NOT NULL,
  `profile_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id_mhs`, `username`, `nim_mhs`, `password`, `no_hpmhs`, `email_mhs`, `alamat_mhs`, `profile_img`) VALUES
(48, 'ew', '4311901019', '$2y$10$skBEMUfJpjaxA4H/tXSWZuIjc.t92ZpSCaCOWhd1/EKw4fR.oRsoy', '3234', 'febrianariandini@gmail.com', 'Citra Batam', NULL),
(49, 'mhs', '4311901019', '$2y$10$6NrOIyGXpD0Neoo6s1Ftm.jNg1HPQUGWhpILdb66VspZ3FQTld7P.', '32424', 'febrianariandini@gmail.com', 'Citra Batam', 'kucing.jfif'),
(50, 'fd', '4311901019', '$2y$10$CVsTHAyv.IbFnlHcOAMJsu3H4xzyqQ07LPA8WVMlzVg9dEV3oTUVe', '085272174483', 'febrianariandini@gmail.com', 'Citra Batam', ''),
(51, 'tt', '4311901019', '$2y$10$RdCwhCdt0sn8NWUItvYeb.sf7Pwhvq55MlV0QZokJX5KdEkY4Zisi', '133', 'febrianariandini@gmail.com', 'Citra Batam', ''),
(52, 'Febriana Riandini', '4311901019', '', '85272174483', 'febrianariandini@gmail.com', 'Citra Batam', NULL),
(53, 'Ichbal Reyvaldo', '4311901015', '', '3434343', 'ichbal@gmail.com', 'Bengkong', NULL),
(54, 'Balqis Nabel Fadilla Rusymaidad', '4311901013', '', '43434', 'balqis@gmail.com', 'Tiban kampung', NULL),
(55, 'Sakina Januariyanti', '4311901023', '', '545232', 'sakina@gmail.com', 'Tiban Asri', NULL),
(56, 'Leni Gusniati', '4311901009', '', '323244', 'leni@gmail.com', 'Tiban Indah', NULL),
(57, 'Sepnita Indriyani', '4311901017', '', '454545', 'sepnita@gmail.com', 'Tiban Permai', NULL),
(58, 'Annisa Tiara', '4311901011', '', '324332', 'annisa@gmail.com', 'Tiban BTC', NULL),
(59, 'Sherly Octaviani Sari', '4311901030', '', '242343252', 'sherly@gmail.com', 'Tiban ayu', NULL),
(60, 'Noval Alfauzan', '4311901025', '', '423422', 'noval@gmail.com', 'Tiban impian', NULL),
(63, 'fay', '4431231231', '$2y$10$mk1IlJMwt/I4mYOLJvK2pecEDtbtjzhOB6o6eS4dW0OjebRiPzIpe', '0812384758', 'fayzalromero@gmail.com', 'Bengkong', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(200) NOT NULL,
  `nama_matkul` varchar(200) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`id_matkul`, `kode_matkul`, `nama_matkul`, `id_prodi`) VALUES
(17, 'MJ233', 'Etika Profesi', 13),
(18, 'MJ453', 'magang', 13),
(24, 'MJ543', 'Pemograman web', 13),
(31, 'TK8797', 'badan kapal', 21),
(46, 'MJ453', 'Pemograman Web', 13),
(47, 'MJ342', 'Etika Profesi', 13),
(48, 'MJ453', 'Pelaporan Kerja', 13),
(49, 'MJ234', 'Mangang', 13),
(50, 'MJ567', 'Bahasa Inggris', 13),
(54, 'kp8989', 'kpl', 21),
(56, 'MJ543', 'Jaringan Komputer', 13),
(57, 'K756', 'Rancangan', 21),
(58, 'IF7748', 'Pemrograman Game', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkulguest`
--

CREATE TABLE `tbl_matkulguest` (
  `id_matkulguest` int(11) NOT NULL,
  `id_guest` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matkulguest`
--

INSERT INTO `tbl_matkulguest` (`id_matkulguest`, `id_guest`, `id_matkul`) VALUES
(12, 18, 17),
(13, 18, 18),
(14, 14, 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkulmhs`
--

CREATE TABLE `tbl_matkulmhs` (
  `id_matkulmhs` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matkulmhs`
--

INSERT INTO `tbl_matkulmhs` (`id_matkulmhs`, `id_mhs`, `id_matkul`) VALUES
(10, 49, 18),
(13, 49, 17),
(17, 49, 46);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_modulpraktik`
--

CREATE TABLE `tbl_modulpraktik` (
  `id_modul` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `jenis_modul` varchar(200) NOT NULL,
  `judul_modul` varchar(200) NOT NULL,
  `deskripsi_modul` varchar(200) NOT NULL,
  `modul_file` text DEFAULT NULL,
  `modul_link` varchar(200) DEFAULT NULL,
  `kkm` int(11) NOT NULL,
  `waktu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_modulpraktik`
--

INSERT INTO `tbl_modulpraktik` (`id_modul`, `id_matkul`, `jenis_modul`, `judul_modul`, `deskripsi_modul`, `modul_file`, `modul_link`, `kkm`, `waktu`) VALUES
(120, 17, 'Link', '566GGGGGGGGGGGGG', '556557thghghddssd', '', 'https://www.youtube.com/embed/JvKaeWJMTBg', 60, 3600),
(121, 17, 'File', 'tyty', 'tytutytytytytytyt', '11.007 Balasan Surat Permohonan Magang Industri_Moch Ichbal Reyvaldo.pdf', '', 60, 7200),
(125, 18, 'File', 'Pengenalan Magang', 'Penjelasan tentang apa saja dalam matkul magang', '20221031102732107.pdf', '', 60, 0),
(126, 18, 'File', 'Minggu 1', 'Materi awal', '20170222135029-Prosiding 2012.pdf', '', 60, 0),
(127, 18, 'File', 'MInggu 1', 'materi 2', 'UTS Pelaporan Kerja_Febriana Riandini_4311901019.pdf', '', 60, 0),
(129, 17, 'File', 'ttetreretsdas', 'GHJJSLSLAO', '20221103022545_CPEN6098016_MID_RCQuestion (1).pdf', '', 60, 3600),
(130, 17, 'File', 'fgsadfgfgasdg', 'weqwwqewew', 'WhatsApp Image 2022-12-07 at 15.19.00.jpeg', '', 60, 3600),
(138, 17, 'File', 'fghgfyuyrr', 'dadawdwqe', 'university.png', '', 70, 60),
(139, 17, 'File', 'gttftfrtree', 'ggyygygihjhj', 'book.png', '', 60, 60),
(153, 18, 'File', 'HGDDF', 'HF*D*WYSI', 'phpMyAdmin-5.2.0-all-languages.zip', '', 65, 3600),
(155, 17, 'File', 'ERRR', 'wqewqerwqtsad', '63d3e41436f7c1674830868', '', 65, 3600),
(156, 17, 'File', 'tg', 'wqewe', 'APLIKASI_e-FIRST_AID_MONTHLY_REPORT_BERBASIS_WEB.pdf', '', 65, 3600);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai_guest`
--

CREATE TABLE `tbl_nilai_guest` (
  `id_nilai_guest` int(11) NOT NULL,
  `id_attempt_guest` int(11) NOT NULL,
  `nilai` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai_mhs`
--

CREATE TABLE `tbl_nilai_mhs` (
  `id_nilai_mhs` int(11) NOT NULL,
  `id_attempt_mhs` int(11) NOT NULL,
  `nilai` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_prodi`
--

CREATE TABLE `tbl_prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `id_jurusan`) VALUES
(13, 'D4 Teknik Multimedia dan Jaringan', 7),
(19, 'jj', 7),
(20, 'Managerial Accountingyeahh', 7),
(21, 'kons. kapal', 8),
(22, 'Magang', 7),
(24, 'Multimedia', 7),
(25, 'Informatika', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id_soal` int(100) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `jenis_soal` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `pertanyaan` varchar(400) CHARACTER SET utf8mb4 NOT NULL,
  `jawab_a` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `jawab_b` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `jawab_c` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `jawab_d` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `jawab_e` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `jawab_option` enum('a','b','c','d','e','f','t') CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `id_modul`, `jenis_soal`, `pertanyaan`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `jawab_e`, `jawab_option`) VALUES
(65, 125, 'Ganda', 'tertrtrerettrey', 'g', 'h', 'c', 'j', 'y', 'c'),
(66, 125, 'Ganda', 'weqewqweweqwertty', 'y', 'b', 'g', 'r', 'a', 'b'),
(73, 129, 'Ganda', 'asd', 'f', 'g', 'c', 'h', 'k', 'c'),
(74, 120, 'Ganda', 'sadhfdhdfj', 'g', 'f', 'u', 'd', 'w', 'd'),
(75, 120, 'Essay', 'gadgaadsytere', '', '', '', '', '', ''),
(76, 120, 'Ganda', 'fafaafasads', 'e', 't', 'c', 'g', 'a', 'c'),
(77, 120, 'Boolean', 'asghsaghdghasdghdfs', '', '', '', '', '', 'f'),
(78, 121, 'Ganda', 'wqewqewq', 'a', 'g', 'h', 'y', 'u', 'a'),
(79, 121, 'Boolean', 'gfhfgyyrer', '', '', '', '', '', 't');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `code_admin`
--
ALTER TABLE `code_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `code_dosen`
--
ALTER TABLE `code_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `code_guest`
--
ALTER TABLE `code_guest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`);

--
-- Indeks untuk tabel `code_laboran`
--
ALTER TABLE `code_laboran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `code_mahasiswa`
--
ALTER TABLE `code_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`);

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `email_admin` (`email_admin`);

--
-- Indeks untuk tabel `tbl_attempt_guest`
--
ALTER TABLE `tbl_attempt_guest`
  ADD PRIMARY KEY (`id_attempt_guest`),
  ADD KEY `id_modul` (`id_modul`),
  ADD KEY `id_matkulguest` (`id_matkulguest`);

--
-- Indeks untuk tabel `tbl_attempt_mhs`
--
ALTER TABLE `tbl_attempt_mhs`
  ADD PRIMARY KEY (`id_attempt_mhs`),
  ADD KEY `id_modul` (`id_modul`),
  ADD KEY `id_matkulmhs` (`id_matkulmhs`);

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `tbl_dospengampu`
--
ALTER TABLE `tbl_dospengampu`
  ADD PRIMARY KEY (`id_dospengampu`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indeks untuk tabel `tbl_guest`
--
ALTER TABLE `tbl_guest`
  ADD PRIMARY KEY (`id_guest`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_jwb_guest`
--
ALTER TABLE `tbl_jwb_guest`
  ADD PRIMARY KEY (`id_jwb_guest`),
  ADD KEY `id_soal` (`id_soal`),
  ADD KEY `id_attempt_guest` (`id_attempt_guest`);

--
-- Indeks untuk tabel `tbl_jwb_mhs`
--
ALTER TABLE `tbl_jwb_mhs`
  ADD PRIMARY KEY (`id_jwb_mhs`),
  ADD KEY `id_soal` (`id_soal`),
  ADD KEY `id_attempt_mhs` (`id_attempt_mhs`);

--
-- Indeks untuk tabel `tbl_laboran`
--
ALTER TABLE `tbl_laboran`
  ADD PRIMARY KEY (`id_laboran`);

--
-- Indeks untuk tabel `tbl_labpengampu`
--
ALTER TABLE `tbl_labpengampu`
  ADD PRIMARY KEY (`id_labpengampu`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_laboran` (`id_laboran`);

--
-- Indeks untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `tbl_matkulguest`
--
ALTER TABLE `tbl_matkulguest`
  ADD PRIMARY KEY (`id_matkulguest`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_guest` (`id_guest`);

--
-- Indeks untuk tabel `tbl_matkulmhs`
--
ALTER TABLE `tbl_matkulmhs`
  ADD PRIMARY KEY (`id_matkulmhs`),
  ADD KEY `id_mhs` (`id_mhs`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indeks untuk tabel `tbl_modulpraktik`
--
ALTER TABLE `tbl_modulpraktik`
  ADD PRIMARY KEY (`id_modul`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indeks untuk tabel `tbl_nilai_guest`
--
ALTER TABLE `tbl_nilai_guest`
  ADD PRIMARY KEY (`id_nilai_guest`),
  ADD KEY `id_attempt_guest` (`id_attempt_guest`);

--
-- Indeks untuk tabel `tbl_nilai_mhs`
--
ALTER TABLE `tbl_nilai_mhs`
  ADD PRIMARY KEY (`id_nilai_mhs`),
  ADD KEY `id_attempt_mhs` (`id_attempt_mhs`);

--
-- Indeks untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_modul` (`id_modul`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `code_admin`
--
ALTER TABLE `code_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `code_dosen`
--
ALTER TABLE `code_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `code_guest`
--
ALTER TABLE `code_guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `code_laboran`
--
ALTER TABLE `code_laboran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `code_mahasiswa`
--
ALTER TABLE `code_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_attempt_guest`
--
ALTER TABLE `tbl_attempt_guest`
  MODIFY `id_attempt_guest` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_attempt_mhs`
--
ALTER TABLE `tbl_attempt_mhs`
  MODIFY `id_attempt_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_dospengampu`
--
ALTER TABLE `tbl_dospengampu`
  MODIFY `id_dospengampu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `tbl_guest`
--
ALTER TABLE `tbl_guest`
  MODIFY `id_guest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_jwb_guest`
--
ALTER TABLE `tbl_jwb_guest`
  MODIFY `id_jwb_guest` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_jwb_mhs`
--
ALTER TABLE `tbl_jwb_mhs`
  MODIFY `id_jwb_mhs` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `tbl_laboran`
--
ALTER TABLE `tbl_laboran`
  MODIFY `id_laboran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_labpengampu`
--
ALTER TABLE `tbl_labpengampu`
  MODIFY `id_labpengampu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `tbl_matkulguest`
--
ALTER TABLE `tbl_matkulguest`
  MODIFY `id_matkulguest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_matkulmhs`
--
ALTER TABLE `tbl_matkulmhs`
  MODIFY `id_matkulmhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_modulpraktik`
--
ALTER TABLE `tbl_modulpraktik`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `tbl_nilai_guest`
--
ALTER TABLE `tbl_nilai_guest`
  MODIFY `id_nilai_guest` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_nilai_mhs`
--
ALTER TABLE `tbl_nilai_mhs`
  MODIFY `id_nilai_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id_soal` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_attempt_guest`
--
ALTER TABLE `tbl_attempt_guest`
  ADD CONSTRAINT `tbl_attempt_guest_ibfk_1` FOREIGN KEY (`id_modul`) REFERENCES `tbl_modulpraktik` (`id_modul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_attempt_guest_ibfk_2` FOREIGN KEY (`id_matkulguest`) REFERENCES `tbl_matkulguest` (`id_matkulguest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_attempt_mhs`
--
ALTER TABLE `tbl_attempt_mhs`
  ADD CONSTRAINT `tbl_attempt_mhs_ibfk_1` FOREIGN KEY (`id_modul`) REFERENCES `tbl_modulpraktik` (`id_modul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_attempt_mhs_ibfk_2` FOREIGN KEY (`id_matkulmhs`) REFERENCES `tbl_matkulmhs` (`id_matkulmhs`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_dospengampu`
--
ALTER TABLE `tbl_dospengampu`
  ADD CONSTRAINT `tbl_dospengampu_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `tbl_dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_dospengampu_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `tbl_matakuliah` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_jwb_guest`
--
ALTER TABLE `tbl_jwb_guest`
  ADD CONSTRAINT `tbl_jwb_guest_ibfk_1` FOREIGN KEY (`id_attempt_guest`) REFERENCES `tbl_attempt_guest` (`id_attempt_guest`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jwb_guest_ibfk_2` FOREIGN KEY (`id_soal`) REFERENCES `tbl_soal` (`id_soal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_jwb_mhs`
--
ALTER TABLE `tbl_jwb_mhs`
  ADD CONSTRAINT `tbl_jwb_mhs_ibfk_1` FOREIGN KEY (`id_attempt_mhs`) REFERENCES `tbl_attempt_mhs` (`id_attempt_mhs`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jwb_mhs_ibfk_2` FOREIGN KEY (`id_soal`) REFERENCES `tbl_soal` (`id_soal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_labpengampu`
--
ALTER TABLE `tbl_labpengampu`
  ADD CONSTRAINT `tbl_labpengampu_ibfk_1` FOREIGN KEY (`id_laboran`) REFERENCES `tbl_laboran` (`id_laboran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_labpengampu_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `tbl_matakuliah` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD CONSTRAINT `tbl_matakuliah_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `tbl_prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_matkulguest`
--
ALTER TABLE `tbl_matkulguest`
  ADD CONSTRAINT `tbl_matkulguest_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `tbl_matakuliah` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_matkulguest_ibfk_2` FOREIGN KEY (`id_guest`) REFERENCES `tbl_guest` (`id_guest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_matkulmhs`
--
ALTER TABLE `tbl_matkulmhs`
  ADD CONSTRAINT `tbl_matkulmhs_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `tbl_mahasiswa` (`id_mhs`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_matkulmhs_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `tbl_matakuliah` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_modulpraktik`
--
ALTER TABLE `tbl_modulpraktik`
  ADD CONSTRAINT `tbl_modulpraktik_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `tbl_matakuliah` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_nilai_guest`
--
ALTER TABLE `tbl_nilai_guest`
  ADD CONSTRAINT `tbl_nilai_guest_ibfk_1` FOREIGN KEY (`id_attempt_guest`) REFERENCES `tbl_attempt_guest` (`id_attempt_guest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_nilai_mhs`
--
ALTER TABLE `tbl_nilai_mhs`
  ADD CONSTRAINT `tbl_nilai_mhs_ibfk_1` FOREIGN KEY (`id_attempt_mhs`) REFERENCES `tbl_attempt_mhs` (`id_attempt_mhs`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  ADD CONSTRAINT `tbl_prodi_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD CONSTRAINT `tbl_soal_ibfk_1` FOREIGN KEY (`id_modul`) REFERENCES `tbl_modulpraktik` (`id_modul`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
