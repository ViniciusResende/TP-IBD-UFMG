SELECT DISTINCT
	pes.nome
FROM
	prod_alt AS pa,
	prod,
	partic AS par,
	pessoa AS pes,
	conhecido_por AS cp
	
WHERE
	pa.id_prod = prod.id_prod
	AND prod.id_prod = par.id_prod
	AND prod.id_prod = cp.id_prod
	AND cp.id_pessoa = pes.id_pessoa
	AND pa.titulo_alt = 'O Regresso de Godzilla'
	AND par.categoria = 'actor'