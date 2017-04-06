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

SET @exi = Exisant;
SET @ninv = NomInventeur;
SET @permis = NumeroPermis;
 
INSERT INTO `Inventeur`  (`Nom_Inventeur`, `Numero_Permis_Inventeur`) 
VALUES (@ninv, @permis)
WHERE @exi = '1';


	
	SET @inv = (SELECT ID_Inventeur
	From inventeur
	Where Nominventeur = Nom_Inventeur	
	);;

	
	SET @dil = ( SELECT ID_Diluant
	FROM diluant
	WHERE Nom_Diluant = NomDiluant
	);;

	SET @nrec = NomRecette;
	
	INSERT INTO `recette` (Nom_recette) 
	VALUES (@nrec);
	
	SET @prix = PrixPotion;
	SET @Ptemp = TemperaturePotion
	
	INSERT INTO `Potion` (`Nom_Potion`, `Prix_Potion`,`ID_Diluant`,`Temperature_Potion`,`ID_Inventeur`)
	VALUES (@nrec, PrixPotion, @dil, @Ptemp, @inv );
	
	SET @pot = (SELECT ID_Potion
	FROM potion 
	WHERE NomRecette = Nom_Potion
	);;
	
	SET @unit = (SELECT ID_Unite
	FROM unite
	WHERE NomUnite1 = Nom_Unité);;
	
	SET @ing = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE Nom_Ingredient = NomIngredient1 );;	
	
	SET @quant = Quantite1;
	SET @duree = durée1;
	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (@duree, @ing, @pot, @unit, @quant);
	
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, @quant, @unit);
	
	
	
	
	
	SET @unit = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE NomUnite2 = Nom_Unité);;
	
	SET @ing = (SELECT ID_Unite
	FROM unite
	WHERE NomIngredient2 = Nom_Ingredient);;
	
	SET @quant = Quantite2;
	SET @duree = durée2;

	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (@duree, @ing, @pot, @unit, @quant);
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, @quant, @unit);
	
	
	
	
	SET @unit = (SELECT ID_Unite
	FROM unite
	WHERE NomUnite3 = Nom_Unité);;
	
	SET @ing = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE NomIngredient3 = Nom_Ingredient);;
	
	SET @quant = Quantite3;
	SET @duree = durée3;	
	
	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (@duree, @ing, @pot, @unit, @quant);
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, @quant, @unit);
	

END |
DELIMITER ; 