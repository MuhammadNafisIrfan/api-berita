-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2019 pada 14.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(10) NOT NULL,
  `title_berita` text NOT NULL,
  `subtitle_berita` text NOT NULL,
  `image_berita` text NOT NULL,
  `isi_berita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita_id`, `title_berita`, `subtitle_berita`, `image_berita`, `isi_berita`) VALUES
(1, 'Malin Kundang ', 'Cerita rakyat yang bertujuan untuk menghibur masyarakat', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQTDp5yLiZErQMvEM6GnNoYKZE4BkX7s_DsTfBeSB2bKLBY19j&s', 'Pada zaman dahulu di sebuah perkampungan nelayan Pantai Air Manis di daerah Padang, Sumatera Barat hiduplah seorang janda bernama Mande Rubayah bersama seorang anak laki-lakinya yang bernama Malin Kundang. Mande Rubayah amat menyayangi dan memanjakan Malin Kundang. Malin adalah seorang anak yang rajin dan penurut.\r\n\r\nMande Rubayah sudah tua, ia hanya mampu bekerja sebagai penjual kue untuk mencupi kebutuhan ia dan anak tunggalnya. Suatu hari, Malin jatuh-sakit. Sakit yang amat keras, nyawanya hampir melayang namun akhirnya ia dapat diseiamatkan-berkat usaha keras ibunya. Setelah sembuh dari sakitnya ia semakin disayang. Mereka adalah ibu dan anak yang saling menyayangi. Kini, Malin sudah dewasa ia meminta izin kepada ibunya untuk pergi merantau ke kota, karena saat itu sedang ada kapal besar merapat di Pantai Air Manis.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `kelompok_id` int(10) NOT NULL,
  `jumlah_anggota` text NOT NULL,
  `paket_perbulan` text NOT NULL,
  `paket_persemester` text NOT NULL,
  `paket_pertahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`kelompok_id`, `jumlah_anggota`, `paket_perbulan`, `paket_persemester`, `paket_pertahun`) VALUES
(1, '15 orang', 'Rp.350.000,00', 'Rp.2.000.000,00', 'Rp.3.900.000,00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarga`
--

CREATE TABLE `keluarga` (
  `keluarga_id` int(10) NOT NULL,
  `jumlah_anggota` text NOT NULL,
  `paket_perbulan` text NOT NULL,
  `paket_persemester` text NOT NULL,
  `paket_pertahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluarga`
--

INSERT INTO `keluarga` (`keluarga_id`, `jumlah_anggota`, `paket_perbulan`, `paket_persemester`, `paket_pertahun`) VALUES
(1, 'Maksimal 10 orang', 'Rp.250.000,00', 'Rp.1.400.000,00', 'Rp.2.700.000,00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal`
--

CREATE TABLE `personal` (
  `personal_id` int(10) NOT NULL,
  `paket_perbulan` text NOT NULL,
  `paket_persemester` text NOT NULL,
  `paket_pertahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `personal`
--

INSERT INTO `personal` (`personal_id`, `paket_perbulan`, `paket_persemester`, `paket_pertahun`) VALUES
(1, 'Rp.100.000,00', 'Rp.500.000,00', 'Rp.900.000,00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `Username` varchar(90) NOT NULL,
  `Nama` text NOT NULL,
  `Telepon` mediumint(255) NOT NULL,
  `Email` text NOT NULL,
  `Sandi` varchar(8) NOT NULL,
  `Konfirmasi_sandi` varchar(8) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `santri`
--

CREATE TABLE `santri` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `umur` int(100) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='pampam';

--
-- Dumping data untuk tabel `santri`
--

INSERT INTO `santri` (`id`, `name`, `umur`, `alamat`, `pendidikan`) VALUES
(1, 'daushmen', 15, 'Villa 139', 'lulus paud'),
(2, 'patihul', 90, 'cilacap ', 's3 panti jompo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(10) NOT NULL,
  `name` varchar(223) NOT NULL,
  `image` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `isi_berita` text NOT NULL,
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `foto`, `judul_berita`, `tanggal_posting`, `isi_berita`, `penulis`) VALUES
(1, 'foto_1.jpg', 'Crisitian Gonzales Percaya Madura United Lebih Baik Di Liga 1', '2018-02-08', 'Madura United tersingkir dari Piala Presiden di babak delapan besar.</br></br>\r\nKegagalan Madura United di Piala Presiden 2018, tak membuat Cristian Gonzales, jadi pesemitis ketika Liga 1 bergulir. Ia menilai, timnya bakal bisa berbicara banyak ketika kompetisi kasta teratas digelar.\r\n</br></br>\r\nLangkah Madura United dalam Piala Presiden terhenti di babak delapan besar. Pasukan Gomes de Oliviera tersebut dikalahkan Bali United lewat babak adu penalti di Stadion Manahan, Solo, akhir pekan lalu.\r\n</br></br>\r\nNamun, Gonzales merasa timnya tidak kalah kelas dibandingkan Bali United. Menurutnya, Madura United takluk karena tidak dinaungi dewi fortuna saja pada laga tersebut.\r\n</br></br>\r\n\"Waktu di Piala Presiden kami sebenarnya sudah bagus, meskipun lawan kalah lewat penalti. Ya sekarang kami harus lupakan itu dan konsentrasi untuk kompetisi nanti,\" ucap Gonzales.\r\n</br></br>\r\nLebih jauh, eks Arema FC tersebut menuturkan belum bisa memprediksikan lawan tangguh yang bakal dihadapai Madura United pada Liga 1 2018. Ini lantaran, ia menyebutkan seluruh kontestan pasti ingin meraih hasil maksimal.\r\n</br></br>\r\n\"Adanya Piala Presiden ini sangat bagus sebagai sarana kami untuk menilai semua tim, tetapi pasti saat kompetisi dimulai nanti situasi akan berbeda,\" ujarnya. ', 'Muhammad Ridwan'),
(2, 'foto_2.jpg', 'REVIEW Eredivisie Belanda: PSV Mantap Di Puncak, NAC Tinggalkan Degradasi', '2018-02-08', 'Kemenangan tipis PSV cukup bagi mereka mempertahankan posisi puncak, diikuti Ajax di urutan kedua setelah menang 4-2.\r\n</br></br>\r\nAZ Alkmaar mengukuhkan posisi ketiga dengan menghancurkan tuan rumah Twente, yang mengakhiri laga dengan sepuluh pemain, 4-0.\r\n</br></br>\r\nTim tamu membuka keunggulan di menit kesepuluh via penalti Alireza Jahanbakhsh. Twente berhasil mengimbangi permainan AZ sampai mereka harus kehilangan Cristian Cuevas yang diusir wasit setelah mendapat dua kartu kuning di menit ke-73.\r\n</br></br>\r\nMemasuki pengujung laga, AZ menambah tiga gol, dua di antaranya dicetak Wout Weghorst sebelum Jahanbakhsh mencetak bracenya di injury time.', 'DEWI AGRENIAWATI'),
(3, 'foto_3.jpg', 'Selasa Ini, Belanda Tunjuk Ronald Koeman Sebagai Pelatih', '2018-02-09', 'Koeman yang sudah tidak lagi bekerja sejak didepak Everton pada Oktober kemarin akan segera diresmikan sebagai pelatih Belanda.\r\n</br></br>\r\nMedia Inggris Sky Sports News menyebut Belanda akan mengangkat Ronald Koeman sebagai pelatih baru mereka pada Selasa (6/2) ini.\r\n</br></br>\r\nKoeman, 54 tahun, sudah tidak lagi memiliki pekerjaan sejak dilengserkan Everton dari kursinya sebagai manajer pada Oktober silam menyusul rentetan hasil buruk yang diraih di awal musim.\r\n</br></br>\r\nBelanda sendiri juga belum memiliki pelatih sejak ditinggal Dick Advocaat yang memutuskan mundur pascakegagalan mengantar negaranya lolos ke Piala Dunia 2018.', 'Adhe Makayasa\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ustad`
--

CREATE TABLE `ustad` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `umur` int(100) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `pengalaman` text NOT NULL,
  `jadwal` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='daus';

--
-- Dumping data untuk tabel `ustad`
--

INSERT INTO `ustad` (`id`, `name`, `umur`, `alamat`, `pendidikan`, `pengalaman`, `jadwal`) VALUES
(1, 'Ust arroyyan', 17, 'jln arroyyan', 'putus sekolah', 'pernah ngajar di planet namek', 'setiap hari ke delapan'),
(2, 'Ustadz al Ustadzah', 5, 'Jln. buntu Gg. Asgard', 'S3 budidaya cebong albino', 'Belum berpengalaman', 'terserah aja ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indeks untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`kelompok_id`),
  ADD UNIQUE KEY `kelompok_id` (`kelompok_id`);

--
-- Indeks untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`keluarga_id`);

--
-- Indeks untuk tabel `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ustad`
--
ALTER TABLE `ustad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `kelompok_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  MODIFY `keluarga_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ustad`
--
ALTER TABLE `ustad`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
