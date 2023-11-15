<?php
include 'file_handle_admin.php';

if (empty($_COOKIE['admin_login_successful'])) {
    header("Location: login.php");
}

//Lấy thông tin tất cả các category để hiển thị vào select
$result_of_all_category = get_all_category();

//Lấy thông tin hiện tại của sản phẩm
if (isset($_GET['id_of_book'])) {
    $id_of_book = $_GET['id_of_book']; //$id_of_book: id của sản phẩm hiện tại
    $data_of_the_book_to_be_edited = get_data_book_from_db($id_of_book);
}

//Tiến hành cập nhật sản phẩm
if (isset($_POST['btn_edit_book_edit'])) {
    if (isset($_POST['name_book_edit']) && isset($_POST['price_book_edit']) && isset($_POST['category_book_edit']) && isset($_POST['des_book_edit']) && isset($_POST['author_book_edit']) && isset($_POST['nxb_book_edit']) && isset($_FILES['img_book_edit'])) {
        $name_book_edit = $_POST['name_book_edit'];
        $price_book_edit = $_POST['price_book_edit'];
        $category_book_edit = $_POST['category_book_edit'];
        $des_book_edit = $_POST['des_book_edit'];
        $author_book_edit = $_POST['author_book_edit'];
        $nxb_book_edit = $_POST['nxb_book_edit'];
        $img_of_edit_book = $_FILES['img_book_edit'];

        //Nếu không có thay đổi hình ảnh
        if (empty($img_of_edit_book['name'])) {
            update_data_book($name_book_edit, $price_book_edit, $category_book_edit, $des_book_edit, $author_book_edit, $nxb_book_edit, $id_of_book);
            header("Location: show_all_book.php?update_success");
        } else {
            $check_status_upload_img_edit = check_img_upload($img_of_edit_book);
            if ($check_status_upload_img_edit == 'success') {
                unlink('upload/' . $data_of_the_book_to_be_edited['img']);
                update_data_book($name_book_edit, $price_book_edit, $category_book_edit, $des_book_edit, $author_book_edit, $nxb_book_edit, $id_of_book);
                include 'file_connect_pdo.php';
                $sql_img = "update book set img=? where id=?";
                $stmt_img = $conn->prepare($sql_img);
                $stmt_img->execute([$img_of_edit_book['name'], $id_of_book]);
                header("Location: show_all_book.php?update_success");
            } else {
                echo '<script language="javascript">';
                echo 'alert("' . $check_status_upload_img_edit . '");';
                echo '</script>';
            }
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
                    <a id="btn_back_show_all_book" href="show_all_book.php">HK book store </a>
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
            <h3 class="text-center">HK book store </h3>
            <p class="text-center">Chỉnh sửa thông tin sách tại đây</p>
        </div>

        <div class="row">
            <form action="?id_of_book=<?php if (isset($_GET['id_of_book'])) {echo $_GET['id_of_book'];}?>" method="post"
                enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="name_book_edit" class="form-label">Tên sách hiện tại</label>
                    <input type="text" name="name_book_edit" class="form-control" id="name_book_edit"
                        value="<?php echo $data_of_the_book_to_be_edited['book_name']; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="price_book_edit" class="form-label">Giá sách hiện tại</label>
                    <input type="text" name="price_book_edit" class="form-control" id="price_book_edit"
                        value="<?php echo $data_of_the_book_to_be_edited['price']; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="category_book_edit" class="form-label">Loại sách</label>
                    <!-- <input type="text" class="form-control mb-3" style="background-color: gray;" value="<?php if ($data_of_the_book_to_be_edited['category_id'] == 1) {echo "Tiểu thuyết ";} elseif ($data_of_the_book_to_be_edited['category_id'] == 2) {echo "Truyện tranh";} else {
    echo "Văn học";
}
?>" readonly> -->
                    <select class="form-select" id="category_book_edit" name="category_book_edit" required>
                        <!-- <option value="1">Đồng hồ nam</option>
                        <option value="2">Đồng hồ nữ</option>
                        <option value="3">Phụ kiện</option> -->
                        <?php
if (isset($result_of_all_category)) {
    foreach ($result_of_all_category as $value) {
        ?>
                        <option value="<?php echo $value['id']; ?>"><?php echo $value['category_name']; ?></option>

                        <?php }}?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="des_book_edit" class="form-label">Mô tả sách</label>
                    <input type="text" class="form-control mb-3"
                        value="<?php echo $data_of_the_book_to_be_edited['description']; ?>" readonly>
                    <textarea class="form-control" id="des_book_edit" name="des_book_edit" rows="4" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="author_book_edit" class="form-label">Tác giả</label>
                    <input type="text" name="author_book_edit" class="form-control" id="author_book_edit" required
                        value="<?php echo $data_of_the_book_to_be_edited['author']; ?>">
                </div>
                <div class="mb-3">
                    <label for="nxb_book_edit" class="form-label">Nhà xuất bản</label>
                    <input type="text" name="nxb_book_edit" class="form-control" id="nxb_book_edit" required
                        value="<?php echo $data_of_the_book_to_be_edited['nxb']; ?>">
                </div>
                <div class="mb-3">
                    <p>Ảnh hiện tại:</p>
                    <img src="upload/<?php echo $data_of_the_book_to_be_edited['img']; ?>" width="200px" height="200px"
                        class="img-thumbnail" alt="">
                </div>
                <div class="mb-3">
                    <label for="img_book_edit" class="form-label">Chọn hình ảnh muốn đổi</label>
                    <input class="form-control" type="file" id="img_book_edit" name="img_book_edit"
                        accept="image/png, image/jpeg">
                </div>
                <button type="submit" name="btn_edit_book_edit" class="btn btn-primary">Cập nhật</button>
            </form>
        </div>


    </main>
    <!-- footer dùng chung -->
    <footer>
        <p class="container text-center">Copyright 2023 ©HK </p>
    </footer>
    <!-- footer dùng chung -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
        integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous">
    </script>
</body>

</html>