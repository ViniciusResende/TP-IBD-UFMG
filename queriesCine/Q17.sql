SELECT
	serie.titulo_principal AS nome_serie,
	ep.titulo_principal AS nome_episodio,
	e.temporada,
	e.episodio
FROM
	prod AS serie,
	episodio AS e,
	prod AS ep,
	partic AS par,
	pessoa AS pes
WHERE
	serie.id_prod = e.id_prod_principal
	AND e.id_prod = ep.id_prod
	AND serie.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND serie.tipo_prod = 'tvSeries'
	AND pes.nome = 'Jerry Seinfeld'
ORDER BY
	serie.ano_prod,
	e.temporada,
	e.episodio