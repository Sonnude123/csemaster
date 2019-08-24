-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 19, 2019 lúc 03:09 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitaplon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkyvadangnhap`
--

CREATE TABLE `dangkyvadangnhap` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangkyvadangnhap`
--

INSERT INTO `dangkyvadangnhap` (`id`, `username`, `password`, `email`, `phoneNumber`) VALUES
(1, 'wonderthang01', '123456', 'thang01@gmail.com', '0123456789'),
(2, 'son', '123456', 'sonh62@wru.vn', '123456'),
(6, 'hoang01', '123456', 'hoang01@gmail.com', '0389654878');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dapantracnghiem`
--

CREATE TABLE `dapantracnghiem` (
  `idDapAn` int(11) NOT NULL,
  `dapanA` text COLLATE utf8_unicode_ci NOT NULL,
  `dapanB` text COLLATE utf8_unicode_ci NOT NULL,
  `dapanC` text COLLATE utf8_unicode_ci NOT NULL,
  `dapanD` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `idDiem` int(11) NOT NULL,
  `java` int(10) NOT NULL,
  `tinHocDaiCuong` int(10) NOT NULL,
  `cauTruc` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`idDiem`, `java`, `tinHocDaiCuong`, `cauTruc`) VALUES
(1, 9, 8, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `idSinhVien` int(11) NOT NULL,
  `msv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`idSinhVien`, `msv`, `password`, `email`, `lop`, `sodienthoai`) VALUES
(1, '1651060803', '123456', 'thangdv62@gmail.com', '58TH2', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idTinTuc` int(11) NOT NULL,
  `tieuDeTT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noiDungTT` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`idTinTuc`, `tieuDeTT`, `noiDungTT`) VALUES
(1, 'About Thuyloi University', 'A public university under the supervision of Ministry of Agriculture and Rural Development, Thuyloi University is recognized as the leading technical university in the field of water resources. It was founded in 1959 with the first official name Academy of Water Resources and Electricity, and was assigned with main responsibilities for training and research in water resources and hydropower satisfying the country’s needs. In 2013, the official English name of the University was changed from Water Resources University (WRU) to Thuyloi University (TLU). \r\nDue to the increasingly diverse human resource needs, TLU has changed from only focusing on narrow specializations of water sector to multi-discipline curricula, including water resources, hydropower, mechanics, transportation, construction, water supply and sewerage, information technology, information systems, software engineering, natural resources, environment, disaster management, economics and climate change at all levels from junior college to post-graduate. Currently, TLU is conducting 28 underprogram programs, 21 master'),
(3, 'Thuy Loi University', 'A public university under the supervision of Ministry of Agriculture and Rural Development, Thuyloi University is recognized as the leading technical university in the field of water resources. It was founded in 1959 with the first official name Academy of Water Resources and Electricity, and was assigned with main responsibilities for training and research in water resources and hydropower satisfying the countrys needs. In 2013, the official English name of the University was changed from Water Resources University (WRU) to Thuyloi University (TLU). Due to the increasingly diverse human resource needs, TLU has changed from only focusing on narrow specializations of water sector to multi-discipline curricula, including water resources, hydropower, mechanics, transportation, construction, water supply and sewerage, information technology, information systems, software engineering, natural resources, environment, disaster management, economics and climate change at all levels from junior college to post-graduate. Currently, TLU is conducting 28 underprogram programs, 21 maste'),
(8, 'Diem Thi', 'Dai hoc Thuy Loi'),
(9, 'Thuy Loi University', 'Dai hoc Thuy Loi'),
(10, 'Gia dinh cong nghe thong tin', 'Chung toi la gia dinh cong nghe thong tin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangkyvadangnhap`
--
ALTER TABLE `dangkyvadangnhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dapantracnghiem`
--
ALTER TABLE `dapantracnghiem`
  ADD PRIMARY KEY (`idDapAn`);

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`idDiem`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`idSinhVien`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idTinTuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangkyvadangnhap`
--
ALTER TABLE `dangkyvadangnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dapantracnghiem`
--
ALTER TABLE `dapantracnghiem`
  MODIFY `idDapAn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diem`
--
ALTER TABLE `diem`
  MODIFY `idDiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `idSinhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
