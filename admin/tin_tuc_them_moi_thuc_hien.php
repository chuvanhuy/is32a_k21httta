<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tin tức thêm mới</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
	    <?php 
            // 1. Kết nối đến MÁY CHỦ DỮ LIỆU & ĐẾN CSDL mà các bạn muốn LẤY, THÊM MỚI, SỬA, XÓA dữ liệu
            $ket_noi = mysqli_connect("localhost", "root", "", "k22httta_db");

            // 2. Lấy ra được các dữ liệu mà trang TIN TỨC THÊM MỚI chuyển sang
            $tieu_de = $_POST["txtTieuDe"];
            $mo_ta = $_POST["txtMoTa"];
            $noi_dung = $_POST["txtNoiDung"];

            // 3. Viết câu lệnh truy vấn để thêm mới dữ liệu vào bảng TIN TỨC trong CSDL)
            $sql = "
                      INSERT INTO `tbl_tin_tuc` (`tin_tuc_id`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `ngay_dang_tin`, `so_lan_doc`, `ghi_chu`) 
                      VALUES (NULL, '".$tieu_de."', '".$mo_ta."', '".$noi_dung."', NULL, CURRENT_TIMESTAMP, '0', NULL)";

            // 4. Thực thi câu lệnh truy vấn (mục đích trả về dữ liệu các bạn cần)
            $noi_dung_tin_tuc = mysqli_query($ket_noi, $sql);

            // 5. Hiển thị ra thông báo các bạn đã thêm mới tin tức thành công và đẩy các bạn về trang quản trị tin tức
            echo "
            	<script type='text/javascript'>
            		window.alert('Bạn đã thêm mới bài viết thành công');
            	</script>
            ";

            echo "
            	<script type='text/javascript'>
            		window.location.href='quan_tri_tin_tuc.php';
            	</script>
            ";
	    ;?>
    </body>
</html>
