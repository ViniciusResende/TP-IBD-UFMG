SELECT DISTINCT
	pes2.nome,
	pes2.ano_nasc,
	pes2.ano_morte
FROM
	pessoa AS pes1,
	autor AS a,
	prod AS p,
	diretor AS d,
	pessoa AS pes2
WHERE
	pes1.nome = 'Robert Zemeckis'
	AND pes1.id_pessoa = a.id_pessoa
	AND a.id_prod = p.id_prod
	AND p.id_prod = d.id_prod
	AND d.id_pessoa = pes2.id_pessoa
	AND p.tipo_prod = 'movie'