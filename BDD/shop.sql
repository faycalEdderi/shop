-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 04 avr. 2019 à 15:32
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
-- Base de données :  `shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'hauts'),
(2, 'bas'),
(3, 'chaussures');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190402115452', '2019-04-02 12:57:03'),
('20190403114120', '2019-04-03 11:41:43'),
('20190404121155', '2019-04-04 12:12:45');

-- --------------------------------------------------------

--
-- Structure de la table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AC6A4CA212469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shop`
--

INSERT INTO `shop` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(5, 'Timberland', '150.00', 'Des bottes de qulités superieur', 'eb3f35ba89eebd97202f5965a694a3e7.jpeg', 3),
(6, 'Basket Nike', '120.00', 'Des baskets de qualités superieur', '839dedafb7f49ccba8c0be618f3c4eec.jpeg', 3),
(7, 'Basket Adidas', '110.00', 'Des baskets Adidas de qualités superieur', '33ff96718decfd12e24f68ac6437c745.jpeg', 3),
(8, 'Pull Nike', '90.00', 'Un pull Nike de qualités superieur', 'd1509d378fd617b3a36c9adf81bbe164.jpeg', 1),
(9, 'Pull Fila', '70.00', 'Un pull Fila de qualités superieur', 'adbb43c2bf5106add6ebe61681463887.jpeg', 1),
(10, 'Tshirt denim', '20.00', 'Un t-shirt cool de qualités superieur', '1c84d7776f75a4a6e268730eb8226b4f.webp', 1),
(11, 'Tshirt Levis', '50.00', 'Un t-shirt confortable de qualités superieur', '561f1b5953f604c385b3acb022e5b289.jpeg', 1),
(12, 'Tshirt simple', '15.00', 'Un t-shirt bien de qualités superieur', '16957cb50596350241655dd666444c96.jpeg', 1),
(15, 'Pantalon', '50.00', 'Un pantalon en coton 100%', '0bde63dcea531e8c0f0cdbb45c2d61b2.jpeg', 2),
(16, 'Jean', '50.00', 'Un jean ultra confort', '09f111f1226210f122800064ad5a0b0f.webp', 2),
(17, 'Jogging', '60.00', 'Un jogging en coton', '2334cb4c8ffc01001528675e7bb863bb.jpeg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'faycal@admin.fr', '[\"ROLE_ADMIN\"]', '$2y$13$0MFyJbFs9xo5NKE/qKmh2OSDwgUmxxYIRag0hZyagqk8p9CS/LPgy'),
(3, 'naruto@live.fr', '[]', '$2y$13$RoxNiUW2Exzp8B57.acpEuTJ/m1MuBNI0mvJIiEJ.ifaa6NDwfgNK');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `FK_AC6A4CA212469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
