-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2023 lúc 07:50 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

use ct275_project;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ct275_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `pass_word` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `full_name`, `email`, `phone_number`, `pass_word`) VALUES
(5, 'Admin', 'admin@gmail.com', '0966899548', '$2a$10$ChYX06lnvA02/xHdu15FPeCe/mFiWBnVQmCAmwDAKZXBq0mzg/xES'),
(14, 'Nguyễn Khánh', 'nguyenngockhanhvthg@gmail.com', '0348144669', '$2y$10$1jwAysd1HE9Vv9VfqKGPBOMT5Ge5PYG3p04/WBZx0SRtsiYXRVAN6'),
(15, 'Nguyễn Ngọc Khánh', 'nguyenngoc@gmail.com', '0348144678', '$2y$10$XMxz0RL7Q9ZHPvT.aQ1ZBu.ev9WDNmvDT9tENwqifn5c6b7t5LwO6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(30) NOT NULL,
  `nxb` varchar(30) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `book_name`, `price`, `category_id`, `description`, `author`, `nxb`, `img`) VALUES
(73, 'Cây Cam Ngọt Của Tôi', 87000, 2, '“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The NationalHãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.', 'José Mauro de Vasconcelos', 'NXB Hội Nhà Văn', 'cam_ngot.jpg'),
(74, 'Số Đỏ', 37500, 2, 'Bằng ngòi bút trào phúng độc đáo, Số đỏ lên án gay gắt cái xã hội tư sản thành thị Việt Nam đương thơi đang chạy theo lối sống ', 'Vũ Trọng Phụng', 'NXB Văn Học', 'so-do.jpg'),
(75, 'Ba chàng lính ngự ', 175000, 2, 'Tình cờ gặp gỡ ở Paris, chàng quý tộc tỉnh lẻ d’Artagnan kết thân cùng ba người lính ngự lâm Athos, Aramis, Porthos. Từ bốn con người với những tính cách hoàn toàn khác biệt - nhà quý tộc Athos mẫu mực từ trong ra ngoài, ông hộ pháp Porthos huênh hoang nhưng tốt bụng, ngài “tu viện trưởng” Aramis duyên dáng như con gái nhưng sâu sắc chẳng kém ai, chàng trẻ tuổi d’Artagnan khôn ngoan và liều lĩnh -  họ kết thành một khối thống nhất nhờ tình bạn keo sơn “Một người vì mọi người, mọi người vì một người.” Giữa cảnh tao loạn của nước Pháp thế kỉ XVI, trong thế giới của những ông hoàng bà chúa đầy những âm mưu, thủ đoạn, bốn người bạn cùng nhau bước vào những cuộc phiêu lưu đầy chất anh hùng, nghĩa hiệp nhưng cũng đầy chất lãng mạn của tình yêu. Mời bạn đọc cùng theo bước họ để thấy sống dậy một thời kì lịch sử được soi qua lăng kính kì diệu của trí tưởng tượng mà thêm phần li kì hồi hộp, lại dạt dào cái sôi nổi, hào hứng của tuổi trẻ. ', 'Alexandre Dumas cha', 'NXB Văn Học', '3-chang-linh.jpg'),
(76, 'Nhà Giả Kim', 50000, 2, 'Sơ lược về tác phẩm\r\n\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.', 'Paulo Coelho', ' Nhà Xuất Bản Hà Nội', 'nha_gia_kim.jpg'),
(77, 'Hai Số Phận', 156000, 2, 'Hai số phận” không chỉ đơn thuần là một cuốn tiểu thuyết, đây có thể xem là \"thánh kinh\" cho những người đọc và suy ngẫm, những ai không dễ dãi, không chấp nhận lối mòn.\r\n“Hai số phận” làm rung động mọi trái tim quả cảm, nó có thể làm thay đổi cả cuộc đời bạn. Đọc cuốn sách này, bạn sẽ bị chi phối bởi cá tính của hai nhân vật chính, hoặc bạn là Kane, hoặc sẽ là Abel, không thể nào nhầm lẫn. Và điều đó sẽ khiến bạn thấy được chính mình.\r\nKhi bạn yêu thích tác phẩm này, người ta sẽ nhìn ra cá tính và tâm hồn thú vị của bạn!\r\n“Nếu có giải thưởng Nobel về khả năng kể chuyện, giải thưởng đó chắc chắn sẽ thuộc về Archer.”\r\n - Daily Telegraph-', 'Jeffrey Archer', 'NXB Văn Học', '2-so-phan.jpg'),
(78, 'Nhật Ký Trong Tù', 40500, 2, 'Chủ tịch Hồ Chí Minh là vị lãnh tụ thiên tài của Đảng và nhân dân Việt Nam, anh hùng giải phóng dân tộc, danh nhân văn hoá thế giới. Người kết tinh trong mình những phẩm chất và giá trị tinh thần cao quý nhất của giai cấp công nhân và dân tộc việt Nam. Cuộc đời, sự nghiệp của Người là một tấm gương sáng vì dân, vì nước. Trong suốt cuộc đời hoạt động cách mạng, Người đã trải qua nhiều khó khăn, gian khổ, thậm chí nguy hiểm đến tính mạng, nhưng dù bất kỳ hoàn cảnh nào. Người cũng vẫn luôn lạc quan, tin tưởng vào thắng lợi của cách mạng. Tinh thần ấy thể hiện rõ trong nhiều trước tác của Người, trong đó tập thơ Nhật ký trong tù.\r\n\r\nĐây là một tập thơ chữ Hán, gồm hơn một trăm bài thơ, phần cuối có một số ghi chép về quân sự và thời sự, được Chủ tịch Hồ Chí Minh sáng tác trong thời gian hơn một năm (từ 29-8-1942 đến 10-9-1943) Người bị chính quyền địa phương của Tưởng Giới Thạch bắt giam trái phép tại các nhà tù ở tỉnh Quảng tây, Trung Quốc. Nhật ký trong tù lên án chế độc nhà tù hà khắc của chính quyền Quốc dân Đảng, thể hiện tinh thần lạc quan cách mạng và tình cảm nhân đạo cộng sản chủ nghĩa cao đẹp của Chủ tịch Hồ Chí Minh. Tập thơ được đánh giá là một văn kiện lịch sử quan trọng, một tác phẩm văn học xuất sắc, có tác dụng giáo dục sâu sắc phẩm chất và đạo đức cách mạng cho nhiều thế hệ.', 'Hồ Chí Minh', 'NXB Văn Học', 'nhat-ky.jpg'),
(79, 'Tiếng Gọi Hoang Dã', 20000, 2, 'Tiếng gọi của hoang dã (nguyên bản tiếng Anh: The Call of the Wild) là một tiểu thuyết của nhà văn Mỹ Jack London. Cốt truyện kể về một con chó tên là Buck đã được thuần hóa, cưng chiều. Nhưng một loạt các sự kiện xảy ra khi Buck bị bắt khỏi trang trại để trở thành chó kéo xe ở khu vực Alaska lạnh giá, trong giai đoạn mọi người đổ xô đi tìm vàng thế kỷ 19, thiên nhiên nguyên thủy đã đánh thức bản năng của Buck. Buck trở lại cuộc sống hoang dã. Buck trở về rừng, và sống chung với lũ sói.\r\n\r\nTiếng gọi của hoang dã là tiểu thuyết được nhiều người đọc nhất của Jack London và được xem là tác phẩm hay nhất của ông. Do nhân vật chính là một con chó, đôi khi người ta phân loại tiểu thuyết này là một tiểu thuyết hay dành cho thanh thiếu niên.\r\n\r\nHuy Hoàng Bookstore trân trọng giới thiệu!', 'Jack London', 'NXB Văn Học', 'hoang-da.jpg'),
(80, 'Tắt Đèn', 41000, 2, 'Tắt đèn của nhà văn Ngô Tất Tố phản ánh rất chân thực cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỷ XX dưới ách đô hộ của thực dân Pháp. Tác phẩm xoay quanh nhân vật chị Dậu và gia đình – một điển hình của cuộc sống bần cùng hóa sưu cao thuế nặng mà chế độ thực dân áp đặt lên xã hội Việt Nam. Trong cơn cùng cực chị Dậu phải bán khoai, bán bầy chó đẻ và bán cả đứa con để lấy tiền nộp sưu thuế cho chồng nhưng cuộc sống vẫn đi vào bế tắc, không lối thoát.\r\n\r\nTrong tác phẩm, cảnh đời tràn nước mắt của gia đình chị Dậu đã được tái hiện một cách sống động trong từng câu chữ, chi tiết văn học với nhiều cung bậc cảm xúc  của tác giả khiến người đọc không khỏi xúc động. Tác phẩm không chỉ kích thích niềm đam mê văn học ở thanh thiếu niên, mà còn bồi đắp cho lớp trẻ những tìm cảm tốt đẹp và khơi dậy lòng trắc ẩn ở các em.', 'Ngô Tất Tố', 'NXB Văn Học', 'tat-den.jpg'),
(81, 'Không Gia Đình', 128000, 2, '\" Ngày hôm nay, cái ngày phiêu bạt đầu tiên, đã rất tồi tệ, vậy thì ngày mai sẽ ra  sao đây? Tôi đói, tôi khát, và chỉ còn lại ba xu trong túi. Cho dù có ra sức thò tay vào túi mà xoa nắn chúng, thì số tiền cũng chẳng tăng lên. tôi sẽ làm gì để nuôi sống gánh hát, nếu những ngày tiếp theo chúng tôi không thể biểu diễn được? Nào rọ mõm, nào giấy phép ca hát, tôi biết lấy đâu ra những thứ ấy? Vậy là cả bọn chúng tôi đành phải chết đói ở một xó rừng, dưới một bụi cây chăng? Vừa vật vã với những câu hỏi buồn rầu ấy, tôi vừa ngắm nhìn những ngôi sao lấp lánh trên đầu tôi, giữa bầu trời tối om. Không có lấy một ngọn gió. Khắp nơi đều là cảnh tĩnh mịch, vắng bặt tiếng lá xào xạc,  tiếng chim kêu, tiếng bánh xe lăn trên đường cái; Trải rộng ra hút tầm mắt tôi, trong khoảng sâu xanh thẳm, là một vùng trống rỗng: chúng tôi mới cô độc, mới bơ vơ biết bao!.', 'Hector Malot', 'NXB Văn Học', 'ko-gia-dinh.jpg'),
(82, 'Ông Già Và Biển Cả', 70400, 2, 'Ông già và biển cả là tác phẩm kiệt xuất nhất của Ernest Hemingway khi về già. Câu chuyện rất đơn giản: Một ông lão đánh cá suốt tám mươi tư ngày không bắt được một con cá nào, cho đến khi gặp được một con cá kiếm lớn. Ông đã vật lộn suốt 3 ngày đêm với con cá khổng lồ bằng nghị lực phi thường, cuối cùng cũng đã chiến thắng. Nhưng trên đường trở về, ông lại bị cá mập tấn công. Sau khi cố gắng xua đuổi được đàn cá hung dữ quay về tới bên cảng, con cá lớn chỉ là một bộ xương trơ trụi.Nhưng, một câu chuyện giản dị là thế lại chính là một khúc hát ca ngợi chủ nghĩa anh hùng bất hủ. Ông lão đã thất bại, nhưng đó là sự thất bại về sức lực và thể xác, còn lòng tin và niềm hy vọng cuẩ ông vẫn chưa bao giờ bị phá vỡ. “Con người sinh ra không phải để thất bài. Con người có thể bị hủy diệt, nhưng không thể bị khuất phục”, đây chính là chủ nghĩa anh hùng qua lời ông lãoVới hệ thống hình ảnh minh họa sinh động, hy vọng cuốn sách có thể hiện lại một cách sinh động bản anh hùng ca bất hủ của Hemingway.', 'Ernest Hemingway', 'NXB Mỹ Thuật', 'ong-gia.jpg'),
(83, 'Đồi Gió Hú', 36000, 2, 'Đồi gió hú là tiểu thuyết duy nhất của nữ nhà văn người Anh Emily Bronte. Nó được nhà văn xuất bản lần đầu năm 1847 dưới bút danh Ellis Bell. Đồi gió hú kể về câu chuyện tình yêu không thành giữa Heathcliff và Catherine Earnshaw, cũng như làm thế nào mà sự đam mê không thể hóa giải đó đã tiêu diệt chính họ và cả những người thân khác xung quanh.\r\n\r\n Đồi gió hú được coi là tác phẩm kinh điển của văn học Anh đã được chuyển thể thành rất nhiều thể loại khác như phim truyện, phim truyền hình, nhạc kịch và cả trong các bài hát. Cho đến nay tác phẩm vẫn được độc giả nhiều ', 'Emily Bronte', 'NXB Văn Học', 'doi-gio-hu.jpg'),
(84, 'Kiêu Hãnh Và Định Kiến', 79000, 2, 'Pride and Prejudice (Kiêu hãnh và định kiến) có lẽ là truyện được yêu thích nhất trong số các tác phẩm của Jane Austen. Mặc dù họ để tâm tìm hiểu lẫn nhau, tác giả đã đảo ngược ý niệm thông thường về \"thuở ban đầu\": tính kiêu hãnh về giai cấp và tài sản của mình cùng định kiến về vị thế thấp kém của gia đình Elizabeth khiến Darcy lúc đầu muốn tránh xa cô, trong khi cô Elizabeth cũng kiêu hãnh vì lòng tự trọng của mình và có định kiến về cung cách trưởng giả của Darcy, trở nên một người con gái không giống như những người con gái khác chung quanh Darcy. Elizabeth, với cá tính nhạy bén, dí dỏm và cứng cỏi, được xem là một trong những nhân vật lôi cuốn nhất trong nền văn học Anh.', 'Jane Austen', 'NXB Văn Học', 'kieu-hanh.jpg'),
(86, 'CHU DU ẨM THỰC TẠI DỊ GIỚI VỚI KĨ NĂNG KHÔNG TƯỞNG ', 36000, 1, '“Cái nào cũng ngon hết! Cho ta thêm đĩa nữa nào!!” \r\nLòng còn nhiều ngổn ngang khi bắt đầu cuộc sống ở một thế giới mới, nhưng nhờ số tiền khổng lồ từ việc bán các ma thú do Fel săn được, Mukoda đã tạm yên tâm phần nào.\r\nTrong lúc vui vẻ, Mukoda đã đãi Fel cơ man nào là bò bít tết Wagyu, gà viên chiên rồi thịt viên… Ngờ đâu chính những món ăn mua trên Siêu thị trực tuyến lại là nguyên nhân khiến cơ thể Fel trở nên kì lạ…!?\r\nNgoài ra trong lúc vẫn đang vật lên vật xuống học cách thi triển ma pháp nơi Dị giới, Mukoda đã bị Fel quẳng vô thực chiến cái rụp! Cộng thêm việc lần mò mãi vẫn không tìm ra tấm bản đồ nào… Xem ra muốn chu du ở Dị giới cũng không hẳn là suôn sẻ lắm đâu.\r\nĐáng chú ý hơn, chuyến phiêu lưu của Fel-phàm-ăn và Mukoda nay đã có thêm sự xuất hiện của một tòng ma mới rất chi là pưng pưng! Nên nhóm của họ sẽ càng thêm náo nhiệt trong tập 2 này đấy! ', 'Akagishi K Ren Eguchi  Masa', 'NXB Kim Đông', 'chu-du.jpg'),
(87, 'NGÀY NGHỈ CỦA NGÀI PHẢN DIỆN - TẬP 5', 36000, 1, 'Hắn, kẻ được mệnh danh “Thống lĩnh” của Tổ chức hắc ám ôm mưu đồ xâm lược Trái Đất. Là một thành viên cộm cán của tổ chức, không những phải chiến đấu vất vả với Đội vệ binh bảo vệ địa cầu mà hắn còn mệt mỏi vì tính cách thái quá của đồng nghiệp. Dù là phe phản diện đi nữa, cố quá là quá cố! Đi làm đúng giờ, tan làm đúng giấc mới phải đạo!\r\nTâm hồn này cần được xoa dịu bằng đồ ăn ngon và video gấu trúc sau giờ làm việc mệt mỏi! Bên cạnh đó, sự xuất hiện của một con robot mèo ở ké cùng một gương mặt mới trong làng phản diện sẽ “trình làng”, hứa hẹn mang đến chuỗi ngày náo nhiệt đầy vui nhộn. Đây là bộ truyện rất được yêu thích trên mạng xã hội, bên ngoài hài hước bên trong chữa lành!', 'Yuu Morikawa', 'NXB Kim Đồng', 'Ngay-nghi.jpg'),
(88, 'Chú Thuật Hồi Chiến - Tập Đặc Biệt', 79200, 1, 'Sau khi “luật” mới được thêm vào Tử Diệt Hồi Du, Itadori và Fushiguro quyết định nhắm tới Higuruma Hiromi, người chơi đang nắm giữ 100 điểm. Nhưng khi đột nhập vào kết giới Tokyo số 1, họ bị tách nhau ra. Mỗi người đều có một trợ thủ và lên đường đến chỗ Higuruma...! ', 'Gege Akutami', 'NXB Kim ', 'ck me.jpg'),
(89, 'Black Cover - Tập Đặc Biệt', 22500, 1, 'Sau khi chia tách ma lực vượt trội của Dante, Magna đã lao vào một trận độ quyền cước thuần túy với hắn. Biến lòng can đảm trời cho thành vũ khí, cơn thịnh nộ đang cuồn cuộn trào dâng trong cậu!!\r\nTrong lúc đó, Noelle tức tốc đến bên nhóm Charlotte đang vật lộn trước Vanica vừa lấy được sức mạnh mới!! Trận chiến đầy duyên nợ của gia tộc Silva với Vanica và Megicula sẽ ra sao...!?', 'Yūki Tabata', 'NXB Kim ', 'balck.jpg'),
(90, 'Dr.STONE - Tập 9: Trận Chiến Cuối Cùng', 23600, 1, 'Dr.STONE - Tập 9: Trận Chiến Cuối Cùng\r\n\r\nBước vào trận quyết chiến cuối cùng giữa Vương quốc khoa học và Đế chế Tsukasa! Nhóm Senku đồng tâm hiệp lực chiếm lại hang nước thánh. Trận phục kích diễn ra trong vỏn vẹn 20 giây…!? Liệu phe nào sẽ dẫn dắt nhân loại, khoa học hay sức mạnh? Màn đếm ngược định mệnh bắt đầu!!', 'Riichiro Inagaki, Boich', 'NXB Kim Đồng', 'dr.jpg'),
(91, 'Naruto - Tập 72: Uzumaki Naruto!!', 236, 1, 'Trong lúc tất cả hân hoan vì phong ấn Kaguya thành công, tưởng chừng mọi sự đã kết thúc, Sasuke đột ngột gây náo loạn! Nhằm tháo bỏ mâu thuẫn dai dẳng bấy lâu, Naruto và Sasuke buộc phải quyết đấu! Trận thư hùng định đoạt mọi thứ giữa hai Ninja kiệt xuất chính thức bắt đầu!!MASASHI KISHIMOTOĐã đến tập cuối, xin chân thành cảm ơn quý độc giả đã dõi theo bộ truyện suốt 15 năm qua. Trên bước đường tương lai phía trước, nếu các bạn chợt nhớ từng có một nhân vật mang tên Naruto hiện hữu, tôi sẽ sướng vui vô cùng! Còn bây giờ, chúng ta hãy cùng dõi theo những tình tiết cuối cùng trong hành trình của Naruto nhé.', 'Masashi Kishimoto', 'NXB Kim Đồng', 'nar.jpg'),
(92, 'One Piece Stampede - Tập 2', 730750, 1, 'Bằng năng lực hợp thể của trái ác quỷ, Bullet đã cơ khí hóa trở thành một chiến binh khổng lồ! Trong lúc nhóm Luffy và Thế hệ Tồi tệ đang đối đầu hắn thì Hải quân phát động Buster Call…!! Trùm lễ hội Buena Festa rắp tâm khơi mào cho hỗn loạn!! Cùng với đó là sự góp mặt của lực lượng Vương hạ Thất Vũ hải, Quân Cách mạng và cả CP-0!! Ai sẽ là kẻ thâu tóm tung tích kho báu của Vua Hải tặc và sự điên cuồng đây!?', 'Eiichiro Oda, Jump Comics', 'NXB Kim Đồng', 'one.jpg'),
(93, 'NHÂN VẬT HẠ CẤP TOMOZAKI - TẬP 6 ', 99900, 1, 'Tháng 11, lễ hội văn hoá đã cận kề ngay trước mắt. \r\nTôi - Tomozaki Fumiya - khởi động lại các cuộc họp với Hinami, ngày qua ngày cần mẫn làm nhiệm vụ. Lúc đó, Hinami hỏi tôi: “Cậu thích ai?” Đó là vấn đề tôi đã ra sức trì hoãn. Một câu hỏi tôi không thể nào né tránh khi hướng đến mục tiêu kiếm cho mình một cô bạn gái. Nhưng liệu tôi có quyền lựa chọn ai đó không? Dù có được những cảm nhận chân thực về sự tiến bộ của mình, tâm lí của một nhân vật hạ cấp sâu thẳm trong lòng tôi vẫn nói... Một kẻ chắc chắn không bao giờ được lựa chọn như tôi mà lại chọn lựa ai đó thì thật không biết trời cao đất dày. \r\nTập thứ sáu của bộ truyện lãng mạn hài hước chinh phục cuộc đời cực kì thành công nay đã trình làng!\r\n* NHÂN VẬT HẠ CẤP TOMOZAKI là tác phẩm đạt giải xuất sắc trong khuôn khổ giải thưởng Light novel Shogakukan lần thứ mười. 5 năm liền lọt top bảng xếp hạng Kono Light novel ga sugoi!\r\nSố tập: 10+ (on-going)', 'Yuki Yaku Fly', 'NXB Kim Đồng', 'hancap.webp'),
(94, 'Black Cover - TẬP 26', 22500, 1, 'Vanica trong “Tất Hắc Tam Cực Tính” (Dark Triad) đã xuất hiện trước mặt Lolopechka và Noelle! Liệu rằng 2 người có thể hợp sức chống lại ma lực vô song và tâm địa xấu xa của Vanica - kẻ đang trú ngụ bên trong ác ma Megicula có nhiều duyên nợ với họ!? Trong lúc ấy, Dante đã bộc lộ bản chất khi nhắm mục tiêu vào Yami…!? Nắm vận mệnh của thế giới trong tay, các ma pháp kị sĩ lại một lần nữa bứt phá giới hạn!! ', 'Yūki Tabat', 'NXB Kim Đồng', 'black2.jpg'),
(95, 'Bluelock- TẬP 15', 31500, 1, 'BẮT ĐẦU TỪ HIỆP 2 TRẬN QUYẾT ĐẤU VỚI TUYỂN U-20! CON ÁC QUỶ SINH RA TỪ BLUELOCK ĐÃ XUẤT HIỆN!!\r\nHiệp 1 trận quyết đấu đặt cược sự tồn vong của dự án BLUELOCK với tuyển U-20 đã khép lại việc BLUELOCK 11 vươn lên dẫn trước nhờ cú sút lật ngược tình thế của Itoshi Rin! Kế hoạch bị mật mà tuyển U-20 sẽ dùng để chống lại những cái tôi hừng hực khí thế khiến cả thế giới phải sửng sốt là gì!? Mắt của Shido Ryusei, người được Itoshi Sae tìm ra, sáng lên một cách bất thường! Trong trận chiến quyết định đang không ngừng nóng lên ấy, hãy ghi bàn đi, Isagi Yoichi!!', 'Muneyuki Kaneshiro Yusuke Nomu', 'NXB Kim Đồng', 'bule.jpg'),
(96, 'Nhóc Maruto - TẬP 3', 36000, 1, 'Họa sĩ Momoko có chia sẻ rằng: “Hình như dạo này, nhóc Maru hồi nhỏ càng ngày càng giống tôi bây giờ thì phải. Hay nói đúng hơn, chẳng biết từ khi nào tôi đã nhiễm câu cửa miệng của nhóc Maru và trở thành bản sao của cô bé rồi.”\r\nTập 3 “Nhóc Maruko” vẫn là cuốn truyện tranh tự truyện mà cả gia đình có thể cùng đọc cùng vui nha các bạn.\r\n---\r\n“Nhóc Maruko” ra đời năm 1986, là bộ truyện tranh đình đám không chỉ ở Nhật Bản mà còn ở Việt Nam và rất quen thuộc với thế hệ độc giả 8x, 9x. Bộ truyện được sáng tác dựa trên chính tuổi thơ của tác giả Momoko Sakura, với nhân vật chính là cô bé tiểu học Maruko, sống trong đại gia đình gồm có ông bà nội, bố mẹ và chị gái. ', 'Momoko Sakura', 'NXB Kim Đồng', 'nhóc.jpg'),
(97, 'Shikamaru Bí Truyền - Sa Trần Huyền Tưởng ', 49500, 1, '“Kết hôn đi.”\r\nLiên minh Ninja đã vượt qua hiểm họa từ Mặt Trăng. Trong bối cảnh đó, các trưởng lão đã đánh tiếng với Gaara - Kazekage của làng Cát. Họ tuyên bố sẽ sắp xếp một buổi xem mắt cho Gaara vì cậu đã đến tuổi 20.\r\nMặt khác, một bóng đen bất ổn xuất hiện bên cạnh Kankuro. Khúc dạo đầu cho âm mưu phá hoại làng Cát đã khai màn...\r\nVÌ GIA TỘC NƠI MÌNH SINH RA, VÌ SỨ MỆNH CHẢY TRONG HUYẾT QUẢN. HÃY DÕI THEO CÁCH SỐNG CỦA CHÀNG TRAI MANG LÍ TƯỞNG BẢO VỆ THỜI ĐẠI MỚI. ', 'Masashi Kishimot', 'NXB Kim Đồng', 'raga.jpg'),
(98, 'Mashle - Tập 12', 27000, 1, 'Innocent Zero và con trai cả trong 5 người con - Doom - đột ngột xuất hiện trong vòng cuối kì thi Thần Nhãn!! Đứng trước sức mạnh áp đảo của Doom, cơ thể Mash bỗng có hiện tượng lạ…!? Với “đũa phép khởi nguyên” trong tay, Innocent Zero muốn đặt dấu chấm hết cho thế giới. Cuộc thi Thần Nhãn tạm ngừng, Mash cùng Dot và Lance bước vào kì huấn luyện khắc nghiệt của riêng mỗi người để sẵn sàng đương đầu với trận chiến cuối cùng!!\r\n \r\nSách Tặng Kèm Postcar cho bản in đầu tiên', ' Hajime Komoto', 'NXB Kim Đồng', 'mas.webp'),
(99, 'Mashle - Tập 9', 27000, 1, 'Mash may mắn thoát khỏi tay Innocent Zero trong gang tấc, nhưng kẻ thù khó ưa nhất – bài kiểm tra cuối kì – đang chờ cậu trước mắt!! Liệu sức mạnh tình bạn có kéo được Mash qua điểm liệt và nguy cơ bị đuổi học!? Trong khi ấy, người-nào-đó vẫn không chấp nhận Mash và tìm cách ngáng chân cậu trong bài phỏng vấn cuối của kì tuyển chọn Thần Nhãn. Lại thêm một thích khách lẩn khuất trên phố, còn giải đấu Tam Pháp Thuật giữa các trường để chọn ra Thần Nhãn mới cuối cùng đã khai mạc! \r\n\r\nSách Tặng Kèm Postcard cho bản in đầu tiên\r\n', 'Hajime Komoto', 'NXB Kim Đồng', 'mas2.jpg'),
(100, 'Bí Mật Tư Duy Triệu Phú (Tái Bản 2021)', 84000, 15, 'Trong cuốn sách này T. Harv Eker sẽ tiết lộ những bí mật tại sao một số người lại đạt được những thành công vượt bậc, được số phận ban cho cuộc sống sung túc, giàu có, trong khi một số người khác phải chật vật, vất vả mới có một cuộc sống qua ngày. Bạn sẽ hiểu được nguồn gốc sự thật và những yếu tố quyết định thành công, thất bại để rồi áp dụng, thay đổi cách suy nghĩ, lên kế hoạch rồi tìm ra cách làm việc, đầu tư, sử dụng nguồn tài chính của bạn theo hướng hiệu quả nhất.\r\n\r\nCuốn sách dành cho những ai còn loay hoay muốn tìm đường đến sự giàu có và thành công. “Bí mật tự duy triệu phú” mang đến nhiều tư duy mới cho người đọc về cách suy nghĩ của người giàu hay cách suy nghĩ để trở nên giàu có.', 'T Harv Eker', 'NXB Tổng Hợp TPHCM', 'bí mật.jpg'),
(101, 'Nguyên Lý Marketing', 799000, 15, 'Nguyên Lý Marketing\r\nCuốn sách có thể được xem như là giáo trình kinh điển dành cho bất cứ ai muốn nghiên cứu lĩnh vực marketing, bởi nó chứa bên trong gần như tất cả những gì bạn cần biết về marketing – từ định nghĩa, lý luận, các nguyên tắc, cho đến ứng dụng, ví dụ thực tế. Sách cũng không ngừng được chỉnh sửa, tái biên soạn, cập nhật thêm thông tin, trường hợp nghiên cứu mới cho phù hợp với tình hình kinh tế không ngừng thay đổi.', 'Philip Kotler, Gary Armstrong', 'NXB Đại Học Kinh Tế Quốc Dân', 'mar.jpg'),
(102, 'Social Marketing - Gia Tăng Tỷ Lệ Chuyển Đổi Tối Ưu Chi Phí Quảng Cáo', 197000, 15, 'Social Marketing - Gia Tăng Tỷ Lệ Chuyển Đổi Tối Ưu Chi Phí Quảng Cáo\r\nVới sự phát triển của mạng xã hội, Social Marketing đã trở thành một kênh quảng cáo tiềm năng cho các doanh nghiệp. Social Marketing hay tiếp thị qua mạng xã hội là hình thức quảng cáo thông qua việc tạo, chia sẻ nội dung trên các mạng xã hội như Facebook, Instagram, Twitter, LinkedIn,…và phát triển các fanpage để gia tăng sự nhận biết thương hiệu, đạt mục tiêu marketing, gồm các hoạt động như đăng bài, hình ảnh, video, chạy quảng cáo trả phí, … nhằm thu về các hiệu quả nhất định như lượt tương tác với người dùng, gia tăng nhận thức của người dùng về dịch vụ, sản phẩm, đặc biệt là thúc đẩy hành vi mua hàng và sở hữu sản phẩm của người dùng thông qua mạng xã hội.\r\n\r\nCuốn sách Social marketing – Gia tăng tỷ lệ chuyển đổi, tối ưu chi phí quảng cáo là một hướng dẫn vô giá đối với cả những người vốn quen thuộc với tiếp thị xã hội và những người mới tham gia vào lĩnh vực này. Cuốn sách cung cấp một cái nhìn tổng quan vô giá thông qua những ví dụ thực tế về đóng góp của các nguyên tắc Tiếp thị xã hội dựa trên một phạm vi các thách thức xã hội rộng lớn.\r\n\r\nSocial marketing – Gia tăng tỷ lệ chuyển đổi, tối ưu chi phí quảng cáo bao gồm một phổ các nghiên cứu trường hợp điển hình về các chủ đề được công chúng quan tâm như sức khỏe cộng đồng, giáo dục, an toàn, phúc lợi tài chính và các vấn đề môi trường. Cuốn sách sử dụng một cách hữu ích khuôn khổ trình bày chiến lược nhất quán lấy căn cứ là các nguyên tắc Tiếp thị xã hội để kể câu chuyện về các trường hợp được đặt ra trong cuốn sách. Khuôn khổ nhất quán và hữu ích này giúp nhấn mạnh sức mạnh của Tiếp thị xã hội trong việc thúc đẩy/tăng cường hình thành, phát triển, cung cấp và đánh giá các chương trình vì lợi ích xã hội.\r\n\r\nVề tác giả:\r\n\r\nPhó Tiến sĩ Philip Kotler là Giáo sư ưu tú môn Marketing Quốc tế của SC Johnson & Son tại Trường Quản lý Kellogg, Đại học Northwestern. Được vinh danh là Cha đẻ của Marketing hiện đại.\r\n\r\nThạc sỹ Quản trị kinh doanh Nancy R. Lee là Chủ tịch của công ty Social Marketing Services, Inc., ở Seattle, Washington, đồng thời là thỉnh giảng viên (cộng tác giảng dạy) môn Tiếp thị xã hội tại Đại học Washington\r\n\r\n', 'Philip Kotler, Nancy R. Lee', 'Công Thương', 'so.jpg'),
(103, 'Truyền Thông Bằng EQ', 135000, 15, 'TRUYỀN THÔNG BẰNG EQ\r\n\r\nTruyền thông có thể được coi là nghệ thuật vị nhân sinh, vì chạm được đến số đông. Bản chất của quảng cáo là sự thay đổi không ngừng, cộng thêm ngành Truyền thông được xem là ngành với tốc độ đào thải nhanh đến chóng mặt, đòi hỏi người làm truyền thông luôn phải đổi mới bản thân, làm một “chú tắc kè hoa”. Điều này đòi hỏi một sự dấn thân, hy sinh để tìm những cảm xúc, ý tưởng mới. Sự dựa dẫm vào lý trí hay sự nhanh nhẹn hay thông minh đôi khi không đủ cho một ý tưởng có sức ảnh hưởng. Vậy nên đỉnh cao của sự sáng tạo tinh hoa là khi ý tưởng xuất phát từ trái tim, từ cảm xúc.\r\n\r\n“Truyền thông bằng EQ” sẽ là cuốn sách đầu tiên dạy bạn tiếp thị bằng cảm xúc thay vì lý tính. Đây là cuốn sách tinh hoa trải qua quá trình chắt lọc thông tin từ 100 vị giám đốc ưu tú trong ngành tiếp thị - quảng cáo, giải quyết 100 vấn đề tiếp thị nan giản.\r\n\r\n100 câu hỏi khác lạ cùng với những câu trả lời còn khác lạ hơn nữa. Không dừng lại ở những câu hỏi vô cùng độc đáo, hiếm được đề cập như: Sau năm 45 tuổi, người làm quảng cáo có thể làm gì?; Tại sao dân quảng cáo cũng khó vượt qua cột mốc bảy năm? Cuốn sách còn trả lời những vấn đề vô cùng chi tiết như: Nên nhảy việc thế nào khi làm ngành quảng cáo, làm sao để quay một quảng cáo “tẩy não” nhưng không bị chửi,....\r\n\r\n“Truyền thông bằng EQ” chính là cuốn cẩm nang sinh tồn trong thế giới truyền thông đầy khắc nghiệt nhưng với một tư duy phá cách, độc đáo. Cuốn sách được trình bày dưới dạng những câu hỏi và trả lời, như một sơ đồ tư duy tổng thể cùng hệ thống giá trị của thế giới truyền thông. Đồng thời, cuốn sách cũng tập hợp một hồ sơ xã hội học đầy chân thực của Quảng cáo - Tiếp thị trong thời đại này.\r\n\r\n“Truyền thông bằng EQ” xứng đáng là quyển sách đen của ngành quảng cáo, mở ra con đường tư duy mới. Cuốn sách dạy bạn cách tư duy và phán đoán, giúp bạn trau dồi trí EQ và lối tư duy phản biện - 2 xu hướng tư duy tất yếu của kỉ nguyên mới.', 'Quỷ Quỷ, Đinh Hòa Trân', 'Phụ Nữ Việt Nam', 'eq.jpg'),
(104, 'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', 98000, 15, 'Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. Ngày nay khách hàng không có nhiều thời gian và sự chú ý dành cho thương hiệu của bạn – và họ còn bị bao quanh bởi vô số các chọn lựa. Bạn phải tách khỏi đám đông, phải nổi trội, để gây sự chú ý và truyền đạt thông điệp mà khách hàng muốn nghe. “Tiếp thị 4.0” tận dụng tâm lý thay đổi của khách hàng để tiếp cận nhiều khách hàng hơn và khiến họ gắn bó với thương hiệu hơn bao giờ hết. Quyển sách cho bạn kiến thức sâu rộng để bạn thành công trong thế giới tiếp thị ngày nay: Khám phá những nguyên tắc mới trong tiếp thị; Nổi bật và tạo ra những khoảnh khắc WOW; Xây dựng nền tảng khách hàng trung thành và có tiếng nói; và Biết ai sẽ là người định hình tương lai của các chọn lựa của khách hàng…\r\nQuyển sách gồm ba phần, với các nội dung:\r\n“Phần đầu tiên của cuốn sách là kết quả quan sát của chúng tôi về thế giới chúng ta đang sinh sống. Chúng tôi bắt đầu bằng cách bám sát ba thay đổi lớn đang định hình thế giới chúng ta. Chúng tôi đi vào chi tiết hơn để khám phá xem khả năng kết nối đã thay đổi cơ bản cuộc sống của con người như thế nào. Không chỉ dừng lại ở đó, chúng tôi đi sâu hơn vào một số nhóm tiểu văn hóa chính trong kỷ nguyên số - đó là giới trẻ, phụ nữ và công dân mạng, hứa hẹn sẽ là nền tảng cho một thế hệ khách hàng mới.\r\nPhần thứ hai cũng là phần trọng tâm của cuốn sách, sẽ thảo luận về cách người làm tiếp thị có thể gia tăng hiệu suất bằng cách tìm hiểu về hành trình khách hàng trong kỷ nguyên số. Phần này sẽ giới thiệu một hệ thống mới các chỉ số tiếp thị và cách nhìn hoàn toàn mới về cách đánh giá hoạt động tiếp thị của chúng ta. Chúng tôi cũng đào sâu hơn vào một số ngành quan trọng và cách áp dụng những ý tưởng từ “Tiếp thị 4.0” vào các ngành này.\r\nCuối cùng, phần thứ ba miêu tả chi tiết về các chiến thuật chủ đạo của “Tiếp thị 4.0”. Chúng tôi bắt đầu với hoạt động tiếp thị lấy con người làm trung tâm với mục tiêu nhân cách hóa thương hiệu với các giá trị của con người. Sau đó, chúng tôi tiếp tục thảo luận chuyên sâu về tiếp thị nội dung nhằm tạo ra thảo luận giữa các khách hàng. Ngoài ra, chúng tôi còn mô tả những cách giúp người làm tiếp thị có thể áp dụng phương thức tiếp thị tích hợp đa kênh nhằm tăng doanh thu cao hơn. Sau cùng, chúng tôi đào sâu vào các khái niệm về sự gắn kết với khách hàng ở kỷ nguyên số.”\r\n\r\n', 'Philip Kotler, Hermawan Kartaj', 'Trẻ', 'bón.jpg'),
(105, 'Nghề Thuyết Phục - Chuyện Đời - Chuyện Nghề Của Bậc Thầy PR', 140000, 15, 'Harold Burson, người được PRWeek mô tả là “nhân vật nhiều ảnh hưởng nhất của ngành  PR trong thế kỷ 20”, có lẽ là cái tên nổi bật nhất trong ngành này hiện nay. Nhà sáng lập của Burson-Marsteller khổng lồ đã có một sự nghiệp 70 năm lừng lẫy, xây dựng một tập đoàn toàn cầu từ một công ty tư vấn chỉ có một người. Trong cuốn hồi ký hấp dẫn và giàu thông tin này, Burson lần lại sự nghiệp mình, từ lúc học tại Ole Miss tới lúc phục vụ trong Thế chiến II, làm nhiệm vụ tường thuật các phiên tòa Nuremberg, rồi bắt tay với Bill Marsteller, cùng nhau làm nên lịch sử trong một doanh nghiệp rồi sẽ trở thành một trong những công ty lớn nhất thế giới về mảng này, với hơn 60 văn phòng trên sáu lục địa. \r\nDùng các ví dụ về chuyện nghề lẫn chuyện cá nhân, Burson cho độc giả thấy những gì thực sự là PR – các thách thức, phương pháp luận, cũng như tác động của nó. Chính các giai thoại về khó khăn trong nghề PR, như vụ khủng hoảng Tylenol, việc loại bỏ cờ Liên minh miền Nam khỏi trường Ole Miss, hay vụ ra mắt “New Coke” là những minh họa cho các nguyên lý đã được thời gian thử thách của Buron về thế nào là quản lý khủng hoảng và PR siêu đẳng. Ông đã đan dệt những khoảnh khắc biểu tượng của lịch sử ngành PR vào câu chuyện của mình, khiến nó trở thành một cẩm nang lý thú và vô giá cho những ai muốn trở thành chuyên nghiệp trong bất kỳ ngành nào. \r\nKhông những mọi tổ chức mà mỗi cá nhân đều đang làm PR. Thông qua sự nghiệp đầy đột phá mà Burson mô tả là “một chuỗi những khoảnh khắc quyết định”, ông đã đặt ra các tiêu chuẩn cho hành vi công ty và cá nhân, nhấn mạnh vào trách nhiệm xã hội của công ty, sự xuất sắc của sản phẩm, và sự chính trực không thể khuất phục. Di sản của ông đã định hình nên nhiều thế hệ, và sẽ còn định hình cho nhiều thế hệ sắp tới.\r\n\r\n', 'Harold Burson', 'tr', 'nghe.jpg'),
(106, 'Tư Duy Ngược Dịch Chuyển Thế Giới - Originals: How Non-Conformists Move The World', 142200, 15, 'Tư Duy Ngược Dịch Chuyển Thế Giới - Originals: How Non-Conformists Move The World\r\n\r\nAdam Grant là tác giả cuốn Give and take (tựa tiếng Việt là “Cho và nhận), tác phẩm được The New York Times bình chọn là sách bán chạy nhất. Trong Give and take, Adam đã chỉ cho mọi người cách thức để bảo vệ thành công những ý tưởng mới, cũng như phương pháp để các nhà lãnh đạo có thể khuyến khích sự đa dạng và khác biệt trong suy nghĩ và hành động của tổ chức mình.\r\n\r\nVới Tư duy ngược dịch chuyển thế giới, một lần nữa, Adam Grant lại giải quyết vấn đề làm sao để cải thiện thế giới, nhưng từ góc nhìn mới “trở nên khác biệt”: Chọn đi “ngược dòng”, đấu tranh với tính tuân thủ cứng nhắc và đập tan các truyền thống lỗi thời.\r\n\r\nLàm sao chúng ta có thể hình thành những ý tưởng, chính sách và thực hành mới mà không phải mạo hiểm một cách mù quáng?\r\n\r\nQua những nghiên cứu và câu chuyện đáng kinh ngạc trong lĩnh vực kinh doanh, chính trị, thể thao và giải trí, Grant đã khám phá ra phương pháp để nhận biết một ý tưởng hay, cách lên tiếng mà không bị cô lập, xây dựng liên minh, chọn thời điểm thích hợp để hành động, kiểm soát nỗi sợ hãi và nghi ngờ; cũng như cách thức để các bậc phụ huynh và giáo viên có thể nuôi dưỡng khả năng sáng tạo độc đáo ở trẻ; và giải pháp để các nhà lãnh đạo đấu tranh với tư duy “bầy đàn”.\r\n\r\nNgoài ra, độc giả còn có thể học hỏi được kinh nghiệm của một nhà khởi nghiệp gọi vốn bằng cách nhấn mạnh những lý do mà các nhà đầu tư không nên đầu tư. Chẳng hạn một nữ quản lý dưới Steve Jobs ba bậc đã thách thức ông ấy như thế nào, một nhà phân tích ra tay lật ngược quy tắc bảo mật tại CIA, một ông trùm tài chính nắm trong tay hàng tỷ đô-la đã sa thải những nhân viên nào không dám chỉ trích ông, và một giám đốc truyền hình thậm chí còn chẳng biết gì về hài kịch nhưng đã cứu chương trình Seinfeld ra khỏi phòng kiểm duyệt. Phần thưởng của họ là tập hợp những quan niệm và nhận thức đột phá khi từ chối tuân thủ các khuôn mẫu sẵn có và luôn tìm cách cải thiện nguyên trạng.\r\n\r\nTư duy ngược dịch chuyển thế giớiđược COO của Facebook Sheryl Sandberg, tỷ phú sáng tạo Richard Branson, tác giả kỳ cựu Malcome Gladwell và nhiều nhà lãnh đạo hàng đầu thế giới đánh giá cao. COO của Facebook nhận xét: “Đây là một trong những cuốn sách quan trọng và cuốn hút nhất mà tôi từng đọc, đầy những ý tưởng đáng kinh ngạc và vô cùng mạnh mẽ. Cuốn sách này không chỉ thay đổi cách bạn nhìn thế giới mà còn có thể thay đổi cuộc đời bạn. Cuốn sách cũng có thể truyền cảm hứng cho bạn thay đổi cả thế giới này”.\r\n\r\nVề tác giả\r\n\r\nAdam Grant được công nhận là giáo sư hàng đầu trong bốn năm liền của Đại học Wharton, một trong những nhà tư tưởng quốc tế có tầm ảnh hưởng lớn nhất theo tạp chí HR, và nằm trong danh sách 40 giáo sư kinh doanh dưới 40 tuổi tài giỏi nhất thế giới.\r\n\r\nCuốn sách đầu tay của Adam Grant, Give and Take (Cho và nhận), là tác phẩm bán chạy nhất theo đánh giá của The New York Times và đã được dịch sang hơn 27 ngôn ngữ. Đồng thời, Give and Take cũng góp mặt trong danh sách những cuốn sách hay nhất năm 2013 của Amazon, Financial Times và Wall Street Journal; Give and Take được Oprah xem là một trong những cuốn sách hấp dẫn nhất và là một trong những ý tưởng làm sắc nét ngành quản trị, theo Harvard Business Review.\r\n\r\nAdam Grant cũng từng diễn thuyết và tư vấn cho nhiều khách hàng, trong đó có Google, Goldman Sachs, Disney Pixar, Liên Hợp Quốc,…Ông có bằng tiến sĩ của Đại học Michigan và bằng cử nhân của Đại học Harvard.\r\n\r\n', 'Adam Grant', 'NXB Tổng Hợp TPHCM', 'tuduy.jpg'),
(107, 'Elon Musk Và Cuộc Cách Mạng Tài Chính Toàn Cầu', 224000, 15, 'Elon Musk Và Cuộc Cách Mạng Tài Chính Toàn Cầu\r\n\r\nNgày nay, Elon Musk, Peter Thiel, Max Levchin… được coi là những nhà tiên phong của ngành công nghệ. Tuy nhiên, câu chuyện về nơi họ bắt đầu hầu như không được kể đến. Trước khi thành lập, tài trợ và tư vấn cho các công ty hàng đầu thế giới, bao gồm Tesla, Facebook, YouTube, SpaceX, và LinkedIn, họ là những nhà sáng tạo vô danh của một công ty khởi nghiệp thanh toán trực tuyến nhỏ bé có tên là PayPal.\r\n\r\nCuốn sách này sẽ khám phá những ngày đầu đầy sóng gió ấy, tìm hiểu câu chuyện về về một nhóm thanh niên tài năng, nhiệt huyết đã tập hợp cùng nhau trong những ngày đầu của internet như thế nào, và thành tựu của họ đã định hình thế giới ngày nay—các công ty khởi nghiệp kỹ thuật số, tài chính không dùng tiền mặt, chuyển tiền điện tử và thay đổi thế giới của chúng ta mãi mãi ra sao.\r\n\r\nBạn đọc sẽ được chứng kiến hành trình về câu chuyện của công ty PayPal, từ những lần thất bại cho đến sự thành công như ngày nay. Đây là cuốn sách về một ví dụ của thành công, nhưng không tạo gánh nặng cho người đọc bằng những “bài học”. Có một thông điệp quan trọng vượt ngoài cả những bài học về tiền bạc, kinh doanh và cạnh tranh trên thương trường trong cuốn sách. Đó là: Cuộc sống của chúng ta sẽ được định hình bởi những thứ ta tạo ra và những người đồng hành sáng tạo cùng ta. Câu chuyện của PayPal không chỉ là về việc mọi người kết hợp với nhau để tạo nên một sản phẩm – mà còn về cách nhóm cùng nhau định hình chính con người của họ. Những người sáng lập và nhân viên đầu tiên của công ty đã thúc đẩy và yêu cầu nhau phát triển hơn mỗi ngày; để viết nên một dạng câu chuyện cổ tích trong Thung lũng Silicon – Thung lũng điện tử.\r\n\r\nVề tác giả:\r\n\r\nJimmy Soni là một tác giả từng đoạt nhiều giải thưởng. Cuốn sách Elon Musk và cuộc cách mạng tài chính toàn cầu là cuốn sách bán chạy nhất toàn nước Mỹ và nhận được nhiều lời khen ngợi từ The New York Times, Wall Street Journal, New Yorker, The Economist, Financial Times,…\r\n\r\n', 'Jimmy Soni', 'Công Thươn', 'elo.jpg'),
(108, 'DẾ MÈN PHIÊU LƯU KÝ', 202500, 2, 'Lần đầu tiên “Dế mèn phiêu lưu ký” được minh họa bởi một nữ họa sĩ - họa sĩ Đậu Đũa.\r\n\r\nXuất phát từ đồ án tốt nghiệp, sau 7 năm theo đuổi và phát triển ý tưởng, họa sĩ Đậu Đũa “trình làng” hơn 100 bức tranh minh họa màu nước được vẽ tay thể hiện một cái nhìn hoàn toàn mới về “Dế Mèn phiêu lưu ký”.\r\n\r\nLà họa sĩ tuổi 9X - Đậu Đũa đã vẽ “Dế Mèn phiêu lưu ký” bằng con mắt của những cô bé cậu bé thời hiện đại. Cô hoàn toàn thoát khỏi tạo hình Dế mèn của các thế hệ họa sĩ đi trước.\r\n\r\nCác nhân vật “Dế Mèn phiêu lưu ký” lần đầu được vận lên người bộ âu phục thời trang lịch lãm. Tạo hình này không chỉ làm nên sự mới mẻ với những ai đã biết đến “Dế Mèn phiêu lưu ký” mà còn tạo sự gần gũi với độc giả đương đại chưa từng đọc “Dế Mèn phiêu lưu ký”\r\n\r\nHọa sĩ Đậu Đũa đã tạo nên một thế giới sắc màu ngọt ngào quyến rũ, vừa xa lạ bí ẩn vừa kích thích trí tưởng tượng và khát khao cất bước phiêu lưu\r\n\r\nĐậu Đũa đã bắt được cái tinh thần “Đi khắp thế giới kết anh em” của “Dế Mèn phiêu lưu ký”. Có thể nói “Dế Mèn phiêu lưu ký” minh họa Đậu Đũa là cái nhìn toàn cầu. Mọi hình ảnh đều vừa thực vừa thoát khỏi khuôn mẫu tả thực. Dế Mèn, Dế Trũi, Cào Cào, Bọ Muỗm… không còn là những côn trùng mà thực sự là những nhân vật hóa trang kể những câu chuyện của thế giới loài người. Đúng với tính chất của truyện đồng thoại.\r\n\r\n“Dế Mèn phiêu lưu ký” là tác phẩm Việt Nam được dịch ra nhiều thứ tiếng nhất, NXB Kim Đồng tin rằng với minh họa Đậu Đũa, “Dế Mèn phiêu lưu ký” sẽ phù hợp xu thế hội nhập.\r\n ', 'Tô Hoài', 'NXB Kim Đồng', 'dêmn.jpg'),
(109, 'TRUYỆN BUỒN CHẲNG CÓ THẬT ĐÂU (THẬT ĐẤY)', 103500, 2, 'Cậu nhóc nhập cư Daniel kể chuyện đời mình và hành trình đến Mĩ theo cách nàng Scheherazade trong Nghìn lẻ một đêm mê hoặc vua Shahryar bằng truyền thuyết về Thủy thủ Sinbad, Aladdin và cây đèn thần… Những câu chuyện của cậu vừa đẹp đẽ vừa bi thương, kể từ thời điểm mẹ và chị đưa cậu bỏ trốn khỏi Iran lúc nửa đêm, ngược dòng nhiều năm, nhiều thập kỉ, thậm chí nhiều thế kỉ, về căn nhà cũ thơm hương hoa nhài tại thành phố Isfahan xinh đẹp, về cung điện của các vị vua, về vùng đất của truyện thần tiên…\r\n\r\nTác giả Daniel Nayeri cùng gia đình đến Mĩ tị nạn từ nhỏ. Sinh ra tại Iran, anh là nhà văn, đồng thời làm đủ nghề liên quan đến sách: biên tập viên, chuyên viên bản quyền, thủ thư, thợ sửa sách, nhân viên tiệm sách cũ, kể cả thợ mộc chuyên đóng giá sách. Anh cũng là đầu bếp bánh ngọt và diễn viên đóng thế.\r\nTiểu thuyết “Truyện buồn chẳng có thật đâu (thật đấy)” của anh đoạt giải thưởng Michael L. Printz của Hiệp hội Thư viện Mĩ, giải thưởng Judy Lopez Memorial Award for Children’s Literature và Middle East Book Award for Youth Literature.\r\n\r\n “Kiệt tác hiện đại – đầy chất sử thi tựa Iliad và Shahnameh, lại ấm áp như Mạng nhện của Charlotte.” -  NHẬT BÁO THE NEW YORK TIMES', 'Daniel Nayeri', 'NXB Kim Đồng', 'buon.jpg'),
(110, '30 GIÂY KHOA HỌC - 30 GIÂY KINH TẾ', 139500, 15, 'Kinh tế học Keynes, Chủ nghĩa tư bản thị trường tự do, Chủ nghĩa trọng tiền, Lí thuyết trò chơi và Bàn tay vô hình? Hẳn bạn đều biết những lí thuyết kinh tế này. Đúng thế, nhất định bạn đã từng nghe nói đến chúng. Nhưng liệu chút hiểu biết ấy có đủ để bạn tham gia tranh luận trong bữa tiệc, hay khiến mọi người phải ngả mũ thán phục trước kiến thức tài chính của mình không?\r\nCuốn sách 30 Giây Kinh Tế sẽ giải thích 50 lí thuyết hàng đầu của kinh tế học cho người đọc phổ thông chỉ trong vòng nửa phút, với chưa đầy hai trang giấy, 300 từ và một tranh minh họa. Kinh tế học bỗng trở nên thú vị và dễ hiểu hơn rất nhiều và trong quá trình đó, bạn sẽ được gặp những vị cha đẻ của kinh tế học hiện đại như Adam Smith, David Ricardo và Alfred Marshall. Từ Chủ nghĩa Marx đến Chủ nghĩa trọng thương, cùng với tất cả những thuyết quan trọng khác, cuốn sách này là khóa học cơ bản “cấp tốc” về lí thuyết kinh tế cho tất cả mọi người.\r\nChủ biên Donald Marron là giáo sư thỉnh giảng tại Học viện Chính sách Công Georgetown ở Washington DC, nơi ông dạy tài chính công và kinh tế vi mô. Ông có sự nghiệp đa dạng từ giáo sư, nhà tư vấn, doanh nhân, và từ năm 2002 đến năm 2009, ông từng đảm nhiệm nhiều vị trí cố vấn cấp cao cho Quốc hội và Nhà Trắng.', 'Donald Marron', 'NXB Kim Đồng', '30s.jpg'),
(111, 'CƠ BẢN LÀ CƠ BẢN', 43200, 2, 'Giữa những tháng ngày cao điểm của đại dịch Covid-19, cậu bé Trần Cơ Bản – một “thần đồng” văn chương học lớp năm, bị mắc kẹt trong nhà là một căn chung cư chật hẹp tại Hà Nội, bận rộn vừa học online vừa sáng tác vè để phụ mẹ bán hàng. Nhưng rồi, một cơ hội được “tự do” đã tới, khi bố Cơ Bản đưa cậu về quê nội để nghỉ hè. Tại vùng núi giàu bản sắc văn hóa truyền thống, Cơ Bản đã được học và trải nghiệm nhiều điều thú vị, không thể tìm thấy trong bất kì cuốn sách giáo khoa nào. \r\n', 'Huy Thông', 'NXB Kim Đồng', 'coban.jpg'),
(112, 'TRUYỆN KINH DỊ VIỆT NAM - BA HỒI KINH DỊ', 43200, 2, '“Xuất bản tập Ba hồi kinh dị này, chúng tôi muốn giới thiệu với bạn đọc tập văn phẩm đầu tiên của ông Thế Lữ, để các bạn chú ý đến vết tích thứ nhất trong văn nghiệp của tác giả Vàng và máu và Trại Bồ Tùng Linh. Trong tập này có những đặc điểm nào có thể gọi là dấu hiệu báo trước những tác phẩm về sau của tác giả? Điều đó xin để nhà phê bình và cái trí phê bình minh mẫn của bạn đọc tìm ra. Ở đây chúng tôi chỉ cần phải nói trước để các bạn biết rằng, ba đoản thiên trong tập này viết ra trước đây đã ngót hai mươi năm, và ra đời sau đó ít lâu, nhưng trong một thể văn còn đơn giản, ngây thơ mà tác giả gọi là vụng dại. Tác giả đã tỏ ý ân hận về những “sản phẩm của tuổi trẻ dại” ấy trong cuộc trưng cầu ý kiến của một tờ tuần báo, coi là một lầm lỗi cần phải chuộc. Tác giả đã chuộc bằng cách đem viết cả lại thành những tác phẩm mới, và chỉ duy cái công trình sửa lại này tác giả mới công nhận là sản phẩm chính thức đầu tiên mang tên ký của mình.” - Đại La', 'Thế Lữ', 'NXB Kim Đồng', 'kinhdi.jpg'),
(113, 'TIỂU THUYẾT ONE PIECE - CHUYỆN CHƯA KỂ VỀ BĂNG MŨ RƠM', 43200, 1, 'Một tác phẩm mang đến những góc nhìn mới đầy cảm hứng về các thành viên băng Mũ Rơm. Bạn sẽ có trong tay tập truyện ngắn qua lời kể của hai anh em binh sĩ đã tham gia trận chiến thượng đỉnh, màn “bình loạn” cực rôm rả về kiếm sĩ mạnh nhất của những người lính đã ngà ngà say, ước mơ được một lần trông thấy người đẹp trong mộng bằng xương bằng thịt của một anh chàng rụt rè hay được nghe chia sẻ về ước mơ trở thành nhà khảo cổ của một cô bé ở Baltigo… Loạt truyện hoàn toàn mới này sẽ khiến bạn yêu băng Mũ Rơm nhiều hơn những gì bạn tưởng đấy!!\r\n\r\n ', 'Eiichiro Oda Tomohito Ohsaki', 'NXB Kim Đồng', 'one2.jpg'),
(114, 'THÁM TỬ LỪNG DANH CONAN - 15 PHÚT TRẦM MẶC ', 45000, 1, 'Đường tàu điện ngầm vừa được thị trưởng Asakura cắt băng khánh thành bị đánh bom! Hung thủ phải chăng là kẻ ôm mối hiềm khích với ngài thị trưởng? Các manh mối dẫn tới đập thủy điện được xây dựng trong thời gian ngài giữ cương vị bộ trưởng Bộ Tài nguyên Đất, Cơ sở hạ tầng, Giao thông Vận tải và Du lịch.\r\nConan ghé thăm ngôi làng tái định cư của những người dân phải rời đi khi nơi chôn nhau cắt rốn của họ chìm xuống đáy đập. Hôm sau, Toma – cậu thiếu niên đã hôn mê tám năm sau một vụ tai nạn – đột ngột tỉnh lại. Liệu biến cố xảy ra với Toma và vụ nổ đường tàu điện ngầm có mối liên hệ nào không? ', 'Gosho Aoyama  Shima Mizuki Kaz', 'NXB Kim Đồng', 'conna.jpg'),
(115, 'CÔ BÉ NỌ CÓ MỘT CON GẤU', 50000, 2, 'Hóm hỉnh, kì bí và đậm chất phiêu lưu, mười một truyện cổ tích lấy bối cảnh nước Mĩ thế kỉ XIX của bậc thầy sáng tạo L. Frank Baum sẽ dẫn các bạn tới một thế giới li kì chưa từng thấy. Các bạn hãy thật nhanh trí, tinh ý ghi nhớ bài học sau mỗi truyện nhé! \r\n\"Đừng nên tìm sự thật sau cùng của những điều bạn chẳng thể thấu hiểu. Bởi thế gian này chẳng phải luôn là dấu hỏi lớn đó sao.\" - L. Frank Baum \r\n---\r\nL. FRANK BAUM (1856 – 1919) \r\nNhà văn, diễn viên, nhà làm phim nổi tiếng người Mĩ. \r\nÔng là tác giả của bộ truyện gồm 14 cuốn về xứ Oz, tiêu biểu nhất là tập sách Phù thủy xứ Oz. Đây cũng là bộ truyện thiếu nhi được yêu thích nhất ở Mĩ suốt hơn 100 năm qua. Trong sự nghiệp sáng tác, ông đã viết 55 tiểu thuyết, 83 truyện ngắn, hơn 200 bài thơ cùng nhiều bản thảo chưa từng được công bố.', 'L. Frank Baum', 'NXB Kim Đồng', 'cobe.webp'),
(116, 'CHIẾN ĐẠO - LÀM CHỦ TƯƠNG LAI & KIẾN TẠO SỰ NGHIỆP ', 88000, 15, '“Chiến đạo” là chiến đấu với chính mình trên đường đời với tinh thần của một chiến binh để vượt thoát khỏi những hạn chế của bản thân hay những ràng buộc của hoàn cảnh. Kết quả của cuộc chiến là những lựa chọn, những quyết định, những hành động sẽ làm nên ta mỗi ngày, là làm chủ tương lai, kiến tạo sự nghiệp. — Tác giả Đỗ Thuỳ Dương\r\n', 'Đỗ Thùy Dương', 'NXB Kim Đồng', 'chiendao.jpg'),
(117, 'NHỮNG TIA NẮNG ĐẦU TIÊN', 57000, 2, 'Những tia nắng đầu tiên trình bày buổi bình minh trong tâm hồn một thế hệ thiếu nhi Việt Nam vốn có truyền thống hiếu học và nhân hậu nay đang vươn lên một cõi văn hóa mới.\r\n“Cuốn sách của tình người, tình bạn của những thiếu niên khi mới chạm đến ngưỡng cửa tuổi xuân. Cách thể hiện tình cảm kín đáo càng nổi bật lên nội tâm nồng cháy của các nhân vật tràn đầy niềm tự tin với đất nước, với dân tộc, với lẽ phải và chính bản thân mình.” - Nhà phê bình văn học Vân Thanh', 'Lê Phương Liên', 'NXB Kim Đồng', 'tia.jpg'),
(118, 'ĐẤT RỪNG PHƯƠNG NAM', 72900, 2, 'Nhà văn Đoàn Giỏi (1925 - 1989)\r\nÔng không phải là con cá lớn, nhưng cũng không phải là con cá con, ông là con cá lạ. Chưa có nhà văn nào nói về thiên nhiên Nam Bộ được như ông. Nhân vật chính của ông là thiên nhiên và loài vật chứ không phải loài người. Ông là người đầu tiên kể chuyện kinh dị về thiên nhiên Nam Bộ. Dưới ngòi bút của ông mọi chuyện đều trở nên lạ lùng.\r\n“Càng về sau này, Đất rừng phương Nam càng tỏ ra có vị trí vững chắc trong số các quyển sách hay nhất viết về thiếu nhi của nước ta. Và những người lớn đọc nó vẫn vô cùng thích thú.\r\n... Với một đời văn trên bốn mươi năm, anh đã kịp để lại cho đời những dòng đẹp đẽ đậm sắc thái và đầy sinh thú về quê hương, đất nước, và con người vùng Nam Bộ thân yêu của Tổ quốc ta.”', 'Đoàn Giỏi', 'NXB Kim Đồng', 'datrung.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Manga - Comic'),
(2, 'Văn học'),
(15, 'Kinh tế');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `status` text NOT NULL DEFAULT 'Đang xử lý'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `full_name`, `address`, `phone_number`, `email`, `total`, `payment`, `status`) VALUES
(51, 'Nguyễn Khánh', 'Mậu Thân, Ninh Kiều, Cần Thơ', '0348144669', 'nguyenngockhanhvthg@gmail.com', 224400, 'Thanh toán tiền mặt khi nhận hàng (COD)', 'Đang xử lý'),
(52, 'Nguyễn Khánh', 'Mậu Thân, Ninh Kiều, Cần Thơ', '0348144669', 'nguyenngockhanhvthg@gmail.com', 109200, 'Thanh toán tiền mặt khi nhận hàng (COD)', 'Đã hủy'),
(53, 'Nguyễn Khánh', 'Mậu Thân, Ninh Kiều, Cần Thơ', '0348144669', 'nguyenngockhanhvthg@gmail.com', 87000, 'Thanh toán khi nhận hàng (COD)', 'Đang xử lý');
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_img` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `book_name`, `book_img`, `price`, `amount`, `thanhtien`, `id_orders`) VALUES
(92, 'CHU DU ẨM THỰC TẠI DỊ GIỚI VỚI KĨ NĂNG KHÔNG TƯỞNG ', 'chu-du.jpg', 36000, 1, 36000, 49),
(93, 'Chú Thuật Hồi Chiến - Tập Đặc Biệt', 'ck me.jpg', 79200, 1, 79200, 50),
(94, 'Số Đỏ', 'so-do.jpg', 37500, 1, 37500, 50),
(95, 'Chú Thuật Hồi Chiến - Tập Đặc Biệt', 'ck me.jpg', 79200, 2, 158400, 51),
(96, 'Nhóc Maruto - TẬP 3', 'nhóc.jpg', 36000, 1, 36000, 51),
(97, 'Chú Thuật Hồi Chiến - Tập Đặc Biệt', 'ck me.jpg', 79200, 1, 79200, 52),
(98, 'NHỮNG TIA NẮNG ĐẦU TIÊN', 'tia.jpg', 57000, 1, 57000, 53),
(99, 'ĐẤT RỪNG PHƯƠNG NAM', 'datrung.jpg', 72900, 1, 72900, 54),
(100, 'Mashle - Tập 9', 'mas2.jpg', 27000, 2, 54000, 55),
(101, 'Mashle - Tập 9', 'mas2.jpg', 27000, 2, 54000, 56),
(102, 'Mashle - Tập 9', 'mas2.jpg', 27000, 2, 54000, 57),
(103, 'TIỂU THUYẾT ONE PIECE - CHUYỆN CHƯA KỂ VỀ BĂNG MŨ RƠM', 'one2.jpg', 43200, 1, 43200, 58),
(104, 'Nguyên Lý Marketing', 'mar.jpg', 799000, 1, 799000, 59);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_orders` (`id_orders`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
