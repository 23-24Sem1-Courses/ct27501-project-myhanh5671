<?php
ob_start();
session_start();
include '../model/file_handle_function.php';
include '../view/header.php';
define('PATH_TO_FILE_PDO', '../model/file_pdo_connect.php');
if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'about': //done
            include '../view/about.php';
            break;
        case 'contact': //done còn phần form
            include '../view/contact.php';
            break;
        case 'register': //done
            $status_register_account = register_account();
            if ($status_register_account == 'email_already_exists') {
                echo '<script language="javascript">';
                echo 'alert("Hãy đăng ký bằng email khác !");';
                echo '</script>';
            } elseif ($status_register_account == 'no') {
                echo '<script language="javascript">';
                echo 'alert("Đăng kí thất bại !");';
                echo '</script>';
            } elseif ($status_register_account == 'ok') {
                echo '<script language="javascript">';
                echo 'alert("Đăng kí tài khoản thành công ! Hãy tiến hành đăng nhập để mua hàng !");';
                echo '</script>';
            }
            include '../view/register.php';
            break;
        case 'login': //done
            $status_login_account = login_account();
            if ($status_login_account == 'ok') {
                echo '<script language="javascript">';
                echo 'alert("Đăng nhập thành công !");';
                echo '</script>';
                header("Location: ?action=home");
            } elseif ($status_login_account == 'no') {
                echo '<script language="javascript">';
                echo 'alert("Đăng nhập thất bại, vui lòng thử lại !");';
                echo '</script>';
            }
            include '../view/login.php';
            break;
        case 'logout': //done
            include '../view/logout.php';
            header("Location: ?action=home");
            break;
        case 'list_book': //done
            $list_of_book = list_of_books();
            include PATH_TO_FILE_PDO;
            if (isset($_GET['id_of_category'])) {
                if ($_GET['id_of_category'] == 'all') {
                    $name_of_category = 'TẤT CẢ SÁCH'; //tên của loại
                } else {
                    $sql = "select * from category where id=?";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([$_GET['id_of_category']]);
                    $name_of_category = $stmt->fetch()['category_name']; //tên của loại
                }
            }
            include '../view/book.php';
            break;
        case 'book_details': //done
            $detail_of_book = book_details();
            include PATH_TO_FILE_PDO;
            if (isset($_GET['id_of_book'])) {
                $sql = "select * from category join book on category.id=category_id where book.id=?";
                $stmt = $conn->prepare($sql);
                $stmt->execute([$_GET['id_of_book']]);
                while ($row = $stmt->fetch()) {
                    $name_of_category = $row['category_name'];
                    $id_of_category = $row[0];
                }
            }
            include '../view/detail_book.php';
            break;
        case 'cart': //done
            add_book_into_cart();
            if (isset($_SESSION['cart'])) {
                $book_in_cart = $_SESSION['cart'];
            }
            include '../view/cart.php';
            break;
        case 'delete_book_from_cart': //done
            unset($_SESSION['cart'][$_GET['id_of_book_in_cart']]);
            header("Location:?action=cart");
            break;
        case 'change_quantity': //done
            if (isset($_GET['change_type']) && isset($_GET['id_of_book_in_cart']) && isset($_GET['quantity'])) {
                $quantity_after_change = change_quantity($_GET['change_type'], $_GET['quantity']);
                if ($quantity_after_change == 0) {
                    unset($_SESSION['cart'][$_GET['id_of_book_in_cart']]);
                } else {
                    $_SESSION['cart'][$_GET['id_of_book_in_cart']]['quantity'] = $quantity_after_change;
                }
                header("Location: ?action=cart");
            }
            break;
        case 'agree_order': //done
            $last_id_of_orders = create_order();
            if ($last_id_of_orders == "no book in cart") {
                echo '<script>alert("Vui lòng thêm sản phẩm vào giỏ hàng!")</script>'; //câu lệnh này không thực hiện được
                header("Location: ?action=home");
            } else {
                $book_in_orders = $_SESSION['cart'];
                include PATH_TO_FILE_PDO;
                if (isset($_POST['btn_agree_order_cart'])) {
                    $sql = "insert into order_detail(book_name, book_img, price, amount, thanhtien, id_orders) values (?,?,?,?,?,?)";
                    $stmt = $conn->prepare($sql);
                    foreach ($book_in_orders as $id => $value) {
                        $stmt->execute([$value['book_name'], $value['img'], $value['price'], $value['quantity'], $value['price'] * $value['quantity'], $last_id_of_orders]);
                    }
                }
                include '../view/order_success.php';
            }
            break;
        case 'delete_order': //done
            unset($_SESSION['cart']);
            header("Location: ?action=home");
            break;
        case 'search_book': //done
            $result_search_book = search_book();
            include '../view/search_book.php';
            break;
        case 'account_info':
            if (isset($_SESSION['remember_email_login'])) {
                $result_account_info = get_account_info($_SESSION['remember_email_login']);
                $result_all_orders = get_all_orders($_SESSION['remember_email_login']);
            }

            if (isset($_GET['agree_cancel_order']) && isset($_GET['id_of_order_cancel'])) {
                cancel_orders($_GET['id_of_order_cancel']);
                header("Location: ?action=account_info");
            }

            include '../view/account_info.php';
            break;
        case 'detail_order':
            if (isset($_GET['id_of_order'])) {
                //Hàm lấy thông tin chi tiết đơn hàng
                $result_detail_order = get_detail_order($_GET['id_of_order']);
            }
            include '../view/detail_order.php';
            break;
        default:
            include '../view/home.php';
            break;
    }

} else {
    include '../view/home.php';
}

include '../view/footer.php';
ob_end_flush();
