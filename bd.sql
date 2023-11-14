-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 20 août 2020 à 14:14
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12
-- Création de la base de données
CREATE DATABASE IF NOT EXISTS demobd;

-- Utilisation de la base de données nouvellement créée
USE demobd;

-- Création d'une table

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `code`) VALUES
(1, 'Nathalie', 'CN470058'),
(2, 'Jane Smith', 'SR58741'),
(3, 'Bob Johnson', 'OH478N23'),
(4, 'John Doe', 'CX845Y42'),
(5, 'Frederic', 'FD854025');

-- --------------------------------------------------------

--
-- Structure de la table `ops`
--

CREATE TABLE `ops` (
  `id` int(11) NOT NULL,
  `operation` tinytext NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ops`
--

INSERT INTO `ops` (`id`, `operation`, `password`, `email`) VALUES
(1, 'scorpion codename s55', 'secret@32', 'admin@scorpion55.com');

-- --------------------------------------------------------
--
-- Déchargement des données de la table `privatemessages`
--


--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Index pour la table `ops`
--
ALTER TABLE `ops`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ops`
--
ALTER TABLE `ops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
