SELECT
	p2.titulo_principal,
	p1.titulo_principal,
	e.temporada,
	e.episodio,
	p1.ano_prod,
	p1.tempo_minutos
FROM 
	prod AS p1,
	episodio AS e,
	prod AS p2
WHERE
	p1.id_prod = e.id_prod
	AND e.id_prod_principal = p2.id_prod
	AND p1.tipo_prod = 'tvEpisode'
	AND p2.tipo_prod = 'tvSeries'
	AND p1.ano_prod BETWEEN 1990 AND 1999
ORDER BY p2.titulo_principal, e.temporada, e.episodio