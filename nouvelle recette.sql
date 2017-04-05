DELIMITER |
CREATE PROCEDURE ajout_recette (in NomInventeur VARCHAR, in NumeroPermis INT, in NomRecette VARCHAR, in NomDiluant VARCHAR, in PrixPotion INT, in TemperaturePotion INT, in NomIngredient1 VARCHAR, in NomUnite1 VARCHAR, in Quantite1 INT, In durée1 INT, in NomIngredient2 VARCHAR, in NomUnite2 VARCHAR, in Quantite2 INT, In durée2 INT, in NomIngredient3 VARCHAR,in NomUnite3 VARCHAR, in Quantite3 INT, In durée3 INT)

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
	Where NomInventeur = Nom_Inventeur	
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
	
	SET @ing = (SELECT ID_Unite
	FROM unite
	WHERE NomIngredient1 = Nom_Ingredient);;	
	
	
	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (durée1, @ing, @pot, @unit, Quantite1);
	
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, Quantite1, @unit);
	
	
	
	
	
	SET @unit = (SELECT ID_Unite
	FROM unite
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
	
	SET @ing = (SELECT ID_Unite
	FROM unite
	WHERE NomIngredient3 = Nom_Ingredient);;
	
	
	INSERT INTO `contient`  (`Duree`, `ID_Ingredient`, `ID_Potion`, `ID_Unite`, `Quantite`)
	VALUES (durée1, @ing, @pot, @unit, Quantite1);
	INSERT INTO `compose` (`ID_Ingredient`, `ID_Onguent`, `Quantite`, `ID_Unite`)
	VALUES (@ing, @pot, Quantite1, @unit);
	

END |
DELIMTER ; 