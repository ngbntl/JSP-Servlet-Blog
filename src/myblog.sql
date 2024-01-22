-- --------------------------------------------------------
-- Máy chủ:                      localhost
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for myblog
CREATE DATABASE IF NOT EXISTS `myblog` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `myblog`;

-- Dumping structure for table myblog.t_article
CREATE TABLE IF NOT EXISTS `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `author` varchar(30) NOT NULL,
  `sort` varchar(30) NOT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT 0,
  `comment` int(11) DEFAULT 0,
  `visit` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table myblog.t_article: ~2 rows (approximately)
INSERT INTO `t_article` (`id`, `title`, `author`, `sort`, `time`, `star`, `comment`, `visit`, `content`) VALUES
	(11, 'Tại sao nên học công nghệ Web?', 'Long Truong', 'blog', '2023-12-02 22:48:03', 1, 1, 7, 'Vì sao nên học lập trình web?\r\nBỞI DAISY  THỨ NĂM, NGÀY 05/01/2023\r\n 1316  0\r\nTrong xã hội mà công nghệ không ngừng phát triển như hiện nay, thì việc học lập trình web được xem là một sự lựa chọn vô cùng tuyệt vời.\r\nNhư thế nào là lập trình web?\r\nLập trình web có trách nhiệm tiếp nhận toàn bộ thông tin, dữ liệu từ bộ phận thiết kế web, nhằm mục đích xây dựng hệ thống web hoàn chỉnh với khả năng tương tác cùng cơ sở dữ liệu, cũng như người dùng thông qua ngôn ngữ máy tính.\r\n\r\nNhững người đảm nhận công việc này sẽ được gọi là lập trình viên, họ sẽ được phân công việc quản trị website sau khi trang web hoàn thiện.\r\n\r\nLúc này, bạn cần trang bị thêm một vài công cụ hỗ trợ quản trị website, để việc quản trị trở nên thuận tiện và hiệu quả hơn.\r\n\r\nViệc tích hợp này sẽ mang lại nhiều sự hữu ích trong những lần downtime, uptime, nguồn traffic đổ vào website, tỷ lệ thoát trang web, tình trạng quá tải băng thông…\r\n\r\n\r\nVì sao nên học lập trình web?\r\nTrong xu thế hiện nay, ngành công nghệ có nhiều bước ngoặt phát triển và không ngừng đổi mới. Và để gia tăng khả năng cạnh tranh giữa các doanh nghiệp với nhau, cũng như mang về thêm nhiều lợi nhuận.\r\n\r\nGiờ đây, họ không chỉ hoạt động kinh doanh theo phương thức truyền thống, mà còn kết hợp với hoạt động kinh doanh Online trên nền tảng Internet, đặc biệt là qua website.\r\n\r\nKéo theo nhu cầu thiết kế và sử dụng website gia tăng đáng kể, cũng chính điều này, nên hiện nay khi lựa chọn theo học lập trình, bạn sẽ nhận được khá nhiều lợi ích, cụ thể như:\r\n\r\nDễ dàng tìm thấy công việc phù hợp, với mức thu nhập hấp dẫn (tầm khoảng 8 - 50 triệu mỗi tháng, tùy theo năng lực và kinh nghiệm làm việc).\r\nVới việc học lập trình web, bạn hoàn toàn có thể dễ dàng tìm kiếm cho mình một khóa học trực tuyến đúng như mong muốn đặt ra.\r\nPhát triển khả năng tư duy logic, sáng tạo tốt hơn.\r\nMang lại nhiều sự lựa chọn trong công việc.\r\nCó thêm cơ hội tiếp cận nhanh chóng với nhiều công nghệ mới trên thế giới.\r\nLuôn có sự hỗ trợ từ cộng đồng trong mỗi lần khó khăn hay muốn học hỏi thêm các kiến thức mới.\r\nTốn ít chi phí thực hành hơn so với lập trình mobile.\r\n\r\nHọc lập trình web làm được gì?\r\nMặc dù biết rằng theo học bất kỳ ngành gì thì mục đích chung vẫn là để kiếm tiền, cũng như có được một công việc ổn định hơn.\r\n\r\nCụ thể hơn, sau khi có được kiến thức nền tảng trong lập trình web, bạn có thể đảm nhận các công việc như:\r\n\r\nLập trình Frontend: Các công việc thực hiện chủ yếu phục vụ phía Client Slide trong Project xây dựng - phát triển website. Nhờ có họ mà người dùng có được những trải nghiệm tuyệt vời ở phần giao diện, cùng các thao tác tương tác.\r\nLập trình Backend: Trái ngược với Frontend là Backend, họ sẽ làm các công việc liên quan đến Server Slide trong quá trình xây dựng một website hoàn chỉnh. Nhờ đó, mang đến cho người dùng những trải nghiệp thú vị.\r\nLập trình Full Stack: Mọi công việc mà một lập trình viên Frontend và Backend phải thực hiện đều sẽ được Full Stack thực hiện nhanh chóng, mà vẫn đảm bảo mặt chất lượng và tính hiệu quả.\r\n'),
	(12, 'Why do people hate PHP?', 'Long', 'Chat', '2023-12-04 00:46:54', 1, 0, 4, '\r\nIt\'s absolutely a viable choice for web development, and it\'s entirely possible to code consistent, well-tested & documented projects using modern programming concepts and methodologies in PHP. As well as one bad reason that it\'s derided by many (bandwagon hatred), here are four good reasons why it\'s derided by many:\r\n\r\nIt\'s a goddamn mess, and refuses to break compatibility in order to reform. The global namespace is a rat\'s nest, unicode support is strange and inconsistent, function names and arguments aren\'t consistent, sometimes you get errors and other times you get exceptions… in many places it\'s just plain ugly.\r\n\r\nMost people who hate PHP formed that opinion years ago when it was much worse than it is now (which isn\'t to say it\'s any less of a goddamn mess, but now there are namespaces, lambdas, stronger OO, reflection, good testing/documentation/development frameworks, two large libraries of good code, etc etc).\r\n\r\nMany (most?) popular open source PHP projects are coded spectacularly, unrelentingly badly; either poorly written or poorly designed. It\'s hard to defend PHP when there\'s stuff like Wordpress out there. Supporting or dealing with these projects forms the bulk of most non-PHP coders\' experience of PHP, so no wonder they hate it.\r\n\r\nUnlike some newer, more fashionable languages, or languages that are led by a strong authority, there\'s little cohesiveness among PHP coders; instead, there are hundreds of minor communities usually organised around specific projects. They\'re largely siloed and don\'t present a strong voice, share code, or even think similarly. There\'s no "Zen of PHP". It seems to me that this is less true that it has been in the past; there\'s more sharing of ideas and code, and more interoperability between projects and libraries. But we\'ve got a long way to go before we can present a united front.');

-- Dumping structure for table myblog.t_article_delet
CREATE TABLE IF NOT EXISTS `t_article_delet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `sort` varchar(30) NOT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT 0,
  `comment` int(11) DEFAULT 0,
  `visit` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table myblog.t_article_delet: ~0 rows (approximately)

-- Dumping structure for table myblog.t_comment
CREATE TABLE IF NOT EXISTS `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT 0,
  `diss` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table myblog.t_comment: ~1 rows (approximately)
INSERT INTO `t_comment` (`id`, `article_id`, `nickname`, `content`, `time`, `star`, `diss`) VALUES
	(21, 11, 'Cư dân mạng nhiệt tình', 'hahah', '2023-12-04 00:46:43', 0, 0);

-- Dumping structure for table myblog.t_tag
CREATE TABLE IF NOT EXISTS `t_tag` (
  `id` int(11) DEFAULT NULL,
  `tag` varchar(30) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `t_tag_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table myblog.t_tag: ~2 rows (approximately)
INSERT INTO `t_tag` (`id`, `tag`) VALUES
	(11, 'educations'),
	(12, 'joke');

-- Dumping structure for table myblog.t_user
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary_key',
  `user_name` varchar(20) NOT NULL COMMENT 'username',
  `user_password` varchar(20) NOT NULL COMMENT 'password',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table myblog.t_user: ~1 rows (approximately)
INSERT INTO `t_user` (`user_id`, `user_name`, `user_password`) VALUES
	(1, 'admin', '12345678');

-- Dumping structure for table myblog.t_visitor
CREATE TABLE IF NOT EXISTS `t_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `web_ip` varchar(50) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table myblog.t_visitor: ~6 rows (approximately)
INSERT INTO `t_visitor` (`id`, `ip`, `time`, `web_ip`, `host`) VALUES
	(52, '0:0:0:0:0:0:0:1', '2023-12-02 22:50:01', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1'),
	(53, '0:0:0:0:0:0:0:1', '2023-12-02 23:50:43', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1'),
	(54, '0:0:0:0:0:0:0:1', '2023-12-03 00:51:05', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1'),
	(55, '0:0:0:0:0:0:0:1', '2023-12-03 22:44:45', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1'),
	(56, '0:0:0:0:0:0:0:1', '2023-12-04 00:18:14', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1'),
	(57, '0:0:0:0:0:0:0:1', '2023-12-04 00:38:26', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
