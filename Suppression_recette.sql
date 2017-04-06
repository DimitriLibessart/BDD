DELIMITER |
CREATE PROCEDURE Suppression_recette()
BEGIN

SET @ID = (SELECT ID_Potion FROM  recette WHERE Statue = '0');


DELETE FROM contient 
WHERE ID_Potion = @ID ;

DELETE FROM potion 
WHERE ID_Potion = @ID 

DELETE FROM compose 
WHERE ID_Potion = @ID ;

DELETE FROM onguent
WHERE ID_Potion = @ID ;

DELETE FROM recette
WHERE ID_Potion = @ID ;

END |
DELIMITER ;

