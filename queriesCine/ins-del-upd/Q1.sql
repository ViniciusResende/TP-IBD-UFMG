UPDATE
	prod
SET 
	titulo_principal = CONCAT(titulo_principal, ' (TV episode)')
WHERE 
	tipo_prod = 'tvEpisode'