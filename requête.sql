SELECT
  AVG(nb_ing.cnt)
FROM
  (
  SELECT
    COUNT(contient.ID_Ingredient) cnt
  FROM
    contient
  GROUP BY
    contient.ID_Potion ) nb_ing
	;
