SELECT DISTINCT
	pes.nome
FROM
	prod AS filme,
	prod AS serie,
	prod AS ep,
	partic AS parf,
	partic AS pars,
	partic AS pare,
	pessoa AS pes
WHERE
	filme.tipo_prod = 'movie'
	AND serie.tipo_prod = 'tvSeries'
	AND ep.tipo_prod = 'tvEpisode'
	AND filme.id_prod = parf.id_prod
	AND serie.id_prod = pars.id_prod
	AND ep.id_prod = pare.id_prod
	AND parf.id_pessoa = pars.id_pessoa
	AND pars.id_pessoa = pare.id_pessoa
	AND parf.id_pessoa = pes.id_pessoa
	AND filme.ano_prod BETWEEN 1980 AND 1989
	AND serie.ano_prod BETWEEN 1980 AND 1989
	AND ep.ano_prod BETWEEN 1980 AND 1989
ORDER BY 
	pes.nome ASC
	