<?php
define("PATH_TO_CONNECT_DB", "file_connect_pdo.php");

//hàm lấy thông tin tất cả sản phẩm
function show_all_book()
{
    include PATH_TO_CONNECT_DB;
    $sql = "select * from book join category on book.category_id=category.id";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result_of_all_book = $stmt->fetchAll();
    return $result_of_all_book;
}

//hàm lấy id và tên của tất cả loại sản phẩm
function get_all_category()
{
    include PATH_TO_CONNECT_DB;
    $sql = "select * from category";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result_of_all_category = $stmt->fetchAll();
    return $result_of_all_category;
}

//hàm kiểm tra ảnh có thể upload không
function check_img_upload($img_of_book)
{
    $target_dir = "upload/";
    $target_file = $target_dir . basename($img_of_book["name"]);
    $upload_ok = 'success';
    //$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

    // Check if image file is a actual image or fake image
    $check = getimagesize($img_of_book["tmp_name"]);
    if ($check !== false) {
        $upload_ok = 'success';
    } else {
        $upload_ok = "File không phải hình ảnh!";
    }

    // Check if file already exists
    if (file_exists($target_file)) {
        $upload_ok = 'Xin lỗi, hình ảnh đã tồn tại, vui lòng chọn ảnh khác!';
    }

    if ($upload_ok == 'success') {
        move_uploaded_file($img_of_book["tmp_name"], $target_file); //Tên tập tin, Đường dẫn tập tin

        // if everything is ok, try to upload file
    }
    // else{
    //     $upload_ok="Sorry, there was an error uploading your file.";
    // }
    return $upload_ok;
}

//hàm xóa sản phẩm
function delete_book($id_of_book)
{
    include PATH_TO_CONNECT_DB;
    $sql2 = "select * from book where id=?";
    $stmt2 = $conn->prepare($sql2);
    $stmt2->execute([$id_of_book]);
    $result2 = $stmt2->fetch();

    unlink('upload/' . $result2['img']);

    $sql = "delete from book where id=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id_of_book]);
}

//hàm kiểm tra đăng nhập
function login_admin()
{
    include PATH_TO_CONNECT_DB;
    $login_status = '';

    if (isset($_POST['btn_login'])) {
        if (isset($_POST['user_login']) && isset($_POST['password_login'])) {
            $email_admin_login = $_POST['user_login'];
            $password_admin_login = $_POST['password_login'];

            if ($email_admin_login == "admin@gmail.com") {
                $sql = "select * from account where email=?";
                $stmt = $conn->prepare($sql);
                $stmt->execute([$email_admin_login]);

                $result = $stmt->fetch();

                if ($stmt->rowCount() > 0) {
                    $password_hash_from_db = $result['pass_word'];
                    if (password_verify($password_admin_login, $password_hash_from_db)) {
                        $login_status = 'ok';
                        setcookie("admin_login_successful", 'ok', time() + 3600);
                    } else {
                        $login_status = 'no';
                    }
                } else {
                    $login_status = 'no';
                }
            } else {
                $login_status = 'no';
            }
        } else {
            $login_status = 'no';
        }
    }
    return $login_status;
}

//Hàm lấy tất cả thông tin đơn hàng
function get_all_order()
{
    include PATH_TO_CONNECT_DB;
    $sql = "select * from orders";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $result_of_all_orders = $stmt->fetchAll();
    return $result_of_all_orders;
}

//Hàm kiểm tra xem tên sản phẩm muốn thêm có trùng không
function check_name_category($name_category_add_category)
{
    $category_name_exist = '';
    include PATH_TO_CONNECT_DB;
    $sql = "select * from category where category_name=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$name_category_add_category]);
    return $stmt->rowCount();
}

//Hàm xóa sản phẩm (xóa cả thông tin và ảnh)
function delete_book_of_a_category($id_of_category)
{
    include PATH_TO_CONNECT_DB;
    //Chọn ra id của các sản phẩm thuộc loại cần xóa
    $sql = "select * from book where category_id=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id_of_category]);
    $result = $stmt->fetchAll();
    foreach ($result as $value) {
        delete_book($value['id']);
    }
}
