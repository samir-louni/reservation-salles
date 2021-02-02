-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 28 jan. 2021 à 11:12
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservationsalles`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `titre`, `description`, `debut`, `fin`, `id_utilisateur`) VALUES
(305, 'ali baba et les 40 violeurs', '.....', '2021-01-30 17:00:00', '2021-01-30 18:00:00', 10),
(304, 'hunter X hunter', 'manga', '2021-02-08 18:00:00', '2021-02-08 19:00:00', 10),
(303, 'hunter X hunter', 'manga', '2021-02-08 17:00:00', '2021-02-08 18:00:00', 10),
(302, 'hunter X hunter', 'manga', '2021-02-08 16:00:00', '2021-02-08 17:00:00', 10),
(301, 'hunter X hunter', 'manga', '2021-02-08 15:00:00', '2021-02-08 16:00:00', 10),
(300, 'hunter X hunter', 'manga', '2021-02-08 14:00:00', '2021-02-08 15:00:00', 10),
(299, 'hunter X hunter', 'manga', '2021-02-08 13:00:00', '2021-02-08 14:00:00', 10),
(298, 'hunter X hunter', 'manga', '2021-02-08 12:00:00', '2021-02-08 13:00:00', 10),
(297, 'hunter X hunter', 'manga', '2021-02-08 11:00:00', '2021-02-08 12:00:00', 10),
(296, 'hunter X hunter', 'manga', '2021-02-08 10:00:00', '2021-02-08 11:00:00', 10),
(295, 'hunter X hunter', 'manga', '2021-02-08 09:00:00', '2021-02-08 10:00:00', 10),
(293, 'fury', 'action', '2021-02-01 15:00:00', '2021-02-01 16:00:00', 10),
(294, 'hunter X hunter', 'manga', '2021-02-08 08:00:00', '2021-02-08 09:00:00', 10),
(291, 'equalizer 2', 'action', '2021-02-03 12:00:00', '2021-02-03 13:00:00', 6),
(292, 'fury', 'action', '2021-02-01 14:00:00', '2021-02-01 15:00:00', 10),
(289, 'borat', 'comique', '2021-02-02 13:00:00', '2021-02-02 14:00:00', 6),
(290, 'equalizer 2', 'action', '2021-02-03 11:00:00', '2021-02-03 12:00:00', 6),
(288, 'borat', 'comique', '2021-02-02 12:00:00', '2021-02-02 13:00:00', 6),
(287, 'equalizer', 'action', '2021-01-29 18:00:00', '2021-01-29 19:00:00', 6),
(286, 'equalizer', 'action', '2021-01-29 17:00:00', '2021-01-29 18:00:00', 6),
(285, 'titanic', 'amour', '2021-02-03 18:00:00', '2021-02-03 19:00:00', 9),
(284, 'titanic', 'amour', '2021-02-03 17:00:00', '2021-02-03 18:00:00', 9),
(283, 'titanic', 'amour', '2021-02-03 16:00:00', '2021-02-03 17:00:00', 9),
(282, 'titanic', 'amour', '2021-02-03 15:00:00', '2021-02-03 16:00:00', 9),
(281, 'yes man', 'comique', '2021-01-29 12:00:00', '2021-01-29 13:00:00', 9),
(280, 'yes man', 'comique', '2021-01-29 11:00:00', '2021-01-29 12:00:00', 9),
(279, 'yes man', 'comique', '2021-01-29 10:00:00', '2021-01-29 11:00:00', 9);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(5, 'samir', '$2y$10$LBIOHksNP3OU5uyxVT3Gku80LlMiWTileJvw6ATc76OdpyKJkv21G'),
(4, 'nadir', '$2y$10$nWJ4sJwlfmboVFv6KdkeRuvbkNZVpkMU/98ol.VcRUheiqNSfuBOK'),
(6, 'ok', '$2y$10$dmk6nIVfKPvMEPA9bNMEE.Mx1UPmxYmMlgIAdjIJEUSJpdbWdAJnu'),
(7, 'pierre', '$2y$10$f1kkPRddOT562SKFI4WX3e3RkyZmTL.a1VIt1vNpR08OI90zOC.ji'),
(8, 'robin', '$2y$10$tfmporNKQbJjGFofPd.2UehLZ828by5wB0Rwyt79RJfwCFTtJbT6S'),
(9, 'wesh', '$2y$10$cN5vp7UYrnURfI3zVWOVIOUCoOX4r1zXvVojXlwIXILgC84S4alyy'),
(10, 'samy', '$2y$10$MA92UVctP.zrqBYH4wHa/Ov9mQs/79Squp5LTaemqmUX2DWxCruE.'),
(11, 'allo', '$2y$10$8n4dW2SKDGXB/60NWw/qd.CL3zKuqGH8PAIm/x3vUMARwOKesPBu.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
