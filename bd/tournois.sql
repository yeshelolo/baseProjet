-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 22 Janvier 2019 à 15:31
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tournois`
--

-- --------------------------------------------------------

--
-- Structure de la table `arbitre`
--

CREATE TABLE `arbitre` (
  `id_personne` int(11) NOT NULL,
  `date_valide_licence_arb` date NOT NULL,
  `Nom` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `birth_date` date NOT NULL,
  `adress1` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `adress2` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `zipcode` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(10) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id_equipe` int(11) NOT NULL,
  `nom` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `id_personne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id_personne` int(11) NOT NULL,
  `date_valide_licence` date NOT NULL,
  `Nom` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `birth_date` date NOT NULL,
  `adress1` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `adress2` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `zipcode` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(10) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(11) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `birth_date` date NOT NULL,
  `adress1` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `adress2` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `zipcode` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(10) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE `rencontre` (
  `id_rencontre` int(11) NOT NULL,
  `date_rencontre` date NOT NULL,
  `score_team1` int(11) NOT NULL,
  `score_team2` int(11) NOT NULL,
  `id_equipe` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id_equipe`),
  ADD KEY `equipe_Joueur_FK` (`id_personne`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD PRIMARY KEY (`id_rencontre`),
  ADD KEY `Match_equipe_FK` (`id_equipe`),
  ADD KEY `Match_arbitre0_FK` (`id_personne`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rencontre`
--
ALTER TABLE `rencontre`
  MODIFY `id_rencontre` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD CONSTRAINT `arbitre_Personne_FK` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `equipe_Joueur_FK` FOREIGN KEY (`id_personne`) REFERENCES `joueur` (`id_personne`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `Joueur_Personne_FK` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `Match_arbitre0_FK` FOREIGN KEY (`id_personne`) REFERENCES `arbitre` (`id_personne`),
  ADD CONSTRAINT `Match_equipe_FK` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id_equipe`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
