DELIMITER |
CREATE PROCEDURE Validation_recette()
BEGIN
DELETE FROM recette
WHERE Statue = '1';
END |
DELIMITER ;
