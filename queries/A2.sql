SELECT
  ano_jogos,
  estacao
FROM
  jogos AS j
  JOIN jogos_cidade AS jc ON j.id_jogos = jc.id_jogos
  JOIN cidade AS c ON jc.id_cidade = c.id_cidade
WHERE
  nome_cidade = 'Londres'