-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 07 2022 г., 08:44
-- Версия сервера: 5.6.51
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `burgers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `address`) VALUES
(1, 0, '2022-12-07 08:19:39', ''),
(2, 0, '2022-12-07 08:22:10', '+7 (223) 344 56 67,ывыфвыф,фывыф,фывфы,ыфвфы,фыв,'),
(3, 1, '2022-12-07 08:33:42', 'улица 6,'),
(4, 1, '2022-12-07 08:34:17', 'улица 6,'),
(5, 1, '2022-12-07 08:34:20', 'улица 6,'),
(6, 2, '2022-12-07 08:41:54', 'Советская 1,'),
(7, 2, '2022-12-07 08:42:00', 'Советская 1,'),
(8, 2, '2022-12-07 08:42:03', 'Советская 1,'),
(9, 2, '2022-12-07 08:42:06', 'Советская 1,'),
(10, 2, '2022-12-07 08:42:09', 'Советская 1,'),
(11, 3, '2022-12-07 08:43:24', 'Балкон 3 этаж,'),
(12, 3, '2022-12-07 08:43:28', 'Балкон 3 этаж,'),
(13, 3, '2022-12-07 08:43:30', 'Балкон 3 этаж,'),
(14, 3, '2022-12-07 08:43:33', 'Балкон 3 этаж,');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders_count` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `orders_count`, `name`) VALUES
(1, 'n@tv.ru', 3, 'Nikolay'),
(2, 'm@mai.ru', 5, 'Masha'),
(3, 'cat@list.ru', 4, 'Барсик');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
