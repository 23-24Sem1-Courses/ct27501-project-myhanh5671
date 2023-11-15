<?php
//Hàm check xem email có tồn tại chưa
function check_email_exist($email, $conn)
{
    $sql = "select * from account where email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$email]);
    return $stmt->rowCount();
}

// Hàm kiểm tra quá trình đăng ký tài khoản
function register_account()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';

    $register_ok = '';
    if (isset($_POST['btn_register'])) {
        if (isset($_POST['fullname_register']) && isset($_POST['email_register']) && isset($_POST['phone_number_register']) && isset($_POST['password_register']) && isset($_POST['password_repeat_register'])) {
            $fullname_account = $_POST['fullname_register'];
            $email_account = $_POST['email_register'];
            $number_phone_account = $_POST['phone_number_register'];
            $password_account = $_POST['password_register'];

            $password_account_hash = password_hash($password_account, PASSWORD_DEFAULT);

            if (check_email_exist($email_account, $conn) > 0) {
                $register_ok = 'email_already_exists';
            } else {
                $sql = "insert into account(full_name, email , phone_number, pass_word) values(?, ? , ?, ?)";
                $stmt = $conn->prepare($sql);
                $stmt->execute([$fullname_account, $email_account, $number_phone_account, $password_account_hash]);
                $register_ok = 'ok';
            }
        } else {
            $register_ok = 'no';
        }
    }
    $conn = null;
    return $register_ok;
}

//Hàm đăng nhập
function login_account()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    $login_ok = '';
    if (isset($_POST['btn_login'])) {
        if (isset($_POST['email_login']) && isset($_POST['password_login']) && ($_POST['email_login'] != "admin@gmail.com")) {
            $email_login = $_POST['email_login'];
            $password_login = $_POST['password_login'];

            //truy vấn để lấy password khớp với email
            $sql = "select * from account where email = ?";
            $stmt = $conn->prepare($sql);
            $stmt->execute([$email_login]);
            //result lấy dòng đầu tiên
            $result = $stmt->fetch();

            if ($stmt->rowCount() > 0) {
                $password_hash_from_db = $result['pass_word'];

                if (password_verify($password_login, $password_hash_from_db)) {
                    $fullname_login = $result['full_name'];
                    $login_ok = 'ok';
                    if (isset($_POST['check_remember_login']) && ($_POST['check_remember_login'])) {
                        setcookie("remember_username_login", $fullname_login, time() + 3600);
                        setcookie("remember_email_login", $result['email'], time() + 3600);
                        setcookie("remember_phone_number_login", $result['phone_number'], time() + 3600);
                        setcookie("remember_password_login", $password_login, time() + 3600);
                    } else {
                        $_SESSION['remember_username_login'] = $fullname_login;
                        $_SESSION['remember_email_login'] = $result['email'];
                        $_SESSION['remember_phone_number_login'] = $result['phone_number'];
                        $_SESSION['remember_password_login'] = $password_login;
                    }
                } else {
                    $login_ok = 'no';
                }
            } else {
                $login_ok = 'no';
            }
        } else {
            $login_ok = 'no';
        }
    }
    $conn = null;
    return $login_ok;
}

function get_all_category()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    $sql = "select * from category";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result_of_all_category = $stmt->fetchAll();
    $conn = null;
    return $result_of_all_category;
}

//Hàm lấy thông tin các sản phẩm theo loại
function list_of_books()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    if (isset($_GET['id_of_category'])) {
        $category_id = $_GET['id_of_category'];
        if ($category_id == 'all') {
            $sql = "select * from book";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
        } else {
            $sql = "select * from book where category_id=?";
            $stmt = $conn->prepare($sql);
            $stmt->execute([$category_id]);
        }
    }
    $list_of_book = $stmt->fetchAll();
    $conn = null;
    return $list_of_book;
}

function book_details()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    if (isset($_GET['id_of_book'])) {
        $id_of_book = $_GET['id_of_book'];
        $sql = "select * from book where id=?";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$id_of_book]);

        $detail_of_book = $stmt->fetch();
        return $detail_of_book;
    }
}
function add_book_into_cart()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    if (isset($_POST['btn_add_into_cart'])) {
        if (isset($_POST['quantity'])) {
            $the_number_of_books = $_POST['quantity'];
            $id_of_book = $_POST['id_of_book'];

            if (isset($_SESSION['cart'][$id_of_book])) {
                $_SESSION['cart'][$id_of_book]['quantity'] += $the_number_of_books;
            } else {
                $sql = "select * from book where id=?";
                $stmt = $conn->prepare($sql);
                $stmt->execute([$id_of_book]);
                $result_add_into_cart = $stmt->fetch();

                //Lưu vào session
                $_SESSION['cart'][$id_of_book]['quantity'] = $the_number_of_books;
                $_SESSION['cart'][$id_of_book]['img'] = $result_add_into_cart['img'];
                $_SESSION['cart'][$id_of_book]['book_name'] = $result_add_into_cart['book_name'];
                $_SESSION['cart'][$id_of_book]['price'] = $result_add_into_cart['price'];
                header("Location:../public/index.php?action=cart");
            }
        }
    }
}

function change_quantity($type, $quantity)
{
    if ($type == 'decrease') {
        $quantity--;
    }

    if ($type == 'increase') {
        $quantity++;
    }

    return $quantity;
}

function create_order()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';

    if (isset($_POST['btn_agree_order_cart']) && isset($_SESSION['cart'])) {
        if (isset($_POST['fullname_customer_cart']) && isset($_POST['email_customer_cart']) && isset($_POST['phone_number_customer_cart']) && isset($_POST['address_customer_cart']) && isset($_POST['payments_of_customer_cart']) && isset($_POST['total_cart_value'])) {

            // Corrected SQL statement and execute call
            $sql = "INSERT INTO orders (full_name, address, phone_number, email, total, payment, status) VALUES (?, ?, ?, ?, ?, ?, 'Đang xử lý')";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                $_POST['fullname_customer_cart'],
                $_POST['address_customer_cart'],
                $_POST['phone_number_customer_cart'],
                $_POST['email_customer_cart'],
                $_POST['total_cart_value'] + 30000,
                $_POST['payments_of_customer_cart'],
            ]);

            // Corrected order ID retrieval
            $order_id = $conn->lastInsertID();

            // Close the connection after executing the query
            $conn = null;

            return $order_id; // Return the order ID
        }
    } else {
        return "no book in cart";
    }
}

function search_book()
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    if (isset($_GET['search_input_header'])) {
        $search_key = $_GET['search_input_header'];
        $sql = "select * from book where book_name LIKE '%$search_key%'"; //not a php statement so no string concatenation needed
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        $result_search_key = $stmt->fetchAll();
        return $result_search_key;
    }
}

function get_account_info($email)
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    $sql = "select * from account where email=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$email]);

    $result_account_info = $stmt->fetch();
    return $result_account_info;
}

function get_all_orders($email)
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    $sql = "select * from orders where email=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$email]);

    $result_all_orders = $stmt->fetchAll();
    return $result_all_orders;
    $conn = null;
}

function cancel_orders($id_of_order_cancel)
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    $sql = "update orders set status =? where id=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute(['Đã hủy', $id_of_order_cancel]);
    $conn = null;
}

function get_detail_order($id_of_order)
{
    include __DIR__ . DIRECTORY_SEPARATOR . 'file_pdo_connect.php';
    $sql = "select * from order_detail where id_orders=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id_of_order]);

    $result_detail_order = $stmt->fetchAll();
    return $result_detail_order;
    $conn = null;
}
