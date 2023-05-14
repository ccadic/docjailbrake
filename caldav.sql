-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 14 mai 2023 à 15:28
-- Version du serveur :  8.0.33-0ubuntu0.20.04.1
-- Version de PHP : 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `caldav`
--

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL COMMENT 'id of the service',
  `category` int NOT NULL COMMENT 'category of services',
  `short_description` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL,
  `duration` int NOT NULL COMMENT 'duration in minutes',
  `active` int NOT NULL COMMENT 'active = 1, no t active = 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `category`, `short_description`, `description`, `price`, `duration`, `active`) VALUES
(1, 1, 'BIKINI', 'Laser Hair Reoval of the Bikini area', 90, 10, 1),
(2, 1, 'Under Arm', 'Laser hair removal session of the under arm area', 75, 10, 1),
(3, 1, 'Face', 'Laser hair removal of the face area', 50, 10, 1),
(4, 2, 'Rosacea', 'Vascular laser session for Rosacea', 150, 15, 1),
(5, 2, 'Leg Telangiectasia', 'Vascular laser treatment of leg telangiectasia', 80, 15, 1),
(6, 2, 'Morgan Spots', 'Vascular laser for angiomas', 80, 15, 0);

-- --------------------------------------------------------

--
-- Structure de la table `services_cat`
--

CREATE TABLE `services_cat` (
  `id` int NOT NULL,
  `cat_description` varchar(254) NOT NULL,
  `active` int NOT NULL COMMENT '0 = inactive 1 = active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `services_cat`
--

INSERT INTO `services_cat` (`id`, `cat_description`, `active`) VALUES
(1, 'HAIR REMOVAL', 1),
(2, 'VASCULAR LASER', 1),
(3, 'LASER REJUVENATION', 1);

-- --------------------------------------------------------

--
-- Structure de la table `workers`
--

CREATE TABLE `workers` (
  `id` int NOT NULL,
  `first_name` varchar(254) NOT NULL,
  `last_name` varchar(254) NOT NULL,
  `calendar_url` varchar(254) NOT NULL,
  `login` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `workers`
--

INSERT INTO `workers` (`id`, `first_name`, `last_name`, `calendar_url`, `login`, `password`, `email`) VALUES
(1, 'philippe', 'cadic', 'http://192.168.1.194/caldav/ccadic/home/', 'ccadic', 'ramalapass', 'pcadic@gmail.com'),
(2, 'margaux', 'delta', 'http://192.168.1.194/caldav/gallerand/home/', 'gallerand', 'ramalapass', 'margaux@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services_cat`
--
ALTER TABLE `services_cat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'id of the service', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `services_cat`
--
ALTER TABLE `services_cat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
