SELECT
	DISTINCT es.nome_esporte
FROM
	esporte AS es
    JOIN evento AS ev ON es.id_esporte = ev.id_esporte
    JOIN competidor_evento AS ce ON ev.id_evento = ce.id_evento
    JOIN jogos_competidor AS jc ON ce.id_competidor = jc.id_competidor
    JOIN jogos AS j ON jc.id_jogos = j.id_jogos
WHERE
	j.estacao <> 'Verão'








