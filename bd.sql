-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 20 août 2020 à 14:14
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12


CREATE TABLE `flag_secret` (
  `id` int(11) NOT NULL,
  `flag_name` varchar(15) NOT NULL,
  `flag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `flag_secret`
--

INSERT INTO `flag_secret` (`id`, `flag_name`, `flag`) VALUES
(4, 'Flag16', '1640c583da85e34831e53d1b3063f163ef985ebb'),
(5, 'Flag17', '89 94 3a 6c ac 24 c8 39');

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
-- Index pour la table `flag_secret`
--
ALTER TABLE `flag_secret`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flag` (`flag`);

--
-- Index pour la table `ops`
--
ALTER TABLE `ops`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `flag_secret`
--
ALTER TABLE `flag_secret`
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
