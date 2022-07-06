SELECT
	prod.titulo_principal,
	pa.titulo_alt,
	prod.ano_prod,
	prod.avaliacao,
	prod.tempo_minutos
FROM
	prod_alt AS pa,
	prod,
	partic AS par,
	pessoa AS pes
WHERE
	pa.id_prod = prod.id_prod
	AND prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.nome = 'Toshiro Mifune'
	AND prod.tipo_prod = 'movie'