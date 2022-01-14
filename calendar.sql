SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Создаем Базу данных:  `calendar`
--CREATE DATABASE calendar;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Наполняем таблицу: `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(1, 'All Day Event', '#40E0D0', '2022-01-16 10:30:00', '2022-01-16 12:30:00'),
(2, 'Long Event', '#FF0000', '2022-01-17 08:30:00', '2022-01-17 08:30:00'),
(3, 'Repeating Event', '#0071c5', '2022-01-12 15:30:00', '2022-01-12 17:30:00'),
(4, 'Conference with friend', '#40E0D0', '2022-01-11 11:00:00', '2022-01-11 13:00:00'),
(5, 'Meeting with Boss', '#000', '2022-01-12 10:30:00', '2022-01-12 12:30:00'),
(6, 'Lunch with girlfriend', '#0071c5', '2022-01-12 12:00:00', '2022-01-12 14:00:00'),
(7, 'Happy Hour', '#0071c5', '2022-01-12 17:30:00', '2022-01-12 18:30:00'),
(8, 'Dinner', '#0071c5', '2022-01-12 13:00:00', '2022-01-12 15:00:00'),
(9, 'Birthday Party', '#FFD700', '2022-01-14 07:00:00', '2022-01-14 09:00:00'),
(10, 'Double click to change', '#008000', '2022-01-20 09:00:50', '2022-01-20 09:00:50');
