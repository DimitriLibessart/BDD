DELIMITER |
CREATE PROCEDURE Suppression_recette()
BEGIN

SET @ID = (SELECT ID_Potion FROM  recette WHERE Statue = '0');
SET @ID2 = ID;
SET @ID3 = ID2;
SET @ID4 = ID3;
SET @ID5 = ID4;

DELETE FROM contient 
WHERE ID_Potion = @ID OR D_Potion = @ID2 OR D_Potion = @ID3 OR D_Potion = @ID4 OR D_Potion = @ID5;

DELETE FROM potion 
WHERE ID_Potion = @ID OR D_Potion = @ID2 OR D_Potion = @ID3 OR D_Potion = @ID4 OR D_Potion = @ID5;

DELETE FROM compose 
WHERE ID_Potion = @ID OR D_Potion = @ID2 OR D_Potion = @ID3 OR D_Potion = @ID4 OR D_Potion = @ID5;

DELETE FROM onguent
WHERE ID_Potion = @ID OR D_Potion = @ID2 OR D_Potion = @ID3 OR D_Potion = @ID4 OR D_Potion = @ID5;

DELETE FROM recette
WHERE ID_Potion = @ID OR D_Potion = @ID2 OR D_Potion = @ID3 OR D_Potion = @ID4 OR D_Potion = @ID5;

END |
DELIMITER ;

