SELECT
	AVG(e.tempo_minutos),
	MIN(e.tempo_minutos),
	MAX(e.tempo_minutos)
FROM
	prod,
	episodio AS ep,
	prod AS e
WHERE
	prod.id_prod = ep.id_prod_principal
	AND ep.id_prod = e.id_prod
	AND (prod.tipo_prod = 'tvSeries')