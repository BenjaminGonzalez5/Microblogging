-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 11 sep. 2020 à 09:51
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `microblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `agency`
--

CREATE TABLE `agency` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `postalCode` varchar(5) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `agency`
--

INSERT INTO `agency` (`id`, `libelle`, `address1`, `address2`, `postalCode`, `city`) VALUES
(1, 'Ad incidunt sunt iure et ea deleniti in.', 'Dolorum laborum id voluptates.', 'Eum tempora est excepturi provident ut voluptatum in.', '2', 'Lake Horaceport'),
(3, 'Consequuntur inventore et et debitis in.', 'Ut tempore rem atque tenetur eius modi.', 'Corporis qui quasi consectetur ipsa incidunt.', '4', 'Albertbury'),
(5, 'Molestias recusandae esse ullam voluptatibus earum.', 'Et qui labore officia ut voluptatum tempora.', 'Sequi vel quas natus necessitatibus voluptas.', '2', 'Litzyfort'),
(6, 'Enim et voluptatem ipsam reiciendis.', 'Perferendis temporibus repudiandae sit eos voluptatibus similique optio.', 'Quae quidem accusamus dolores.', '7', 'Rosaliashire'),
(9, 'Laborum consequuntur molestias et dicta ut.', 'Vero ipsam ex atque deserunt occaecati omnis harum molestiae.', 'Quisquam velit at eos.', '3', 'Shyannshire');

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `favorite`
--

INSERT INTO `favorite` (`id`, `post_id`, `users_id`) VALUES
(2, 2, 4),
(3, 4, 6),
(5, 3, 5),
(6, 1, 3),
(9, 5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_post` datetime NOT NULL,
  `users_id` int(11) NOT NULL
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
(9, 'Blanditiis voluptatibus enim quam ut eius. Quae exercitationem necessitatibus rem eos vel. Velit qui culpa est qui.', '1972-04-08 15:00:06', 9);

-- --------------------------------------------------------

--
-- Structure de la table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reply`
--

INSERT INTO `reply` (`id`, `content`, `post_id`) VALUES
(1, 'Ad minima dignissimos nihil esse. Optio voluptatem nihil vel sunt est. Qui velit sit tempora corporis possimus vitae quam.', 1),
(2, 'Illo delectus consequuntur quas repudiandae aperiam nostrum consequatur nostrum. In soluta iure eveniet odit aspernatur at.', 4),
(3, 'Sequi quas laborum harum totam id. Facere beatae debitis molestiae mollitia quis tempore. Rerum natus est officiis labore ea incidunt.', 5),
(6, 'Eos quisquam fugit ut est. Unde tenetur est possimus beatae velit sit. Veniam quas sunt sapiente quod atque at facere est.', 3),
(8, 'Aut eaque dignissimos explicabo sed a. Maiores quo velit qui. Voluptas perferendis non natus quia iste maxime. Provident corporis blanditiis rerum ea rem qui reiciendis ipsa.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `agency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `role`, `password`, `agency_id`) VALUES
(3, 'sed', 'commodi', 'quaerat', 'f777b81c248dd9ae0af61e0d044a913e6b8c04eb', 1),
(4, 'voluptas', 'adipisci', 'et', 'ffafe49ae8a22148307deb3e2043b8f6e0c61845', 3),
(5, 'ipsa', 'veniam', 'error', 'da6f35c49c3de40abb1b577fa4173e41611e539b', 1),
(6, 'et', 'ducimus', 'soluta', 'e0e437700141a3aed06bc14754feed211e65ae7a', 6),
(8, 'et', 'quaerat', 'omnis', '15093a6bbe35cd9fccff9024d38b5ac731466f74', 5),
(9, 'nihil', 'quasi', 'fuga', '70716e067d52d1986fb27affa87dbcb8e13c72b5', 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_favorite_post` (`post_id`),
  ADD KEY `FK_favorite_users` (`users_id`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post_users` (`users_id`);

--
-- Index pour la table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reply_post` (`post_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_agency` (`agency_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `FK_favorite_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FK_favorite_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_post_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `FK_reply_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user_agency` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
