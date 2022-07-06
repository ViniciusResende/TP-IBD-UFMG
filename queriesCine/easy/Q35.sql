SELECT
	prod.titulo_principal,
	ep.temporada
FROM
	prod,
	episodio AS ep,
	prod AS e
WHERE
	prod.id_prod = ep.id_prod_principal
	AND ep.id_prod = e.id_prod
	AND ep.temporada IS NOT NULL
ORDER BY
	ep.temporada DESC
LIMIT 1