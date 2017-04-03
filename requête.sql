SELECT
  AVG(cnt.nb_ing)
FROM
  (
  SELECT
    COUNT(contient.ID_Ingredient) cnt
  FROM
    contient
  GROUP BY
    contient.ID_Potion ) nb_ing
	;