SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	pessoa AS HF,
	partic AS par1,
	prod,
	partic AS par2,
	pessoa AS CF
WHERE
	HF.nome = 'Harrison Ford'
	AND CF.nome = 'Carrie Fisher'
	AND HF.id_pessoa = par1.id_pessoa
	AND par1.id_prod = prod.id_prod
	AND prod.id_prod = par2.id_prod
	AND par2.id_pessoa = CF.id_pessoa
	AND prod.tipo_prod = 'movie'