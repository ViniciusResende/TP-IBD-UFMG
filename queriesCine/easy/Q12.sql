SELECT
	prod.titulo_principal,
	pes.nome
FROM
	prod_alt AS pa,
	prod,
	autor AS a,
	pessoa AS pes
	
WHERE
	pa.id_prod = prod.id_prod
	AND prod.id_prod = a.id_prod
	AND a.id_pessoa = pes.id_pessoa
	AND pa.titulo_alt = 'O Regresso de Godzilla'