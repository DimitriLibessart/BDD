DELIMITER |
CREATE PROCEDURE ajout_recette(
 IN NomInventeur VARCHAR(255),
 IN NumeroPermis INT(11),
 IN Exisant BOOLEAN;
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


INSERT INTO `Inventeur`  (`Nom_Inventeur`, `Numero_Permis_Inventeur`) 
VALUES (NomInventeur, NumeroPermis)
WHERE Exisant=1;


	
	SET @inv = (SELECT ID_Inventeur
	From inventeur
	Where Nominventeur = Nom_Inventeur	
	);;

	
	SET @dil = ( SELECT ID_Diluant
	FROM diluant
	WHERE Nom_Diluant = NomDiluant
	);;

	
	INSERT INTO `recette` (Nom_recette) 
	VALUES (NomRecette);
	
	INSERT INTO `Potion` (`Nom_Potion`, `Prix_Potion`,`ID_Diluant`,`Temperature_Potion`,`ID_Inventeur`)
	VALUES (NomRecette, PrixPotion, @dil, TemperaturePotion, @inv );
	
	SET @pot = (SELECT ID_Potion
	FROM potion 
	WHERE NomRecette = Nom_Potion
	);;
	
	SET @unit = (SELECT ID_Unite
	FROM unite
	WHERE NomUnite1 = Nom_Unité);;
	
	SET @INg = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE NomIngredient1 = Nom_Ingredient);;	
	
	
	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (durée1, @ing, @pot, @unit, Quantite1);
	
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, Quantite1, @unit);
	
	
	
	
	
	SET @unit = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE NomUnite2 = Nom_Unité);;
	
	SET @ing = (SELECT ID_Unite
	FROM unite
	WHERE NomIngredient2 = Nom_Ingredient);;

	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (durée1, @ing, @pot, @unit, Quantite1);
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, Quantite1, @unit);
	
	
	
	
	SET @unit = (SELECT ID_Unite
	FROM unite
	WHERE NomUnite3 = Nom_Unité);;
	
	SET @ing = (SELECT ID_Ingredient
	FROM Ingredient
	WHERE NomIngredient3 = Nom_Ingredient);;
	
	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (durée1, @ing, @pot, @unit, Quantite1);
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, Quantite1, @unit);
	

END |
DELIMITER ; 