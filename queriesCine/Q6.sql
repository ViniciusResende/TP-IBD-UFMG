SELECT
	pes.nome,
	pes.ano_nasc,
	prof.prof,
	par.categoria,
	par.tarefa
FROM
	prod,
	partic AS par,
	pessoa AS pes,
	profissao AS prof
WHERE
	prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.id_pessoa = prof.id_pessoa
	AND prod.titulo_principal = 'Back to the Future'
	AND (par.categoria = 'actor' OR par.categoria = 'actress')