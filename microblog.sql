-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 11 sep. 2020 à 10:46
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `microblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_post` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_post_users` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `content`, `date_post`, `users_id`) VALUES
(1, 'Rerum quo consequatur amet fugit qui. Accusantium eum ducimus sapiente odit est soluta illum. Aut nesciunt laborum ea enim pariatur. Repellendus ut culpa omnis odio.', '2002-09-15 13:11:05', 6),
(2, 'Numquam velit quis et. Quae cum at libero dolorem. Aut adipisci sit enim doloribus et minima quaerat. Maiores quidem vel consequatur et.', '2015-12-18 02:54:17', 8),
(3, 'Sit ut impedit consequuntur. Consequatur aut rem rem laboriosam. Eos iste nostrum voluptatem sit expedita error expedita. Natus aut autem id rerum qui cumque.', '2005-04-08 13:27:38', 4),
(4, 'Quidem numquam voluptatum voluptas corporis. Sed voluptatibus dolorem sequi. Minus in error exercitationem maxime libero nesciunt delectus qui.', '1991-04-10 10:42:58', 5),
(5, 'Odit suscipit dolores maxime. Ipsum rerum consequatur aut est consequuntur molestias. Suscipit quam consequatur adipisci assumenda. Rerum saepe at tempore quis.', '2002-05-17 17:36:03', 4),
(6, 'Libero dolores adipisci fuga laudantium voluptate officiis minus libero. Excepturi hic optio blanditiis voluptas est unde fuga. Cupiditate quam natus quod veritatis sunt.', '2010-05-17 15:31:35', 3),
(8, 'Corporis sed illo deleniti et praesentium perferendis sed. Natus omnis porro reiciendis consequatur. Et fugiat et iusto tenetur.\nAliquid autem sit rerum ea. Non iusto ducimus est ut ratione voluptas.', '1999-02-11 12:13:59', 3),
(9, 'Blanditiis voluptatibus enim quam ut eius. Quae exercitationem necessitatibus rem eos vel. Velit qui culpa est qui.', '1972-04-08 15:00:06', 9),
(1599821147, 'test', '2009-11-20 00:00:00', 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_post_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
