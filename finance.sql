-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 21 nov. 2022 à 17:10
-- Version du serveur : 8.0.31-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `finance`
--

-- --------------------------------------------------------

--
-- Structure de la table `Equipe`
--

CREATE TABLE `Equipe` (
  `nom` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `chef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Equipe`
--

INSERT INTO `Equipe` (`nom`, `style`, `chef`) VALUES
('equipe 5', 'arbitrage statistique', 'Smith'),
('equipe1', 'market making', 'leonardo'),
('equipe2', 'arbitrage', 'michaelgelo'),
('equipe3', 'trading de volatilite', 'raphael'),
('equipe4', 'trading haute frequence', 'donatello'),
('equipe6', 'arbitrage statistique', 'Smith'),
('equipe7', 'strategie fond de fond', 'Ray');

-- --------------------------------------------------------

--
-- Structure de la table `Trader`
--

CREATE TABLE `Trader` (
  `nom` varchar(255) NOT NULL,
  `classe_actif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `anneesExperience` int NOT NULL,
  `nomEquipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Trader`
--

INSERT INTO `Trader` (`nom`, `classe_actif`, `anneesExperience`, `nomEquipe`) VALUES
('Cedrick', 'commodities', 10, 'equipe1'),
('Gaelle', 'exotic', 4, 'equip3'),
('Georges', 'CDS', 20, 'equipe6'),
('Jordan', 'change', 2, 'equipe2'),
('Patrick', 'action', 10, 'equipe1'),
('Yannick', 'fixed income', 10, 'equipe1');

-- --------------------------------------------------------

--
-- Structure de la table `Transaction`
--

CREATE TABLE `Transaction` (
  `nom` varchar(255) NOT NULL,
  `nomEquipe` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `prix` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Transaction`
--

INSERT INTO `Transaction` (`nom`, `nomEquipe`, `date`, `lieu`, `prix`) VALUES
('Amazon', 'equipe3', '2010-07-12', 'USA', 100),
('Apple Inc', 'equipe1', '2014-09-05', 'USA', 150),
('AXA SA', 'equipe1', '2021-06-15', 'PARIS', 26),
('Dassault Aviation', 'equipe6', '2016-01-01', 'PARIS', 140),
('Dubai Elec', 'equipe3', '2020-11-22', 'DUBAI', 1),
('ETF Vanguard', 'equipe7', '2015-02-22', 'LA', 200),
('Naspers', 'equipe2', '1997-08-16', 'SOUTH AFRICA', 120),
('PetroChina', 'equipe5', '2019-04-20', 'HONG KONG', 10),
('TotalEnergies', 'equipe2', '2004-09-03', 'PARIS', 57);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Equipe`
--
ALTER TABLE `Equipe`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `Trader`
--
ALTER TABLE `Trader`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`nom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
