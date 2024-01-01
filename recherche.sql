-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 jan. 2024 à 18:51
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recherche`
--

-- --------------------------------------------------------

--
-- Structure de la table `chocolat`
--

CREATE TABLE `chocolat` (
  `id` int(11) NOT NULL,
  `type_chocolat_id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chocolat`
--

INSERT INTO `chocolat` (`id`, `type_chocolat_id`, `nom`, `prix`) VALUES
(3, 1, 'Lindt Excellence 70%', 5.99),
(4, 4, 'Ferrero Rocher', 8.99),
(5, 5, 'Toblerone', 3.79),
(6, 2, 'Godiva Masterpieces Caramel Lion', 4.49),
(7, 3, 'Ferrero Rocher chocolat blanc', 3.89),
(8, 5, 'Ferrero Rocher façon toblerone', 9.99);

-- --------------------------------------------------------

--
-- Structure de la table `typechocolat`
--

CREATE TABLE `typechocolat` (
  `id` int(11) NOT NULL,
  `type_chocolat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `typechocolat`
--

INSERT INTO `typechocolat` (`id`, `type_chocolat`) VALUES
(1, 'Chocolat Noir'),
(2, 'Chocolat au lait'),
(3, 'Chocolat blanc'),
(4, 'Chocolat au lait avec noisettes'),
(5, 'Chocolat au lait avec nougat et miel');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chocolat`
--
ALTER TABLE `chocolat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_type_chocolat` (`type_chocolat_id`);

--
-- Index pour la table `typechocolat`
--
ALTER TABLE `typechocolat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chocolat`
--
ALTER TABLE `chocolat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `typechocolat`
--
ALTER TABLE `typechocolat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chocolat`
--
ALTER TABLE `chocolat`
  ADD CONSTRAINT `fk_type_chocolat` FOREIGN KEY (`type_chocolat_id`) REFERENCES `typechocolat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
