DELIMITER |
CREATE PROCEDURE Suppression_recette()
BEGIN

SET @ID = (SELECT ID_Potion FROM  recette WHERE Statue = '0');


DELETE FROM contient 
WHERE ID_Potion = @ID ;

SET @ID = (SELECT ID_Potion FROM  recette WHERE Statue = '0');

DELETE FROM potion 
WHERE ID_Potion = @ID ;


DELETE FROM compose 
WHERE ID_Onguent NOT IN ( SELECT ID_Potion FROM contient ) ;


DELETE FROM onguent
WHERE ID_Onguent NOT IN ( SELECT ID_Potion FROM Potion) ;

DELETE FROM recette
WHERE Statue = '0' ;

END |
DELIMITER ;

