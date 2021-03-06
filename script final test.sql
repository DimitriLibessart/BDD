#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        ID_Client     int (11) Auto_increment  NOT NULL ,
        Nom_Client    Varchar (25) ,
        Prenom_Client Varchar (25) ,
        PRIMARY KEY (ID_Client )
)ENGINE=InnoDB;

INSERT INTO `Client` (`ID_Client`, `Nom_Client`, `Prenom_Client`) VALUES
(1, 'Liberte', 'Nicolas'),
(2, 'Labonte', 'Roger'),
(3, 'Labbes', 'Yves'),
(4, 'Primeau', 'William'),
(5, 'Goudreau', 'Lucas');


#------------------------------------------------------------
# Table: CmdClient
#------------------------------------------------------------

CREATE TABLE CmdClient(
        ID_Cmd_Client int (11) Auto_increment  NOT NULL ,
        ID_Client     Int NOT NULL ,
	Etat_Cmd      Varchar (25) ,
        PRIMARY KEY (ID_Cmd_Client )
)ENGINE=InnoDB;

INSERT INTO `CmdClient` (`ID_Cmd_Client`, `ID_Client`,`Etat_Cmd`) VALUES
(1, '4','En cours'),
(2, '2','En cours'),
(3, '1','En cours'),
(4, '5','En cours'),
(5, '3','En cours');


#------------------------------------------------------------
# Table: Ingredient
#------------------------------------------------------------

CREATE TABLE Ingredient(
        ID_Ingredient         int (11) Auto_increment  NOT NULL ,
        Nom_Ingredient        Varchar (50) ,
        Poids_Ingredient      Int ,
        Prix_Ingredient       Int ,
        Peremption_Ingredient Int ,
        PRIMARY KEY (ID_Ingredient )
)ENGINE=InnoDB;

INSERT INTO `ingredient` (`ID_Ingredient`, `Nom_Ingredient`, `Poids_Ingredient`, `Prix_Ingredient`,`Peremption_Ingredient`) VALUES
(1, 'aigue-marine', 47, 20,7),
(2, 'alexandrite', 77, 20,7),
(3, 'alzurite', 12, 15,7),
(4, 'chrysoberyl', 81, 14,7),
(5, 'grenat rouge', 17, 15,7),
(6, 'grenat violet', 91, 12,7),
(7, 'irtios', 70, 13,7),
(8, 'ivoire', 54, 12,7),
(9, 'lapis lazuli', 100, 16,7),
(10, 'nephrite', 58, 13,7),
(11, 'orprase', 84, 12,7),
(12, 'peridot', 55, 15,7),
(13, 'perle doree', 28, 18,7),
(14, 'perle noire', 40, 12,7),
(15, 'pierre de lune', 80, 15,7),
(16, 'quartz bleu', 54, 11,7),
(17, 'sardonyx', 70, 18,7),
(18, 'spinelle vert sombre', 21, 12,7),
(19, 'spodumene', 12, 20,7),
(20, 'topaze jaune d or', 57, 15,7),
(21, 'tourmaline blanche', 96, 11,7),
(22, 'zircon', 88, 13,7),
(23, 'amulette d armure naturel', 92, 14,7),
(24, 'anneau du belier', 26, 14,7),
(25, 'baguette de sagesse du hi', 61, 20,7),
(26, 'botte de sept lieu', 96, 13,7),
(27, 'ecu en acier', 67, 11,7),
(28, 'elixir de nage', 71, 20,7),
(29, 'epee batarde', 11, 17,7),
(30, 'epee courte', 77, 12,7),
(31, 'huile de tenebres', 78, 14,7),
(32, 'masse d arme lourde', 16, 18,7),
(33, 'onguent d intempolarite', 46, 13,7),
(34, 'parchemin divin', 50, 20,7),
(35, 'potion profande', 82, 18,7),
(36, 'potion d agrandissement', 40, 16,7),
(37, 'potion de flou', 35, 16,7),
(38, 'potion de grace feline', 49, 11,7),
(39, 'potion de regain d assura', 40, 16,7),
(40, 'potion de ruse du renard', 42, 20,7),
(41, 'potion de sagesse de hibo', 71, 18,7),
(42, 'urgosh nain', 76, 18,7),
(43, 'antidote', 40, 14,7),
(44, 'arbalete legere de maitre', 67, 17,7),
(45, 'arc court de maitre', 72, 20,7),
(46, 'armure a plaques', 26, 13,7),
(47, 'armure de cuir cloutee de', 20, 12,7),
(48, 'batonnet fumigene', 98, 20,7),
(49, 'cadenas simple', 14, 18,7),
(50, 'carreaux', 56, 10,7),
(51, 'chemise de maille', 21, 11,7),
(52, 'cimeterre de maitre', 67, 19,7),
(53, 'eau benite', 50, 18,7),
(54, 'ecu en acier de maitre', 77, 20,7),
(55, 'ecu en ebenite', 63, 16,7),
(56, 'epee longue de maitre', 95, 16,7),
(57, 'gourdin de maitre', 33, 14,7),
(58, 'grande hanche de maitre', 13, 19,7),
(59, 'hache de guerre naine de ', 66, 18,7),
(60, 'hallebarde de maitre', 91, 16,7),
(61, 'harnois', 56, 20,7),
(62, 'menottes de qualite suppe', 40, 13,7),
(63, 'pic de guerre leger de ma', 96, 16,7),
(64, 'pierre a tonnerre', 97, 10,7),
(65, 'rapiere de maitre', 29, 12,7),
(66, 'rondache en ebenite', 68, 17,7),
(67, 'serpe de maitre', 10, 19,7),
(68, 'elexir secret', 87, 15,7),
(69, 'poudre secrete', 74, 10,7),
(70, 'mineral secret', 82,10,7),
(71, 'branche de sauge maléfiques', 59,9,7),
(72, 'ongles de lutin', 64,11,7),
(73, 'plumes de fenix', 45,19,7),
(74, 'cheveux de sorcière', 10,9,7);


#------------------------------------------------------------
# Table: Fournisseur
#------------------------------------------------------------

CREATE TABLE Fournisseur(
        ID_Fournisseur  int (11) Auto_increment  NOT NULL ,
        Nom_Fournisseur Varchar (25) ,
        PRIMARY KEY (ID_Fournisseur )
)ENGINE=InnoDB;

INSERT INTO `Fournisseur` (`ID_Fournisseur`, `Nom_Fournisseur`) VALUES
(1, '24hpotion'),
(2, 'Potpot'),
(3, 'ChronoMagic'),
(4, 'Balaizone'),
(5, 'Intermage');


#------------------------------------------------------------
# Table: CmdFournisseur
#------------------------------------------------------------

CREATE TABLE CmdFournisseur(
        ID_Cmd_Fournisseur int (11) Auto_increment  NOT NULL ,
        ID_Fournisseur     Int NOT NULL ,
        PRIMARY KEY (ID_Cmd_Fournisseur )
)ENGINE=InnoDB;

INSERT INTO `CmdFournisseur` (`ID_Cmd_Fournisseur`, `ID_Fournisseur`) VALUES
(1, '2'),
(2, '4'),
(3, '5'),
(4, '1'),
(5, '3');


#------------------------------------------------------------
# Table: Recipient
#------------------------------------------------------------

CREATE TABLE Recipient(
        ID_Recipient   int (11) Auto_increment  NOT NULL ,
        Nom_Recipient  Varchar (25) ,
        Prix_Recipient Int ,
        PRIMARY KEY (ID_Recipient )
)ENGINE=InnoDB;

INSERT INTO `Recipient` (`ID_Recipient`, `Nom_Recipient`, `Prix_Recipient`) VALUES
(1, 'Tube', 10),
(2, 'Fiole', 20),
(3, 'Pot', 30);


#------------------------------------------------------------
# Table: Stock
#------------------------------------------------------------

CREATE TABLE Stock(
        ID_stock        int (11) Auto_increment  NOT NULL ,
        ID_Ingredient   Int NOT NULL ,
        Quantite_Stock  Int ,
        Fraicheur_Stock Int ,
        PRIMARY KEY (ID_stock )
)ENGINE=InnoDB;

INSERT INTO `Stock` (`ID_Stock`,`ID_Ingredient`,`Quantite_Stock`, `Fraicheur_Stock`) VALUES
(1, 39, 4,0),
(2, 28, 6,0),
(3, 11, 13,0),
(4, 5, 22,0),
(5, 23, 5,0),
(6, 20, 1,2),
(7,36,24,0),
(8,2,29,0),
(9,4,27,0),
(10,9,16,0),
(11,27,35,0),
(12,6,15,0),
(13,8,28,0),
(14,16,34,0),
(15,21,36,0),
(16,42,25,0),
(17,37,38,0),
(18,10,6,0),
(19,21,25,0),
(20,34,9,0);



#------------------------------------------------------------
# Table: Onguent
#------------------------------------------------------------

CREATE TABLE Onguent(
        ID_Onguent   int (11) NOT NULL ,
        Nom_Onguent  Varchar (50) ,
        Prix_Onguent Int ,
        PRIMARY KEY (ID_Onguent )
)ENGINE=InnoDB;

INSERT INTO `Onguent` (`ID_Onguent`,`Nom_Onguent`, `Prix_Onguent`) VALUES
(1,'Onguent d arme magique','474'),
(2,'Onguent de bénédiction d arme','799'),
(3,'Onguent de gourdin magique','481'),
(4,'Onguent de pierre magique','345'),
(5,'Onguent de ténèbres','658'),
(6,'Onguent d agrandissement','975'),
(7,'Onguent d aide','940'),
(8,'Onguent d alignement indétectable','376'),
(9,'Onguent d armure de mage','124'),
(10,'Onguent de bouclier de la foi','436'),
(11,'Onguent de délivrance de la paralysie','963'),
(12,'Onguent de détection faussée','525'),
(13,'Onguent de flou','440'),
(14,'Onguent de force de taureau','238'),
(15,'Onguent de grâce féline','149'),
(16,'Onguent de lévitation','869'),
(17,'Onguent de morsure magique','326'),
(18,'Onguent de passage sans traces','634'),
(19,'Onguent de pattes d araignée','473'),
(20,'Onguent de peau d écorce','236'),
(21,'Onguent de protection contre la loi','681'),
(22,'Onguent de protection contre le bien','210'),
(23,'Onguent de protection contre le chaos','145'),
(24,'Onguent de protection contre le mal','936'),
(25,'Onguent de protection contre les projectiles','760'),
(26,'Onguent de ralentissement du poison','220'),
(27,'Onguent de rapetissement','533'),
(28,'Onguent de regain d assurance','430'),
(29,'Onguent de résistances aux énergies destructives','113'),
(30,'Onguent de restauration partielle','805'),
(31,'Onguent de ruse du renard','716'),
(32,'Onguent de sagesse du hibou','821'),
(33,'Onguent de sanctuaire','991'),
(34,'Onguent de saut','832'),
(35,'Onguent de soins légers','764'),
(36,'Onguent de soins modérés','652'),
(37,'Onguent de splendeur de l aigle','552'),
(38,'Onguent de vision dans le noir','436'),
(39,'Onguent d endurance aux énergies destructives','445'),
(40,'Onguent d endurance de l ours','473'),
(41,'Onguent d invisibilité pour les animaux','335'),
(42,'Onguent d invisibilité pour les morts-vivants','331'),
(43,'Onguent d invisibilité','645');

#------------------------------------------------------------
# Table: Diluant
#------------------------------------------------------------

CREATE TABLE Diluant(
        ID_Diluant  int (11) Auto_increment  NOT NULL ,
        Nom_Diluant Varchar (50) ,
        PRIMARY KEY (ID_Diluant )
)ENGINE=InnoDB;

INSERT INTO `Diluant` (`ID_Diluant`, `Nom_Diluant`) VALUES
(1,'Biere'),
(2,'Eau'),
(3,'Jus de fruit'),
(4,'Vin');


#------------------------------------------------------------
# Table: Potion
#------------------------------------------------------------

CREATE TABLE Potion(
        ID_Potion          int (11) Auto_increment  NOT NULL ,
        Nom_Potion         Varchar (50) ,
        Prix_Potion        Int ,
        ID_Diluant         Int NOT NULL ,
        Temperature_Potion Int ,
        ID_Inventeur       Int NOT NULL ,
        PRIMARY KEY (ID_Potion )
)ENGINE=InnoDB;

INSERT INTO `Potion` (`ID_Potion`, `Nom_Potion`, `Prix_Potion`,`ID_Diluant`,`Temperature_Potion`,`ID_Inventeur`) VALUES
(1,'Huile d arme magique','474','4','93','3'),
(2,'Huile de bénédiction d arme','799','3','55','4'),
(3,'Huile de gourdin magique','481','2','80','2'),
(4,'Huile de pierre magique','345','3','93','3'),
(5,'Huile de ténèbres','658','2','55','5'),
(6,'Potion d agrandissement','975','4','80','3'),
(7,'Potion d aide','940','3','93','4'),
(8,'Potion d alignement indétectable','376','1','55','5'),
(9,'Potion d armure de mage','124','3','80','1'),
(10,'Potion de bouclier de la foi','436','4','93','1'),
(11,'Potion de délivrance de la paralysie','963','4','55','5'),
(12,'Potion de détection faussée','525','4','80','2'),
(13,'Potion de flou','440','1','93','1'),
(14,'Potion de force de taureau','238','3','55','5'),
(15,'Potion de grâce féline','149','3','80','3'),
(16,'Potion de lévitation','869','3','93','1'),
(17,'Potion de morsure magique','326','3','55','2'),
(18,'Potion de passage sans traces','634','1','80','5'),
(19,'Potion de pattes d araignée','473','2','93','3'),
(20,'Potion de peau d écorce','236','4','55','1'),
(21,'Potion de protection contre la loi','681','4','80','5'),
(22,'Potion de protection contre le bien','210','1','93','2'),
(23,'Potion de protection contre le chaos','145','1','55','3'),
(24,'Potion de protection contre le mal','936','1','80','2'),
(25,'Potion de protection contre les projectiles','760','4','93','1'),
(26,'Potion de ralentissement du poison','220','4','83','2'),
(27,'Potion de rapetissement','533','4','89','4'),
(28,'Potion de regain d assurance','430','3','79','1'),
(29,'Potion de résistances aux énergies destructives','113','4','81','5'),
(30,'Potion de restauration partielle','805','4','81','3'),
(31,'Potion de ruse du renard','716','1','76','4'),
(32,'Potion de sagesse du hibou','821','3','10','5'),
(33,'Potion de sanctuaire','991','2','55','5'),
(34,'Potion de saut','832','1','51','1'),
(35,'Potion de soins légers','764','1','88','2'),
(36,'Potion de soins modérés','652','3','69','2'),
(37,'Potion de splendeur de l aigle','552','3','85','2'),
(38,'Potion de vision dans le noir','436','3','99','5'),
(39,'Potion d endurance aux énergies destructives','445','4','91','2'),
(40,'Potion d endurance de l ours','473','3','68','5'),
(41,'Potion d invisibilité pour les animaux','335','4','81','2'),
(42,'Potion d invisibilité pour les morts-vivants','331','1','91','3'),
(43,'Potion d invisibilité','645','3','77','3');

#------------------------------------------------------------
# Table: recette
#------------------------------------------------------------

CREATE TABLE recette(
	ID_Recette int(11) Auto_increment NOT NULL,
	Nom_Recette Varchar (25),
	Statue BOOLEAN ,
	Etat BOOLEAN,
	ID_Potion int (11) NOT NULL,
	ID_Potion int (11) NOT NULL,
	PRIMARY KEY (ID_Recette)
);

#------------------------------------------------------------
# Table: Inventeur
#------------------------------------------------------------

CREATE TABLE Inventeur(
        ID_Inventeur            int (11) Auto_increment  NOT NULL ,
        Nom_Inventeur           Varchar (25) ,
        Numero_Permis_Inventeur Int ,
        PRIMARY KEY (ID_Inventeur )
)ENGINE=InnoDB;

INSERT INTO `Inventeur` (`ID_Inventeur`, `Nom_Inventeur`, `Numero_Permis_Inventeur`) VALUES
(1, 'Panoramix', 8034),
(2, 'Gandalf', 3965),
(3, 'Elias de Kelliwic h', 2783),
(4, 'Merlin', 2931),
(5, 'Severus Rogue', 3403);


#------------------------------------------------------------
# Table: Unite
#------------------------------------------------------------

CREATE TABLE Unite(
        ID_Unite  int (11) Auto_increment  NOT NULL ,
        Nom_Unite Varchar (25) ,
        PRIMARY KEY (ID_Unite )
)ENGINE=InnoDB;

INSERT INTO `Unite` (`ID_Unite`, `Nom_Unite`) VALUES

(1,'Pincee'),
(2,'Soufle'),
(3,'Nuage'),
(4,'Poignee'),
(5,'Once');


#------------------------------------------------------------
# Table: comprend
#------------------------------------------------------------

CREATE TABLE comprend(
        ID_stock           Int NOT NULL ,
        ID_Cmd_Fournisseur Int NOT NULL ,
        Quantite           Int NOT NULL ,
        PRIMARY KEY (ID_Cmd_Fournisseur ,ID_stock )
)ENGINE=InnoDB;

INSERT INTO `comprend` (`ID_Stock`,`ID_Cmd_Fournisseur`,`Quantite`) VALUES
(1, '2', '6'),
(8, '1', '12'),
(16, '4', '9'),
(4, '3', '15'),
(10,  '5', '22');


#------------------------------------------------------------
# Table: compose
#------------------------------------------------------------

CREATE TABLE compose(
        ID_Ingredient Int NOT NULL ,
        ID_Onguent    Int NOT NULL ,
        Quantite      Int NOT NULL ,
        ID_Unite      Int NOT NULL ,
        PRIMARY KEY (ID_Onguent ,ID_Ingredient ,ID_Unite)
)ENGINE=InnoDB;

INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`) VALUES
(17,1,4,1),
(71,1,3,3),
(56,1,4,2),
(13,2,1,1),
(30,2,5,2),
(51,2,1,3),
(13,3,4,3),
(29,3,2,3),
(50,3,2,3),
(17,4,5,1),
(26,4,4,1),
(44,4,5,3),
(16,5,4,3),
(72,5,2,1),
(61,5,2,2),
(14,6,4,2),
(41,6,4,1),
(61,6,3,1),
(7,8,3,3),
(23,7,1,1),
(51,7,1,3),
(5,8,4,1),
(30,8,3,1),
(44,8,3,1),
(6,9,1,2),
(42,9,5,1),
(59,9,3,3),
(9,10,2,1),
(30,10,1,1),
(47,10,2,1),
(19,11,5,1),
(33,11,5,3),
(61,11,4,2),
(6,12,5,3),
(34,12,1,3),
(63,12,3,2),
(10,13,1,1),
(27,13,5,2),
(49,13,4,1),
(4,14,1,3),
(29,14,3,2),
(49,14,3,2),
(3,15,4,1),
(23,15,4,3),
(43,15,1,3),
(13,16,4,2),
(34,16,1,1),
(46,16,1,1),
(20,17,4,3),
(73,17,5,1),
(56,17,5,3),
(1,18,2,1),
(72,18,3,3),
(54,18,1,2),
(4,19,5,3),
(74,19,5,3),
(59,19,1,1),
(5,20,3,2),
(30,20,4,2),
(55,20,1,3),
(4,21,2,1),
(74,21,5,3),
(54,21,4,2),
(5,22,4,2),
(27,22,3,1),
(62,22,1,1),
(68,22,4,2),
(8,23,3,1),
(25,23,5,2),
(55,23,2,1),
(13,24,1,1),
(74,24,5,2),
(63,24,2,2),
(15,25,2,3),
(71,25,4,1),
(64,25,2,2),
(69,25,4,2),
(7,26,1,3),
(25,26,4,3),
(47,26,5,3),
(10,27,3,3),
(24,27,4,2),
(63,27,1,2),
(19,28,4,2),
(26,28,1,1),
(59,28,1,3),
(9,29,5,3),
(25,29,4,3),
(48,29,4,1),
(2,30,3,3),
(23,30,1,2),
(57,30,3,1),
(17,31,1,2),
(24,31,1,1),
(51,31,1,1),
(9,32,3,2),
(26,32,2,3),
(50,32,1,2),
(16,33,4,1),
(23,33,2,2),
(48,33,3,2),
(19,34,3,3),
(25,34,1,3),
(43,34,5,3),
(10,35,1,2),
(55,35,3,2),
(58,35,2,3),
(17,36,2,1),
(74,36,2,1),
(67,36,1,1),
(17,37,2,1),
(32,37,4,2),
(55,37,1,3),
(17,38,2,3),
(35,38,3,2),
(45,38,1,1),
(19,39,2,2),
(28,39,3,3),
(58,39,3,2),
(2,40,2,1),
(28,40,2,2),
(55,40,2,1),
(16,41,3,2),
(42,41,2,3),
(53,41,2,1),
(13,42,1,3),
(42,42,1,3),
(46,42,2,3),
(14,43,3,3),
(41,43,3,2),
(56,43,4,1);


#------------------------------------------------------------
# Table: contient
#------------------------------------------------------------

CREATE TABLE contient(
        Duree      Int NOT NULL ,
        ID_Ingredient Int NOT NULL ,
        ID_Potion     Int NOT NULL ,
        ID_Unite      Int NOT NULL ,
        Quantite      Int NOT NULL ,
        PRIMARY KEY (ID_Potion ,ID_Ingredient ,ID_Unite)
)ENGINE=InnoDB;

INSERT INTO `contient` (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`) VALUES
( 13, 17, 1, 1, 4),
(9, 71, 1, 3, 3),
(8, 56, 1, 2, 4),
(12, 13, 2, 1, 1),
(11, 30, 2, 2, 5),
(26, 51, 2, 3, 1),
(10, 13, 3, 3, 4),
(0, 29, 3, 3, 2),
( 8, 50, 3, 3, 2),
(10, 17, 4, 1, 5),
( 8, 26, 4, 1, 4),
(24, 44, 4, 3, 5),
( 6, 16, 5, 3, 4),
( 14, 72, 5, 1, 2),
(24, 61, 5, 2, 2),
( 7, 14, 6, 2, 4),
( 4, 41, 6, 1, 4),
( 34, 61, 6, 1, 3),
( 6, 7, 7, 3, 3),
(24, 23, 7, 1, 1),
( 0, 51, 7, 3, 1),
( 12, 5, 8, 1, 4),
( 7, 30, 8, 1, 3),
(31, 44, 8, 1, 3),
( 20, 6, 9, 2, 1),
( 18, 42, 9, 1, 5),
( 5, 59, 9, 3, 3),
( 6, 9, 10, 1, 2),
( 7, 30, 10, 1, 1),
( 26, 47, 10, 1, 2),
( 16, 19, 11, 1, 5),
( 16, 33, 11, 3, 5),
( 5, 61, 11, 2, 4),
( 23, 6, 12, 3, 5),
( 1, 34, 12, 3, 1),
( 0, 63, 12, 2, 3),
( 17, 10, 13, 1, 1),
( 0, 27, 13, 2, 5),
( 38, 49, 13, 1, 4),
( 20, 4, 14, 3, 1),
( 19, 29, 14, 2, 3),
( 0, 49, 14, 2, 3),
( 18, 3, 15, 1, 4),
( 23, 23, 15, 3, 4),
( 37, 43, 15, 3, 1),
( 13, 13, 16, 2, 4),
( 0, 34, 16, 1, 1),
( 0, 46, 16, 1, 1),
( 5, 20, 17, 3, 4),
( 1, 73, 17, 1, 5),
( 4, 56, 17, 3, 5),
( 3, 1, 18, 1, 2),
( 11, 72, 18, 3, 3),
( 2, 54, 18, 2, 1),
( 0, 4, 19, 3, 5),
( 15, 74, 19, 3, 5),
( 18, 59, 19, 1, 1),
( 0, 5, 20, 2, 3),
( 18, 30, 20, 2, 4),
( 0, 55, 20, 3, 1),
( 25, 4, 21, 1, 2),
( 13, 74, 21, 3, 5),
( 36, 54, 21, 2, 4),
( 19, 5, 22, 2, 4),
( 1, 27, 22, 1, 3),
( 26, 62, 22, 1, 1),
( 0, 68, 22, 2, 4),
( 8, 8, 23, 1, 3),
( 23, 25, 23, 2, 5),
( 0, 55, 23, 1, 2),
( 20, 13, 24, 1, 1),
( 0, 74, 24, 2, 5),
( 18, 63, 24, 2, 2),
( 11, 15, 25, 3, 2),
( 19, 71, 25, 1, 4),
( 3, 64, 25, 2, 2),
( 0, 69, 25, 2, 4),
( 0, 7, 26, 3, 1),
( 15, 25, 26, 3, 4),
( 24, 47, 26, 3, 5),
( 21, 10, 27, 3, 3),
( 0, 24, 27, 2, 4),
( 41, 63, 27, 2, 1),
( 15, 19, 28, 2, 4),
( 4, 26, 28, 1, 1),
( 30, 59, 28, 3, 1),
( 16, 9, 29, 3, 5),
( 6, 25, 29, 3, 4),
( 46, 48, 29, 1, 4),
( 0, 2, 30, 3, 3),
( 0, 23, 30, 2, 1),
( 0, 57, 30, 1, 3),
( 4, 17, 31, 2, 1),
( 20, 24, 31, 1, 1),
( 35, 51, 31, 1, 1),
( 12, 9, 32, 2, 3),
( 12, 26, 32, 3, 2),
( 9, 50, 32, 2, 1),
( 18, 16, 33, 1, 4),
( 9, 23, 33, 2, 2),
( 43, 48, 33, 2, 3),
( 22, 19, 34, 3, 3),
( 7, 25, 34, 3, 1),
( 4, 43, 34, 3, 5),
( 22, 10, 35, 2, 1),
( 0, 55, 35, 2, 3),
( 38, 58, 35, 3, 2),
( 13, 17, 36, 1, 2),
( 10, 74, 36, 1, 2),
( 0, 67, 36, 1, 1),
(11, 17, 37, 1, 2),
( 7, 32, 37, 2, 4),
( 40, 55, 37, 3, 1),
( 25, 17, 38, 3, 2),
( 17, 35, 38, 2, 3),
( 11, 45, 38, 1, 1),
( 10, 19, 39, 2, 2),
( 0, 28, 39, 3, 3),
( 16, 58, 39, 2, 3),
( 13, 2, 40, 1, 2),
( 1, 28, 40, 2, 2),
( 0, 55, 40, 1, 2),
( 20, 16, 41, 2, 3),
( 4, 42, 41, 3, 2),
( 22, 53, 41, 1, 2),
( 24, 13, 42, 3, 1),
( 0, 42, 42, 3, 1),
( 9, 46, 42, 3, 2),
( 23, 14, 43, 3, 3),
( 21, 41, 43, 2, 3),
( 14, 56, 43, 1, 4);

#------------------------------------------------------------
# Table: comporte
#------------------------------------------------------------

CREATE TABLE comporte(
        ID_Onguent    Int NOT NULL ,
        ID_Cmd_Client Int NOT NULL ,
        Quantite      Int NOT NULL ,
        PRIMARY KEY (ID_Onguent ,ID_Cmd_Client)
)ENGINE=InnoDB;

INSERT INTO `comporte` ( `ID_Onguent`,`ID_Cmd_Client`, `Quantite`) VALUES
(1, '1', '6'),
(3, '4', '2'),
(6, '3', '9'),
(7, '2', '14'),
(9, '5', '8');


#------------------------------------------------------------
# Table: concoit
#------------------------------------------------------------

CREATE TABLE concoit(
        ID_Cmd_Client Int NOT NULL ,
        ID_Potion     Int NOT NULL ,
        ID_Recipient  Int NOT NULL ,
        Quantite      Int NOT NULL ,
        PRIMARY KEY (ID_Potion ,ID_Cmd_Client ,ID_Recipient )
)ENGINE=InnoDB;

INSERT INTO `concoit` (`ID_Cmd_Client`, `ID_Potion`, `ID_Recipient`,`Quantite`) VALUES
(1, '29', '3','4'),
(2, '12', '1','2'),
(3, '32', '1','11'),
(4, '41', '2','8'),
(5, '6', '3','6');

#------------------------------------------------------------
# Table: Dispose
#------------------------------------------------------------

CREATE TABLE Dispose(
        ID_Stock      Int NOT NULL ,
        ID_Cmd_Client Int NOT NULL ,
        Quantite      Int NOT NULL ,
        PRIMARY KEY (ID_Stock ,ID_Cmd_Client )
)ENGINE=InnoDB;

INSERT INTO `Dispose` (`ID_Stock`,`ID_Cmd_Client`,`Quantite`) VALUES
(1, '2', '2'),
(5, '1', '4'),
(12, '4', '4'),
(8, '3', '3'),
(3,  '5', '5');








ALTER TABLE CmdClient ADD CONSTRAINT FK_CmdClient_ID_Client FOREIGN KEY (ID_Client) REFERENCES Client(ID_Client);
ALTER TABLE CmdFournisseur ADD CONSTRAINT FK_CmdFournisseur_ID_Fournisseur FOREIGN KEY (ID_Fournisseur) REFERENCES Fournisseur(ID_Fournisseur);
ALTER TABLE Stock ADD CONSTRAINT FK_Stock_ID_Ingredient FOREIGN KEY (ID_Ingredient) REFERENCES Ingredient(ID_Ingredient);
ALTER TABLE Potion ADD CONSTRAINT FK_Potion_ID_Inventeur FOREIGN KEY (ID_Inventeur) REFERENCES Inventeur(ID_Inventeur);
ALTER TABLE Potion ADD CONSTRAINT FK_Potion_ID_Dilaunt FOREIGN KEY (ID_Diluant) REFERENCES Diluant(ID_Diluant);
ALTER TABLE onguent ADD CONSTRAINT PK_Onguent_ID_Onguent FOREIGN KEY (ID_Onguent) REFERENCES Potion(ID_Potion);
ALTER TABLE recette ADD CONSTRAINT FK_recette_ID_Onguent FOREIGN KEY (ID_Onguent) REFERENCES Onguent(ID_Onguent);
ALTER TABLE recette ADD CONSTRAINT FK_recette_ID_Potion FOREIGN KEY (ID_Potion) REFERENCES potion(ID_Potion) ON DELETE CASCADE;
ALTER TABLE comprend ADD CONSTRAINT FK_comprend_ID_Cmd_Fournisseur FOREIGN KEY (ID_Cmd_Fournisseur) REFERENCES CmdFournisseur(ID_Cmd_Fournisseur);
ALTER TABLE comprend ADD CONSTRAINT FK_comprend_ID_stock FOREIGN KEY (ID_stock) REFERENCES Stock(ID_stock);
ALTER TABLE compose ADD CONSTRAINT FK_compose_ID_Onguent FOREIGN KEY (ID_Onguent) REFERENCES Onguent(ID_Onguent);
ALTER TABLE compose ADD CONSTRAINT FK_compose_ID_Ingredient FOREIGN KEY (ID_Ingredient) REFERENCES Ingredient(ID_Ingredient);
ALTER TABLE compose ADD CONSTRAINT FK_compose_ID_Unite FOREIGN KEY (ID_Unite) REFERENCES Unite(ID_Unite);
ALTER TABLE contient ADD CONSTRAINT FK_contient_ID_Potion FOREIGN KEY (ID_Potion) REFERENCES Potion(ID_Potion) ON DELETE CASCADE;
ALTER TABLE contient ADD CONSTRAINT FK_contient_ID_Ingredient FOREIGN KEY (ID_Ingredient) REFERENCES Ingredient(ID_Ingredient);
ALTER TABLE contient ADD CONSTRAINT FK_contient_ID_Unite FOREIGN KEY (ID_Unite) REFERENCES Unite(ID_Unite);
ALTER TABLE dispose ADD CONSTRAINT FK_dispose_ID_stock FOREIGN KEY (ID_stock) REFERENCES Stock(ID_stock);
ALTER TABLE dispose ADD CONSTRAINT FK_dispose_ID_Cmd_Client FOREIGN KEY (ID_Cmd_Client) REFERENCES CmdClient(ID_Cmd_Client);
ALTER TABLE comporte ADD CONSTRAINT FK_comporte_ID_Onguent FOREIGN KEY (ID_Onguent) REFERENCES Onguent(ID_Onguent);
ALTER TABLE comporte ADD CONSTRAINT FK_comporte_ID_Cmd_Client FOREIGN KEY (ID_Cmd_Client) REFERENCES CmdClient(ID_Cmd_Client);
ALTER TABLE concoit ADD CONSTRAINT FK_concoit_ID_Potion FOREIGN KEY (ID_Potion) REFERENCES Potion(ID_Potion) ON DELETE CASCADE;
ALTER TABLE concoit ADD CONSTRAINT FK_concoit_ID_Cmd_Client FOREIGN KEY (ID_Cmd_Client) REFERENCES CmdClient(ID_Cmd_Client);
ALTER TABLE concoit ADD CONSTRAINT FK_concoit_ID_Recipient FOREIGN KEY (ID_Recipient) REFERENCES Recipient(ID_Recipient);