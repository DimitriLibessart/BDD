DELIMITER |
CREATE PROCEDURE ajout_recette(
 IN NomInventeur VARCHAR(255),
 IN NumeroPermis INT(11),
 IN Exisant BOOLEAN,
 IN NomRecette VARCHAR(255),
 IN NomDiluant VARCHAR(255),
 IN PrixPotion INT(11),
 IN TemperaturePotion INT(11),
 IN NomIngredient1 VARCHAR(255),
 IN NomUnite1 VARCHAR(255),
 IN Quantite1 INT(11),
 IN durée1 INT(11),
 IN NomIngredient2 VARCHAR(255),
 IN NomUnite2 VARCHAR(255),
 IN Quantite2 INT(11),
 IN durée2 INT(11),
 IN NomIngredient3 VARCHAR(255),
 IN NomUnite3 VARCHAR(255),
 IN Quantite3 INT(11),
 IN durée3 INT(11))

SET @ninv = NomInventeur;
SET @permis = NumeroPermis;
SET @exi = Exisant;
SET @nrec = NomRecette;
SET @ndil = NomDiluant;
SET @prix = PrixPotion;
SET @Ptemp = TemperaturePotion;
SET @ning1 = NomIngredient1;
SET @quant = Quantite1;
SET @duree = durée1;
SET @unit1 = NomUnite1;
SET @ning2 = NomIngredient2;
SET @quant = Quantite2;
SET @duree = durée2;
SET @unit2 = NomUnite2;
SET @ning3 = NomIngredient3;
SET @quant = Quantite3;
SET @duree = durée3;
SET @unit3 = NomUnite3;

INSERT INTO `Inventeur`  (`Nom_Inventeur`, `Numero_Permis_Inventeur`) 
VALUES (@ninv, @permis)
WHERE @exi = '1';
	
INSERT INTO `recette` (Nom_recette) 
VALUES (@nrec);


SET @dil = ( SELECT ID_Diluant
	FROM diluant
	WHERE @ndil = Nom_Diluant
	);;
	
SET @inv = (SELECT ID_Inventeur
	From inventeur
	Where @ninv = Nom_Inventeur	
	);;
	
INSERT INTO `Potion` (`Nom_Potion`, `Prix_Potion`,`ID_Diluant`,`Temperature_Potion`,`ID_Inventeur`)
VALUES (@nrec, @prix, @dil, @Ptemp, @inv );



	
SET @pot = (SELECT ID_Potion
	FROM potion 
	WHERE @nrec = Nom_Potion);;
	
SET @unit = (SELECT ID_Unite
	FROM unite
	WHERE @unit1 = Nom_Unité);;

SET @ing = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE Nom_Ingredient = @ning1 );;	
	
INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
VALUES (@duree, @ing, @pot, @unit, @quant);
	
INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
VALUES (@ing, @pot, @quant, @unit);
	
	
	
	
	
SET @unit = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE @unit2 = Nom_Unité);;
	
SET @ing = (SELECT ID_Unite
	FROM unite
	WHERE @ning2 = Nom_Ingredient);;
	
INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
VALUES (@duree, @ing, @pot, @unit, @quant);

INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
VALUES (@ing, @pot, @quant, @unit);
	
	
	
	
SET @unit = (SELECT ID_Unite
	FROM unite
	WHERE @unit3 = Nom_Unité);;
	
SET @ing = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE @ning3 = Nom_Ingredient);;
	
INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
VALUES (@duree, @ing, @pot, @unit, @quant);

INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
VALUES (@ing, @pot, @quant, @unit);
	

END |
DELIMITER ; 