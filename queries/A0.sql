SELECT
  nome_completo
FROM
  pessoa AS p
  JOIN jogos_competidor AS jc ON p.id_pessoa = jc.id_pessoa
WHERE
  idade >= 80