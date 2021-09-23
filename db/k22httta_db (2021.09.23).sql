-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 05:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k22httta_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nguoi_dung`
--

CREATE TABLE `tbl_nguoi_dung` (
  `nguoi_dung_id` int(11) NOT NULL,
  `ten_nguoi_dung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nguoi_dung`
--

INSERT INTO `tbl_nguoi_dung` (`nguoi_dung_id`, `ten_nguoi_dung`, `email`, `mat_khau`, `ghi_chu`) VALUES
(1, 'Chu Văn Huy', 'huycv@bav.edu.vn', '123', NULL),
(2, 'Nguyễn Hoàng Anh', 'anhnh@hvnh.edu.vn', '9999', 'Nguyễn Hoàng Anh ở lớp K22HTTTA'),
(3, 'Nguyễn Ngọc Anh', 'anhnn@hvnh.edu.vn', '555', NULL),
(4, 'Phạm Bá Việt Anh', 'anhpbv@hvnh.edu.vn', '666', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `tin_tuc_id` int(11) NOT NULL,
  `tieu_de` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_lan_doc` int(11) NOT NULL DEFAULT '0',
  `ghi_chu` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`tin_tuc_id`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `so_lan_doc`, `ghi_chu`) VALUES
(1, 'Chào mừng Kỷ niệm 60 năm ngày truyền thống HVNH (13/09/1961 - 13/09/2021)', 'Học viện Ngân hàng (tiền thân là Trường Cao cấp Nghiệp vụ Ngân hàng) được thành lập ngày 13 tháng 09 năm 1961. Học viện Ngân hàng là trường đại học công lập thuộc Ngân hàng Nhà nước Việt Nam và Bộ Giáo dục và Đào tạo, có trụ sở chính tại Hà Nội, phân viện Bắc Ninh, phân viện Phú Yên và cơ sở đào tạo Sơn Tây. ', 'Giai đoạn 1961-1975:\r\n\r\nTrường Cao cấp nghiệp vụ Ngân hàng được thành lập theo Quyết định số 3072-VG ngày 13/9/1961 của Thủ tướng Chính phủ với nhiệm vụ chủ yếu là đào tạo học sinh phổ thông trở thành cán bộ trung cấp ngân hàng, bổ túc cán bộ sơ cấp, trung cấp nghiệp vụ thành cán bộ có trình độ Cao cấp nghiệp vụ Ngân hàng và trình độ đại học chuyên tu, tại chức cho đội ngũ cán bộ ngân hàng.\r\n\r\n \r\n\r\nGiai đoạn 1976-1992:\r\n\r\nTổng Giám đốc Ngân hàng Nhà nước Việt Nam đã ký quyết định số 1229/NH-TCCB ngày 16/12/1976 về việc thành lập cơ sở II Trường Cao cấp nghiệp vụ Ngân hàng mở cơ sở hai đặt tại Thành phố Hồ Chí Minh để đào tạo hệ chuyên tu và tại chức cho cán bộ trong ngành ở các tỉnh phía Nam.\r\n\r\nNgày 18/10/1978, Thủ tướng Chính phủ thay mặt Hội đồng Chính phủ ký Quyết định số 264/CP cho phép Ngân hàng Nhà nước Việt Nam mở hệ cao đẳng trong Trường chuyên tu cao cấp Ngân hàng, bắt đầu từ năm học 1978-1979, để đào tạo cán bộ đại học thực hành Ngân hàng phục vụ yêu cầu xây dựng và phát triển đất nước.\r\n\r\nNgày 03/5/1980, Thủ tướng Chính phủ ký Quyết định số 149/TTg cho phép Ngân hàng Nhà nước Việt Nam mở một lớp Đại học nghiệp vụ Ngân hàng tại Thành phố Hồ Chí Minh, để đào tạo cán bộ nghiệp vụ Ngân hàng cho các tỉnh phía Nam.\r\n\r\n \r\n\r\nGiai đoạn 1993-1997:\r\n\r\nTrung tâm Đào tạo và Nghiên cứu Khoa học Ngân hàng được thành lập theo Quyết định số 112- TTg ngày 23/3/1993 của Thủ tướng Chính phủ trên cơ sở tổ chức lại Viện tiền tệ - Tín dụng, Trường Cao cấp nghiệp vụ Ngân hàng Hà Nội, Trường Cao cấp nghiệp vụ Ngân hàng Thành phố Hồ Chí Minh, Trường Trung học Ngân hàng I, Trường Trung học Ngân hàng II, Trường Trung học Ngân hàng III, Trường Trung học Ngân hàng IV.\r\n\r\nNgày 8/3/1996, Thủ tướng Chính phủ đã ký Quyết định số 143-TTg giao nhiệm vụ đào tạo trên đại học cho Viện Khoa học Ngân hàng (Ngân hàng Nhà nước).\r\n\r\n \r\n\r\nGiai đoạn từ 1998 đến nay:\r\n\r\nHọc viện Ngân hàng (HVNH) được thành lập theo Quyết định số 30/1998/QĐ-TTg ngày 09/02/1998 của Thủ tướng Chính phủ trên cơ sở tổ chức lại Trung tâm Đào tạo và Nghiên cứu khoa học Ngân hàng. Theo đó, HVNH là tổ chức đào tạo và Nghiên cứu khoa học của Nhà nước về lĩnh vực ngân hàng. HVNH có nhiệm vụ: i) Đào tạo cán bộ ở bậc giáo dục chuyên nghiệp, bậc đại học và trên đại học về lĩnh vực tiền tệ - tín dụng và ngân hàng; ii) Bồi dưỡng nghiệp vụ và công nghệ ngân hàng; iii) Tổ chức nghiên cứu khoa học và công nghệ ngân hàng; iv) Thực hiện hợp tác về đào tạo và nghiên cứu khoa học ngân hàng với các tổ chức trong và ngoài nước theo quy định chung của Nhà nước (Phân viện thành phố Hồ Chí Minh thuộc Học viện Ngân hàng được Thủ tướng Chính phủ quyết định thành lập Trường Đại học Ngân hàng thành phố Hồ Chí Minh theo Quyết định số 174/2003/QĐ-TTg ngày 20/8/2003).\r\n\r\nNgày 24/03/1998, Thống đốc Ngân hàng Nhà nước (NHNN) đã ký ban hành Quyết định số 107/1998/QĐ-NHNN9 quy định Quy chế tổ chức và hoạt động của HVNH đã quy định HVNH là đơn vị sự nghiệp có tư cách pháp nhân, có tài khoản và con dấu riêng, có trụ sở đặt tại thành phố Hà Nội và các cơ sở tại Thành phố Hồ Chí Minh, các tỉnh Phú yên, Bắc Ninh, Hà Tây. Học viện chịu sự lãnh đạo và quản lý trực tiếp của NHNN theo chức năng của Bộ Giáo dục và Đào tạo, Bộ Khoa - Công nghệ và môi trường, các bộ, ngành khác có liên quan; đồng thời chịu sự quản lý theo lãnh thổ của chính quyền địa phương nơi có cơ sở của Học viện.\r\n\r\nNgày 12 /01/2004 Thống đốc NHNN đã ký ban hành Quyết định số 48/2004/QĐ-NHNN thay thế Quyết định số 107/1998/QĐ-NHNN9, HVNH là đơn vị sự nghiệp có tư cách pháp nhân, có tài khoản và con dấu riêng, có trụ sở chính tại thành phố Hà Nội và các Phân viện Bắc Ninh, Phú Yên; HVNH chịu sự lãnh đạo và quản lý trực tiếp của NHNN; chịu sự quản lý nhà nước về giáo dục của Bộ Giáo dục và Đào tạo; chịu sự quản lý nhà nước thuộc thẩm quyền của các Bộ, Ngành khác có liên quan; chịu sự quản lý hành chính theo lãnh thổ của chính quyền địa phương nơi có cơ sở của Học viện theo các quy định của pháp luật.\r\n\r\nNgày 29/4/2009, Thống đốc NHNH đã ký ban hành Quyết định số 1009/QĐ-NHNN quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của HVNH thay thế Quyết định số 48/2004/QĐ-NHNN.\r\n\r\nNgày 16/3/2012, Thống đốc NHNN đã ký ban hành Quyết định số 433/QĐ-NHNN về việc quy định chức năng, nhiệm vụ, quyền hạn và mô hình tổ chức, cơ cấu của HVNH thay thế Quyết định số 1009/QĐ-NHNN ngày 29/4/2009.\r\n\r\nNgày 26/02/2014, Thống đốc NHNN đã ký ban hành Quyết định số 327/QĐ-NHNN về việc quy định chức năng, nhiệm vụ, quyền hạn và mô hình tổ chức, cơ cấu của HVNH thay thế Quyết định số 433/QĐ-NHNN nhằm kiện toàn bộ máy tổ chức và hoạt động của HVNH cho phù hợp điều kiện phát triển kinh tế trong tình hình mới.\r\n\r\nNgày 20/7/2017, Thống đốc NHNN đã ký ban hành Quyết định số 1518/QĐ-NHNN về việc quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của HVNH thay thế Quyết định số 327/QĐ-NHNN ngày 26/02/2014 nhằm kiện toàn bộ máy tổ chức và hoạt động của HVNH cho phù hợp điều kiện phát triển kinh tế trong điều kiện hội nhập.\r\n\r\nNgày 27/05/2020, Thống đốc NHNN đã ký ban hành Quyết định số 997/QĐ-NHNN về việc quyết định công nhận Hội đồng trường Học viện Ngân hàng nhiệm kỳ 2020-2025 gồm 17 thành viên và quyết định bổ nhiệm PGS.TS. Đào Minh Phúc giữ chức vụ Chủ tịch Hội đồng Học viện nhiệm kỳ 2020-2025.\r\n\r\nTrong suốt quá trình xây dựng và trưởng thành, HVNH đã phát triển không ngừng. Từ một cơ sở đào tạo chuyên về lĩnh vực tài chính ngân hàng đến nay HVNH đã mở rộng đào tạo theo hướng đa ngành. Trình độ và tính chuyên nghiệp của đội ngũ giảng viên ngày càng được nâng cao. Sinh viên tốt nghiệp đáp ứng tốt các yêu cầu của nhà tuyển dụng và xã hội, góp phần khẳng định vị thế của HVNH là một trong những cơ sở đào tạo về kinh tế hàng đầu của Việt Nam. Những năm gần đây HVNH phát triển mạnh các hoạt động hợp tác đào tạo hợp tác quốc tế thông qua các chương trình trao đổi giảng viên, sinh viên, liên kết đào tạo với nhiều trường đại học có uy tín trên thế giới. Các hoạt động nghiên cứu khoa học, tư vấn chính sách và chuyển giao công nghệ của HVNH đã tạo động lực thúc đầy nâng cao chất lượng đào tạo và đóng góp có hiệu quả cho nền kinh tế.\r\n\r\nVới những đóng góp to lớn vào sự nghiệp giáo dục đào tạo, HVNH đã được Đảng và Nhà nước, ghi nhận và trao tặng nhiều phần thưởng, danh hiệu cao quý:\r\n\r\n- Huân chương Lao động Hạng Nhất, Hạng Nhì, Hạng Ba; Huân chương Độc lập Hạng Nhất, Hạng Nhì, Hạng Ba cho Học viện Ngân hàng.\r\n\r\n- Huân chương Lao động Hạng Hạng Nhất, Hạng Nhì cho Phân viện Bắc Ninh\r\n\r\n- Huân chương Lao động Hạng Hạng Nhì, Hạng Ba cho Phân viện Phú Yên\r\n\r\n- Huân chương Lao động Hạng Nhì cho Cơ sỏ đào tạo Sơn Tây\r\n\r\n- 18 Huân chương Lao động các hạng cho các cán bộ lãnh đạo, quản lý và giảng viên của Học viện qua các thời kỳ công tác.\r\n\r\nNgoài ra, Nhà nước nước CHDCND Lào cũng đã trao tặng: Huân chương Ixala (Huân chương Độc lập) Hạng Nhất cho Học viện Ngân hàng; Huân chương Ixala Hạng Nhất cho CSĐT Sơn Tây; Huân chương Ixala các hạng cho hơn 100 cán bộ lãnh đạo, quản lý và giảng viên của HVNH qua các thời kỳ công tác.', NULL, 0, NULL),
(2, 'Talkshow \"MIS & IT - từ giảng đường đến thị trường nhân sự\"', 'Nằm trong chuỗi hoạt động tư vấn tuyển sinh năm 2021, tối ngày 27/08/2021, Khoa Hệ thống thông tin quản lý đã phối hợp với các khách mời thực hiện buổi trao đổi và chia sẻ trực tuyến với các bạn thí sinh về điểm mới trong chương trình đào tạo của Khoa năm nay cũng như cơ hội việc làm rộng mở dành cho các bạn khi ra trường. ', 'Buổi tư vấn có sự tham gia của:\r\n\r\nVề phía Khoa:\r\n\r\n- Thầy Phan Thanh Đức - Trưởng Khoa Hệ thống thông tin quản lý\r\n\r\n- Thầy Vũ Duy Hiến - Điều phối chương trình\r\n\r\nVề phía Khách mời:\r\n\r\n- Anh Hồ Thanh Sơn - Chuyên gia CNTT\r\n\r\n- Anh Nguyễn Minh Đức - Chuyên gia dữ liệu\r\n\r\nĐại diện Khoa, thầy Đức đã chia sẻ những điểm nổi bật, sự khác biệt cũng như sự giao thoa giữa hai chương trình đào tạo Hệ thống thông tin quản lý và Công nghệ thông tin – ngành bắt đầu tuyển sinh từ năm nay. Theo đó, khoa đã thực hiện cuộc khảo sát trên diện rộng đối với các đối tác và cựu sinh viên về chất lượng nhân sự do khoa cung cấp trong 9 năm qua cũng như nhu cầu nhân lực của các tổ chức trong thời gian tới, bao gồm các các vị trí, các khối kiến thức, kỹ năng mà sinh viên cần đạt được để đáp ứng nhu cầu, từ đó xây dựng nên chương trình đào tạo vô cùng cập nhật như hiện nay.', NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  ADD PRIMARY KEY (`nguoi_dung_id`);

--
-- Indexes for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`tin_tuc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  MODIFY `nguoi_dung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `tin_tuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
