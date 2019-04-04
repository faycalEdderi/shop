-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 04 avr. 2019 à 19:58
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shop`
--

INSERT INTO `shop` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(18, 'Basket Adidas', '95.00', 'Basket Adidas ultra confort', '0b4f429ed9a2261aad42eeb4bd900880.jpeg', 3),
(19, 'Baskets Nike', '125.00', 'Baskets Nike modèle 2019', 'fcd50cbdf5d83d5536c217f3d29c5e55.jpeg', 3),
(20, 'Timberland', '130.00', 'Chaussures Timberland, ultra résistantes', '7f6b99b0a49bcecfb19b6e1d75365f60.jpeg', 3),
(21, 'Jean', '150.00', 'Jean en coton 100% made in France', '596cdcdec53e7a0b61a7a79144e62008.webp', 2),
(22, 'Pantalon Chino', '40.00', 'Pantalon Chino 50% polyester 50% coton', 'f6d6c7c5644068345ee9d2411c00db34.jpeg', 2),
(23, 'Bas de Jogging', '50.00', 'Jogging 100% coton', '1628d4265e1e792d0a7dd1f3e79e64e1.jpeg', 2),
(24, 'T-shirt Levis', '25.00', 'T-shirt blanc simple... avec logo Levis qui justifie sont prix assez élevé', '5c78d1e475f46d45dabf745b5b59b8b5.jpeg', 1),
(25, 'T-shirt Kawaii', '13.00', 'T-shirt Kawaii pour femme ... ou autre...', '7652799c982620df76d683f3b0a15624.webp', 1),
(26, 'Pull Nike', '50.00', 'Pull a capuche Nike', '7cf652f10f6c95e994a14be1c2ff2711.jpeg', 1),
(27, 'Pull Fila', '40.00', 'Pull a capuche Fila', '03eabe34693f57cb8d73c3a7df68d59a.jpeg', 1),
(28, 'T-shirt smile', '14.00', 'T-shirt jaune avec un air narquois', '6f01eac28432318c8a4453e999bd5665.webp', 1),
(29, 'Jean Femme', '145.00', 'Jean femme made in France', 'c1d28294e5fa929734eb7fb3f9ffb8b0.jpeg', 2),
(30, 'Jean taille haute', '155.00', 'Jean femme taille haute made in France', '6029cbe6873523a19c5dace2cf8c56a6.jpeg', 2),
(31, 'Short Denim Femme', '60.00', 'Mini short femme denim', '0e907595a431a764f04032fa70338a0c.jpeg', 2),
(32, 'Chaussures Minetom', '75.00', 'Chaussures à talon 12 cm', 'a5e8f5b749ca911c0a878d2668295617.jpeg', 3),
(33, 'Sneakers Femme', '100.00', 'Baskets Nike pour femme', '5ac98cd94fe4e7a6603f3828cf88adf0.webp', 3),
(34, 'Chaussure Femme', '45.00', 'En Cuir Qualité supérieure', 'bfbccc4069ea55a351962d53a1c26073.jpeg', 3),
(35, 'Chaussure Homme DOCKSIDES', '65.00', 'Chaussures bateau', '101d70c29877e0ccd66c20b16fafedeb.jpeg', 3),
(36, 'Pull femme', '75.00', 'Pull design Liza Écru Chasse Maré', '0bd40f6ac98286e797dfc687b2f7e181.jpeg', 1);

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
