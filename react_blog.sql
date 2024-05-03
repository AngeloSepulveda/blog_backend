-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2024 a las 20:28:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `react_blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(12) NOT NULL,
  `label` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `label`, `description`) VALUES
(1, 'JavaScript', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!'),
(2, 'React', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!'),
(3, 'Vue', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!'),
(4, 'Tech Culture', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!'),
(5, 'Tech News', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!'),
(6, 'Brain Health', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!'),
(7, 'Cloud Services', 'Category description here.. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam error eius quo, officiis non maxime quos reiciendis perferendis doloremque maiores!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(12) NOT NULL,
  `author_id` int(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `text` mediumtext NOT NULL,
  `keyword1` varchar(50) NOT NULL,
  `keyword2` varchar(50) NOT NULL,
  `image` varchar(400) NOT NULL,
  `bg_src` varchar(400) NOT NULL,
  `bg_type` varchar(10) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `author_id`, `title`, `description`, `text`, `keyword1`, `keyword2`, `image`, `bg_src`, `bg_type`, `active`, `updated_at`, `created_at`) VALUES
(1, 1, 'Can anyone code?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Programming', 'Everyone', 'anyone_can_code.jpg', 'anyone_can_code.jpg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(2, 1, 'Using AWS S3 for storing blog images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'cloud_storage.jpeg', 'cloud_storage.jpeg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(3, 1, 'Popular Programming Languages in 2020', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'programming_languages.jpeg', 'programming_languages.jpeg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(4, 1, 'Brain Hacks for Learning to Program', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'neuron.jpg', 'neuron.jpg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(5, 1, 'Software Engineer Salary in 2020', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'money.jpg', 'money.jpg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(6, 1, 'GraphQL vs REST', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'apollo_graphql.png', 'apollo_graphql.png', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(7, 1, 'A Day in the Life of a Programmer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'puzzled_programmer.jpeg', 'puzzled_programmer.jpeg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(8, 1, 'Brain Hacks for Learning to Program', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'neuron.jpg', 'neuron.jpg', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03'),
(9, 1, 'React Vs Vue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', 'Functional Programming', 'ES6', 'logo.png', 'logo.png', 'Image', 1, '2024-05-01 16:22:03', '2024-05-01 16:22:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `post_id` int(12) NOT NULL,
  `category_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`post_id`, `category_id`) VALUES
(1, 4),
(1, 5),
(2, 7),
(3, 4),
(3, 5),
(4, 6),
(5, 4),
(6, 1),
(6, 2),
(7, 4),
(8, 6),
(9, 2),
(9, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post_comments`
--

CREATE TABLE `blog_post_comments` (
  `id` int(12) NOT NULL,
  `post_id` int(12) NOT NULL,
  `author_id` int(12) NOT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blog_post_comments`
--

INSERT INTO `blog_post_comments` (`id`, `post_id`, `author_id`, `comment`) VALUES
(1, 1, 1, 'Totally broooo!'),
(2, 1, 1, 'Friggin owrsome');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post_likes`
--

CREATE TABLE `blog_post_likes` (
  `post_id` int(12) NOT NULL,
  `author_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(12) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `action`) VALUES
(1, 'post'),
(2, 'manage-users');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(12) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'admin'),
(2, 'blogger');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(12) NOT NULL,
  `permission_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `role_id` int(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `email`, `image`, `first_name`, `last_name`) VALUES
(1, 1, 'mcoder@lavishweb.com', NULL, 'Miguel', 'Coder');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bpauthor_ind` (`author_id`);

--
-- Indices de la tabla `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD UNIQUE KEY `post_id` (`post_id`,`category_id`),
  ADD KEY `fk_bpcatcategory` (`category_id`);

--
-- Indices de la tabla `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bpcauthor_ind` (`author_id`),
  ADD KEY `bpcpost_ind` (`post_id`);

--
-- Indices de la tabla `blog_post_likes`
--
ALTER TABLE `blog_post_likes`
  ADD UNIQUE KEY `post_id` (`post_id`,`author_id`),
  ADD KEY `fk_bplauthor` (`author_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD UNIQUE KEY `role_id` (`role_id`,`permission_id`),
  ADD KEY `fs_rppermission` (`permission_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uemail` (`email`),
  ADD KEY `fk_urole` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `fk_bpauthor` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD CONSTRAINT `fk_bpcatcategory` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bpcatpost` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  ADD CONSTRAINT `fk_bpcauthor` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bpcpost` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `blog_post_likes`
--
ALTER TABLE `blog_post_likes`
  ADD CONSTRAINT `fk_bplauthor` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bplpost` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `fk_rprole` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fs_rppermission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_urole` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
