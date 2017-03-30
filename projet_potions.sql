-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 30 Mars 2017 à 11:29
-- Version du serveur :  10.1.10-MariaDB
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet potions`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_Client` int(11) NOT NULL,
  `Nom_Client` varchar(25) NOT NULL,
  `Prenom_Client` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID_Client`, `Nom_Client`, `Prenom_Client`) VALUES
(1, 'Liberte', 'Nicolas'),
(2, 'Labonte', 'Roger'),
(3, 'Labbes', 'Yves'),
(4, 'Primeau', 'William'),
(5, 'Goudreau', 'Lucas');

-- --------------------------------------------------------

--
-- Structure de la table `cmd_client`
--

CREATE TABLE `cmd_client` (
  `ID_CmdClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cmd_fournisseur`
--

CREATE TABLE `cmd_fournisseur` (
  `ID_CmdFournisseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compose`
--

CREATE TABLE `compose` (
  `ID_CmdClient` int(11) NOT NULL,
  `ID_Potion` int(11) NOT NULL,
  `ID_Ingredient` int(11) NOT NULL,
  `ID_Onguent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

CREATE TABLE `comprend` (
  `Quantite` int(11) NOT NULL,
  `ID_CmdFournisseur` int(11) NOT NULL,
  `ID_Ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `concu`
--

CREATE TABLE `concu` (
  `ID_CmdClient` int(11) NOT NULL,
  `ID_Client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `ID_Recipient` int(11) NOT NULL,
  `ID_Onguent` int(11) NOT NULL,
  `ID_Potion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cree`
--

CREATE TABLE `cree` (
  `ID_Inventeur` int(11) NOT NULL,
  `ID_Potion` int(11) NOT NULL,
  `ID_Onguent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `est_constitue`
--

CREATE TABLE `est_constitue` (
  `Quantite` int(11) NOT NULL,
  `ID_Ingredient` int(11) NOT NULL,
  `ID_Onguent` int(11) NOT NULL,
  `ID_Potion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `est_forme_de`
--

CREATE TABLE `est_forme_de` (
  `Unite` varchar(25) NOT NULL,
  `Quantite_Onguent` int(11) DEFAULT NULL,
  `ID_Ingredient` int(11) NOT NULL,
  `ID_Onguent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `ID_Fournisseur` int(11) NOT NULL,
  `Nom_Fournisseur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`ID_Fournisseur`, `Nom_Fournisseur`) VALUES
(1, '24hpotion'),
(2, 'Potpot'),
(3, 'ChronoMagic'),
(4, 'Balaizone'),
(5, 'Intermage');

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `ID_Ingredient` int(11) NOT NULL,
  `Nom_Ingredient` varchar(25) NOT NULL,
  `Poids` int(11) NOT NULL,
  `Prix_Ingredient` int(11) NOT NULL,
  `Peremption` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ingredient`
--

INSERT INTO `ingredient` (`ID_Ingredient`, `Nom_Ingredient`, `Poids`, `Prix_Ingredient`, `Peremption`) VALUES
(1, 'aigue-marine', 47, 20, 7),
(2, 'alexandrite', 77, 20, 7),
(3, 'alzurite', 12, 15, 7),
(4, 'chrysoberyl', 81, 14, 7),
(5, 'grenat rouge', 17, 15, 7),
(6, 'grenat violet', 91, 12, 7),
(7, 'irtios', 70, 13, 7),
(8, 'ivoire', 54, 12, 7),
(9, 'lapis lazuli', 100, 16, 7),
(10, 'nephrite', 58, 13, 7),
(11, 'orprase', 84, 12, 7),
(12, 'peridot', 55, 15, 7),
(13, 'perle doree', 28, 18, 7),
(14, 'perle noire', 40, 12, 7),
(15, 'pierre de lune', 80, 15, 7),
(16, 'quartz bleu', 54, 11, 7),
(17, 'sardonyx', 70, 18, 7),
(18, 'spinelle vert sombre', 21, 12, 7),
(19, 'spodumene', 12, 20, 7),
(20, 'topaze jaune d or', 57, 15, 7),
(21, 'tourmaline blanche', 96, 11, 7),
(22, 'zircon', 88, 13, 7),
(23, 'amulette d armure naturel', 92, 14, 7),
(24, 'anneau du belier', 26, 14, 7),
(25, 'baguette de sagesse du hi', 61, 20, 7),
(26, 'botte de sept lieu', 96, 13, 7),
(27, 'ecu en acier', 67, 11, 7),
(28, 'elixir de nage', 71, 20, 7),
(29, 'epee batarde', 11, 17, 7),
(30, 'epee courte', 77, 12, 7),
(31, 'huile de tenebres', 78, 14, 7),
(32, 'masse d arme lourde', 16, 18, 7),
(33, 'onguent d intempolarite', 46, 13, 7),
(34, 'parchemin divin', 50, 20, 7),
(35, 'potion profande', 82, 18, 7),
(36, 'potion d agrandissement', 40, 16, 7),
(37, 'potion de flou', 35, 16, 7),
(38, 'potion de grace feline', 49, 11, 7),
(39, 'potion de regain d assura', 40, 16, 7),
(40, 'potion de ruse du renard', 42, 20, 7),
(41, 'potion de sagesse de hibo', 71, 18, 7),
(42, 'urgosh nain', 76, 18, 7),
(43, 'antidote', 40, 14, 7),
(44, 'arbalete legere de maitre', 67, 17, 7),
(45, 'arc court de maitre', 72, 20, 7),
(46, 'armure a plaques', 26, 13, 7),
(47, 'armure de cuir cloutee de', 20, 12, 7),
(48, 'batonnet fumigene', 98, 20, 7),
(49, 'cadenas simple', 14, 18, 7),
(50, 'carreaux', 56, 10, 7),
(51, 'chemise de maille', 21, 11, 7),
(52, 'cimeterre de maitre', 67, 19, 7),
(53, 'eau benite', 50, 18, 7),
(54, 'ecu en acier de maitre', 77, 20, 7),
(55, 'ecu en ebenite', 63, 16, 7),
(56, 'epee longue de maitre', 95, 16, 7),
(57, 'gourdin de maitre', 33, 14, 7),
(58, 'grande hanche de maitre', 13, 19, 7),
(59, 'hache de guerre naine de ', 66, 18, 7),
(60, 'hallebarde de maitre', 91, 16, 7),
(61, 'harnois', 56, 20, 7),
(62, 'menottes de qualite suppe', 40, 13, 7),
(63, 'pic de guerre leger de ma', 96, 16, 7),
(64, 'pierre a tonnerre', 97, 10, 7),
(65, 'rapiere de maitre', 29, 12, 7),
(66, 'rondache en ebenite', 68, 17, 7),
(67, 'serpe de maitre', 10, 19, 7),
(68, 'elexir secret', 87, 15, 7),
(69, 'poudre secrete', 74, 10, 7),
(70, 'mineral secret', 82, 12, 7);

-- --------------------------------------------------------

--
-- Structure de la table `inventeur`
--

CREATE TABLE `inventeur` (
  `ID_Inventeur` int(11) NOT NULL,
  `Nom_Inventeur` varchar(25) NOT NULL,
  `Numeros_de_permi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inventeur`
--

INSERT INTO `inventeur` (`ID_Inventeur`, `Nom_Inventeur`, `Numeros_de_permi`) VALUES
(1, 'Panoramix', 8034),
(2, 'Gandalf', 3965),
(3, 'Elias de Kelliwic h', 2783),
(4, 'Merlin', 2931),
(5, 'Severus Rogue', 3403);

-- --------------------------------------------------------

--
-- Structure de la table `neccesite`
--

CREATE TABLE `neccesite` (
  `Fraicheur` int(11) NOT NULL,
  `ID_Potion` int(11) NOT NULL,
  `ID_Ingredient` int(11) NOT NULL,
  `ID_Onguent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `onguent`
--

CREATE TABLE `onguent` (
  `ID_Onguent` int(11) NOT NULL,
  `Prix_Onguent` int(11) NOT NULL,
  `Nom_Onguent` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `onguent`
--

INSERT INTO `onguent` (`ID_Onguent`, `Prix_Onguent`, `Nom_Onguent`) VALUES
(1, 474, 'Huile d arme magique'),
(2, 799, 'Huile de bénédiction d ar'),
(3, 481, 'Huile de gourdin magique'),
(4, 345, 'Huile de pierre magique'),
(5, 658, 'Huile de ténèbres'),
(6, 975, 'Potion d agrandissement'),
(7, 940, 'Potion d aide'),
(8, 376, 'Potion d alignement indét'),
(9, 124, 'Potion d armure de mage'),
(10, 436, 'Potion de bouclier de la '),
(11, 963, 'Potion de délivrance de l'),
(12, 525, 'Potion de détection fauss'),
(13, 440, 'Potion de flou'),
(14, 238, 'Potion de force de taurea'),
(15, 149, 'Potion de grâce féline'),
(16, 869, 'Potion de lévitation'),
(17, 326, 'Potion de morsure magique'),
(18, 634, 'Potion de passage sans tr'),
(19, 473, 'Potion de pattes d araign'),
(20, 236, 'Potion de peau d écorce'),
(21, 681, 'Potion de protection cont'),
(22, 210, 'Potion de protection cont'),
(23, 145, 'Potion de protection cont'),
(24, 936, 'Potion de protection cont'),
(25, 760, 'Potion de protection cont'),
(26, 220, 'Potion de ralentissement '),
(27, 533, 'Potion de rapetissement'),
(28, 430, 'Potion de regain d assura'),
(29, 113, 'Potion de résistances aux'),
(30, 805, 'Potion de restauration pa'),
(31, 716, 'Potion de ruse du renard'),
(32, 821, 'Potion de sagesse du hibo'),
(33, 991, 'Potion de sanctuaire'),
(34, 832, 'Potion de saut'),
(35, 764, 'Potion de soins légers'),
(36, 652, 'Potion de soins modérés'),
(37, 552, 'Potion de splendeur de l '),
(38, 436, 'Potion de vision dans le '),
(39, 445, 'Potion d endurance aux én'),
(40, 473, 'Potion d endurance de l o'),
(41, 335, 'Potion d invisibilité pou'),
(42, 331, 'Potion d invisibilité pou'),
(43, 645, 'Potion d invisibilité');

-- --------------------------------------------------------

--
-- Structure de la table `possede`
--

CREATE TABLE `possede` (
  `ID_Stock` int(11) NOT NULL,
  `ID_Ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `potion`
--

CREATE TABLE `potion` (
  `ID_Potion` int(11) NOT NULL,
  `Nom_Potion` varchar(25) NOT NULL,
  `Prix_Potion` int(11) NOT NULL,
  `Diluant` varchar(25) NOT NULL,
  `Temperature` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `potion`
--

INSERT INTO `potion` (`ID_Potion`, `Nom_Potion`, `Prix_Potion`, `Diluant`, `Temperature`) VALUES
(1, 'Huile d arme magique', 474, 'Vin', 93),
(2, 'Huile de bénédiction d ar', 799, 'Jus de fruit', 55),
(3, 'Huile de gourdin magique', 481, 'Eau', 80),
(4, 'Huile de pierre magique', 345, 'Jus de fruit', 93),
(5, 'Huile de ténèbres', 658, 'Eau', 55),
(6, 'Potion d agrandissement', 975, 'Vin', 80),
(7, 'Potion d aide', 940, 'Jus de fruit', 93),
(8, 'Potion d alignement indét', 376, 'Bière', 55),
(9, 'Potion d armure de mage', 124, 'Jus de fruit', 80),
(10, 'Potion de bouclier de la ', 436, 'Vin', 93),
(11, 'Potion de délivrance de l', 963, 'Vin', 55),
(12, 'Potion de détection fauss', 525, 'Vin', 80),
(13, 'Potion de flou', 440, 'Bière', 93),
(14, 'Potion de force de taurea', 238, 'Jus de fruit', 55),
(15, 'Potion de grâce féline', 149, 'Jus de fruit', 80),
(16, 'Potion de lévitation', 869, 'Jus de fruit', 93),
(17, 'Potion de morsure magique', 326, 'Jus de fruit', 55),
(18, 'Potion de passage sans tr', 634, 'Bière', 80),
(19, 'Potion de pattes d araign', 473, 'Eau', 93),
(20, 'Potion de peau d écorce', 236, 'Vin', 55),
(21, 'Potion de protection cont', 681, 'Vin', 80),
(22, 'Potion de protection cont', 210, 'Bière', 93),
(23, 'Potion de protection cont', 145, 'Bière', 55),
(24, 'Potion de protection cont', 936, 'Bière', 80),
(25, 'Potion de protection cont', 760, 'Vin', 93),
(26, 'Potion de ralentissement ', 220, 'Vin', 83),
(27, 'Potion de rapetissement', 533, 'Vin', 89),
(28, 'Potion de regain d assura', 430, 'Jus de fruit', 79),
(29, 'Potion de résistances aux', 113, 'Vin', 81),
(30, 'Potion de restauration pa', 805, 'Vin', 81),
(31, 'Potion de ruse du renard', 716, 'Bière', 76),
(32, 'Potion de sagesse du hibo', 821, 'Jus de fruit', 10),
(33, 'Potion de sanctuaire', 991, 'Eau', 55),
(34, 'Potion de saut', 832, 'Bière', 51),
(35, 'Potion de soins légers', 764, 'Bière', 88),
(36, 'Potion de soins modérés', 652, 'Jus de fruit', 69),
(37, 'Potion de splendeur de l ', 552, 'Jus de fruit', 85),
(38, 'Potion de vision dans le ', 436, 'Jus de fruit', 99),
(39, 'Potion d endurance aux én', 445, 'Vin', 91),
(40, 'Potion d endurance de l o', 473, 'Jus de fruit', 68),
(41, 'Potion d invisibilité pou', 335, 'Vin', 81),
(42, 'Potion d invisibilité pou', 331, 'Bière', 91),
(43, 'Potion d invisibilité', 645, 'Jus de fruit', 77);

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `ID_Fournisseur` int(11) NOT NULL,
  `ID_CmdFournisseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recipient`
--

CREATE TABLE `recipient` (
  `ID_Recipient` int(11) NOT NULL,
  `Nom_Recipient` varchar(25) NOT NULL,
  `Prix_Recipient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recipient`
--

INSERT INTO `recipient` (`ID_Recipient`, `Nom_Recipient`, `Prix_Recipient`) VALUES
(1, 'Tube', 50),
(2, 'Fiole', 50),
(3, 'Pot', 50);

-- --------------------------------------------------------

--
-- Structure de la table `se_compose`
--

CREATE TABLE `se_compose` (
  `Quantite_Ingredient` int(11) NOT NULL,
  `Unite` varchar(25) NOT NULL,
  `ID_Potion` int(11) NOT NULL,
  `ID_Ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `ID_Stock` int(11) NOT NULL,
  `Quantite_Ingredient` int(11) DEFAULT NULL,
  `Fraicheur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_Client`);

--
-- Index pour la table `cmd_client`
--
ALTER TABLE `cmd_client`
  ADD PRIMARY KEY (`ID_CmdClient`);

--
-- Index pour la table `cmd_fournisseur`
--
ALTER TABLE `cmd_fournisseur`
  ADD PRIMARY KEY (`ID_CmdFournisseur`);

--
-- Index pour la table `compose`
--
ALTER TABLE `compose`
  ADD PRIMARY KEY (`ID_CmdClient`,`ID_Potion`,`ID_Ingredient`,`ID_Onguent`),
  ADD KEY `FK_compose_ID_Potion` (`ID_Potion`),
  ADD KEY `FK_compose_ID_Ingredient` (`ID_Ingredient`),
  ADD KEY `FK_compose_ID_Onguent` (`ID_Onguent`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD PRIMARY KEY (`ID_CmdFournisseur`,`ID_Ingredient`),
  ADD KEY `FK_comprend_ID_Ingredient` (`ID_Ingredient`);

--
-- Index pour la table `concu`
--
ALTER TABLE `concu`
  ADD PRIMARY KEY (`ID_CmdClient`,`ID_Client`),
  ADD KEY `FK_concu_ID_Client` (`ID_Client`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`ID_Recipient`,`ID_Onguent`,`ID_Potion`),
  ADD KEY `FK_contient_ID_Onguent` (`ID_Onguent`),
  ADD KEY `FK_contient_ID_Potion` (`ID_Potion`);

--
-- Index pour la table `cree`
--
ALTER TABLE `cree`
  ADD PRIMARY KEY (`ID_Inventeur`,`ID_Potion`,`ID_Onguent`),
  ADD KEY `FK_cree_ID_Potion` (`ID_Potion`),
  ADD KEY `FK_cree_ID_Onguent` (`ID_Onguent`);

--
-- Index pour la table `est_constitue`
--
ALTER TABLE `est_constitue`
  ADD PRIMARY KEY (`ID_Ingredient`,`ID_Onguent`,`ID_Potion`),
  ADD KEY `FK_est_constitue_ID_Onguent` (`ID_Onguent`),
  ADD KEY `FK_est_constitue_ID_Potion` (`ID_Potion`);

--
-- Index pour la table `est_forme_de`
--
ALTER TABLE `est_forme_de`
  ADD PRIMARY KEY (`ID_Ingredient`,`ID_Onguent`),
  ADD KEY `FK_est_forme_de_ID_Onguent` (`ID_Onguent`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`ID_Fournisseur`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ID_Ingredient`);

--
-- Index pour la table `inventeur`
--
ALTER TABLE `inventeur`
  ADD PRIMARY KEY (`ID_Inventeur`);

--
-- Index pour la table `neccesite`
--
ALTER TABLE `neccesite`
  ADD PRIMARY KEY (`ID_Potion`,`ID_Ingredient`,`ID_Onguent`),
  ADD KEY `FK_neccesite_ID_Ingredient` (`ID_Ingredient`),
  ADD KEY `FK_neccesite_ID_Onguent` (`ID_Onguent`);

--
-- Index pour la table `onguent`
--
ALTER TABLE `onguent`
  ADD PRIMARY KEY (`ID_Onguent`);

--
-- Index pour la table `possede`
--
ALTER TABLE `possede`
  ADD PRIMARY KEY (`ID_Stock`,`ID_Ingredient`),
  ADD KEY `FK_possede_ID_Ingredient` (`ID_Ingredient`);

--
-- Index pour la table `potion`
--
ALTER TABLE `potion`
  ADD PRIMARY KEY (`ID_Potion`);

--
-- Index pour la table `realise`
--
ALTER TABLE `realise`
  ADD PRIMARY KEY (`ID_Fournisseur`,`ID_CmdFournisseur`),
  ADD KEY `FK_realise_ID_CmdFournisseur` (`ID_CmdFournisseur`);

--
-- Index pour la table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`ID_Recipient`);

--
-- Index pour la table `se_compose`
--
ALTER TABLE `se_compose`
  ADD PRIMARY KEY (`ID_Potion`,`ID_Ingredient`),
  ADD KEY `FK_se_compose_ID_Ingredient` (`ID_Ingredient`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ID_Stock`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_Client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cmd_client`
--
ALTER TABLE `cmd_client`
  MODIFY `ID_CmdClient` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cmd_fournisseur`
--
ALTER TABLE `cmd_fournisseur`
  MODIFY `ID_CmdFournisseur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `ID_Fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ID_Ingredient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `inventeur`
--
ALTER TABLE `inventeur`
  MODIFY `ID_Inventeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `onguent`
--
ALTER TABLE `onguent`
  MODIFY `ID_Onguent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `potion`
--
ALTER TABLE `potion`
  MODIFY `ID_Potion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `recipient`
--
ALTER TABLE `recipient`
  MODIFY `ID_Recipient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `ID_Stock` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `compose`
--
ALTER TABLE `compose`
  ADD CONSTRAINT `FK_compose_ID_CmdClient` FOREIGN KEY (`ID_CmdClient`) REFERENCES `cmd_client` (`ID_CmdClient`),
  ADD CONSTRAINT `FK_compose_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`),
  ADD CONSTRAINT `FK_compose_ID_Onguent` FOREIGN KEY (`ID_Onguent`) REFERENCES `onguent` (`ID_Onguent`),
  ADD CONSTRAINT `FK_compose_ID_Potion` FOREIGN KEY (`ID_Potion`) REFERENCES `potion` (`ID_Potion`);

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `FK_comprend_ID_CmdFournisseur` FOREIGN KEY (`ID_CmdFournisseur`) REFERENCES `cmd_fournisseur` (`ID_CmdFournisseur`),
  ADD CONSTRAINT `FK_comprend_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`);

--
-- Contraintes pour la table `concu`
--
ALTER TABLE `concu`
  ADD CONSTRAINT `FK_concu_ID_Client` FOREIGN KEY (`ID_Client`) REFERENCES `client` (`ID_Client`),
  ADD CONSTRAINT `FK_concu_ID_CmdClient` FOREIGN KEY (`ID_CmdClient`) REFERENCES `cmd_client` (`ID_CmdClient`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `FK_contient_ID_Onguent` FOREIGN KEY (`ID_Onguent`) REFERENCES `onguent` (`ID_Onguent`),
  ADD CONSTRAINT `FK_contient_ID_Potion` FOREIGN KEY (`ID_Potion`) REFERENCES `potion` (`ID_Potion`),
  ADD CONSTRAINT `FK_contient_ID_Recipient` FOREIGN KEY (`ID_Recipient`) REFERENCES `recipient` (`ID_Recipient`);

--
-- Contraintes pour la table `cree`
--
ALTER TABLE `cree`
  ADD CONSTRAINT `FK_cree_ID_Inventeur` FOREIGN KEY (`ID_Inventeur`) REFERENCES `inventeur` (`ID_Inventeur`),
  ADD CONSTRAINT `FK_cree_ID_Onguent` FOREIGN KEY (`ID_Onguent`) REFERENCES `onguent` (`ID_Onguent`),
  ADD CONSTRAINT `FK_cree_ID_Potion` FOREIGN KEY (`ID_Potion`) REFERENCES `potion` (`ID_Potion`);

--
-- Contraintes pour la table `est_constitue`
--
ALTER TABLE `est_constitue`
  ADD CONSTRAINT `FK_est_constitue_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`),
  ADD CONSTRAINT `FK_est_constitue_ID_Onguent` FOREIGN KEY (`ID_Onguent`) REFERENCES `onguent` (`ID_Onguent`),
  ADD CONSTRAINT `FK_est_constitue_ID_Potion` FOREIGN KEY (`ID_Potion`) REFERENCES `potion` (`ID_Potion`);

--
-- Contraintes pour la table `est_forme_de`
--
ALTER TABLE `est_forme_de`
  ADD CONSTRAINT `FK_est_forme_de_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`),
  ADD CONSTRAINT `FK_est_forme_de_ID_Onguent` FOREIGN KEY (`ID_Onguent`) REFERENCES `onguent` (`ID_Onguent`);

--
-- Contraintes pour la table `neccesite`
--
ALTER TABLE `neccesite`
  ADD CONSTRAINT `FK_neccesite_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`),
  ADD CONSTRAINT `FK_neccesite_ID_Onguent` FOREIGN KEY (`ID_Onguent`) REFERENCES `onguent` (`ID_Onguent`),
  ADD CONSTRAINT `FK_neccesite_ID_Potion` FOREIGN KEY (`ID_Potion`) REFERENCES `potion` (`ID_Potion`);

--
-- Contraintes pour la table `possede`
--
ALTER TABLE `possede`
  ADD CONSTRAINT `FK_possede_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`),
  ADD CONSTRAINT `FK_possede_ID_Stock` FOREIGN KEY (`ID_Stock`) REFERENCES `stock` (`ID_Stock`);

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `FK_realise_ID_CmdFournisseur` FOREIGN KEY (`ID_CmdFournisseur`) REFERENCES `cmd_fournisseur` (`ID_CmdFournisseur`),
  ADD CONSTRAINT `FK_realise_ID_Fournisseur` FOREIGN KEY (`ID_Fournisseur`) REFERENCES `fournisseur` (`ID_Fournisseur`);

--
-- Contraintes pour la table `se_compose`
--
ALTER TABLE `se_compose`
  ADD CONSTRAINT `FK_se_compose_ID_Ingredient` FOREIGN KEY (`ID_Ingredient`) REFERENCES `ingredient` (`ID_Ingredient`),
  ADD CONSTRAINT `FK_se_compose_ID_Potion` FOREIGN KEY (`ID_Potion`) REFERENCES `potion` (`ID_Potion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
