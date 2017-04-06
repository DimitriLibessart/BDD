DELIMITER |
CREATE PROCEDURE Suppression_recette()
BEGIN
DELETE FROM potion INNER JOIN recette ON potion.ID_Potion = recette.ID_Potion
WHERE recette.Statue = '0';
END |
DELIMITER ;

