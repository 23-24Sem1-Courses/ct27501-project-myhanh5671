<!-- done -->
<title>Đăng nhập</title>
<style>
#breadcrumb_background {
    background-size: cover;
    width: 100%;
    margin: 30px 110px;
    display: contents;
}
</style>
<div id="breadcrumb_background">
    <p id="title_breadcrumb" class="text-center text-dark mt-2">ĐĂNG NHẬP</p>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb justify-content-center">
            <li class="breadcrumb-item"><a href="?action=home">Trang chủ</a></li>&nbsp;
            <li class="breadcrumb-item active" aria-current="page"
                style="color: #ffe020; font-weight: 600; font-size: 16px;">&nbsp;Đăng nhập</li>
        </ol>
    </nav>
</div>
<main class="container">
    <h3 id="title_login" class="text-center">ĐĂNG NHẬP TÀI KHOẢN</h3>
    <div class="row">
        <div class="col-lg"></div>
        <form class="col" id="form_login" method="post" action="#">
            <div id="nav_form_login" class="row border-bottom">
                <div class="col text-center nav_login_register border-end"><a href="#"
                        style="color: black; pointer-events: none;">Đăng nhập</a></div>
                <div class="col text-center nav_login_register"><a id="switch_login" href="?action=register">Đăng ký</a>
                </div>
            </div>
            <div class="my-3">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="email" name="email_login" class="form-control" id="exampleInputEmail1"
                    aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                <input type="password" name="password_login" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" name="check_remember_login" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Nhớ tài khoản</label>
            </div>
            <button type="submit" name="btn_login" class="btn btn-primary d-block w-100">Đăng nhập</button>
        </form>
        <div class="col-lg"></div>
    </div>
</main>
