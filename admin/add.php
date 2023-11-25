<?php
include 'file_handle_admin.php';
include 'file_connect_pdo.php';

if (empty($_COOKIE['admin_login_successful'])) {
    header("Location: login.php");
}

//Lấy thông tin tất cả các category để hiển thị vào select
$result_of_all_category = get_all_category();

//Lấy data từ form và xử lý
if (isset($_POST['btn_add_book_add'])) {
    if (
        isset($_POST['name_book_add']) && isset($_POST['price_book_add']) && isset($_POST['category_book_add']) && isset($_POST['des_book_add'])
        && isset($_POST['author_book_add']) && isset($_POST['nxb_book_add']) && isset($_FILES['img_book_add'])
    ) {
        $name_of_book = $_POST['name_book_add'];
        $price_of_book = $_POST['price_book_add'];
        $category_of_book = $_POST['category_book_add'];
        $des_of_book = $_POST['des_book_add'];
        $author_of_book = $_POST['author_book_add'];
        $nxb_of_book = $_POST['nxb_book_add'];
        $img_of_book = $_FILES['img_book_add'];

        //Xử lý file ảnh
        $check_status_upload_img = check_img_upload($img_of_book);

        if ($check_status_upload_img == 'success') {
            $sql = "insert into book (book_name, price, category_id, description, author, nxb, img) values (?,?,?,?,?,?,?)";
            $stmt = $conn->prepare($sql);
            $stmt->execute([$name_of_book, $price_of_book, $category_of_book, $des_of_book, $author_of_book, $nxb_of_book, $img_of_book['name']]);
            echo '<script language="javascript">';
            echo 'alert("Thêm sản phẩm mới thành công !");';
            echo '</script>';
        } else {
            echo '<script language="javascript">';
            echo 'alert("' . $check_status_upload_img . '");';
            echo '</script>';
        }
    } else { //phần else này dư do input đã có required
        echo '<script language="javascript">';
        echo 'alert("Bạn phải điền đầy đủ thông tin!");';
        echo '</script>';
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sách</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
</head>

<body>
    <!-- header dùng chung -->
    <header>
        <div class="container">
            <div class="row align-items-center" style="height: 50px;">
                <div class="col-sm-6">
                    <a id="btn_back_show_all_book" href="show_all_book.php">HK Book Store</a>
                </div>
                <div class="col-sm-6">
                    <a id="btn_login" href="logout.php">Đăng xuất</a>
                </div>
            </div>
        </div>
    </header>
    <!-- header dùng chung -->
    <main class="container" style="margin-top: 50px; margin-bottom: 100px;">
        <div class="row">
            <h3 class="text-center">HK Book Store</h3>
            <p class="text-center">Thêm sách mới</p>
        </div>
        <div class="row">
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="name_book_add" class="form-label">Tên sách:</label>
                    <input type="text" name="name_book_add" class="form-control" id="name_book_add" required>
                </div>
                <div class="mb-3">
                    <label for="price_book_add" class="form-label">Giá bán:</label>
                    <input type="text" name="price_book_add" class="form-control" id="price_book_add" required>
                </div>
                <div class="mb-3">
                    <label for="category_book_add" class="form-label">Loại sách:</label>
                    <select class="form-select" id="category_book_add" name="category_book_add" required>
                        <!-- <option value="1">Đồng hồ nam</option>
                        <option value="2">Đồng hồ nữ</option>
                        <option value="3">Phụ kiện</option> -->
                        <?php
                        if (isset($result_of_all_category)) {
                            foreach ($result_of_all_category as $value) {
                        ?>
                                <option value="<?php echo $value['id']; ?>"><?php echo $value['category_name']; ?></option>

                        <?php }
                        } ?>

                    </select>
                </div>
                <div class="mb-3">
                    <label for="des_book_add" class="form-label">Mô tả:</label>
                    <textarea class="form-control" id="des_book_add" name="des_book_add" rows="4"></textarea required>
                </div>
                <div class="mb-3">
                    <label for="author_book_add" class="form-label">Tác giả:</label>
                    <input type="text" name="author_book_add" class="form-control" id="author_book_add" required>
                </div>
                <div class="mb-3">
                    <label for="nxb_book_add" class="form-label">Nhà xuất bản:</label>
                    <input type="text" name="nxb_book_add" class="form-control" id="nxb_book_add" required>
                </div>
                <div class="mb-3">
                    <label for="img_book_add" class="form-label">Chọn hình ảnh:</label>
                    <input class="form-control" type="file" id="img_book_add" name="img_book_add" accept="image/png, image/jpeg" required>
                </div>
                <button type="submit" name="btn_add_book_add" class="btn btn-primary">Thêm sách</button>
            </form>
        </div>
    </main>
    <!-- footer dùng chung -->
    <footer>
        <p class="container text-center">Copyright 2023 ©HK </p>
    </footer>
    <!-- footer dùng chung -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
        integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
        crossorigin="anonymous"></script>
</body>
</html>