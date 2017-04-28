-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 18 2017 г., 12:50
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `jewelryshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id_product` int(11) NOT NULL,
  `cart_price` int(11) NOT NULL,
  `cart_count` int(11) NOT NULL DEFAULT '1',
  `cart_datatime` datetime NOT NULL,
  `cart_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_id_product`, `cart_price`, `cart_count`, `cart_datatime`, `cart_ip`) VALUES
(25, 7, 400, 1, '2016-10-30 16:05:15', ''),
(26, 6, 355, 1, '2016-10-30 16:05:17', ''),
(27, 76, 735, 1, '2016-11-05 22:26:18', ''),
(28, 75, 735, 1, '2016-11-05 22:26:21', ''),
(29, 8, 504, 1, '2016-11-14 20:02:59', '');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category_products`
--

CREATE TABLE IF NOT EXISTS `category_products` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `metal_products` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `category_products`
--

INSERT INTO `category_products` (`category_id`, `type`, `metal_products`) VALUES
(1, ' rings', 'white_gold'),
(2, 'rings', ' silver'),
(3, 'bracelet', 'gold'),
(4, 'bracelet', 'silver'),
(5, ' earrings', 'gold'),
(6, ' earrings', 'silver');

-- --------------------------------------------------------

--
-- Структура таблицы `reg_user`
--

CREATE TABLE IF NOT EXISTS `reg_user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `patronymic` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_user`
--

INSERT INTO `reg_user` (`id`, `login`, `pass`, `surname`, `name`, `patronymic`, `email`, `phone`, `address`, `datetime`, `ip`) VALUES
(1, 'admin', '1', '1', '1', '1', '1', '1', '1', '2016-10-19 10:32:36', '1'),
(3, 'marina', '3', '3', '3', '3', '3', '3', '3', '2016-10-07 00:00:00', '3'),
(0, 'adminll', '9nm2rv8c7ea7c76de558d74866cf187a7243d9ad2yo6z', 'anannananana', 'anannananana', 'adminjjjj', 'fff@gmail.com', 'sggggg', 'llll', '0000-00-00 00:00:00', ''),
(0, 'marina17', '9nm2rv8c5b6bcb92776f88627b096cb55a690d662yo6z', '', '', '', 'marina.17.1@yandex.ru', '+375336500798', '', '0000-00-00 00:00:00', ''),
(0, 'marina5555', '9nm2rv8c569cd7bef62a0a8909a82b2d7f963aba2yo6z', 'anannananana', 'adminjjjj', 'hshshhs', 'adminjjjj@gmail.com', '55869885', 'uuuytrfvbjj', '0000-00-00 00:00:00', ''),
(0, 'aaaaaaa', '9nm2rv8ca89ac5e95ba9bf3c8432a00b5cf397d52yo6z', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'ggggg@gmail.com', '+375336500798', 'anannananana', '0000-00-00 00:00:00', ''),
(0, 'aaaaaaa777', '9nm2rv8ca89ac5e95ba9bf3c8432a00b5cf397d52yo6z', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'gggggvv@gmail.com', '+375336500797', 'anannananan', '0000-00-00 00:00:00', ''),
(0, 'aaaaaaa7778', '9nm2rv8ca89ac5e95ba9bf3c8432a00b5cf397d52yo6z', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa@gmail.com', 'aaaaaaa', 'aaaaaaa', '0000-00-00 00:00:00', ''),
(0, 'rrrrrrr', '9nm2rv8cb973599c4b4b220855411d30732b5bad2yo6z', 'rrrrrrr', 'rrrrrrr', 'rrrrrrr', 'gggg@gmail.com', 'rrrrrrr', 'rrrrrrr', '0000-00-00 00:00:00', ''),
(0, '3333333', '9nm2rv8c55e937160496170aeda5f0ffe82df4702yo6z', '3333333', '3333333', '3333333', 'ffff@gmail.com', '3333333', '3333333', '0000-00-00 00:00:00', ''),
(0, 'wwwwwww', 'wwwwwww', 'wwwwwww', 'wwwwwww', 'wwwwwww', 'ffdf@gmail.com', 'sgggggn', 'wwwwwwwk', '0000-00-00 00:00:00', ''),
(0, 'marina17.1', 'marina17.1', '', '', '', 'marina.171.1@yandex.ru', '+375 29 650 07 98', '', '0000-00-00 00:00:00', ''),
(0, 'marina171', 'marina17', 'Zhyravlyova', 'Marina', 'Vitalyvna', 'anannananaa@gmail.com', '258789625', 'Minsk', '0000-00-00 00:00:00', ''),
(0, 'admin123', '25252525', 'Djuravleva', 'Lusya', 'Marusya', 'marina.17.1@yandex.ru', '375337777777`', '', '0000-00-00 00:00:00', ''),
(0, 'xxxxxxxxxxxxxx', 'anannananana', 'adminjjjj', 'Нврвы', 'Гиррара', 'ggggg@gmail.com', '558795', 'воволаллал', '0000-00-00 00:00:00', ''),
(0, 'shikabomb', 'hohohoho', 'Лялька', 'Никита', 'Олеговна', 'nikikacheldokolen@mail.ru', '375337521649', 'г,Жлобин', '0000-00-00 00:00:00', ''),
(0, 'jkjfxjivfji', 'jdbjvddd', 'kdkdkdkkdkd', 'kdkdkkd', 'jdjjdjjjdjjd', 'fff@gmail.com', 'jkkdkkd', 'ndnndndnd', '0000-00-00 00:00:00', ''),
(0, 'jdjdjdjdjd', 'jdjdjdjdjd', 'jdjdjdjdjd', 'jdjdjdjdjd', 'jdjdjdjdjd', 'fff@gmail.com', 'vjdjdjdjdjd', 'jdjdjdjdjd', '0000-00-00 00:00:00', ''),
(0, 'kkckckckck', 'kkckckckck', 'kkckckckck', 'kkckckckck', 'kkckckckck', 'fff@gmail.com', 'kkckckckck', 'kkckckckck', '0000-00-00 00:00:00', ''),
(0, 'kkckckckcks', 'kkckckckck', 'kkckckckck', 'kkckckckck', 'kkckckckck', 'fff@gmail.com', 'kkckckckck', 'kkckckckck', '0000-00-00 00:00:00', ''),
(0, 'kkckckckckk', 'kkckckckck', 'kkckckckck', 'kkckckckck', 'kkckckckck', 'ss@gmail.com', 'kkckckckck', 'kkckckckck', '0000-00-00 00:00:00', ''),
(0, 'cklxlddd', 'dddddddd', 'ddddddd', 'ddddd', 'djjdjdjd', 'dddd@gmail.com', 'ddddd', 'ddddddd', '0000-00-00 00:00:00', ''),
(0, 'dlkdmlkbd', 'dlkdmlkbd', 'dlkdmlkbd', 'dlkdmlkbd', 'dlkdmlkbd', 'fffs@gmail.com', 'dlkdmlkbd', 'dlkdmlkbd', '0000-00-00 00:00:00', ''),
(0, 'dkdkkdkd', 'dlkdmlkbd', 'dddddd', 'dlkdmlkbd', 'dlkdmlkbd', 'fff@gmail.com', 'dlkdmlkbd', 'dlkdmlkbd', '0000-00-00 00:00:00', ''),
(0, 'mvmmv', 'ddmmdmdm', 'vddmmdmdm', 'ddmmdmdm', 'ddmmdmdm', 'ddmmdmdm@gmail.com', 'ddmmdmdm', 'ddmmdmdm', '0000-00-00 00:00:00', ''),
(0, 'kckckck', 'ddmmdmdm', 'ddmmdmdm', 'ddmmdmdm', 'ddmmdmdm', 'fff@gmail.com', 'sggggg', 'ddmmdmdm', '0000-00-00 00:00:00', ''),
(0, 'kckckck', 'ddmmdmdm', 'ddmmdmdm', 'ddmmdmdm', 'ddmmdmdm', 'fff@gmail.com', 'sggggg', 'ddmmdmdm', '0000-00-00 00:00:00', ''),
(0, 'kfkkfkfkf', 'kkfkfkfkf', 'kkfkfkfk', 'lflflflf', 'kfkkfkf', 'fff@gmail.com', 'kfkfkf', 'kkfkfkf', '0000-00-00 00:00:00', ''),
(0, 'kgkgkg', 'kgkkgkg', 'gkkgkgkg', 'gkkgkgkg', 'gkkgkgk', 'fff@gmail.com', 'lglglg', 'lglglg', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `table_prodacts`
--

CREATE TABLE IF NOT EXISTS `table_prodacts` (
  `prodact_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `artical` int(11) NOT NULL,
  `mini_discription` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `mini_fiatures` text NOT NULL,
  `datatime` datetime NOT NULL,
  `new` int(11) NOT NULL DEFAULT '0',
  `leader` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `visible` int(11) NOT NULL DEFAULT '0',
  `type_prodact` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`prodact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Дамп данных таблицы `table_prodacts`
--

INSERT INTO `table_prodacts` (`prodact_id`, `title`, `price`, `artical`, `mini_discription`, `image`, `discription`, `mini_fiatures`, `datatime`, `new`, `leader`, `sale`, `visible`, `type_prodact`, `brand_id`) VALUES
(1, 'Кольцо помолвочное 1', 981, 1011201, 'Ср.вес:	2.28 гр.\nМеталл:	Золото красное<\nДля кого: Для женщин\nВставка: Бриллиант\nПроба:	585', '/image/products/gold_ring_red_1.jpg', '', '', '2016-10-10 02:23:28', 1, 0, 0, 1, 'rings', 0),
(2, 'Кольцо помолвочное 2', 981, 1011202, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	585', '/image/products/gold_ring_red_2.jpg', '', '', '2016-10-10 02:23:28', 1, 0, 0, 1, 'rings', 0),
(3, 'Кольцо помолвочное 3', 1081, 1011203, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(4, 'Кольцо помолвочное', 1081, 1011204, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(5, 'Кольцо помолвочное', 1081, 1011205, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(6, 'Кольцо помолвочное', 355, 1011101, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_1.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(7, 'Кольцо с бриллиантом', 400, 1011102, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_2.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(8, 'Кольцо с бриллиантом', 504, 1011103, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(9, 'Кольцо с бриллиантом', 250, 1011104, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(10, 'Кольцо с бриллиантом', 335, 1011105, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(11, 'Кольцо с бриллиантом', 159, 1011106, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(12, 'Кольцо с бриллиантом', 369, 1011107, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(13, 'Кольцо с бриллиантом', 450, 1011107, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(14, 'Кольцо помолвочное', 1081, 1011206, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(15, 'Кольцо помолвочное', 750, 1011207, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(16, 'Кольцо помолвочное', 699, 1011208, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(17, 'Кольцо помолвочное', 999, 1011209, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_ring_red_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 1, 'rings', 0),
(18, 'Серьги с бриллиантами', 1058, 1011301, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_1.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(19, 'Серьги с бриллиантами', 1350, 1011302, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_2.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(20, 'Серьги с бриллиантами', 1123, 1011303, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(21, 'Серьги с бриллиантами', 1506, 1011304, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(22, 'Серьги с бриллиантами', 956, 1011305, 'Ср.вес:	2.28 гр.\nМеталл:	Золото\nДля кого: Для женщин\nВставка: Бриллиант\nПроба:	580', '/image/products/golden_earrings_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(23, 'Кольцо помолвочное ', 1256, 1011210, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное<\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	585', '/image/products/gold_ring_red_10.jpg', '', '', '2016-10-10 02:23:28', 1, 0, 0, 1, 'rings', 0),
(24, 'Кольцо помолвочное ', 981, 1011211, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное<\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	585', '/image/products/gold_ring_red_11.jpg', '', '', '2016-10-10 02:23:28', 1, 0, 0, 1, 'rings', 0),
(25, 'Кольцо помолвочное ', 981, 1011212, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото красное<\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	585', '/image/products/gold_ring_red_12.jpg', '', '', '2016-10-10 02:23:28', 1, 0, 0, 1, 'rings', 0),
(26, 'Кольцо с сапфиром', 1358, 1011109, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(27, 'Кольцо с сапфиром', 968, 1011110, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_10.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(28, 'Кольцо с сапфиром', 708, 1011111, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_11.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(29, 'Кольцо с гранатом', 876, 1011112, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_ring_12.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 2, 'rings', 0),
(30, 'Серьги с бриллиантами', 956, 1011306, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(31, 'Серьги с бриллиантами', 789, 1011307, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(32, 'Серьги с бриллиантами', 956, 1011308, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(33, 'Серьги с бриллиантами', 956, 1011309, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(34, 'Серьги с бриллиантами', 956, 1011310, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_10.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(35, 'Серьги с бриллиантами', 956, 1011309, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(36, 'Серьги с бриллиантами', 956, 1011311, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_11.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(37, 'Серьги с бриллиантами', 956, 1011307, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_earrings_12.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 3, 'earrings', 0),
(38, 'Золотой браслет', 956, 1011507, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_1.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(39, 'Золотой браслет', 1500, 1011502, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_2.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(40, 'Золотой браслет', 1325, 1011503, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(41, 'Золотой браслет', 1325, 1011504, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(42, 'Золотой браслет', 1325, 1011505, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(43, 'Золотой браслет', 1325, 1011506, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(44, 'Золотой браслет', 1325, 1011507, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(45, 'Золотой браслет', 1325, 1011508, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(46, 'Золотой браслет', 1325, 1011509, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(47, 'Золотой браслет', 1325, 1011510, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_10.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(48, 'Золотой браслет', 1325, 1011511, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_11.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(49, 'Золотой браслет', 1325, 1011512, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/golden_bracelets_12.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 5, 'earrings', 0),
(50, 'Золотое колье', 1325, 1011701, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_1.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(51, 'Золотое колье', 1325, 1011702, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_2.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(52, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(53, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(54, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(55, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(56, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(57, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(58, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(59, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_10.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(60, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_11.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(61, 'Золотое колье', 1325, 1011703, 'Ср.вес:	2.28 гр.\r\nМеталл:	Золото\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/gold_necklace_12.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 7, 'earrings', 0),
(62, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_1.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(63, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_2.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(64, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(65, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(66, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(67, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(68, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(69, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(70, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(71, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_10.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(72, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_11.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(73, 'Серьги с сапфирами', 735, 1011403, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_earrings_12.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 4, 'earrings', 0),
(74, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_1.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(75, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_2.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(76, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_3.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(77, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_4.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(78, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_5.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(79, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_6.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(80, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_7.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(81, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_8.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(82, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_9.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(83, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_10.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(84, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_11.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0),
(85, 'Серебрянный браслет', 735, 1011603, 'Ср.вес:	2.28 гр.\r\nМеталл:	Серебро\r\nДля кого: Для женщин\r\nВставка: Бриллиант\r\nПроба:	580', '/image/products/silver_bracelet_12.jpg', '', '', '2016-10-10 02:23:28', 0, 0, 0, 6, 'bracelet', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
