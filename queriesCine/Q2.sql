SELECT DISTINCT
	pes.nome,
	pes.ano_nasc
FROM 
	partic AS par
	NATURAL JOIN pessoa AS pes
WHERE
	pes.nome LIKE 'Jennifer%'