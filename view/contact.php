<!-- done -->
<title>Liên hệ</title>
<div id="breadcrumb_background">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="?action=home">Trang chủ</a></li>&nbsp;
            <li class="breadcrumb-item active" aria-current="page"
                style="color: #ffe020; font-weight: 600; font-size: 16px;">&nbsp;Liên hệ</li>
        </ol>
    </nav>
</div>
<main class="container">
    <h4 id="title_contact">Thông tin liên hệ</h4>
    <div class="row">
        <div class="col-md-6">
            <form action="" method="post">
                <div class="mb-3">
                    <label for="name_contact_info_contact" class="form-label">Họ tên:</label>
                    <input type="text" id="name_contact_info_contact" name="name_contact_info_contact"
                        placeholder="Nhập họ tên" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="email_contact_info_contact" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email_contact_info_contact"
                        name="email_contact_info_contact" aria-describedby="emailHelp" placeholder="Nhập email của bạn"
                        required>

                </div>
                <div class="mb-3">
                    <label for="sdt_contact_info_contact" class="form-label">Số điện thoại:</label>
                    <input type="text" id="sdt_contact_info_contact" name="sdt_contact_info_contact"
                        placeholder="Nhập số điện thoại" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="content_contact_info_contact" class="form-label">Nội dung:</label>
                    <textarea class="form-control" id="content_contact_info_contact" name="content_contact_info_contact"
                        rows="4" placeholder="Nhập nội dung..." required></textarea>
                </div>
                <button type="submit" name="submit_contact_info_contact" id="submit_contact_info_contact"
                    class="btn ">Gửi thông tin liên hệ</button>
            </form>
        </div>

    </div>

</main>
