DELETE
FROM
	pessoa
WHERE 
	ano_morte IS NULL
	AND (2021 - ano_nasc) > 120