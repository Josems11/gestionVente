-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 31 Octobre 2018 à 15:24
-- Version du serveur :  5.6.21
-- Version de PHP :  5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd_vitre`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`num_cli` int(20) NOT NULL,
  `nom_cli` varchar(30) NOT NULL,
  `prenom_cli` varchar(50) NOT NULL,
  `cin_cli` varchar(20) NOT NULL,
  `tel_cli` varchar(20) NOT NULL,
  `adresse_cli` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`num_cli`, `nom_cli`, `prenom_cli`, `cin_cli`, `tel_cli`, `adresse_cli`) VALUES
(71, 'RAINIKALANDY', 'Solo Patrice ', '516 011 865 232', '+261 33 11 830 94', 'Berary '),
(72, 'ANDROSSE', 'Amorot ', '515 011 050 210', '+261 33 48 512 34', 'Farady anosy '),
(73, 'MARIE', 'Wilderlne ', '516 022 784 102', '+261 34 55 012 42', 'Mahavelo '),
(74, 'RASOASATA', 'Marie louise ', '516 012 875 325', '+261 34 85 231 22', 'Ambaro I '),
(75, 'RAVELOMANANA', 'Nadia ', '513 012 785 666', '+261 33 15 246 55', 'Tasaratanana bekily ');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `num_cli` int(20) NOT NULL,
  `ref_prod` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `quantite` int(12) NOT NULL,
  `prix` int(20) NOT NULL,
  `montant` int(20) NOT NULL,
`ref_com` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`num_cli`, `ref_prod`, `date`, `quantite`, `prix`, `montant`, `ref_com`) VALUES
(71, 15, '2018-10-01', 2, 4500000, 9000000, 112),
(72, 16, '2018-10-24', 5, 250000, 1250000, 113),
(73, 17, '2018-08-15', 8, 800000, 6400000, 114),
(74, 18, '2018-08-09', 1, 500000, 500000, 115),
(75, 19, '2018-10-12', 2, 800000, 1600000, 116);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
`id` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `utilisateur` varchar(100) NOT NULL,
  `motpasse` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `adresse` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`id`, `nom`, `prenom`, `utilisateur`, `motpasse`, `tel`, `adresse`) VALUES
(2, 'MISAOTRASOA', 'Patrick-AlAin', 'mph.gullit@gmail.com', '230697', '+261 34 94 207 80', 'RDC 03'),
(3, 'GULLIT', 'Patrick-Alain', 'lyngjah@gmail.com', '230697', '+261 33 29 256 87', 'Fianarantsoa'),
(5, 'GULLIT', 'Patrick-alain ', 'mph.gullit@outlook.fr', '230697', '+261 34 94 207 80', 'Andrainjato'),
(11, 'K-LynG', 'Lyng', 'lyng@outlook.fr', '230697', '+261 32 55 565 66', 'Fort-Dauphin'),
(12, 'LYNG', 'Jah', 'lyng@yahoo.fr', '230697', '+261 32 55 555 55', 'Andrainjato fianarantsoa');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE IF NOT EXISTS `fournisseur` (
`num_frs` int(20) NOT NULL,
  `nom_frs` varchar(20) NOT NULL,
  `prenom_frs` varchar(50) NOT NULL,
  `cin` varchar(20) NOT NULL,
  `tel_frs` varchar(20) NOT NULL,
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`num_frs`, `nom_frs`, `prenom_frs`, `cin`, `tel_frs`, `adresse`) VALUES
(12, 'JHON', 'Baclehard fidéliot ', '515 011 784 231', '+261 32 01 458 00', 'Farady '),
(13, 'LOUIS', 'De germain beetch ', '516 051 896 550', '+261 34 78 564 22', 'Ambaro I '),
(14, 'ROLOANIRILANDY', 'Louis bridget ', '301 052 452 115', '+261 32 85 468 00', 'Berary '),
(15, 'MAC', 'Bucas ', '301 041 785 332', '+261 32 36 165 23', 'Travaux ');

-- --------------------------------------------------------

--
-- Structure de la table `ozekimessagein`
--

CREATE TABLE IF NOT EXISTS `ozekimessagein` (
`id` int(10) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `msg` varchar(160) NOT NULL,
  `senttime` varchar(100) NOT NULL,
  `receivedtime` varchar(100) NOT NULL,
  `operator` varchar(30) NOT NULL,
  `msgtype` varchar(30) NOT NULL,
  `reference` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ozekimessagein`
--

INSERT INTO `ozekimessagein` (`id`, `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `operator`, `msgtype`, `reference`) VALUES
(4, '+261349608034', '', 'Ny 261349608034 dia mangataka anao mba handefa fahana 586 Ar.', '2018-10-30 21:39:04', '2018-10-30 21:41:11', 'Vodafone1', 'SMS:TEXT', '5424069'),
(7, '+261349608034', '', 'Manahoana! Ny nomerao +261349608034 dia mangataka ny mba antsoinao. Ity dia hafatra nomen ny Telma anao.', '2018-10-30 21:42:11', '2018-10-30 21:44:20', 'Vodafone1', 'SMS:TEXT', '8624493'),
(8, '+261349608034', '', 'Ny 261349608034 dia mangataka anao mba handefa fahana 586 Ar.', '2018-10-30 21:42:27', '2018-10-30 21:44:34', 'Vodafone1', 'SMS:TEXT', '9248017'),
(9, '+261349608034', '', 'Ny 261349608034 dia mangataka anao mba handefa fahana 66662 Ar.', '2018-10-30 21:43:08', '2018-10-30 21:45:15', 'Vodafone1', 'SMS:TEXT', '59800');

-- --------------------------------------------------------

--
-- Structure de la table `ozekimessageout`
--

CREATE TABLE IF NOT EXISTS `ozekimessageout` (
`id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `msg` varchar(160) NOT NULL,
  `senttime` varchar(100) NOT NULL,
  `receivedtime` varchar(100) NOT NULL,
  `operator` varchar(100) NOT NULL,
  `msgtype` varchar(30) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `errormsg` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ozekimessageout`
--

INSERT INTO `ozekimessageout` (`id`, `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `operator`, `msgtype`, `reference`, `status`, `errormsg`) VALUES
(11, '+261349420780', '+261349608034', 'Ao tsr ve ndry ralina. ', 'send', 'now', 'Vodafone1', 'SMS:TEXT', 'ref', 'send', 'erreur'),
(12, '+261349420780', '+261332925687', 'Mlay be le ozeki ra ', 'send', 'now', 'Vodafone1', 'SMS:TEXT', 'ref', 'send', 'erreur'),
(13, '+261349420780', '+261327511665', ' miandry modem hanfsn mess ka.... ', 'send', 'now', 'Vodafone1', 'SMS:TEXT', 'ref', 'send', 'erreur');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
`ref_prod` int(20) NOT NULL,
  `num_prod` varchar(200) NOT NULL,
  `design_prod` varchar(50) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `forme` varchar(50) NOT NULL,
  `epais` varchar(50) NOT NULL,
  `prix` int(20) NOT NULL,
  `quantite` int(12) NOT NULL,
  `montant` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ref_prod`, `num_prod`, `design_prod`, `marque`, `forme`, `epais`, `prix`, `quantite`, `montant`) VALUES
(15, 'Vit 201 ', 'Blaidé ', 'Sulfan ', 'Rectangle ', '5 cm ', 4500000, 20, 900000),
(16, 'Vit 1rd ', 'Mince ', 'Hardiness ', 'Ovale ', '3 cm  ', 250000, 45, 12500000),
(17, 'Vit 52bc  ', 'Mince ', 'Berry ', 'Ronde ', '5.5 cm ', 800000, 7, 12000000),
(18, 'Vit 87bb ', 'Miserist ', 'Hardien ', 'Demi-oval ', ' 5 cm  ', 500000, 5, 3000000),
(19, 'Vit 55wx ', 'Tsumires ', 'Hardinness ', 'Carré ', '3.2 cm  ', 800000, 28, 23200000);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`num_cli`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
 ADD PRIMARY KEY (`ref_com`), ADD KEY `2` (`ref_prod`), ADD KEY `1` (`num_cli`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
 ADD PRIMARY KEY (`num_frs`);

--
-- Index pour la table `ozekimessagein`
--
ALTER TABLE `ozekimessagein`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ozekimessageout`
--
ALTER TABLE `ozekimessageout`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
 ADD PRIMARY KEY (`ref_prod`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
MODIFY `num_cli` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
MODIFY `ref_com` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
MODIFY `num_frs` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `ozekimessagein`
--
ALTER TABLE `ozekimessagein`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `ozekimessageout`
--
ALTER TABLE `ozekimessageout`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
MODIFY `ref_prod` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`num_cli`) REFERENCES `client` (`num_cli`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`ref_prod`) REFERENCES `produit` (`ref_prod`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
