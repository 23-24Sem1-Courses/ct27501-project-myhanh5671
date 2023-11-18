<!-- done -->
<title>Trang chủ</title>
<style>
.item-custom-child {
    transition: border-color 0.3s ease;
    padding: 10px;
    border-radius: 10px;
}

.item-custom-child:hover {
    box-shadow: 0px 1px 8px 1px #AAA;
}

.title-home {
    font-weight: 800;
    border-bottom: 3px solid #bc1c22;
    font-size: 25px;
    display: flex;
    padding-bottom: 10px;

}

a {
    text-decoration: none;
    /* Loại bỏ dấu gạch dưới */
    color: inherit;
    /* Sử dụng màu chữ mặc định của phần tử cha */
}
</style>
<main>
    <div>
        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../view/img/home/anh1.webp" class="d-block w-100" alt="Slide 1">
                </div>
                <div class="carousel-item">
                    <img src="../view/img/home/anh2.webp" class="d-block w-100" alt="Slide 2">
                </div>
                <div class="carousel-item">
                    <img src="../view/img/home/anh3.webp" class="d-block w-100" alt="Slide 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <div class="container mt-4">
        <div class="container mt-5">
            <h4 class="title-home mt-2"><span>SÁCH MỚI</span></h4>
            <div class="row mt-4" id="new_book_home">
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=108">
                        <img src="../admin/upload/dêmn.jpg" alt=""></a>
                    <a href="?action=book_details&id_of_book=108"
                        class="d-block text-center mt-3 name_of_new_book_home">DẾ MÈN PHIÊU LƯU KÝ</a>
                    <p class="text-center price_of_new_book_home">202.500đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=87"><img
                            src="../admin/upload/Ngay-nghi.jpg" alt=""></a>
                    <a href="?action=book_details&id_of_book=87"
                        class="d-block text-center mt-3 name_of_new_book_home">NGÀY NGHỈ CỦA NGÀI PHẢN DIỆN - TẬP 5</a>
                    <p class="text-center price_of_new_book_home">36.000đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=93">
                        <img src="../admin/upload/hancap.webp" alt=""></a>
                    <a href="?action=book_details&id_of_book=93"
                        class="d-block text-center mt-3 name_of_new_book_home">NHÂN VẬT HẠ CẤP TOMOZAKI - TẬP 6</a>
                    <p class="text-center price_of_new_book_home">99.900đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=109">
                        <img src="../admin/upload/buon.jpg" alt=""></a>
                    <a href="?action=book_details&id_of_book=109"
                        class="d-block text-center mt-3 name_of_new_book_home">TRUYỆN BUỒN CHẲNG CÓ THẬT ĐÂU (THẬT ĐẤY)

                    </a>
                    <p class="text-center price_of_new_book_home">103.500đ

                    </p>
                </div>
            </div>
        </div>

        <div class="container">
            <h4 class="mt-4 title-home"><span>SÁCH BÁN CHẠY</span></h4>

            <div class="row mt-4" id="featured_books_home">
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=96"><img src="../admin/upload/nhóc.jpg"
                            alt=""></a>
                    <a href="?action=book_details&id_of_book=96"
                        class="d-block text-center name_of_featured_books_home mt-3">Nhóc MARUTO - TẬP 3
                    </a>
                    <p class="text-center price_of_featured_books_home">36.000đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=111"><img src="../admin/upload/coban.jpg"
                            alt=""></a>
                    <a href="?action=book_details&id_of_book=111"
                        class="d-block text-center name_of_featured_books_home mt-3">CƠ BẢN LÀ CƠ BẢN</a>
                    <p class="text-center price_of_featured_books_home">43.200đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=108"><img src="../admin/upload/dêmn.jpg"
                            alt=""></a>
                    <a href="?action=book_details&id_of_book=108"
                        class="d-block text-center name_of_featured_books_home mt-3">DẾ MÈN PHIÊU LƯU KÝ</a>
                    <p class="text-center price_of_featured_books_home">202.500đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=117"><img src="../admin/upload/tia.jpg"
                            alt=""></a>
                    <a href="?action=book_details&id_of_book=117"
                        class="d-block text-center name_of_featured_books_home mt-3">NHỮNG TIA NẮNG ĐẦU TIÊN</a>
                    <p class="text-center price_of_featured_books_home">57.000đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=113">
                        <img src="../admin/upload/one2.jpg" alt=""></a>
                    <a href="?action=book_details&id_of_book=113"
                        class="d-block text-center name_of_featured_books_home mt-3">TIỂU THUYẾT ONE PIECE - CHUYỆN CHƯA
                        KỂ VỀ BĂNG MŨ RƠM</a>
                    <p class="text-center price_of_featured_books_home">43.200đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=115">
                        <img src="../admin/upload/cobe.webp" alt=""></a>
                    <a href="?action=book_details&id_of_book=115"
                        class="d-block text-center name_of_featured_books_home mt-3">CÔ BÉ NỌ CÓ MỘT CON GẤU</a>
                    <p class="text-center price_of_featured_books_home">50.000đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=114">
                        <img src="../admin/upload/conna.jpg" alt=""></a>
                    <a href="?action=book_details&id_of_book=114"
                        class="d-block text-center name_of_featured_books_home mt-3">THÁM TỬ LỪNG DANH CONAN - 15 PHÚT
                        TRẦM MẶC</a>
                    <p class="text-center price_of_featured_books_home">45.000đ</p>
                </div>
                <div class="col-6 col-md-3 new_book_item_home item-custom-child">
                    <a class="d-block" href="?action=book_details&id_of_book=116">
                        <img src="../admin/upload/chiendao.jpg" alt=""></a>
                    <a href="?action=book_details&id_of_book=116"
                        class="d-block text-center name_of_featured_books_home mt-3">CHIẾN ĐẠO - LÀM CHỦ TƯƠNG LAI &
                        KIẾN TẠO SỰ NGHIỆP</a>
                    <p class="text-center price_of_featured_books_home">88.000đ</p>
                </div>
                <a href="../public/index.php?action=list_book&id_of_category=all">
                    <p class="text-center text-primary mt-4">Xem thêm >></p>

                </a>
            </div>
        </div>



        <div class="container">
            <div class="row">
                <p id="quotes_home">
                    <?php
if (isset($quotes_random)) {
    echo $quotes_random['quoteText'];
}
?>
                </p>
            </div>
        </div>
</main>

<!-- Creating a Countdown Timer -->
<script>
// Set the date we're counting down to
var countDownDate = new Date("Jan 5, 2023 15:37:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Output the result in an element with id="demo"
    // document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    // + minutes + "m " + seconds + "s ";

    // If the count down is over, write some text
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
}, 1000);
</script>