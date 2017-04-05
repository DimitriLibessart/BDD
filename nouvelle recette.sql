DELIMITER |
CREATE PROCEDURE ajout_recette(
 IN NomInventeur VARCHAR,
 IN NumeroPermis INT,
 IN NomRecette VARCHAR,
 IN NomDiluant VARCHAR,
 IN PrixPotion INT,
 IN TemperaturePotion INT,
 IN NomIngredient1 VARCHAR,
 IN NomUnite1 VARCHAR,
 IN Quantite1 INT,
 IN durée1 INT,
 IN NomIngredient2 VARCHAR,
 IN NomUnite2 VARCHAR,
 IN Quantite2 INT,
 IN durée2 INT,
 IN NomIngredient3 VARCHAR,
 IN NomUnite3 VARCHAR,
 IN Quantite3 INT,
 IN durée3 INT)

	SELECT SUM(Inventeur.Inventeur_Existant) sum
	FROM(
		SELECT Nom_Inventeur CASE 
		WHEN Nom_Inventeur = NomInventeur THEN '1'
		ELSE 'NULL'
		END AS Inventeur_Existant);
	;
	SELECT IF(sum = 0,

	(INSERT INTO `Inventeur`  (`Nom_Inventeur`, `Numero_Permis_Inventeur`) 
	VALUES (NomInventeur, NumeroPermis));  
	
	(UPDATE `Inventeur` SET Inventeur_Existant = 'NULL');
	
	,
	(UPDATE `Inventeur` SET Inventeur_Existant = 'NULL');
	
	);

	
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
DELIMTER ; 