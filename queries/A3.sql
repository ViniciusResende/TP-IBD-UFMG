SELECT
  nome_completo,
  altura
FROM
  pessoa AS p
  JOIN jogos_competidor AS jc ON p.id_pessoa = jc.id_pessoa
  JOIN jogos AS j ON jc.id_jogos = j.id_jogos
WHERE
  altura >= 215
  AND ano_jogos = 2016